//Load images and resize
String imageTags = new String[16];

void loadImagestoAPP(){
    LoadArrowLeft();
    LoadArrowRight();
    LoadMinusOperator();
    LoadAdditionOperator();
}

String generateFullTag(String abbrev){
    //Generate Tag
    int iter;
    for(int x : imageTags){
        //Temp
        String temp = imageTags[x];
        if(temp[0] == abbrev){
            iter = Integer.parseInt(temp[0]);
        }else{
            continue;
        }
        temp = str(Integer.parseInt(temp[0]) + 1) + temp[1];
        imageTags[x] = temp;
    }
    return (abbrev) + str(iter);
}

PImage LoadArrowLeft(){
    //Left Arrow
    PImage arrowLeft;
    arrowLeft = loadImage("telemetry src images/arrowLeft.png");
    return arrowLeft;
}

PImage LoadArrowRight(){
    //Right Arrow
    PImage arrowRight;
    arrowRight = loadImage("telemetry src images/arrowRight.png");
    return arrowRight;
}    

PImage LoadMinusOperator(){
    //Minus Operator
    PImage minusOperator;
    minusOperator = loadImage("telemetry src images/MinusOperator.png");
    return minusOperator;
}

PImage LoadAdditionOperator(){ 
    //Addition Operator
    PImage additionOperator;
    additionOperator = loadImage("telemetry src images/AdditionOperator.png");
    return additionOperator;
}

void DisplayArrowLeft(int posX,int posY,int Mwidth,int Mheight){
    String tag = generateFullTag("L");
    LoadArrowLeft().resize(Mwidth,Mheight);
    StoreElementPosition(tag,posX,posY,Mwidth,Mheight);
    image(LoadArrowLeft(),posX,posY);
}

void DisplayArrowRight(int posX,int posY,int Mwidth,int Mheight){
    String tag = generateFullTag("R");
    LoadArrowRight().resize(Mwidth,Mheight);
    StoreElementPosition(tag,posX,posY,Mwidth,Mheight);
    image(LoadArrowRight(),posX,posY);
}

void DisplayAdditionOperator(int posX,int posY,int Mwidth,int Mheight){
    String tag = generateFullTag("A");
    LoadArrowRight().resize(Mwidth,Mheight);
    StoreElementPosition(tag,posX,posY,Mwidth,Mheight);
    image(LoadAdditionOperator(),posX,posY);
}

void DisplayMinusOperator(int posX,int posY,int Mwidth,int Mheight){
    String tag = generateFullTag("M");
    LoadArrowRight().resize(Mwidth,Mheight);
    StoreElementPosition(tag,posX,posY,Mwidth,Mheight);
    image(LoadMinusOperator(),posX,posY);
}