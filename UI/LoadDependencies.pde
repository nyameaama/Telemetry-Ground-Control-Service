//Load images and resize


void loadImagestoAPP(){
    LoadArrowLeft();
    LoadArrowRight();
    LoadMinusOperator();
    LoadAdditionOperator();
}

void LoadArrowLeft(){
   //Left Arrow
    String tag = "Left Arrow";
    float mediaW = 0,mediaH = 0,mediaPosX = 150,mediaPosY = 400;
    PImage arrowLeft;
    arrowLeft = loadImage("telemetry src images/arrowLeft.png");
    arrowLeft.resize(30,30);
    StoreElementPosition(tag,mediaPosX,mediaPosY,mediaW,mediaH);
    image(arrowLeft,mediaPosX,mediaPosY);
}

void LoadArrowRight(){
    //Right Arrow
    String tag = "Right Arrow";
    float mediaW = 0,mediaH = 0,mediaPosX = 120,mediaPosY = 400;
    PImage arrowRight;
    arrowRight = loadImage("telemetry src images/arrowRight.png");
    arrowRight.resize(30,30);
    StoreElementPosition(tag,mediaPosX,mediaPosY,mediaW,mediaH);
    image(arrowRight,mediaPosX,mediaPosY);
}

void LoadMinusOperator(){
    //Minus Operator
    String tag = "Minus Operator";
    float mediaW = 0,mediaH = 0,mediaPosX = 90,mediaPosY = 400;
    PImage minusOperator;
    minusOperator = loadImage("telemetry src images/MinusOperator.png");
    minusOperator.resize(30,30);
    StoreElementPosition(tag,mediaPosX,mediaPosY,mediaW,mediaH);
    image(minusOperator,mediaPosX,mediaPosY);
}

void LoadAdditionOperator(){
    //Addition Operator
    String tag = "Addition Operator";
    float mediaW = 0,mediaH = 0,mediaPosX = 60,mediaPosY = 400;
    PImage additionOperator;
    additionOperator = loadImage("telemetry src images/AdditionOperator.png");
    additionOperator.resize(30,30);
    StoreElementPosition(tag,mediaPosX,mediaPosY,mediaW,mediaH);
    image(additionOperator,mediaPosX,mediaPosY);
}