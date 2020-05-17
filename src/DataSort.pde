//Recieve data ID and return element ID for main loop to draw to
String Processes[] = new String[64];
    Processes[0] = "VEL";
    Processes[1] = "ALT";
    Processes[2] = "PIT";
    Processes[3] = "ROL";
    Processes[4] = "YAW";   

String tags[] = new String[64];
int IDcount;

void createUIelementID(String tag,float screenposX,float screenposY,float box_width,float box_height){
    String mid = "00";
    String num = str(IDcount + 1);
    String elemID = num + mid + tag + str(screenposX) + str(screenposY) + str(box_width) + str(box_height);
    tags[IDcount] = elemID;
    IDcount++;
}

String findElementID(String ID){
    //Helper function returns position of UIElement
    float confirmedTag = -1;
    //int confirmedElemPos[] = new[4];
    for(int i = 0; i < IDcount;i++){
        if(Customcomp(ID,tags[i])){
            confirmedTag = i;
        }else{
            //Do nothing
        }
    }
    String newPosStr = "";
    for(int j = 7;j < confirmedTag;j++){
        newPosStr += tags[j];
    }
    return newPosStr;
}

void updateValue(String ID,float newVal){
    //Draws element with new value onto derived position
    int last_index;
    String pos = findElementID(ID);
    float xpos,ypos,width,height;
    for(int i = 7;i < findFirstDot(7,pos) + 2;i++){
        xpos += pos[i];
    } 
    last_index = findFirstDot(7,pos) + 2;
    for(int j = last_index;j < findFirstDot(last_index,pos) + 2;j++){
        ypos += pos[j];
    }
    last_index = findFirstDot(last_index,pos) + 2;
    for(int k = last_index;k < findFirstDot(last_index,pos) + 2;k++){
        width += pos[k];
    }
    last_index = findFirstDot(last_index,pos) + 2;
    for(int l = last_index;l < findFirstDot(last_index,pos) + 2;l++){
        height += pos[l];
    }
    last_index = findFirstDot(last_index,pos) + 2;
    rectMode(CENTER);
    rect(xpos,ypos,width,height,25);
    text(newVal,xpos,ypos);
}    

int findFirstDot(float start,String x){
    int dot_index;
    for(int i = start;i < x.length();i++){
        if(i == "."){
            dot_index = i;
        }
    }
    return dot_index;
}

boolean Customcomp(String x, String y){
    //Returns true for element when comparison is true
    boolean confirm = false;
    int count = 0;
    for(int j = 0; j < y.length();j ++){
       if(y[j] == x[0]){
            if(y[j + 1] == x[1]){
                if(y[j + 2] == x[2]){
                    confirm =  true;
                }
            }
        ]
    }
    return confirm;
}