boolean hoverStillPresent = false;


void hoverElementColorChange(){
    //Search UI element positions to determine if mouse is hovering
    //over it
    float leftSideBound,rightSideBound,upperBound,lowerBound;
    float currentElementHeight;
    float currentElementWidth;
    float currentElementy = 3;
    float currentElementx = 4;
    int h = 1, w = 2, y = 3, x = 4;
    float numberofElements = posArrNum / 4;
    for(int i = 1; i < numberofElements;i++){
        currentElementWidth = (ElementPosArr[(4 * i) - w]);
        currentElementHeight = (ElementPosArr[(4 * i) - h]);
        currentElementy = (ElementPosArr[(4 * i) - y]);
        currentElementx =  (ElementPosArr[(4 * i) - x]);
        leftSideBound = currentElementx - (currentElementWidth / 2);
        rightSideBound = currentElementx + (currentElementWidth / 2);
        upperBound = currentElementy - (currentElementHeight / 2);
        lowerBound = currentElementy + (currentElementHeight / 2);
        if(mouseX >= leftSideBound && mouseX <= rightSideBound && mouseY >= upperBound && mouseY <= lowerBound ){
            fill(0);
            text("Yes",400,10);
            hoverStillPresent = true;
            elementHighlight(currentElementx,currentElementy,currentElementWidth,currentElementHeight);
        }else{
            fill(0);
            text("No",400,10);
            hoverStillPresent = false;
        }
    }
}

boolean ElementCheck(float x, float y, float w, float h){
    boolean duplicatePairs = false;
    float countElem = 0;
    if(posArrNum < 64){
      return false;
    }  
    for(int i = 0; i < posArrNum;i += 4){
        if(ElementPosArr[i] == x){
            countElem++;
        }
         if(ElementPosArr[i + 1] == y){
            countElem++;
        }
         if(ElementPosArr[i + 2] == w){
            countElem++;
        }
         if(ElementPosArr[i + 3] == h){
            countElem++;
        }
    }
    duplicatePairs = (countElem > 4) ? true : false;
    return duplicatePairs;
}

void elementHighlight(float x,float y,float w,float h){
    float percent_increase = 0.10;
    if(hoverStillPresent){
      stroke(144,238,144);
        rectMode(CENTER);
        //fill(255);
        rect(x,y,w + (percent_increase * w),h + (percent_increase * h),25);
    }
}