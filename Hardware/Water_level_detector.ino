#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
int TRIGGER = D3;
int ECHO   = D2;
int f =20 ;
const char *WIFI_SSID ="Yashu_310" ;  
const char *WIFI_PASSWORD ="9717433820";
const char* server= "api.thingspeak.com";

String apiKey ="C8D6XETQ9EP9LP8O" ;  //api key to upload sensor data 

WiFiClient client;

String page = "";
int data; 
void setup(void){
  pinMode(TRIGGER, OUTPUT); 
  pinMode(ECHO, INPUT); 
  delay(1000);
  Serial.begin(9600); //--> Set's up Serial Communication at certain speed.
  delay(10);

  Serial.print("Connecting to :");
  Serial.println(WIFI_SSID);

  WiFi.begin(WIFI_SSID,WIFI_PASSWORD);

  while(WiFi.status()!=WL_CONNECTED){
    delay(200);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi Connected");
}
 void loop(void){
  digitalWrite(TRIGGER, LOW);  
  delayMicroseconds(2); 
  digitalWrite(TRIGGER, HIGH);
  delayMicroseconds(10); 
  digitalWrite(TRIGGER, LOW);
  long duration = pulseIn(ECHO, HIGH);
  //data = (duration/2) / 29.09;
  f = f+5;
  

  if (client.connect(server,80))   //   "184.106.153.149" or api.thingspeak.com
                      {  
                            
                             String postStr = apiKey;
                             postStr +="&field1=";
                             postStr += String(f);
                             client.print("POST /update HTTP/1.1\n");
                             client.print("Host: api.thingspeak.com\n");
                             client.print("Connection: close\n");
                             client.print("X-THINGSPEAKAPIKEY: "+apiKey+"\n");
                             client.print("Content-Type: application/x-www-form-urlencoded\n");
                             client.print("Content-Length: ");
                             client.print(postStr.length());
                             client.print("\n\n");
                             client.print(postStr);

                             Serial.print("water level: ");
                             Serial.print(f);
                             

                             Serial.println(". Send to Thingspeak.");
                        }
          client.stop();
 
          Serial.println("Waiting...");
  // thingspeak needs minimum 15 sec delay between updates
  delay(10000);
}
