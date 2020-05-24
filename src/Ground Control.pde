import processing.serial.*;

int BACKGROUND_FILL;

void setup(){
    size(2560,1600);
    String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match port
    myPort = new Serial(this, portName, 9600);

}

void draw(){
    //Recieve data with ID and update draw

}

void UIPlacementP1(){
    //Top Bar Line
    line(100,100,1300,100);
    //Top left Velocity
    createBoxDataElement(1,180,150,66,"VEL");
    //Velocity Graph
    createGraphDataElemnt(180,300,0.5);
    //Middle left altitude
    createBoxDataElement(1,180,450,66,"ALT"); 
    //Altitude Graph
    createGraphDataElemnt(180,600,0.5)
    //Top Right Pitch
    createBoxDataElement(1,1185,150,66,"PIT");
    
    //Middle Right Yaw
    createBoxDataElement(1,1185,450,66,"YAW");

}