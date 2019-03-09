final String line="i am:\n\na boy \nwho is very handsome\nand smart\nalways is studing\n\nwho am i?";
String answer;
PFont f;
PFont a;
boolean answerWindow;
import javax.swing.JOptionPane;
String realAnswer;
int colors=#838685;
int answerWincolor=#6BB1DE;
int textColor=#FFFFFF;

void setup(){
  size(500,500);
}

void mousePressed(){
  if(mousePressed&&mouseX>width/4&&mouseX<width/4+250&&mouseY>height*3/4&&mouseY<height*3/4+100){
    answerWindow=true;
  }
}

void draw(){
  answerWindows();
  background(colors);
  drawText();
  answerArea();
}

void answerWindows(){
  String answers="";
  if (answerWindow){
    answers=JOptionPane.showInputDialog("Type your answer:");
  }
  if (answers.equals("IAWAAW")){
    colors=0;
    textColor=0;
    answerWincolor=0;
    answerWindow=false;
  }else{
    answerWindow=false;
  }
}

void drawText(){
  fill(textColor);
  textAlign(CENTER,CENTER);
  f = createFont("Arial",32,true);
  textFont(f,32);
  text(line.toUpperCase(),width/2,height/2.8);
}

void answerArea(){
  a = createFont("Arial",40,true); ;
  fill(answerWincolor);
  rect(width/4,height*3/4,250,100);
  textFont(f,32);
  textAlign(CENTER,CENTER);
  fill(0);
  textFont(a,40);
  text("Answer",width/2,height-80);
}
