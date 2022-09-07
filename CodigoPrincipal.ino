//sdi12
#include <SDI12.h>
//sd library
#include "FS.h"
#include "SD.h"

#include <SPI.h>

const String FileConfig="/config/config.txt";
//Reloj//
#include <RTClib.h>

#include "configinterval.h"
#define uS_TO_S_FACTOR 1000000ULL  /* Conversion factor for micro seconds to seconds */
#define TIME_TO_SLEEP  180        /* Time ESP32 will go to sleep (in seconds) */

RTC_DATA_ATTR int time_tot = -1;

//int time_tot = -1;
RTC_DS3231 rtc;
RTC_DATA_ATTR char interSel[1]={'2'};
String address;
 #define SD_CS 5
const uint8_t pinSwitch=12;
FormatInter FI;
//sdi12//
#define DATA_PIN 13 
SDI12 mySDI12(DATA_PIN);
String sensor_dir="2";
////humedad ambiente////
#include "Wire.h" ;// si no aparece la librería es por motivos del soft "< "
#include <SHT1x-ESP.h>
#define dataPin  14 //AMARILLO
#define clockPin 27 //AZUL
SHT1x sht1x(dataPin, clockPin);
/////////gprs//////
#include "SIM800L.h"
#define SIM800_RST_PIN 4
#define RXD2 16
#define TXD2 17
char APN[30];
SIM800L* sim800l;
String namedevice;
String token;
///////adc1/////
#include <Adafruit_ADS1015.h>
Adafruit_ADS1115 ads(0x48);
void setup() {
    
    pinMode(pinSwitch,OUTPUT);
    Serial.begin(115200);
    pinMode(2,OUTPUT);
    Serial2.begin(9600, SERIAL_8N1, RXD2, TXD2);// serial1 pines 4 y 2
    sim800l = new SIM800L((Stream *)&Serial2, SIM800_RST_PIN, 200, 500);
    ads.begin();
    if(time_tot<0){
      digitalWrite(pinSwitch,HIGH);
      digitalWrite(2,HIGH);
       if (!initRTC(false)) {
          Serial.println("RTC failed");
          return;
        }
        digitalWrite(pinSwitch,HIGH);
        delay(1000);
        SD.begin(SD_CS);  
        if (!SD.begin(SD_CS)) {
          Serial.println("falla sd");
           return;    // init failed
        }
        InitConfig();
        medir();
        InitTempo();
        digitalWrite(pinSwitch,LOW);
        digitalWrite(2,LOW);
        digitalWrite(pinSwitch,LOW);
    }else{
      if (!initRTC(false)) {
          Serial.println("RTC failed");
          return;
        }
    }
    FI.SetFormatInter(interSel);
    medir();
    esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP * uS_TO_S_FACTOR);
    Serial.println("Going to sleep now");
    Serial.flush(); 
    esp_deep_sleep_start();

  //Serial.println(FI.Getnum_interval());
  
  // put your setup code here, to run once:

}
void despetad(){
  
}

void loop() {
  // put your main code here, to run repeatedly:
  delay(10000);
  //medir();
  

}
