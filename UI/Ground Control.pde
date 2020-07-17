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
  //Roll 
  stroke(144,238,144);
  createBoxDataElement(1,100,100,66,"VEL");
  //Pitch
  createBoxDataElement(1,250,100,66,"ALT");
  //Yaw
  createBoxDataElement(1,400,100,66,"PO");
  //Hover
  hoverElementColorChange();
  
  //Map Canvas
  fill(255);
  rectMode(CENTER);
  rect(1000,450,850,900); //Majic numbers(Dont know why this formats well (1000,450,850,900)

}