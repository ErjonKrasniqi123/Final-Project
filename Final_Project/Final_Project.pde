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
color white=#FFFFFF,grey=#A8AAAF, resetButtonColour=#FFFFFF,buttonFill;
float stampButtonX,stampButtonY,stampButtonWidth,stampButtonHeight;
float eraseButtonX,eraseButtonY,eraseButtonWidth,eraseButtonHeight;
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
  stampButtonY=height*1/10;
  stampButtonWidth=width*1/15;
  stampButtonHeight=height*1/25;
  //
  eraseButtonX=width*1/35;
  eraseButtonY=height*1/15;
  eraseButtonWidth=width*1/15;
  eraseButtonHeight=height*1/25;
  //
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
  //
}//End setup
//
void draw()
{
  //ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool
  if ( draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) line (mouseX, mouseY, pmouseX, pmouseY);
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
   //Hover-over
  if ( mouseX> stampButtonX && mouseX< stampButtonX+stampButtonWidth && mouseY> stampButtonY && mouseY< stampButtonY+ stampButtonHeight) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  rect( stampButtonX,  stampButtonY,  stampButtonWidth,  stampButtonHeight);
  fill(resetButtonColour);
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
    if ( draw == true ) {
      draw=false;
    } else {
      draw = true;
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
