int BACK_FILL;
// Variable to store text currently being typed
String typing = "";
// Variable to store saved text when return is hit
String saved = "";

void createBoxDataElement(float screenposX,float screenposY,float reading){
    float box_width = 110;
    float box_height = 55;
    int textFill = (BACKGROUND_FILL == 0) ? 255 : 0;
    rectMode(CENTER);
    fill(BACKGROUND_FILL);
    stroke(textFill);
    rect(screenposX,screenposY,box_width,box_height,7);
    textSize(14);
    fill(textFill);
    textAlign(CENTER);
    text(reading,screenposX,screenposY);
    
}

void createGraphDataElemnt(float screenposX,float screenposY,float reading){

}

void UserInputElement(String prompt,float screenposX,float screenposY){
    int textFill = (BACKGROUND_FILL == 0) ? 255 : 0;
    float width = 500,height = 100;
    float xPos = (screenposX - width/2) + 5;
    float yPos = 0.0;
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