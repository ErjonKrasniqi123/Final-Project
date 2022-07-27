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
float blueX, blueY,blueWidth, blueHeight;
float redX, redY,redWidth, redHeight;
float greenX, greenY, greenWidth, greenHeight;
float yellowX, yellowY,yellowWidth, yellowHeight;
float blueButtonX, blueButtonY,blueButtonWidth, blueButtonHeight;
float redButtonX, redButtonY,redButtonWidth, redButtonHeight;
float greenButtonX, greenButtonY, greenButtonWidth, greenButtonHeight;
float yellowButtonX, yellowButtonY,yellowButtonWidth, yellowButtonHeight;
Boolean colourON=false;
color lightblue=#03CEFF, darkblue=#2303FF, lightred=#FF0505, darkred=#D83F3F, lightgreen=#54FF00, darkgreen=#51CB15, lightyellow=#FAFF0F,darkyellow=#E6EA18;
Boolean blueON=false, redON=false, greenON=false, yellowON=false;
float templateX1, templateY1, templateWidth1, templateHeight1;
float templateX2, templateY2, templateWidth2, templateHeight2;
float templateButtonX1, templateButtonY1, templateButtonWidth1, templateButtonHeight1;
float templateButtonX2, templateButtonY2, templateButtonWidth2, templateButtonHeight2;
Boolean template1ON=false, template2ON=false;
String title6 = "Lion";
float titleX6, titleY6, titleWidth6, titleHeight6;
PFont titleFont6;
String title7 = "Bug";
float titleX7, titleY7, titleWidth7, titleHeight7;
PFont titleFont7;
Boolean templatesON=false;
PImage pic1, pic2;
float imageX1, imageY1, imageWidth1, imageHeight1, imageLargerDimension1, imageSmallerDimension1,imageWidthRatio1=0.0, imageHeightRatio1=0.0; 
float imageX2, imageY2, imageWidth2, imageHeight2, imageLargerDimension2, imageSmallerDimension2,imageWidthRatio2=0.0, imageHeightRatio2=0.0 ;
float picWidthAdjusted1, picHeightAdjusted1;
float picWidthAdjusted2, picHeightAdjusted2;
Boolean  widthLarger1 = false, heightLarger1 = false;
Boolean  widthLarger2 = false, heightLarger2 = false;
void setup()
{
  //Display Checker
  //Display Orientation Checker
  //Display and CANVAS Checker
  size(1200, 900); //Landscape (Portrait or Square)
  //
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
  rectWidth1=width*1/35;
  rectHeight1=height*1/25;
  rectX2=width*1/8;
  rectY2=height*1/5;
  rectWidth2=width*1/35;
  rectHeight2=height*1/25;
  rectX3=width*1/6.45;
  rectY3=height*1/5;
  rectWidth3=width*1/35;
  rectHeight3=height*1/25;
 
  //Drawing Tools
   toolX1=width*1/9.3;
   toolY1=height*1/4.5;
   tool1Diameter=height/200;
   toolX2=width*1/7.2;
   toolY2=height*1/4.5;
   tool2Diameter=height/100;
   toolX3=width*1/5.9;
   toolY3=height*1/4.5;
   tool3Diameter=height/50;
   //
   thinlineButtonX=width*1/10.5;
   thinlineButtonY=height*1/5;
   thinlineButtonWidth=width*1/35;
   thinlineButtonHeight=height*1/25;
   //
   mediumlineButtonX=width*1/8;
   mediumlineButtonY=height*1/5;
   mediumlineButtonWidth=width*1/35;
   mediumlineButtonHeight=height*1/25;
   //
    thicklineButtonX=width*1/6.45;
   thicklineButtonY=height*1/5;
   thicklineButtonWidth=width*1/35;
   thicklineButtonHeight=height*1/25;
   //
    //Buttons for stamp
   circleStampButtonX=width*1/10.5;
   circleStampButtonY=height*1/3;
   circleStampButtonWidth=width*1/35;
   circleStampButtonHeight=height*1/25;
   //
   rectStampButtonX=width*1/8;
   rectStampButtonY=height*1/3;
   rectStampButtonWidth=width*1/35;
   rectStampButtonHeight=height*1/25;
   //
   triStampButtonX=width*1/6.45;
   triStampButtonY=height*1/3;
   triStampButtonWidth=width*1/35;
   triStampButtonHeight=height*1/25;
   //
   //Stamp Tools
  rectX4=width*1/10.5;
  rectY4=height*1/3;
  rectWidth4=width*1/35;
  rectHeight4=height*1/25;
  rectX5=width*1/8;
  rectY5=height*1/3;
  rectWidth5=width*1/35;
  rectHeight5=height*1/25;
  rectX6=width*1/6.45;
  rectY6=height*1/3;
  rectWidth6=width*1/35;
  rectHeight6=height*1/25;
 
  //Stamp Tools
   toolX4=width*1/9.3;
   toolY4=height*1/2.8;
   tool4Diameter=height/100;
   toolX5=width*1/7.45;
   toolY5=height*1/2.9;
   tool5Height=height*1/60;
   tool5Width=width*1/60;
   //
   tool6X6=width*1/6;
   tool6Y6=height*1/3;
   tool6X7=width*1/5.6;
   tool6Y7=height*1/2.7;
   tool6X8=width*1/6.3;
   tool6Y8=height*1/2.7;
   //
   circleStampX=width*1/9.3;
   circleStampY=height*1/2.8;
   circleStampDiameter=height/100;
   //
    rectStampX=width*1/7.45;
   rectStampY=height*1/2.9;
   rectStampWidth=width*1/60;
   rectStampHeight=height*1/60;
   //
    triStampX1=width*1/6;
   triStampY1=height*1/3;
   triStampX2=width*1/5.6;
   triStampY2=height*1/2.7;
   triStampX3=width*1/6.3;
   triStampY3=height*1/2.7;
   //
   //Eraser
   eraseX=width*1/10;
   eraseY=height*1/2;
   eraseWidth=width*1/15;
   eraseHeight=height*1/25;
   //
   eraseButtonX1=width*1/10;
   eraseButtonY1=height*1/2;
   eraseButtonWidth1=width*1/15;
   eraseButtonHeight1=height*1/25;
   //Colours
   //Blue
   blueX=width*1/10;
   blueY=height*1/1.5;
   blueWidth=width*1/40;
   blueHeight=height*1/60;
   //Red
   redX=width*1/7.6;
   redY=height*1/1.5;
   redWidth=width*1/40;
   redHeight=height*1/60;
   //Green
   greenX=width*1/10;
   greenY=height*1/1.4;
   greenWidth=width*1/40;
   greenHeight=height*1/60;
   //Yellow
   yellowX=width*1/7.6;
   yellowY=height*1/1.4;
   yellowWidth=width*1/40;
   yellowHeight=height*1/60;
   //
   //Colour Button
   //Blue
   blueButtonX=width*1/10;
   blueButtonY=height*1/1.5;
   blueButtonWidth=width*1/40;
   blueButtonHeight=height*1/60;
   //Red
   redButtonX=width*1/7.6;
   redButtonY=height*1/1.5;
   redButtonWidth=width*1/40;
   redButtonHeight=height*1/60;
   //Green
   greenButtonX=width*1/10;
   greenButtonY=height*1/1.4;
   greenButtonWidth=width*1/40;
   greenButtonHeight=height*1/60;
   //Yellow
   yellowButtonX=width*1/7.6;
   yellowButtonY=height*1/1.4;
   yellowButtonWidth=width*1/40;
   yellowButtonHeight=height*1/60;
   //
   //Templates
   templateButtonX1=width*1/10.5;
   templateButtonY1=height*1/1.2;
   templateButtonWidth1=width*1/25;
   templateButtonHeight1=height*1/25;
   //
   templateButtonX2=width*1/7.5;
   templateButtonY2=height*1/1.2;
   templateButtonWidth2=width*1/25;
   templateButtonHeight2=height*1/25;
 //Text for Templates
 titleX6=width*1/10.5;
 titleY6=height*1/1.2;
 titleWidth6=width*1/25;
 titleHeight6=height*1/25;
 //
 titleX7=width*1/7.5;
 titleY7=height*1/1.2;
 titleWidth7=width*1/25;
 titleHeight7=height*1/25;
 //
  pic1 = loadImage("Mosquito-Coloring-Pages-for-Kids.jpg"); //Dimensions: width 1148, height 1600
  pic2 = loadImage("09781b97957f1f177d8b2b08bab2cc46.png"); //Dimensions: width 718, height 918
  int picWidth1 = 1148; 
  int picHeight1 = 1600; 
  int picWidth2 = 718; 
  int picHeight2 = 918;  
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
  heightLarger1 = true;
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
//
//Population of Rect()
imageX1 = width*1/5;
imageY1 = height*1/20;
imageWidth1 = width*3/5;//CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
imageHeight1 = height*4/5;
imageX2 = width*1/5;
imageY2 = height*1/20;
imageWidth2 = width*3/5;//CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
imageHeight2 =height*4/5;
//
//Combination of Population of Image with Population of Rect
//Adjusted Image Variables for Aspect Ratio:(entire image willl be smaller due to aspect ratio)
picWidthAdjusted1= imageWidth1* imageWidthRatio1;
picHeightAdjusted1= imageHeight1 * imageHeightRatio1;
println(imageX1, imageY1, picWidthAdjusted1,  picHeightAdjusted1);//Note: println() also verifies decimal places, complier will trunca
picWidthAdjusted2= imageWidth2* imageWidthRatio2;
picHeightAdjusted2= imageHeight2 * imageHeightRatio2;
println(imageX2, imageY2, picWidthAdjusted2,  picHeightAdjusted2);//Note: println() also verifies decimal places, complier will trunca
  //
  titleFont1 = createFont("Harrington", 15); //Verify the font exists in Processing.JAVA
  titleFont2 = createFont("Harrington", 15); //Verify the font exists in Processing.JAVA
  titleFont3 = createFont("Harrington", 15); //Verify the font exists in Processing.JAVA
  titleFont4 = createFont("Harrington", 15); //Verify the font exists in Processing.JAVA
  titleFont5 = createFont("Harrington", 15); //Verify the font exists in Processing.JAVA
  titleFont6 = createFont("Harrington", 15); //Verify the font exists in Processing.JAVA
  titleFont7 = createFont("Harrington", 15); //Verify the font exists in Processing.JAVA
  //
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
  //
}//End setup
//
void draw()
{
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
  if(circleStampON==true)rect( circleStampButtonX,   circleStampButtonY,   circleStampButtonWidth,    circleStampButtonHeight);
  fill(resetButtonColour);
  //
   //Hover-over
  if ( mouseX>   rectStampButtonX && mouseX<   rectStampButtonX+    rectStampButtonWidth && mouseY>   rectStampButtonY && mouseY<      rectStampButtonY+   rectStampButtonHeight) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(rectStampON==true)rect( rectStampButtonX,   rectStampButtonY,   rectStampButtonWidth,    rectStampButtonHeight);
  fill(resetButtonColour);
  //
   //Hover-over
  if ( mouseX>   triStampButtonX && mouseX<   triStampButtonX+    triStampButtonWidth && mouseY>   triStampButtonY && mouseY<      triStampButtonY+   triStampButtonHeight) {
    buttonFill = grey;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(triStampON==true)rect( triStampButtonX,   triStampButtonY,   triStampButtonWidth,    triStampButtonHeight);
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
  //Colours
   if(colourON==true)rect( blueX, blueY,blueWidth, blueHeight);
   if(colourON==true)rect(redX, redY,redWidth, redHeight);
   if(colourON==true)rect(greenX, greenY, greenWidth, greenHeight);
   if(colourON==true)rect(yellowX, yellowY,yellowWidth, yellowHeight);
  
 //Layout our text space and typographical features
  rect(titleX1, titleY1, titleWidth1, titleHeight1);
  rect(titleX2, titleY2, titleWidth2, titleHeight2);
  rect(titleX3, titleY3, titleWidth3, titleHeight3);
  rect(titleX4, titleY4, titleWidth4, titleHeight4);
  //
  //Stamp Tools
   if ( circleStampON== true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight)  {
  circle(circleStampX,circleStampY, circleStampDiameter); 
  stroke (10);}
  //
    if ( rectStampON== true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight)  {
  rect( rectStampX, rectStampY, rectStampWidth, rectStampHeight); 
  stroke (10);}
  //
   if ( triStampON== true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight)  {
  triangle( triStampX1, triStampY1,triStampX2, triStampY2,triStampX3, triStampY3 ); 
  stroke (10);}
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
   //Colour Buttons
   //Hover-over
  if ( mouseX> blueButtonX && mouseX< blueButtonX+blueButtonWidth && mouseY> blueButtonY && mouseY< blueButtonY+ blueButtonHeight) {
    buttonFill = lightblue;
  } else {
    buttonFill = darkblue;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(colourON=true)rect( blueButtonX,  blueButtonY,  blueButtonWidth,  blueButtonHeight);
  fill(resetButtonColour);
  //
  //Hover-over
  if ( mouseX> redButtonX && mouseX< redButtonX+redButtonWidth && mouseY> redButtonY && mouseY< redButtonY+ redButtonHeight) {
    buttonFill = lightred;
  } else {
    buttonFill = darkred;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(colourON=true)rect( redButtonX,  redButtonY,  redButtonWidth,  redButtonHeight);
  fill(resetButtonColour);
   //Hover-over
  if ( mouseX> greenButtonX && mouseX<  greenButtonX+ greenButtonWidth && mouseY>  greenButtonY && mouseY<  greenButtonY+  greenButtonHeight) {
    buttonFill = lightgreen;
  } else {
    buttonFill = darkgreen;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(colourON=true)rect(  greenButtonX,  greenButtonY,   greenButtonWidth,  greenButtonHeight);
  fill(resetButtonColour);
  //
  //Hover-over
  if ( mouseX> yellowButtonX && mouseX<  yellowButtonX+ yellowButtonWidth && mouseY>  yellowButtonY && mouseY<  yellowButtonY+ yellowButtonHeight) {
    buttonFill = lightyellow;
  } else {
    buttonFill = darkyellow;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if(colourON=true)rect(  yellowButtonX, yellowButtonY,  yellowButtonWidth,  yellowButtonHeight);
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
 if(template1ON=true)rect(imageX1, imageY1, imageWidth1, imageHeight1); //Top Half of CANVAS
 if(template2ON=true)rect(imageX2, imageY2, imageWidth2, imageHeight2); //Bottom Half of CANVAS
 //image(pic, imageX, imageY, imageWidth, imageHeight);
 if(template1ON=true)image(pic1, imageX1, imageY1, picWidthAdjusted1, picHeightAdjusted1);
 if(template2ON=true)image(pic2, imageX2, imageY2, picWidthAdjusted2, picHeightAdjusted2);
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
  if ( mouseX>mediumlineButtonX && mouseX<mediumlineButtonX+mediumlineButtonWidth && mouseY>mediumlineButtonY && mouseY<mediumlineButtonY+mediumlineButtonHeight ) {
    if ( mediumlineON == false) {
    mediumlineON=true;
    } else {
     mediumlineON = false;
    }
  }
   if ( mouseX>thicklineButtonX && mouseX<thicklineButtonX+thicklineButtonWidth && mouseY>thicklineButtonY && mouseY<thicklineButtonY+thicklineButtonHeight ) {
    if ( thicklineON == false) {
    thicklineON=true;
    } else {
     thicklineON = false;
    }
    //
   if (thinlineON==true) lineThickness=(10);
   if (mediumlineON==true) lineThickness=(20);
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
   if ( mouseX>rectStampButtonX && mouseX<rectStampButtonX+rectStampButtonWidth && mouseY>rectStampButtonY && mouseY<rectStampButtonY+rectStampButtonHeight ) {
    if ( rectStampON== false) {
    rectStampON=true;
    } else {
     rectStampON = false;
    }
  }
  if ( mouseX>triStampButtonX && mouseX<triStampButtonX+triStampButtonWidth && mouseY>triStampButtonY && mouseY<triStampButtonY+triStampButtonHeight ) {
    if (triStampON== false) {
    triStampON=true;
    } else {
     triStampON = false;
    }
  }
  if ( mouseX>eraseButtonX && mouseX<eraseButtonX+eraseButtonWidth && mouseY>eraseButtonY && mouseY<eraseButtonY+eraseButtonHeight ) {
    if ( eraseOn== false) {
    eraseOn=true;
    } else {
     eraseOn = false;
    }
  }
  if ( mouseX>colourButtonX && mouseX<colourButtonX+colourButtonWidth && mouseY>colourButtonY && mouseY<colourButtonY+colourButtonHeight ) {
    if ( colourON=false) {
    colourON=true;
    } else {
     colourON = false;
    }
  }
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
  //End drawing tools
}//End mousePressed
