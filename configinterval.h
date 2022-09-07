                                                                                      
class FormatInter
{
  private:
   uint8_t num_interval;
   uint8_t pico;
   String formatHM;
   uint8_t time_ini;
   uint8_t ini1;
    
  public:
    FormatInter(){
         num_interval=5;
         pico=60;
         formatHM="mm";
         time_ini=0;
         ini1=0;
      }
    
    void SetFormatInter (char *intervalos){
      switch (intervalos[0]){
          case '1':
            num_interval=5;
            pico=60;
            formatHM="mm";
            //ti=tiempo(hora);// es mm, solo para pruebas es ss
            //Serial.println("2min");
            break;
          case '2':
            num_interval=10;
            pico=60;
            formatHM="mm";
              //ti=tiempo(hora);
            //Serial.println("10min");
            break;
          case '3':
            num_interval=20;
          
            pico=60;
            formatHM="mm";
            //Serial.println("20min");
            break;
          case '4':
             num_interval=30;
             pico=60;
             formatHM="mm";
            //  Serial.println("30min");
             break;
          case '5':
              num_interval=1;
              pico=24;
             formatHM="hh";
            //  Serial.println("1hora");
             break;
          case '6':
             num_interval=2;
             pico=60;
             formatHM="hh";
             //ti=tiempo(hora);
             // Serial.println("12hora");
             break;
          default:
             num_interval=5;
             pico=60;
            formatHM="hh";
             //ti=tiempo(hora);
             //Serial.println("defauly");
             break; 
      
        }
    }
    void InitTime(int Time){
        time_ini=Time;
        do
        {
            if(time_ini>=num_interval){
                ini1=time_ini%num_interval;
                time_ini-=ini1; 
            }else{
                time_ini+=1;
                ini1=1;
            }
        } while (ini1!=0);
        


    }
    int Getnum_interval(){
        return(num_interval);
    }
    int Getpico(){
        return(pico);
    }
    String GetformatHM(){
        return(formatHM);
    }
    int Gettime_ini(){
        return(time_ini);
    } 
  
};
