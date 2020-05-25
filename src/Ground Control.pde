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
    createBoxDataElement(1,180,150,66,"VEL");
    createBoxDataElement(1,180,450,66,"ALT");
    createBoxDataElement(1,1185,450,66,"YAW");
    createBoxDataElement(1,710,600,66,"ROLL");
    //Flight State
    createBoxDataElement(4,710,200,66,"FSTATE");
    hoverElementColorChange();
    noFill();
    //"VEL"
    createGraphDataElemnt(180,300,0.5);
    //"ALT"
    createGraphDataElemnt(180,600,0.5);
    //"PIT"
    createGraphDataElemnt(1185,300,0.5);
   //"YAW"
    createGraphDataElemnt(1185,600,0.5);
    //ROLL
    createGraphDataElemnt(710,750,0.5);
}