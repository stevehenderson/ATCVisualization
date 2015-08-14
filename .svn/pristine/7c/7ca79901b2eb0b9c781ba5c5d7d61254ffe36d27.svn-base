import controlP5.*;

/**
* A test view -- sandbox stuff
*/
class TestView extends View
{
  boolean DRAW_ROUTES=false;
  
  ///////////////////PRIMITIVES/////////////////////////
  final int SCREEN_WIDTH = 1024;
  final int SCREEN_HEIGHT = 768;
  
  //Yhe gui bounds in screen coordinates
  final int GUI_X = 602;
  final int GUI_Y = 10;
  final int GUI_WIDTH=400;
  final int GUI_HEIGHT=748;
    
  //The scenario editor in gui coordinates
  final int SCENARIO_X = 0;
  final int SCENARIO_Y = 10;
   
  
  //The aircraft editor in gui coordinates
  final int AIRCRAFT_X = 150;
  final int AIRCRAFT_Y = 10;
  
  
  //The route editor
  final int ROUTE_X = 300;
  final int ROUTE_Y = 10;
  
  
  //The waypoint editor
  
  
  //The responseset editor?
  
  int x = 0;
	int y = 0;
	int z = 0;

    
  //////////////////ATTRIBUTES//////////////////////////
  
  
  //GUI ATTRIBUTES
  ControlGroup guiGroup;
  ControlGroup scenarioGroup;
  ControlGroup aircraftGroup;
  ControlGroup routeGroup;
  ControlGroup responseSetGroup;
  
  //scenario
  //Textfield tfScenarioName;
  //Button bNewScenario;
  // Button bSaveScenario;
  //Button bLoadScenario;
  
  //aircraft
  Textfield tfAircraftId;
  Textfield tfAircraftX;
  Textfield tfAircraftY;
  Textfield tfAircraftZ;
  Textfield tfAircraftSpeed;
  ScrollList slAllAircraft;
  //Button bAddAircraft;
  //Button bDeleteAircraft;
  
  //route
  Textfield tfRouteId;
  Textfield tfWaypointId;
  Textfield tfWaypointX;
  Textfield tfWaypointY;
  Textfield tfWaypointZ;
  Textfield tfWaypointSpeed;
  //Button bAddWaypoint;
  //Button bDeleteWaypoint;
    
  /**
  * The parent Applet
  */
  PApplet parent;
  
  /**
  * The ControlP5 Object  (??)
  */
  ControlP5 controlP5;
  
  
  //////////////////////METHODS//////////////////////////
  
  
  void drawRadar() {
    if (keyPressed) {
      if (key == '1');
      smooth();                            //antialiases lines and ellipses
      strokeWeight(2);
      stroke(0);                           //circle line color (0=black)
      noFill();                            //removes internal fill from ring (transparent)
      ellipse(250,250,100,100);            //first range ring
      ellipse(250,250,200,200);            //second range ring
      ellipse(250,250,300,300);            //third range ring
      ellipse(250,250,400,400);            //fourth range ring
      line(250,0,250,500);                 //top to bottom crosshair
      line(0,250,500,250);                 //left to right crosshair
      strokeWeight(1);
      line(25,245,25,255);                 //50 increment hash marks
      line(75,245,75,255);                 //
      line(125,245,125,255);               //
      line(175,245,175,255);               //
      line(225,245,225,255);               //
      line(275,245,275,255);               //
      line(325,245,325,255);               //
      line(375,245,375,255);               //
      line(425,245,425,255);               //
      line(475,245,475,255);               //
      line(245,25,255,25);                 //
      line(245,75,255,75);                 //
      line(245,125,255,125);               //
      line(245,175,255,175);               //
      line(245,225,255,225);               //
      line(245,275,255,275);               //
      line(245,325,255,325);               //
      line(245,375,255,375);               //
      line(245,425,255,425);               //
      line(245,475,255,475);               //
      fill(#070FFF);                       //hex color blue
      strokeWeight(0);
      triangle(240,255, 250,240, 260,255); //creates UAV representation center of window
      
  }
    else {
       smooth();                            //antialiases lines and ellipses
      strokeWeight(2);
      stroke(0);                           //circle line color (0=black)
      noFill();                            //removes internal fill from ring (transparent)
    }
    if(keyPressed) {
      if (key == '2') {
        rect(50,50,60,60); 
      }
    }
}
  
  
  void drawWaypoint(Waypoint w) {
    
    int x = (int)w.getPosX();
    int y = (int)w.getPosY();
    //println("drawing waypoint " + x + "  " + y);
    //translate(x,y);
    strokeWeight(1);
    ellipse(x,y,6,6);
    fill(#0BFF00);
    //translate(-x,-y);
    
   
    //Draw a waypoint at x,y,z
    
    
    //Draw response (if there is one)
    if(w.getResponseSet() != null) {
      //OK we have one---draw it
    
    }
                                
  
  }
  
  void drawAircraft(Aircraft a) {
  
      //Do some sketching for icon of (draw cirlce ay x,y)      
      int x = (int)a.getCurrent_x();
      int y = (int)a.getCurrent_y();
      //println("drawing aircraft " + a.getId() + " " + x + " , " + y);
     
     
     
     
      
      //Now draw the route
      Route r = a.getRoute();
      
      Waypoint lastWaypoint = null;
      
      ArrayList waypoints = r.getWaypoints();
    
    if(DRAW_ROUTES) {
      for(int i=0; i < waypoints.size(); i++) {
      
        Waypoint nextWaypoint = (Waypoint) waypoints.get(i);
        
        //Draw the actual WP icon (under testing, APM 03/03/2010)
        drawWaypoint(nextWaypoint);
        //PFont font;
        //font = loadFont("/data/TimesNewRomanPSMT-12.vlw");
        //textFont(font, 12);
        //text("This is a Waypoint");
        
        if(lastWaypoint !=null) {
     
          line((int)lastWaypoint.getPosX(), (int)lastWaypoint.getPosY(), (int)nextWaypoint.getPosX(), (int)nextWaypoint.getPosY());
     
          //Draw line from the lastWaypoint to the nextWaypoint
        }    
      
        lastWaypoint = nextWaypoint;
      }  
    }
      //draw the aircraft   
      fill(#FF0000);   
      int tsize=10;
      int xt = x;
      int yt = y;
      int x0=xt-tsize;
      int y0=yt+tsize;
      int x1=xt+tsize;
      int y1=yt+tsize;
      triangle(x0,y0,xt,yt,x1,y1);
    
                     
  }
  
  void draw() {   
  	
  	x = x+2;
	  y = (y+2);
	  z = 1;
	  x += 2;
	  if (x > 200) x = 2;
	  if (y > 400) y = 0;
	  if (z > 1) z = 0;
	    	
  	for(int i=0; i < m.getCurrentScenario().getAllAircraft().size(); i++) {
      Aircraft nextAircraft = (Aircraft) m.getCurrentScenario().getAllAircraft().get(i);
      nextAircraft.pulse(1);  
	  }
	  
	  m.getCurrentScenario().getAircraft().setCurrent_x(x);
	  m.getCurrentScenario().getAircraft().setCurrent_y(y);
	  //currentView.draw();
	  println(x+ "controller " + y);
	  
  	drawRadar();
  
    Scenario s = model.getCurrentScenario();
                                 
    ArrayList allAircraft = s.getAllAircraft();
    
    for(int i=0; i < allAircraft.size(); i++) {
    
      Aircraft nextAircraft = (Aircraft) allAircraft.get(i);
      
      drawAircraft(nextAircraft);    
    
    }      
  }
  
  
  private void setupGui() {
  	
	  controlP5 = new ControlP5(parent);
	  
	  //Create top GUI group	  
	  guiGroup = controlP5.addGroup("GUI",GUI_X,GUI_Y, GUI_WIDTH);
	    
	  
	  //SCENARIO
	  scenarioGroup = controlP5.addGroup("SCENARIO",SCENARIO_X,SCENARIO_Y);
	  scenarioGroup.setGroup(guiGroup);
	  //Textlabel scnearioNameLabel = 
	  
	  
	  //////////////
	  //aircraft
	  //////////////
	  aircraftGroup = controlP5.addGroup("AIRCRAFT",AIRCRAFT_X,AIRCRAFT_Y);
	  aircraftGroup.setGroup(guiGroup);
	  
	  
	  
	  //////////////
	  //Route
	  //////////////
	  routeGroup = controlP5.addGroup("ROUTE",ROUTE_X,ROUTE_Y);
	  routeGroup.setGroup(guiGroup);
	  
	  	  
	  controlP5.addBang("A-1",0,4,20,20).setGroup(scenarioGroup);
	  controlP5.addBang("A-2",30,4,20,20).setGroup(scenarioGroup);
	  scenarioGroup.setBackgroundColor(color(255,100));
	  scenarioGroup.setBackgroundHeight(150);
	    
	  
	  
	  controlP5.addBang("B-1",0,4,20,20).setGroup(aircraftGroup);
	  Radio r = controlP5.addRadio("radio",100,4);
	  r.add("Edit",0);
	  r.add("Add Aircraft Route",1);
	  r.add("Add Waypoint",2);
	  r.add("blue",3);
	  r.add("grey",4);
	  r.setColorActive(0xffff0000);
	  r.setColorLabel(0x80808000);
	  r.setGroup(aircraftGroup);
	  r.setMoveable(true);
  }
  

  public void controlEvent(ControlEvent theEvent) {
    if(theEvent.isGroup()) {
      println("got an event from group "+theEvent.group().name()+", isOpen? "+theEvent.group().isOpen());  
    } else if (theEvent.isController()){
      println("got something from a controller "+theEvent.controller().name());
    }
  }
    
  
  public TestView(PApplet theApplet, Model m) {
    model = m;                                                
    size(SCREEN_WIDTH, SCREEN_HEIGHT);                      //application window size
  	background(255);
  	parent=theApplet;
  	setupGui();
  }
}
