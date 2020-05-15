void hoverElementColorChange(){
    //Search UI element positions to determine if mouse is hovering
    //over it
    int leftSideBound,rightSideBound,upperBound,lowerBound;
    int currentElementHeight;
    int currentElementWidth;
    int currentElementy = 3,
    int currentElementx = 4;
    int h = 1, w = 2, y = 3, x = 4;
    int numberofElements = posArrNum / 4;
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
            fill(255);
            text("Yes",400,10);
        }else{
            fill(255);
            text("No",400,10);
        }
    }
}