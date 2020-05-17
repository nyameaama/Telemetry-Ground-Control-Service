#ifndef GETDATA
#define GETDATA

#include <RH_ASK.h>
#include <SPI.h> // Not actualy used but needed to compile

class dataGet {
    private:
        String *logs = (String*)malloc(5);
    private: 
        //Function compares two strings
        boolean compare(String x, String y);
   

    public:
        dataGet();
        
        String fileReceive();

        //Function to compress strings into one string
        String cStrings(String x, String y);

        //Function to decompress strings
        String *dcString(String x);

};

#endif