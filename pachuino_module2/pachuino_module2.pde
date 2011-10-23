import processing.serial.*;
import cc.arduino.*;
import eeml.*;
import pachuino.*;
PFont f;




Pachuino p;

void setup(){   
    p = new Pachuino(this, Arduino.list()[1], 57600);
    p.manualUpdate("http://www.pachube.com/api/35524.xml"); 
    p.setKey("53TNb9rPvxjY1enFyeZ7iFSN8frz-7_u9zvKx19kQTw");   
    size(1000,1000);
    f = loadFont("Aharoni-Bold-12.vlw");
    
   
    // Local sensors   
    
    p.addLocalSensor("analog", 0,"lightSensor");
    p.addLocalSensor("analog", 1, "rangeSensor");
    

   
}

void draw(){
    float tempVal1 = p.localSensor[0].value;
    println(tempVal1);
    float tempVal2 = p.localSensor[1].value;  // Print sensor values to console
    println(tempVal2);
    background(000);
    stroke(9,152,243);
    line(0,910,50,833);
    line(50,833,100,866);
    line(100,866,150,898);
    line(150,898,200,937);
    line(200,937,250,902);
    line(250,902,300,850);
    line(300,850,350,802);
    line(350,802,400,723);
    line(400,723,450,632);
    line(450,632,500,562);
    line(500,562,550,278);
    line(550,278,600,490);
    line(600,490,650,563);
    line(650,563,700,697);
    line(700,697,750,790);
    line(750,790,800,867);
    line(800,867,850,899);
    line(850,899,900,935);
    line(900,935,950,870);
    line(950,870,1000,799);
    line(1000,799,1050,725);
    line(1050,725,1100,662);
    line(1100,662,1150,619);
    line(1150,619,1200,583);
    line(1200,583,1250,520);
    line(1250,520,1300,408);
    line(1300,408,1350,331);
    line(1350,331,1400,294);
    line(1400,294,1450,271);
    line(1450,271,1500,265);
    line(1500,265,1550,354);
    line(1550,354,1600,431);
    fill(255,0,0);
    noStroke();
    ellipse(50,833,50,50);
    ellipse(85,850,55,55);
    ellipse(130,875,57,57);
    ellipse(160,900,60,60);
    ellipse(200,937,65,65);
    ellipse(235,910,60,60);
    ellipse(250,880,57,57);
    ellipse(285,850,55,55);
    ellipse(310,820,50,50);
    fill(250,9,88);
    ellipse(342,795,47,47);
    ellipse(370,765,45,45);
    ellipse(400,740,45,45);
    ellipse(415,715,43,43);
    ellipse(430,690,41,41);
    ellipse(445,660,39,39);
    fill(179,9,250);
    ellipse(460,630,37,37);
    ellipse(475,600,35,35);
    ellipse(490,570,33,33);
    ellipse(505,545,31,31);
    ellipse(517,520,29,29);
    fill(51,12,244);
    ellipse(520,500,27,27);
    ellipse(522,480,27,27);
    ellipse(524,460,25,25);
    ellipse(526,440,23,23);
    ellipse(528,420,23,23);
    ellipse(530,400,21,21);
    ellipse(533,380,21,21);
    ellipse(536,360,19,19);
    ellipse(539,345,19,19);
    ellipse(542,330,17,17);
    ellipse(545,315,17,17);
    ellipse(548,300,15,15);
    ellipse(551,289,15,15);
    ellipse(552,285,13,13);
    ellipse(555,289,13,13);
    ellipse(557,300,15,15);
    ellipse(560,315,15,15);
    ellipse(563,330,17,17);
    ellipse(566,345,19,19);
    ellipse(569,360,19,19);
    ellipse(572,375,21,21);
    ellipse(575,390,21,21);
    ellipse(578,405,23,23);
    ellipse(581,420,23,23);
    ellipse(584,435,25,25);
    ellipse(587,450,27,27);
    ellipse(590,465,27,27);
    ellipse(593,480,29,29);
    fill(179,9,250);
    ellipse(600,495,31,31);
    ellipse(610,520,31,31);
    ellipse(625,545,33,33);
    ellipse(640,570,35,35);
    ellipse(665,595,37,37);
    ellipse(685,620,41,41);
    ellipse(695,650,43,43);
    fill(250,9,88);
    ellipse(705,680,45,45);
    ellipse(715,710,47,47);
    ellipse(725,740,47,47);
    ellipse(735,770,47,47);
    ellipse(745,800,49,49);
    fill(255,0,0);
    ellipse(760,830,50,50);
    ellipse(775,860,51,51);
    ellipse(810,890,53,53);
    ellipse(840,910,55,55);
    ellipse(870,930,55,55);
    ellipse(900,910,55,55);
    ellipse(920,880,53,53);
    ellipse(940,850,53,53);
    ellipse(750,50,65,65);
    fill(51,12,244);
    ellipse(750,100,20,20);
    textFont(f,12);
    fill(255,255,255);
    text("TIME",500,995);
    pushMatrix();
    translate(5,350);
    rotate(1.57);
    text("LIGHT LEVEL, where 0 = brightest and 1023 = darkest",0,0);
    popMatrix();
    fill(246,218,144);
    text("12pm",200,985);
    text("12am",555,985);
    text("12pm",870,985);
    text("0",20,985);
    text("250",20,750);
    text("500",20,500);
    text("750",20,250);
    text("1000",20,15);
    text("= CLOSEST PROXIMITY",800,55);
    text("= FURTHEST PROXIMITY",800,105);
    //p.debug();
}


void onReceiveEEML(DataIn d){ 
    p.updateRemoteSensors(d);
    delay(10000);
}
