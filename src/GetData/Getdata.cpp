#include"Getdata.h"

dataGet::dataGet(){
    logs[0] = "VEL";
    logs[1] = "ALT";
    logs[2] = "PIT";
    logs[3] = "ROL";
    logs[4] = "YAW";

}
String dataGet::fileReceive(){
    RH_ASK driver;
    uint8_t buf[12];
    uint8_t buflen = sizeof(buf);
    if (driver.recv(buf, &buflen)){ // Non-blocking
        return String((char*)buf);
    }    
}

//Function compares two strings
boolean dataGet::compare(String x, String y){
    if (x != y){
        return false;
    }
    else{
        return true;
    }
}

