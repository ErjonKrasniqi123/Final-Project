import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//Global Variables
Minim minim;
AudioPlayer song1, song2;
AudioMetaData songMetaData1;
//

//
Boolean playON=false, pauseON=true; 
//
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
float toolX1,toolY1,tool1Diameter;
float rectX2, rectY2, rectWidth2, rectHeight2;
float toolX2,toolY2,tool2Diameter;
float rectX3, rectY3, rectWidth3, rectHeight3;
float toolX3,toolY3,tool3Diameter;
float thinlineButtonX,thinlineButtonY,thinlineButtonWidth,thinlineButtonHeight;
Boolean thinlineON=false;
float mediumlineButtonX,mediumlineButtonY,mediumlineButtonWidth,mediumlineButtonHeight;
Boolean mediumlineON=false;
float thicklineButtonX,thicklineButtonY,thicklineButtonWidth,thicklineButtonHeight;
Boolean thicklineON=false;
float lineThickness;
float rectX4, rectY4, rectWidth4, rectHeight4;
float toolX4,toolY4,tool4Diameter;
float rectX5, rectY5, rectWidth5, rectHeight5;
float toolX5,toolY5,tool5Height, tool5Width;
float rectX6, rectY6, rectWidth6, rectHeight6;
float tool6X6, tool6Y6,tool6X7, tool6Y7,tool6X8,tool6Y8;
Boolean stamptoolsON=false;
float circleStampButtonX,circleStampButtonY, circleStampButtonWidth, circleStampButtonHeight;
Boolean circleStampON=false;
float rectStampButtonX,rectStampButtonY, rectStampButtonWidth, rectStampButtonHeight;
Boolean rectStampON=false;
float triStampButtonX,triStampButtonY, triStampButtonWidth, triStampButtonHeight;
Boolean triStampON=false;
float circleStampX,circleStampY, circleStampDiameter;
float rectStampX, rectStampY, rectStampWidth, rectStampHeight;
float triStampX1, triStampY1,triStampX2, triStampY2,triStampX3, triStampY3;
Boolean eraseOn=false;
float eraseX,eraseY, eraseWidth, eraseHeight;
float eraseButtonX1,eraseButtonY1,eraseButtonWidth1,eraseButtonHeight1;
Boolean colorSelectON=false;
float blueButtonX, blueButtonY,blueButtonWidth, blueButtonHeight;
float redButtonX, redButtonY,redButtonWidth, redButtonHeight;
float greenButtonX, greenButtonY, greenButtonWidth, greenButtonHeight;
float yellowButtonX, yellowButtonY,yellowButtonWidth, yellowButtonHeight;
color lightblue=#03CEFF, darkblue=#2303FF, lightred=#FF0505, darkred=#D83F3F, lightgreen=#54FF00, darkgreen=#51CB15, lightyellow=#FAFF0F,darkyellow=#E6EA18;
Boolean blueON=false, redON=false, greenON=false, yellowON=false;
float templateX1, templateY1, templateWidth1, templateHeight1;
float templateX2, templateY2, templateWidth2, templateHeight2;
float templateButtonX1, templateButtonY1, templateButtonWidth1, templateButtonHeight1;
float templateButtonX2, templateButtonY2, templateButtonWidth2, templateButtonHeight2;
Boolean template1ON=false, template2ON=false;
String title6 = "Spill";
float titleX6, titleY6, titleWidth6, titleHeight6;
PFont titleFont6;
String title7 = "Owl";
float titleX7, titleY7, titleWidth7, titleHeight7;
PFont titleFont7;
Boolean templatesON=false;
PImage pic1, pic2, pic3;
float imageX1, imageY1, imageWidth1, imageHeight1, imageLargerDimension1, imageSmallerDimension1,imageWidthRatio1=0.0, imageHeightRatio1=0.0; 
float imageX2, imageY2, imageWidth2, imageHeight2, imageLargerDimension2, imageSmallerDimension2,imageWidthRatio2=0.0, imageHeightRatio2=0.0 ;
float imageX3, imageY3, imageWidth3, imageHeight3, imageLargerDimension3, imageSmallerDimension3,imageWidthRatio3=0.0, imageHeightRatio3=0.0; 
float picWidthAdjusted1, picHeightAdjusted1;
float picWidthAdjusted2, picHeightAdjusted2;
float picWidthAdjusted3, picHeightAdjusted3;
Boolean  widthLarger1 = false, heightLarger1 = false;
Boolean  widthLarger2 = false, heightLarger2 = false;
Boolean  widthLarger3 = false, heightLarger3 = false;
float playButtonX, playButtonY,playButtonWidth,playButtonHeight;
float pauseButtonX, pauseButtonY,pauseButtonWidth,pauseButtonHeight;
String title8 = "Stop/ Restart";
float titleX8, titleY8, titleWidth8, titleHeight8;
PFont titleFont8;
String title9 = "Play";
float titleX9, titleY9, titleWidth9, titleHeight9;
PFont titleFont9;
String title10 = "SongTitle: Coast, Length:2:36,Rating:Unrated";
float titleX10, titleY10, titleWidth10, titleHeight10;
PFont titleFont10;
color backgroundColour=#BCBCBC;
float resetStrokeWeight;
void setup()
{
  //Display Checker
  //Display Orientation Checker
  //Display and CANVAS Checker
  size(1200, 900); //Landscape (Portrait or Square)
  //
  background(backgroundColour);
  //
  println (width, height, displayWidth, displayHeight);
  int appWidth = width;
  int appHeight = height;
  if (width > displayWidth || height > displayHeight) {//CANVAS in Display Checker
    //CANVAS Too Big
    appWidth =displayWidth;
    appHeight = displayHeight;
    println ("CANVAS needed to be readjusted to fit on your monitor.");
  } else {
    println("CANVAS is Good to go on your display.");
  }//End CANVAS in Display Checker
  //Display Orientation
  String ls = "Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru turn your phun";
  String orientation = ( appWidth>=appHeight) ? ls : p; //Ternary Operator, repeats the IF-Else structure to populated a variable
  println( DO, orientation );
  if ( orientation==ls ) {//Test for chosen display orientation
    println("Good to go");
  } else {
    appWidth *=0; //assignment operator, words like appWidth=appWidth*0
    appHeight *=0;
    println(instruct);
  }
  //
  minim = new Minim(this);
  song1 = minim.loadFile("Coast - Anno Domini Beats.mp3");
  songMetaData1 = song1.getMetaData();
  //
   song2 = minim.loadFile("Xylophone Tip Toe Scale Up.mp3");
  //
  //Population
  drawingSurfaceX = appWidth*1/5;
  drawingSurfaceY = appHeight*1/20;
  drawingSurfaceWidth = appWidth*3/5;
  drawingSurfaceHeight = appHeight*4/5;
  drawingDiameter = appWidth*1/100;
  //
  drawButtonX=appWidth*1/35;
  drawButtonY=appHeight*1/5;
  drawButtonWidth=appWidth*1/15;
  drawButtonHeight=appHeight*1/25;
  //
  stampButtonX=appWidth*1/35;
  stampButtonY=appHeight*1/3;
  stampButtonWidth=appWidth*1/15;
  stampButtonHeight=appHeight*1/25;
  //
  eraseButtonX=appWidth*1/35;
  eraseButtonY=appHeight*1/2;
  eraseButtonWidth=appWidth*1/15;
  eraseButtonHeight=appHeight*1/25;
  //
  colourButtonX=appWidth*1/35;
  colourButtonY=appHeight*1/1.5;
  colourButtonWidth=appWidth*1/15;
  colourButtonHeight=appHeight*1/25;
  //
  templateButtonX=appWidth*1/35;
  templateButtonY=appHeight*1/1.2;
  templateButtonWidth=appWidth*1/15;
  templateButtonHeight=appHeight*1/25;
  //
  titleX1 =appWidth*1/35 ;
  titleY1 = appHeight*1/5;
  titleWidth1 = appWidth*1/15;
  titleHeight1 = appHeight*1/25;
  //
   titleX2 =appWidth*1/35 ;
  titleY2 = appHeight*1/3;
  titleWidth2 = appWidth*1/15;
  titleHeight2= appHeight*1/25;
  //
  titleX3 =appWidth*1/35 ;
  titleY3 = appHeight*1/2;
  titleWidth3 = appWidth*1/15;
  titleHeight3= appHeight*1/25;
  //
  titleX4 =appWidth*1/35 ;
  titleY4 = appHeight*1/1.5;
  titleWidth4 = appWidth*1/15;
  titleHeight4= appHeight*1/25;
  //
  titleX5 =appWidth*1/35 ;
  titleY5 = appHeight*1/1.2;
  titleWidth5 = appWidth*1/15;
  titleHeight5= appHeight*1/25;
  //
  //Drawing Tools
  rectX1=appWidth*1/10.5;
  rectY1=appHeight*1/5;
  rectWidth1=appWidth*1/35;
  rectHeight1=appHeight*1/25;
  rectX2=appWidth*1/8;
  rectY2=appHeight*1/5;
  rectWidth2=appWidth*1/35;
  rectHeight2=appHeight*1/25;
  rectX3=appWidth*1/6.45;
  rectY3=appHeight*1/5;
  rectWidth3=appWidth*1/35;
  rectHeight3=appHeight*1/25;
 
  //Drawing Tools
   toolX1=appWidth*1/9.3;
   toolY1=appHeight*1/4.5;
   tool1Diameter=appHeight/200;
   toolX2=appWidth*1/7.2;
   toolY2=appHeight*1/4.5;
   tool2Diameter=appHeight/100;
   toolX3=appWidth*1/5.9;
   toolY3=appHeight*1/4.5;
   tool3Diameter=appHeight/50;
   //
   thinlineButtonX=appWidth*1/10.5;
   thinlineButtonY=appHeight*1/5;
   thinlineButtonWidth=appWidth*1/35;
   thinlineButtonHeight=appHeight*1/25;
   //
   mediumlineButtonX=appWidth*1/8;
   mediumlineButtonY=appHeight*1/5;
   mediumlineButtonWidth=appWidth*1/35;
   mediumlineButtonHeight=appHeight*1/25;
   //
    thicklineButtonX=appWidth*1/6.45;
   thicklineButtonY=appHeight*1/5;
   thicklineButtonWidth=appWidth*1/35;
   thicklineButtonHeight=appHeight*1/25;
   //
    //Buttons for stamp
   circleStampButtonX=appWidth*1/10.5;
   circleStampButtonY=appHeight*1/3;
   circleStampButtonWidth=appWidth*1/35;
   circleStampButtonHeight=appHeight*1/25;
   //
   rectStampButtonX=appWidth*1/8;
   rectStampButtonY=appHeight*1/3;
   rectStampButtonWidth=appWidth*1/35;
   rectStampButtonHeight=appHeight*1/25;
   //
   triStampButtonX=appWidth*1/6.45;
   triStampButtonY=appHeight*1/3;
   triStampButtonWidth=appWidth*1/35;
   triStampButtonHeight=appHeight*1/25;
   //
   //Stamp Tools
  rectX4=appWidth*1/10.5;
  rectY4=appHeight*1/3;
  rectWidth4=appWidth*1/35;
  rectHeight4=appHeight*1/25;
  rectX5=appWidth*1/8;
  rectY5=appHeight*1/3;
  rectWidth5=appWidth*1/35;
  rectHeight5=appHeight*1/25;
  rectX6=appWidth*1/6.45;
  rectY6=appHeight*1/3;
  rectWidth6=appWidth*1/35;
  rectHeight6=appHeight*1/25;
 
  //Stamp Tools
   toolX4=appWidth*1/9.3;
   toolY4=appHeight*1/2.8;
   tool4Diameter=appHeight/100;
   toolX5=appWidth*1/7.45;
   toolY5=appHeight*1/2.9;
   tool5Height=appHeight*1/60;
   tool5Width=appWidth*1/60;
   //
   tool6X6=appWidth*1/6;
   tool6Y6=appHeight*1/3;
   tool6X7=appWidth*1/5.6;
   tool6Y7=appHeight*1/2.7;
   tool6X8=appWidth*1/6.3;
   tool6Y8=appHeight*1/2.7;
   //
   circleStampX=appWidth*1/9.3;
   circleStampY=appHeight*1/2.8;
   circleStampDiameter=appHeight/100;
   //
    rectStampX=appWidth*1/7.45;
   rectStampY=appHeight*1/2.9;
   rectStampWidth=appWidth*1/60;
   rectStampHeight=appHeight*1/60;
   //
    triStampX1=appWidth*1/6;
   triStampY1=appHeight*1/3;
   triStampX2=appWidth*1/5.6;
   triStampY2=appHeight*1/2.7;
   triStampX3=appWidth*1/6.3;
   triStampY3=appHeight*1/2.7;
   //
   //Eraser
   eraseX=appWidth*1/10;
   eraseY=appHeight*1/2;
   eraseWidth=appWidth*1/15;
   eraseHeight=appHeight*1/25;
   //
   eraseButtonX1=appWidth*1/10;
   eraseButtonY1=appHeight*1/2;
   eraseButtonWidth1=appWidth*1/15;
   eraseButtonHeight1=appHeight*1/25;
   //Colours
  
   //
   //Colour Button
   //Blue
   blueButtonX=appWidth*1/10;
   blueButtonY=appHeight*1/1.5;
   blueButtonWidth=appWidth*1/40;
   blueButtonHeight=appHeight*1/60;
   //Red
   redButtonX=appWidth*1/7.6;
   redButtonY=appHeight*1/1.5;
   redButtonWidth=appWidth*1/40;
   redButtonHeight=appHeight*1/60;
   //Green
   greenButtonX=appWidth*1/10;
   greenButtonY=appHeight*1/1.4;
   greenButtonWidth=appWidth*1/40;
   greenButtonHeight=appHeight*1/60;
   //Yellow
   yellowButtonX=appWidth*1/7.6;
   yellowButtonY=appHeight*1/1.4;
   yellowButtonWidth=appWidth*1/40;
   yellowButtonHeight=appHeight*1/60;
   //
   //Templates
   templateButtonX1=appWidth*1/10.5;
   templateButtonY1=appHeight*1/1.2;
   templateButtonWidth1=appWidth*1/25;
   templateButtonHeight1=appHeight*1/25;
   //
   templateButtonX2=appWidth*1/7.5;
   templateButtonY2=appHeight*1/1.2;
   templateButtonWidth2=appWidth*1/25;
   templateButtonHeight2=appHeight*1/25;
 //Text for Templates
 titleX6=appWidth*1/10.5;
 titleY6=appHeight*1/1.2;
 titleWidth6=appWidth*1/25;
 titleHeight6=appHeight*1/25;
 //
 titleX7=appWidth*1/7.5;
 titleY7=appHeight*1/1.2;
 titleWidth7=appWidth*1/25;
 titleHeight7=appHeight*1/25;
 //
  pic1 = loadImage("175-Free-Cartoon-Owl-Coloring-Page-Clipart.png"); //Dimensions: width 3281, height 3200
  pic2 = loadImage("clipart-milk-splash-9.png"); //Dimensions: width 1983, height 1752
  pic3 = loadImage("EFpencils-5bd6784746e0fb00514c3908.png"); //Dimensions: width 300, height 198
  int picWidth1 = 3281; 
  int picHeight1 = 3200; 
  int picWidth2 = 1983; 
  int picHeight2 = 1752; 
  int picWidth3 = 300; 
  int picHeight3 = 198; 
  //
  //
if ( picWidth1 >= picHeight1) {// Image Dimension Comparison
  //True if Landscape or Square
  imageLargerDimension1 = picWidth1;
  imageSmallerDimension1 = picHeight1;
  widthLarger1 = true;
} else {
  //False if Portrait
  imageLargerDimension1 = picHeight1;
  imageSmallerDimension1 = picWidth1;
  heightLarger1 = true;
}//End Image Dimension Comparison
println(imageSmallerDimension1, imageLargerDimension1, widthLarger1, heightLarger1);
//Aspect Ratio
//Note: single line IFs can be summarized into IF-ELSE or IF-ElseIF-Else
//Computer chooses which formulae to execute
if ( widthLarger1 == true ) imageWidthRatio1 = imageLargerDimension1 / imageLargerDimension1;
if ( widthLarger1 == true ) imageHeightRatio1 = imageSmallerDimension1 / imageLargerDimension1;
if ( heightLarger1 == true ) imageWidthRatio1 = imageSmallerDimension1 / imageLargerDimension1;
if ( heightLarger1== true ) imageHeightRatio1 = imageLargerDimension1 / imageLargerDimension1;
//Note:
//Answers must be 1.0 and between 0 & 1 (decimal)
//Ratio 1.0 similar to style="width:100%" (websites)
//Ratio of 0-1 similar to style="height:auto" (websites)
if ( picWidth2 >= picHeight2) {// Image Dimension Comparison
  //True if Landscape or Square
  imageLargerDimension2 = picWidth2;
  imageSmallerDimension2 = picHeight2;
  widthLarger2 = true;
} else {
  //False if Portrait
  imageLargerDimension2 = picHeight2;
  imageSmallerDimension2 = picWidth2;
  heightLarger2 = true;
}//End Image Dimension Comparison
println(imageSmallerDimension2, imageLargerDimension2, widthLarger2, heightLarger2);
//Aspect Ratio
//Note: single line IFs can be summarized into IF-ELSE or IF-ElseIF-Else
//Computer chooses which formulae to execute
if ( widthLarger2 == true ) imageWidthRatio2 = imageLargerDimension2 / imageLargerDimension2;
if ( widthLarger2 == true ) imageHeightRatio2 = imageSmallerDimension2 / imageLargerDimension2;
if ( heightLarger2 == true ) imageWidthRatio2 = imageSmallerDimension2 / imageLargerDimension2;
if ( heightLarger2== true ) imageHeightRatio2 = imageLargerDimension2 / imageLargerDimension2;
//
if ( picWidth3 >= picHeight3) {// Image Dimension Comparison
  //True if Landscape or Square
  imageLargerDimension3 = picWidth3;
  imageSmallerDimension3 = picHeight3;
  widthLarger2 = true;
} else {
  //False if Portrait
  imageLargerDimension3 = picHeight3;
  imageSmallerDimension3 = picWidth3;
  heightLarger3 = true;
}//End Image Dimension Comparison
println(imageSmallerDimension3, imageLargerDimension3, widthLarger3, heightLarger3);
//Aspect Ratio
//Note: single line IFs can be summarized into IF-ELSE or IF-ElseIF-Else
//Computer chooses which formulae to execute
if ( widthLarger3 == true ) imageWidthRatio3 = imageLargerDimension3 / imageLargerDimension3;
if ( widthLarger3 == true ) imageHeightRatio3 = imageSmallerDimension3 / imageLargerDimension3;
if ( heightLarger3 == true ) imageWidthRatio3 = imageSmallerDimension3 / imageLargerDimension3;
if ( heightLarger3== true ) imageHeightRatio3 = imageLargerDimension3/ imageLargerDimension3;
//
//
//Population of Rect()
imageX1 = appWidth*1/5;
imageY1 = appHeight*1/20;
imageWidth1 = appWidth*3/5;//CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
imageHeight1 = appHeight*4/5;
imageX2 = appWidth*1/5;
imageY2 = appHeight*1/20;
imageWidth2 = appWidth*3/5;//CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
imageHeight2 =appHeight*4/5;
imageX3 = appWidth*1/1.2;
imageY3 = appHeight*1/8;
imageWidth3 = appWidth*1/8;//CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
imageHeight3 =appHeight*1/4;
//
//Combination of Population of Image with Population of Rect
//Adjusted Image Variables for Aspect Ratio:(entire image willl be smaller due to aspect ratio)
picWidthAdjusted1= imageWidth1* imageWidthRatio1;
picHeightAdjusted1= imageHeight1 * imageHeightRatio1;
println(imageX1, imageY1, picWidthAdjusted1,  picHeightAdjusted1);//Note: println() also verifies decimal places, complier will trunca
picWidthAdjusted2= imageWidth2* imageWidthRatio2;
picHeightAdjusted2= imageHeight2 * imageHeightRatio2;
println(imageX2, imageY2, picWidthAdjusted2,  picHeightAdjusted2);//Note: println() also verifies decimal places, complier will trunca
picWidthAdjusted3= imageWidth3* imageWidthRatio3;
picHeightAdjusted3= imageHeight3 * imageHeightRatio3;
println(imageX3, imageY3, picWidthAdjusted3,  picHeightAdjusted3);//Note: println() also verifies decimal places, complier will trunca
//
playButtonX=appWidth*1/1.1;
playButtonY=appHeight*1/1.5;
playButtonWidth=appWidth*1/20;
playButtonHeight=appHeight*1/20;
//
pauseButtonX=appWidth*1/1.2;
pauseButtonY=appHeight*1/1.5;
pauseButtonWidth=appWidth*1/20;
pauseButtonHeight=appHeight*1/20;
//
//Play and Restart Songs
titleX8=appWidth*1/1.1;
titleY8=appHeight*1/1.5;
titleWidth8=appWidth*1/20;
titleHeight8=appHeight*1/20;
//
titleX9=appWidth*1/1.2;
titleY9=appHeight*1/1.5;
titleWidth9=appWidth*1/20;
titleHeight9=appHeight*1/20;
//
titleX10=appWidth*1/1.2;
titleY10=appHeight*1/2;
titleWidth10=appWidth*1/6;
titleHeight10=appHeight*1/6;
  //
  titleFont1 = createFont("Harrington", 15); //Verify the font exists in Processing.JAVA
  titleFont2 = createFont("Harrington", 15); //Verify the font exists in Processing.JAVA
  titleFont3 = createFont("Harrington", 15); //Verify the font exists in Processing.JAVA
  titleFont4 = createFont("Harrington", 15); //Verify the font exists in Processing.JAVA
  titleFont5 = createFont("Harrington", 15); //Verify the font exists in Processing.JAVA
  titleFont6 = createFont("Harrington", 15); //Verify the font exists in Processing.JAVA
  titleFont7 = createFont("Harrington", 15); //Verify the font exists in Processing.JAVA
  titleFont8= createFont("Harrington", 15); //Verify the font exists in Processing.JAVA
  titleFont9 = createFont("Harrington", 15); //Verify the font exists in Processing.JAVA
  titleFont10 = createFont("Harrington", 10); //Verify the font exists in Processing.JAVA
  //
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
  //
}//End setup
//
void draw()
{ //Hover-over
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
  //
//if(template1ON=true)rect(imageX1, imageY1, imageWidth1, imageHeight1); //Top Half of CANVAS
 //if(template2ON=true)rect(imageX2, imageY2, imageWidth2, imageHeight2); //Bottom Half of CANVAS
 rect(imageX3, imageY3, imageWidth3, imageHeight3); 
 //image(pic, imageX, imageY, imageWidth, imageHeight);
 //if(template1ON=true)image(pic1, imageX1, imageY1, picWidthAdjusted1, picHeightAdjusted1);
 //if(template2ON=true)image(pic2, imageX2, imageY2, picWidthAdjusted2, picHeightAdjusted2);
image(pic3, imageX3, imageY3, picWidthAdjusted3, picHeightAdjusted3);
 //Hover-over
  if ( mouseX>   thinlineButtonX && mouseX<  thinlineButtonX+  thinlineButtonWidth && mouseY>  thinlineButtonY && mouseY<    thinlineButtonY+   thinlineButtonHeight) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(drawingtoolsON==true)rect( thinlineButtonX, thinlineButtonY, thinlineButtonWidth,  thinlineButtonHeight);
  fill(resetButtonColour);
  //
  //Hover-over
  if ( mouseX>   mediumlineButtonX && mouseX<  mediumlineButtonX+  mediumlineButtonWidth && mouseY>  mediumlineButtonY && mouseY<    mediumlineButtonY+   mediumlineButtonHeight) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(drawingtoolsON==true)rect( mediumlineButtonX, mediumlineButtonY, mediumlineButtonWidth,  mediumlineButtonHeight);
  fill(resetButtonColour);
  //
   //Hover-over
  if ( mouseX>   thicklineButtonX && mouseX<    thicklineButtonX+    thicklineButtonWidth && mouseY>    thicklineButtonY && mouseY<      thicklineButtonY+    thicklineButtonHeight) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(drawingtoolsON==true)rect(   thicklineButtonX,   thicklineButtonY,   thicklineButtonWidth,    thicklineButtonHeight);
  fill(resetButtonColour);
  //
  //Buttons for Stamps
  //Hover-over
  if ( mouseX>   circleStampButtonX && mouseX<   circleStampButtonX+    circleStampButtonWidth && mouseY>    circleStampButtonY && mouseY<      circleStampButtonY+    circleStampButtonHeight) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(stamptoolsON==true)rect( circleStampButtonX,   circleStampButtonY,   circleStampButtonWidth,    circleStampButtonHeight);
  fill(resetButtonColour);
  //
   //Hover-over
  if ( mouseX>   rectStampButtonX && mouseX<   rectStampButtonX+    rectStampButtonWidth && mouseY>   rectStampButtonY && mouseY<      rectStampButtonY+   rectStampButtonHeight) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(stamptoolsON==true)rect( rectStampButtonX,   rectStampButtonY,   rectStampButtonWidth,    rectStampButtonHeight);
  fill(resetButtonColour);
  //
   //Hover-over
  if ( mouseX>   triStampButtonX && mouseX<   triStampButtonX+    triStampButtonWidth && mouseY>   triStampButtonY && mouseY<      triStampButtonY+   triStampButtonHeight) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(stamptoolsON==true)rect( triStampButtonX,   triStampButtonY,   triStampButtonWidth,    triStampButtonHeight);
  fill(resetButtonColour);
  //
  //Drawing Tools
   if(drawingtoolsON==true)rect(rectX1, rectY1, rectWidth1, rectHeight1);
   if(drawingtoolsON==true)rect(rectX2, rectY2, rectWidth2, rectHeight2);
   if(drawingtoolsON==true)rect(rectX3, rectY3, rectWidth3, rectHeight3);
   
   if(drawingtoolsON==true)ellipse(toolX1, toolY1, tool1Diameter,tool1Diameter);
   if(drawingtoolsON==true)ellipse(toolX2, toolY2, tool2Diameter,tool2Diameter);
   if(drawingtoolsON==true)ellipse(toolX3, toolY3, tool3Diameter,tool3Diameter);
   //
   //Stamp Tools
   if(stamptoolsON==true)rect(rectX4, rectY4, rectWidth4, rectHeight4);
   if(stamptoolsON==true)rect(rectX5, rectY5, rectWidth5, rectHeight5);
   if(stamptoolsON==true)rect(rectX6, rectY6, rectWidth6, rectHeight6);
   
   if(stamptoolsON==true)ellipse(toolX4, toolY4, tool4Diameter,tool4Diameter);
   if(stamptoolsON==true)rect(toolX5, toolY5, tool5Width,tool5Height);
   if(stamptoolsON==true)triangle( tool6X6, tool6Y6,tool6X7, tool6Y7,tool6X8,tool6Y8);
   //
   //Eraser
   if(eraseOn==true)rect(eraseX,eraseY, eraseWidth, eraseHeight);
   //Hover-over
  if ( mouseX>   eraseButtonX1 && mouseX<  eraseButtonX1+  eraseButtonWidth1 && mouseY> eraseButtonY1 && mouseY<    eraseButtonY1+   eraseButtonHeight1) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(eraseOn==true)rect( eraseButtonX1, eraseButtonY1, eraseButtonWidth1,  eraseButtonHeight1);
  fill(resetButtonColour);
  //End Eraser
  //
 
  
 //Layout our text space and typographical features
  rect(titleX1, titleY1, titleWidth1, titleHeight1);
  rect(titleX2, titleY2, titleWidth2, titleHeight2);
  rect(titleX3, titleY3, titleWidth3, titleHeight3);
  rect(titleX4, titleY4, titleWidth4, titleHeight4);
  //
  //Stamp Tools
   if ( circleStampON== true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight)  {
  circle(mouseX,mouseY, circleStampDiameter); 
  stroke (10);}
  //
    if ( rectStampON== true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight)  {
  rect( mouseX, mouseY,  rectStampWidth, rectStampHeight); 
  stroke (10);}
  //
   if ( triStampON== true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight)  {
  triangle( mouseX, mouseY,triStampX2, triStampY2,triStampX3, triStampY3); 
  stroke(10);}
  //ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool
 //
  if ( thinlineON=true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight)  {
  strokeWeight (lineThickness);
  line (mouseX, mouseY, pmouseX, pmouseY);
   strokeWeight(1);
  }
  if (  mediumlineON=true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
  strokeWeight(lineThickness);
  line (mouseX, mouseY, pmouseX, pmouseY); 
  strokeWeight(1);
  }
  if ( thicklineON=true  && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
  strokeWeight(lineThickness);
  line (mouseX, mouseY, pmouseX, pmouseY); 
  strokeWeight(1);
 }
 if ( eraseOn=true  && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
  strokeWeight(lineThickness);
  line (mouseX, mouseY, pmouseX, pmouseY); 
  strokeWeight(1);
 }
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
 
   //Colour Buttons
   //Hover-over
  if ( mouseX> blueButtonX && mouseX< blueButtonX+blueButtonWidth && mouseY> blueButtonY && mouseY< blueButtonY+ blueButtonHeight) {
    buttonFill = lightblue;
  } else {
    buttonFill = darkblue;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
   if(colorSelectON=true)rect( blueButtonX,  blueButtonY,  blueButtonWidth,  blueButtonHeight);
  fill(resetButtonColour);
  //
  //Hover-over
  if ( mouseX> redButtonX && mouseX< redButtonX+redButtonWidth && mouseY> redButtonY && mouseY< redButtonY+ redButtonHeight) {
    buttonFill = lightred;
  } else {
    buttonFill = darkred;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(colorSelectON=true)rect( redButtonX,  redButtonY,  redButtonWidth,  redButtonHeight);
  fill(resetButtonColour);
   //Hover-over
  if ( mouseX> greenButtonX && mouseX<  greenButtonX+ greenButtonWidth && mouseY>  greenButtonY && mouseY<  greenButtonY+  greenButtonHeight) {
    buttonFill = lightgreen;
  } else {
    buttonFill = darkgreen;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(colorSelectON=true)rect(  greenButtonX,  greenButtonY,   greenButtonWidth,  greenButtonHeight);
  fill(resetButtonColour);
  //
  //Hover-over
  if ( mouseX> yellowButtonX && mouseX<  yellowButtonX+ yellowButtonWidth && mouseY>  yellowButtonY && mouseY<  yellowButtonY+ yellowButtonHeight) {
    buttonFill = lightyellow;
  } else {
    buttonFill = darkyellow;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(colorSelectON=true)rect(  yellowButtonX, yellowButtonY,  yellowButtonWidth,  yellowButtonHeight);
  fill(resetButtonColour);
  //
  //Template Buttons
   //Hover-over
  if ( mouseX> templateButtonX1 && mouseX<  templateButtonX1+ templateButtonWidth1 && mouseY>  templateButtonY1 && mouseY<  templateButtonY1+ templateButtonHeight1) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(templatesON=true)rect(  templateButtonX1, templateButtonY1,  templateButtonWidth1,  templateButtonHeight1);
  fill(resetButtonColour);
  //
  //Hover-over
  if ( mouseX> templateButtonX2 && mouseX<  templateButtonX2+ templateButtonWidth2 && mouseY>  templateButtonY2 && mouseY<  templateButtonY2+ templateButtonHeight2) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(templatesON=true)rect(  templateButtonX2, templateButtonY2,  templateButtonWidth2,  templateButtonHeight2);
  fill(resetButtonColour);
  //
  fill(black); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 15; //Change this number until it fits
  textFont(titleFont6, titleSize);
  if(templatesON=true)text(title6, titleX6, titleY6, titleWidth6, titleHeight6);
  fill(resetDefaultInk);
  //
  fill(black); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 15; //Change this number until it fits
  textFont(titleFont7, titleSize);
  if(templatesON=true)text(title7, titleX7, titleY7, titleWidth7, titleHeight7);
  fill(resetDefaultInk);
  //
//Play Button
//Hover-over
  if ( mouseX> playButtonX && mouseX<  playButtonX+ playButtonWidth && mouseY>  playButtonY && mouseY< playButtonY+ playButtonHeight) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  rect(  playButtonX, playButtonY, playButtonWidth,  playButtonHeight);
  fill(resetButtonColour);
//Hover-over
  if ( mouseX> pauseButtonX && mouseX<  pauseButtonX+ pauseButtonWidth && mouseY> pauseButtonY && mouseY< pauseButtonY+ pauseButtonHeight) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  rect(  pauseButtonX, pauseButtonY, pauseButtonWidth,  pauseButtonHeight);
  fill(resetButtonColour);
  //
  //
   fill(black); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 15; //Change this number until it fits
  textFont(titleFont8, titleSize);
  text(title8, titleX8, titleY8, titleWidth8, titleHeight8);
  fill(resetDefaultInk);
  //
  fill(black); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 15; //Change this number until it fits
  textFont(titleFont9, titleSize);
  text(title9, titleX9, titleY9, titleWidth9, titleHeight9);
  fill(resetDefaultInk);
  //
   fill(black); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 15; //Change this number until it fits
  textFont(titleFont10, titleSize);
  text(title10, titleX10, titleY10, titleWidth10, titleHeight10);
  fill(resetDefaultInk);
  //
 
 
}//End draw
//
void keyPressed()
{
  if (key=='q' || key=='Q') exit();
   if ( key=='f' || key=='F' ) song1.skip(1000); // skip forward 1 second (1000 milliseconds)
  if ( key=='r' || key=='R' ) song1.skip(-1000); // skip backwards 1 second (1000 milliseconds)
  if( key=='m' ) { //LOOP Function Once
    if ( key=='m' ) println("Looping Once");
    String keystr = String.valueOf(key);
    println("Number of Repeats is", keystr);
    int loopNum = int(keystr);
    song2.loop(loopNum); //Parameter is Parameter is number of repeats
    //if (
  }//End LOOP Function Once
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
    if ( stamptoolsON == true ) {
      stamptoolsON=false;
    } else {
      stamptoolsON = true;
    }
  }
   if ( mouseX>thinlineButtonX && mouseX<thinlineButtonX+thinlineButtonWidth && mouseY>thinlineButtonY && mouseY<thinlineButtonY+thinlineButtonHeight ) {
    if ( thinlineON == false) {
    thinlineON=true;
    } else {
     thinlineON = false;
    }
  }
   if (thinlineON==true) lineThickness=(10);
  if ( mouseX>mediumlineButtonX && mouseX<mediumlineButtonX+mediumlineButtonWidth && mouseY>mediumlineButtonY && mouseY<mediumlineButtonY+mediumlineButtonHeight ) {
    if ( mediumlineON == false) {
    mediumlineON=true;
    } else {
     mediumlineON = false;
    }
  }
   if (mediumlineON==true) lineThickness=(20);
   if ( mouseX>thicklineButtonX && mouseX<thicklineButtonX+thicklineButtonWidth && mouseY>thicklineButtonY && mouseY<thicklineButtonY+thicklineButtonHeight ) {
    if ( thicklineON == false) {
    thicklineON=true;
    } else {
     thicklineON = false;
    }
 if (thicklineON==true) lineThickness=(50);
   //
  }
  if ( mouseX>circleStampButtonX && mouseX<circleStampButtonX+circleStampButtonWidth && mouseY>circleStampButtonY && mouseY<circleStampButtonY+circleStampButtonHeight ) {
    if ( circleStampON== false) {
    circleStampON=true;
    } else {
     circleStampON = false;
    }
  }
    if(circleStampON==true);fill(black);
    
   if ( mouseX>rectStampButtonX && mouseX<rectStampButtonX+rectStampButtonWidth && mouseY>rectStampButtonY && mouseY<rectStampButtonY+rectStampButtonHeight ) {
    if ( rectStampON== false) {
    rectStampON=true;
    } else {
     rectStampON = false;
    }
  }
  if(rectStampON==true);fill(black);
  
  if ( mouseX>triStampButtonX && mouseX<triStampButtonX+triStampButtonWidth && mouseY>triStampButtonY && mouseY<triStampButtonY+triStampButtonHeight ) {
    if (triStampON== false) {
    triStampON=true;
    } else {
     triStampON = false;
    }
  }

  if(triStampON==true);fill(black);
  //
  if ( mouseX>eraseButtonX && mouseX<eraseButtonX+eraseButtonWidth && mouseY>eraseButtonY && mouseY<eraseButtonY+eraseButtonHeight ) {
    if ( eraseOn== false) {
    eraseOn=true;
    } else {
     eraseOn = false;
    }
  }
  if ( mouseX>colourButtonX && mouseX<colourButtonX+colourButtonWidth && mouseY>colourButtonY && mouseY<colourButtonY+colourButtonHeight ) {
    if (colorSelectON==false) {
    colorSelectON=true;
    } else {
     colorSelectON=false;
    }
  }
   if ( yellowON==true ) stroke(darkyellow) ;fill(darkyellow);
  if ( greenON==true ) stroke(darkgreen) ;fill(darkgreen);
  if ( blueON==true ) stroke(darkblue) ;fill(darkblue);
  if ( redON==true ) stroke(darkred) ;fill(darkred);
  if ( eraseOn==true ) stroke(white); fill(white);
  if ( mouseX>blueButtonX && mouseX<blueButtonX+blueButtonWidth && mouseY>blueButtonY && mouseY<blueButtonY+blueButtonHeight ) {
    if ( blueON==false) {
    blueON=true;
    } else {
     blueON = false;
    }
  }
  if ( mouseX>redButtonX && mouseX<redButtonX+redButtonWidth && mouseY>redButtonY && mouseY<redButtonY+redButtonHeight ) {
    if ( redON==false) {
    redON=true;
    } else {
     redON = false;
    }
  }
  if ( mouseX>greenButtonX && mouseX<greenButtonX+greenButtonWidth && mouseY>greenButtonY && mouseY<greenButtonY+greenButtonHeight ) {
    if (greenON==false) {
    greenON=true;
    } else {
     greenON = false;
    }
  }
  if ( mouseX>yellowButtonX && mouseX<yellowButtonX+yellowButtonWidth && mouseY>yellowButtonY && mouseY<yellowButtonY+yellowButtonHeight ) {
    if (yellowON==false) {
    yellowON=true;
    } else {
     yellowON = false;
    }
  }
  //
   if ( mouseX>templateButtonX && mouseX<templateButtonX+templateButtonWidth && mouseY>templateButtonY && mouseY<templateButtonY+templateButtonHeight ) {
    if (templatesON==false) {
    templatesON=true;
    } else {
     templatesON = false;
    }
  }
   if ( mouseX>templateButtonX1 && mouseX<templateButtonX1+templateButtonWidth1 && mouseY>templateButtonY1 && mouseY<templateButtonY1+templateButtonHeight1 ) {
    if (template1ON==false) {
    template1ON=true;
    } else {
     template1ON = false;
    }
  }
   if ( mouseX>templateButtonX2 && mouseX<templateButtonX2+templateButtonWidth2 && mouseY>templateButtonY2 && mouseY<templateButtonY2+templateButtonHeight2 ) {
    if (template2ON==false) {
    template2ON=true;
    } else {
     template2ON = false;
    }
  }
   if ( mouseX>playButtonX && mouseX<playButtonX+playButtonWidth && mouseY>playButtonY && mouseY<playButtonY+playButtonHeight ) {
    if (song1.isPlaying()) {
    song1.pause();
    song1.rewind();
    } else {
     playON = false;
    }
  }
  if ( mouseX>pauseButtonX && mouseX<pauseButtonX+pauseButtonWidth && mouseY>pauseButtonY && mouseY<pauseButtonY+pauseButtonHeight ) {
    if (song1.isPlaying()) {
    song1.pause();
     } else if ( song1.position() >= song1.length() - song1.length()*1/5 ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
}
  //
//End mousePressed
//End main program
