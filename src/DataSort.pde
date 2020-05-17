//Recieve data ID and return element ID for main loop to draw to
String Processes[] = new String[64];
    Processes[0] = "VEL";
    Processes[1] = "ALT";
    Processes[2] = "PIT";
    Processes[3] = "ROL";
    Processes[4] = "YAW";   

String tags[] = new String[64];
float IDcount;

void createUIelementID(String tag){
    String mid = "00";
    String num = str(IDcount + 1);
    String elemID = num + mid + tag;
    tags[IDcount] = elemID;
    return elemID;
}

void findElementID(String ID){
    
}