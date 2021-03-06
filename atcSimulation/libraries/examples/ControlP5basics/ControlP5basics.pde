/**
ControlP5 basics. 
The following example demonstrates the basic use of controlP5.
After initializing controlP5 you can add controllers to controlP5.
Here we use three numberboxes, one slider and one textfield.
The numberbox with name numberboxC will trigger function numberboxC()
in the example below. Whenever controlP5 detects a function in your 
sketch that corresponds to the name of a controller, it will forward
an event to that function. 
Any event triggered by a controller will alos be forwarded to function
controlEvent in your sketch.
by andreas schlegel, 2009
*/

import controlP5.*;

ControlP5 controlP5;

public int myColorRect = 200;

public int myColorBackground = 100;


void setup() {
  size(400,400);
  frameRate(25);
  controlP5 = new ControlP5(this);
  controlP5.addNumberbox("numberboxA",myColorRect,100,140,100,14).setId(1);
  controlP5.addNumberbox("numberboxB",myColorBackground,100,180,100,14).setId(2);
  controlP5.addNumberbox("numberboxC",0,100,220,100,14).setId(3);
  
  controlP5.addSlider("sliderA",100,200,100,100,260,100,14).setId(4);
  controlP5.addTextfield("textA",100,290,100,20).setId(5);
  
  controlP5.controller("numberboxA").setMax(255);
  controlP5.controller("numberboxA").setMin(0);
}

void draw() {
  background(myColorBackground);
  fill(myColorRect);
  rect(0,0,width,100);
}

public void numberboxC(int theValue) {
  println("### got an event from numberboxC : "+theValue);
}

public void controlEvent(ControlEvent theEvent) {
  println("got a control event from controller with id "+theEvent.controller().id());
  switch(theEvent.controller().id()) {
    case(1):
    myColorRect = (int)(theEvent.controller().value());
    break;
    case(2):
    myColorBackground = (int)(theEvent.controller().value());
    break;  
  }
}
