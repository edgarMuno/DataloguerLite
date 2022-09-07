void writeFile(fs::FS &fs, const char * path, const char * message) {
  File file = fs.open(path, FILE_WRITE);
  if(!file) {
    return;
  }
  if(file.print(message)) {
    //Serial.println("File written");
  } else {
 //   Serial.println("Write failed");
  }
  file.close();
}

String readFile(fs::FS &fs, const char * path){

    String cadena="";
    File file = fs.open(path);
    if(!file){
      //  Serial.println("Failed to open file for reading");
        return cadena;
    }

   //Serial.print("Read from file: ");
    while(file.available()){
       char cara= file.read();
       cadena=cadena+cara;
    }
    file.close();
    return cadena;
}

void appendFile(fs::FS &fs, const char * path, const char * message) {
  //Serial.printf("Appending to file: %s\n", path);

  File file = fs.open(path, FILE_APPEND);
  if(!file) {
   
    return;
  }
  if(file.print(message)) {
  } else {
  }
  file.close();
}




bool guardar(String datos){

  
    SD.begin(SD_CS);  
    if (!SD.begin(SD_CS)) {
      //Serial.println("falla sd");
      return false;    // init failed
    }

  char date_on[] = "YYYY-MM";
  char date_rec[]="DD-hh:mm";
  DateTime now = rtc.now();
  now.toString(date_on);
  
  now.toString(date_rec);
  String date[3]={};
  extraer_carga(date_on,date,"-");
  String date0=date[0]+date[1];
  String fileNa="/archivos/"+date[0]+"_"+date[1]+".csv";
  File file = SD.open(fileNa);//fileNa="/data.txt", datos"/data.txt", "Reading ID, Date, Hour, Temperature \r\n"
  if(!file) {
    char cabe[]="Fecha,Segmento 1,Segmento 2,Segmento 3,Temperatura 1,Temperatura 2, Humedad Amb.,Temperatura Amb,Bateria\n";
    writeFile(SD,fileNa.c_str(),cabe);
  }
  String datos_=String(date_rec)+","+datos+"\n";
  appendFile(SD,fileNa.c_str(),datos_.c_str());
  //Serial.println("guardado=> "+datos_);
  file.close();

}
