import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
Boolean draw=false;
float drawButtonX,drawButtonY,drawButtonWidth,drawButtonHeight;
color white=#FFFFFF,grey=#A8AAAF, resetButtonColour=#FFFFFF,buttonFill, black=#050505,resetDefaultInk=#FFFFFF;
float stampButtonX,stampButtonY,stampButtonWidth,stampButtonHeight;
float eraseButtonX,eraseButtonY,eraseButtonWidth,eraseButtonHeight;
float colourButtonX,colourButtonY,colourButtonWidth,colourButtonHeight;
float templateButtonX,templateButtonY,templateButtonWidth,templateButtonHeight;
String title1 = "Draw Tools";
float titleX1, titleY1, titleWidth1, titleHeight1;
PFont titleFont1;
int titleSize;
String title2 = "StampTools";
float titleX2, titleY2, titleWidth2, titleHeight2;
PFont titleFont2;
String title3 = "Eraser";
float titleX3, titleY3, titleWidth3, titleHeight3;
PFont titleFont3;
String title4 = "Colour";
float titleX4, titleY4, titleWidth4, titleHeight4;
PFont titleFont4;
String title5 = "Templates";
float titleX5, titleY5, titleWidth5, titleHeight5;
PFont titleFont5;
Boolean drawingtoolsON=false;
float rectX1, rectY1, rectWidth1, rectHeight1;
float toolX1,toolY1,toolWidth1, toolHeight1;
float rectX2, rectY2, rectWidth2, rectHeight2;
float toolX2,toolY2,toolWidth2, toolHeight2;
float rectX3, rectY3, rectWidth3, rectHeight3;
float toolX3,toolY3,toolWidth3, toolHeight3;
Boolean thinlineON=false;
//
void setup()
{
  //Display Checker
  //Display Orientation Checker
  //Display and CANVAS Checker
  size(1200, 900); //Landscape (Portrait or Square)
  //
  //Population
  drawingSurfaceX = width*1/5;
  drawingSurfaceY = height*1/20;
  drawingSurfaceWidth = width*3/5;
  drawingSurfaceHeight = height*4/5;
  drawingDiameter = width*1/100;
  //
  drawButtonX=width*1/35;
  drawButtonY=height*1/5;
  drawButtonWidth=width*1/15;
  drawButtonHeight=height*1/25;
  //
  stampButtonX=width*1/35;
  stampButtonY=height*1/3;
  stampButtonWidth=width*1/15;
  stampButtonHeight=height*1/25;
  //
  eraseButtonX=width*1/35;
  eraseButtonY=height*1/2;
  eraseButtonWidth=width*1/15;
  eraseButtonHeight=height*1/25;
  //
  colourButtonX=width*1/35;
  colourButtonY=height*1/1.5;
  colourButtonWidth=width*1/15;
  colourButtonHeight=height*1/25;
  //
  templateButtonX=width*1/35;
  templateButtonY=height*1/1.2;
  templateButtonWidth=width*1/15;
  templateButtonHeight=height*1/25;
  //
  titleX1 =width*1/35 ;
  titleY1 = height*1/5;
  titleWidth1 = width*1/15;
  titleHeight1 = height*1/25;
  //
   titleX2 =width*1/35 ;
  titleY2 = height*1/3;
  titleWidth2 = width*1/15;
  titleHeight2= height*1/25;
  //
  titleX3 =width*1/35 ;
  titleY3 = height*1/2;
  titleWidth3 = width*1/15;
  titleHeight3= height*1/25;
  //
  titleX4 =width*1/35 ;
  titleY4 = height*1/1.5;
  titleWidth4 = width*1/15;
  titleHeight4= height*1/25;
  //
  titleX5 =width*1/35 ;
  titleY5 = height*1/1.2;
  titleWidth5 = width*1/15;
  titleHeight5= height*1/25;
  //
  //Drawing Tools
  rectX1=width*1/10.5;
  rectY1=height*1/5;
  rectWidth1=width*1/25;
  rectHeight1=height*1/25;
  rectX2=width*1/6;
  rectY2=height*1/5;
  rectWidth2=width*1/25;
  rectHeight2=height*1/25;
  rectX3=width*1/4.5;
  rectY3=height*1/5;
  rectWidth3=width*1/25;
  rectHeight3=height*1/25;
 
  //Drawing Tools
   //toolX1=;
   //toolY1=;
   //toolWidth1=;
   //toolHeight1=;
   // toolX2=;
   //toolY2=;
   //toolWidth2=;
   //toolHeight2=;
   // toolX3=;
   // toolY3=;
   //toolWidth3=; 
   //toolHeight3=;
  
  //
  titleFont1 = createFont("Harrington", 20); //Verify the font exists in Processing.JAVA
  titleFont2 = createFont("Harrington", 20); //Verify the font exists in Processing.JAVA
  titleFont3 = createFont("Harrington", 20); //Verify the font exists in Processing.JAVA
  titleFont4 = createFont("Harrington", 20); //Verify the font exists in Processing.JAVA
  titleFont5 = createFont("Harrington", 20); //Verify the font exists in Processing.JAVA
  //
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
  //
}//End setup
//
void draw()
{
  //Drawing Tools
   if(drawingtoolsON==true)rect(rectX1, rectY1, rectWidth1, rectHeight1);
   if(drawingtoolsON==true)rect(rectX2, rectY2, rectWidth2, rectHeight2);
   if(drawingtoolsON==true)rect(rectX3, rectY3, rectWidth3, rectHeight3);
 //Layout our text space and typographical features
  rect(titleX1, titleY1, titleWidth1, titleHeight1);
  rect(titleX2, titleY2, titleWidth2, titleHeight2);
  rect(titleX3, titleY3, titleWidth3, titleHeight3);
  rect(titleX4, titleY4, titleWidth4, titleHeight4);
  //
  //ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool
  if ( drawingtoolsON== true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) line (mouseX, mouseY, pmouseX, pmouseY);
  //
  //Hover-over
  if ( mouseX> drawButtonX && mouseX< drawButtonX+drawButtonWidth && mouseY> drawButtonY && mouseY<  drawButtonY+  drawButtonHeight) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  rect(drawButtonX, drawButtonY, drawButtonWidth, drawButtonHeight);
  fill(resetButtonColour);
  //
  fill(black); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 15; //Change this number until it fits
  textFont(titleFont1, titleSize);
  text(title1, titleX1, titleY1, titleWidth1, titleHeight1);
  fill(resetDefaultInk);
  //
   //Hover-over
  if ( mouseX> stampButtonX && mouseX< stampButtonX+stampButtonWidth && mouseY> stampButtonY && mouseY< stampButtonY+ stampButtonHeight) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  rect( stampButtonX,  stampButtonY,  stampButtonWidth,  stampButtonHeight);
  fill(resetButtonColour);
  //
  fill(black); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 15; //Change this number until it fits
  textFont(titleFont2, titleSize);
  text(title2, titleX2, titleY2, titleWidth2, titleHeight2);
  fill(resetDefaultInk);
  //
   //Hover-over
  if ( mouseX> eraseButtonX && mouseX< eraseButtonX+eraseButtonWidth && mouseY> eraseButtonY && mouseY<  eraseButtonY+ eraseButtonHeight) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  rect(eraseButtonX, eraseButtonY,eraseButtonWidth,eraseButtonHeight);
  fill(resetButtonColour);
  //
   fill(black); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 15; //Change this number until it fits
  textFont(titleFont3, titleSize);
  text(title3, titleX3, titleY3, titleWidth3, titleHeight3);
  fill(resetDefaultInk);
  //
  //Hover-over
  if ( mouseX>  colourButtonX && mouseX< colourButtonX+ colourButtonWidth && mouseY>  colourButtonY && mouseY<   colourButtonY+  colourButtonHeight) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  rect( colourButtonX, colourButtonY, colourButtonWidth, colourButtonHeight);
  fill(resetButtonColour);
  //
  fill(black); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 15; //Change this number until it fits
  textFont(titleFont4, titleSize);
  text(title4, titleX4, titleY4, titleWidth4, titleHeight4);
  fill(resetDefaultInk);
  //
  //Hover-over
  if ( mouseX>   templateButtonX && mouseX<  templateButtonX+  templateButtonWidth && mouseY>  templateButtonY && mouseY<    templateButtonY+   templateButtonHeight) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  rect(  templateButtonX,  templateButtonY, templateButtonWidth,  templateButtonHeight);
  fill(resetButtonColour);
  //
  fill(black); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 15; //Change this number until it fits
  textFont(titleFont5, titleSize);
  text(title5, titleX5, titleY5, titleWidth5, titleHeight5);
  fill(resetDefaultInk);
  //
  
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed()
{
  if ( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    if ( draw == true ) {
      draw=false;
    } else {
      draw = true;
    }
  }
  if ( mouseX>drawButtonX && mouseX<drawButtonX+drawButtonWidth && mouseY>drawButtonY && mouseY<drawButtonY+drawButtonHeight ) {
    if (  drawingtoolsON== false) {
     drawingtoolsON=true;
    } else {
     drawingtoolsON  = false;
    }
  }
  if ( mouseX>stampButtonX && mouseX<stampButtonX+stampButtonWidth && mouseY>stampButtonY && mouseY<stampButtonY+stampButtonHeight ) {
    if ( draw == true ) {
      draw=false;
    } else {
      draw = true;
    }
  }
  //End drawing tools
}//End mousePressed
