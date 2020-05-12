import processing.serial.*;

int BACKGROUND_FILL;

void setup(){
    size(2560,1600);
    String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match port
    myPort = new Serial(this, portName, 9600);

}

void draw(){


}

