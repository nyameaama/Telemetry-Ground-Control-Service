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