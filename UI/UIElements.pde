int BACK_FILL;
// Variable to store text currently being typed
String typing = "";
// Variable to store saved text when return is hit
String saved = "";
String keyP;
//Number of elements in ElementPosArr
int posArrNum;
float ElementPosArr[] = new float[64];

void createBoxDataElement(float size,float screenposX,float screenposY,float reading,String ElementTag){
    float box_width = 110;
    float box_height = 55;
    float widthArr[] = {70,90,110,130,150,170,190,210,230,250,270,290,310};
    float heightArr[] = {45,65,85,115,135,155,175,195,215,235,255,275,295};
    for(int i = 0; i < 13;i++){
        box_width = (size == i) ? widthArr[i] : box_width;
        for(int j = 0; j < 13;j++){
            box_height = (size == j) ? heightArr[j] : box_height;
        }
    }
    int textFill = (BACKGROUND_FILL == 0) ? 255 : 0;
    rectMode(CENTER);
    fill(BACKGROUND_FILL);
    //stroke(textFill);
    stroke(144,238,144);
    rect(screenposX,screenposY,box_width,box_height,25);
    textSize(14);
    fill(textFill);
    textAlign(CENTER);
    text(reading,screenposX,screenposY);
    StoreElementPosition(ElementTag,screenposX,screenposY,box_width,box_height);
    stroke(textFill);
}

void StoreElementPosition(String ElementTag,float screenposX,float screenposY,float box_width,float box_height){
    //Store Location and size
    if(ElementCheck(screenposX, screenposY,box_width,box_height) == true){
        //Do not put in array
    }else{
        createUIelementID(ElementTag,screenposX,screenposY,box_width,box_height);
        ElementPosArr[posArrNum] = screenposX;
        ElementPosArr[posArrNum + 1] = screenposY;
        ElementPosArr[posArrNum + 2] = box_width;
        ElementPosArr[posArrNum + 3] = box_height;
        posArrNum += 4;
    }
}

void createGraphDataElemnt(float screenposX,float screenposY,float reading){
    //Temp
    float arWidth = 100;
    float arHeight = 200;
    rectMode(CENTER);
    rect(screenposX,screenposY,arWidth, arHeight);
}

void UserInputElement(String prompt,float screenposX,float screenposY){
    int textFill = (BACKGROUND_FILL == 0) ? 255 : 0;
    float width = 500,height = 100;
    float xPos = (screenposX - width/2) + 250;
    float yPos = screenposY;
    rectMode(CENTER);
    fill(BACKGROUND_FILL);
    stroke(textFill);
    rect(screenposX,screenposY,width,height,7);
    //Prompt position
    float PposX = (screenposX - width/2) - 100;
    fill(textFill);
    text(prompt +":",PposX,screenposY);
    // Display everything
    //text("Click in this window and type. \nHit enter to save. ", xPos, yPos);
    fill(textFill);
    text(typing,xPos,yPos);
    //text("Saved text: " + saved,indent,230);
}

void keyPressed() {
    // If the return key is pressed, save the String and clear it
    if (key == '\n' ) {
        saved = typing;
    // A String can be cleared by setting it equal to ""
        typing = ""; 
    } else {
        // Otherwise, concatenate the String
        // Each character typed by the user is added to the end of the String variable.
        typing = typing + key; 
    }
}
