//New code for having ESP access point web server with sending data in Json format

#include <ESP8266WiFi.h>
#include <ArduinoJson.h>
#include <SPI.h>

//////////////////////
// WiFi Definitions //
//////////////////////
const char WiFiAPPSK[] = "mightybot";

WiFiServer server(80);

void setup() 
{
  setupWiFi();
  Serial.begin(115200);
  server.begin();
  
}
float d1=10;
float d2 =30;
float a=90;

void loop ()
{
   // Check if a client has connected
  WiFiClient client = server.available();
  if (!client) {
    return;
  }

   // Read the first line of the request
  String req = client.readStringUntil('\r');
  Serial.println(req);
  client.flush();
  client.flush();

  
  StaticJsonBuffer<500> jsonBuffer;

  JsonObject& root = jsonBuffer.createObject();
  root["d1"]=d1;
  root["d2"]=d2;
  root["heading"]=a;
  

  Serial.print(F("Sending: "));
  root.printTo(Serial);
  Serial.println();
  
  // Write response headers
  client.println("HTTP/1.0 200 OK");
  client.println("Content-Type: application/json");
  client.println("Connection: close");
  client.println();

  // Write JSON document
  root.prettyPrintTo(client);

  // Disconnect
  client.stop();
  d1=d1*5;
  d2=d2+5;
  a=a+30;
  
}









void setupWiFi()
{
  WiFi.mode(WIFI_AP);

  // Do a little work to get a unique-ish name. Append the
  // last two bytes of the MAC (HEX'd) to "Thing-":
  uint8_t mac[WL_MAC_ADDR_LENGTH];
  WiFi.softAPmacAddress(mac);
  String macID = String(mac[WL_MAC_ADDR_LENGTH - 2], HEX) +
                 String(mac[WL_MAC_ADDR_LENGTH - 1], HEX);
  macID.toUpperCase();
  String AP_NameString = "MightyRobot " + macID;

  char AP_NameChar[AP_NameString.length() + 1];
  memset(AP_NameChar, 0, AP_NameString.length() + 1);

  for (int i=0; i<AP_NameString.length(); i++)
    AP_NameChar[i] = AP_NameString.charAt(i);

  WiFi.softAP(AP_NameChar, WiFiAPPSK);
}




