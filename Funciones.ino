bool post_http(String trama,String URL){
  const char CONTENT_TYPE[] = "application/json";
  char PAYLOAD[110];
   stringtochar(trama,PAYLOAD);
   Serial.println(F("Start HTTP POST..."));
  // Do HTTP POST communication with 10s for the timeout (read and write)
  uint16_t rc = sim800l->doPost(URL.c_str(), CONTENT_TYPE, PAYLOAD, 30000, 30000);
   if(rc == 200) {
    // Success, output the data received on the serial
    Serial.print(F("HTTP POST successful ("));
    Serial.print(sim800l->getDataSizeReceived());
    Serial.println(F(" bytes)"));
    Serial.print(F("Received : "));
    Serial.println(sim800l->getDataReceived());
    return true;
  } else {
    // Failed...
    Serial.print(F("HTTP POST error "));
    Serial.println(rc);
   //uint16_t term=sim800l->terminateHTTP();
    return false;
  }
}

bool setupModule(int num) {
    // Wait until the module is ready to accept AT commands
   bool connected = false;
   uint8_t cont=0;
  sim800l->reset();
  while(!sim800l->isReady() && cont<=num) {
    cont+=1;
    Serial.println(F("Problem to initialize AT command, retry in 1 sec"));
    delay(1000);
  }
  if(cont>num){
    Serial.println("no conect");
    return false;
  }
  cont=0;
  Serial.println(F("Setup Complete!"));

  // Wait for the GSM signal
  uint8_t signal = sim800l->getSignal();
  while(signal <= 0&&cont<=num) {
    cont+=1;
    delay(1000);
    signal = sim800l->getSignal();
    Serial.println(signal);
    //parpadear(2);
  }
  if(cont>num){
    Serial.println("no signal");
    return false;
  }
  cont=0;
  Serial.print(F("Signal OK (strenght: "));
  Serial.print(signal);
  Serial.println(F(")"));
  delay(1000);

  // Wait for operator network registration (national or roaming network)
  NetworkRegistration network = sim800l->getRegistrationStatus();
  while(network != REGISTERED_HOME && network != REGISTERED_ROAMING && cont<=num) {
    cont+=1;
    delay(1000);
    network = sim800l->getRegistrationStatus();
    //Serial.println(network);
  }
  if(cont>num){
    //Serial.println("no network");
    return false;
  }
  cont=0;
  //Serial.println(F("Network registration OK"));
  delay(1000);

  // Setup APN for GPRS configuration
  //char APN1[] = "internet.tuenti.ec";
  bool success = sim800l->setupGPRS(APN);
  
  //Serial.println("apn= "+String(APN));
  while(!success && cont<=num) {
    cont+=1;
    success = sim800l->setupGPRS(APN);
    delay(5000);
  }
  Serial.println(cont);
  if(cont>num){
   // Serial.println("no gprs conf");
    return false;
  }
  cont=0;
 Serial.println(F("GPRS config OK"));
  connected = sim800l->connectGPRS(); 
  while(!connected && cont<=num) {
    cont+=1;
    delay(1000);
    connected = sim800l->connectGPRS();
  }
  
  if(cont>num){
    //Serial.println("gprs inactive");
    return false;
  }
  // Check if connected, if not reset the module and setup the config again
 Serial.println(F("GPRS active"));
 
 return connected;
}



String sdi12Req(String req){
  String sdiResponse;
  mySDI12.begin();
  delay(500);
  String myCommand = sensor_dir +req+ "!";
  mySDI12.sendCommand(myCommand);
  delay(100);
  while (mySDI12.available()) {  // build response string
    char c = mySDI12.read();
  
    if ((c != '\n') && (c != '\r')) {
      sdiResponse += c;
      delay(10);  // 1 character ~ 7.5ms
    }
  }
  mySDI12.clearBuffer();
  return sdiResponse;
}

bool InitConfig(){
  String temp=readFile(SD,FileConfig.c_str());
  String salida[6];
  extraer_carga(temp,salida,"/");
  stringtochar(salida[0],interSel);
  sensor_dir=salida[3];
  namedevice=salida[1];
  token=salida[2];
  stringtochar(salida[4],APN);
 //Serial.println("apn"+String(APN)+"hol");
  
  //Serial.println("Sensor direccion"+String(sensor_dir));
}
void extraer_carga(String salida1, String* separado, String sep){
 //String salida1=String(carga);
 bool eval=true;
 int k=0;
 
while (eval){
      int x1=(salida1.indexOf(sep));
      if (x1!=-1){
      String resto1=salida1.substring(x1+1,salida1.length());
      String temp1=salida1.substring(0,x1);
      salida1=resto1;
      separado[k]=temp1;
      k+=1;
      }
      else{
       if(salida1.length()>0){
        separado[k]=salida1;
        salida1="";
       }
        eval=false;
      }
      
    }
}


bool initRTC(boolean R){//R para resetear la fecha
  if (rtc.begin()) {
    if(R){
     rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
    }
   if (rtc.lostPower()) {
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
  }
  return true; 
  }else{
    return false;
  }
}

void stringtochar(String into, char* salchar){
  int longi=into.length();
  //salchar[longi];
 
  into.toCharArray(salchar,longi+1);
}
void InitTempo(){// necesita el RTC este iniciado
  
   FI.SetFormatInter(interSel);// obtenemos el numero de intervalo, el pico y el formato
   
    int time_i=time_now();
    FI.InitTime(time_i); // iniciado el tiempo de inicio
    time_tot=FI.Gettime_ini();
   // Serial.print("tiempo reiniciado.....");
    //Serial.println(time_tot);
 
       
}

int time_now(){
    DateTime now = rtc.now();
    String format_=FI.GetformatHM();
   
    char format_c[3];
    stringtochar(format_,format_c);
    
   
    now.toString(format_c);
    String time_s=String(format_c);
    //Serial.println("tiempo "+ time_s);
    int time_=time_s.toInt();
    return time_;
}

void parpadear(int a){///0 es led verde, 1 led rojo

  if(a==0){
  while(true){
    digitalWrite(2, !digitalRead(2));
    delay(700);

  }
  }else{
    for(int q=0;q<a;q++){
    digitalWrite(2, !digitalRead(2));
    delay(700);

  }
  }
   digitalWrite(2, LOW);
}

void medir(){
  if(muestrear() || time_tot<0){
    parpadear(2);
     digitalWrite(pinSwitch,HIGH);
    //sdi12//humedad
    String resp=sdi12Req("M");
    delay(100);
    resp=sdi12Req("D0");
    String segmentoH[4];
    extraer_carga(resp,segmentoH,"+");
    /////////tempSDI12///////
    resp=sdi12Req("M1");
    delay(100);
    resp=sdi12Req("D0");
    String segmentoT[3];
    extraer_carga(resp,segmentoT,"+"); // 3 segmentos
    ////////////Ambiente////
    float temp_c=sht1x.readTemperatureC();
    float humidity=sht1x.readHumidity();
    int16_t adc0=ads.readADC_SingleEnded(0);
    float bat=adc0 * 0.000483872;
    String trama=segmentoH[1]+","+segmentoH[2]+","+segmentoH[3]+","+segmentoT[1]+","+segmentoT[2]+","+String(humidity)+","+String(temp_c)+","+String(bat);
    
    guardar(trama);// AGREGA LA FECHA Y EL SLATO DE LINE, TIENE CABECERA SI NO EXISTE EL rchiv
    delay(1000);
    /////envio gprs
    if(InitConfig()){
      if(setupModule(120)){
        delay(1000);
        String url="http://industrial.api.ubidots.com/api/v1.6/devices/"+namedevice+"/?token="+token;//BBFF-xw7UlERfeUJpc3xMHeaRAFWB4bZ23J";
        String trama_gprs="{\"humedad-15cm\":"+segmentoH[1]+","+"\"humedad-30cm\":"+segmentoH[2]+","+"\"humedad-45cm\":"+segmentoH[3]+","+"\"bateria\":"+String(bat)+"}";
        post_http(trama_gprs,url);
        trama_gprs="{\"temperatura-15cm\":"+segmentoT[1]+","+"\"temperatura-30cm\":"+segmentoT[2]+","+"\"humedad-relativa\":"+String(humidity)
              +","+"\"temperatura-relativa\":"+String(temp_c)+"}";
        post_http(trama_gprs,url);
      }
    }
    digitalWrite(pinSwitch,LOW);
  }
}





bool muestrear(){
    int pico=FI.Getpico();
    int num_interval=FI.Getnum_interval();
    Serial.println("numero de interval"+String(num_interval));
    int time_ac=time_now();
    if(time_ac==0){
    time_ac=pico;
   }else{
    if(time_tot==pico){
      time_tot=0;
    }
   }
  //Serial.println("toma tiempo= "+String(time_ac));
 if(time_ac>=num_interval){
  
 
     int ini=time_ac%num_interval;
    
     if (ini==0){
    
         int res=time_ac-time_tot;
        
         if (res>=num_interval){
            
              time_tot=time_ac;
        
              return true;
         }
          
     }
 
              
}
 return false;
 
  
}


