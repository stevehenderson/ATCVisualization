import controlP5.*;
/**
* A test view -- sandbox stuff
*/
class CharlieView extends View {
  PImage backgroundImage;
  boolean DRAW_ROUTES=true;  
  ///////////////////PRIMITIVES/////////////////////////
  final int SCREEN_WIDTH = 1024;
  final int SCREEN_HEIGHT = 1024;
  //The width of the radar in radar space (unscaled)
  //Needs to be <= SCREEN_WIDTH
  final float RADAR_WIDTH = 600.0;
  //Yhe gui bounds in screen coordinates
  final int PLAYER_X = 602;
  final int PLAYER_Y = 10;
  final int PLAYER_WIDTH=175;  
  boolean motion = true;
  float playBackSpeed  = 1.0;
  //The waypoint editor  
  //The responseset editor?
  float worldCenterX;
  float worldCenterY;
  float worldCenterZ;
  float worldScale;
  //////////////////ATTRIBUTES//////////////////////////
  //GUI ATTRIBUTES
  ControlGroup guiGroup;
  //Text boxes
  Textarea conflictText;
  //Playback ControlGroup
  ControlGroup playerGroup;
  Slider speedSlider;
  Slider trackSlider;
  /**
  * The parent Applet
  */
  PApplet parent;
  /**
  * The ControlP5 Object  (??)
  */
  ControlP5 controlP5;
  PFont font;
  //////////////////////METHODS//////////////////////////
  void drawRadar() {
    background(backgroundImage);
    //SCALE this to the screen dimensions
    float sf = (SCREEN_WIDTH*1.0f)/RADAR_WIDTH;
    //trans radar center to screen origin
    float transDistance = -(1.0f*SCREEN_WIDTH/2.0f);
    pushMatrix();
    translate(transDistance,transDistance);
    //Now scale it up
    pushMatrix();
    scale(sf);
    //Now translate to center of screen
    transDistance = +(1.0f*RADAR_WIDTH/2.0f);
    pushMatrix();
    translate(transDistance,transDistance);
    smooth();                            //antialiases lines and ellipses
    strokeWeight(2);                     //thickness of stroke
    stroke(0);                           //circle line color (0=black)
    noFill();                            //removes internal fill from ring (transparent/line only)
    ellipse(300,300,100,100);            //first range ring
    ellipse(300,300,200,200);            //second range ring
    ellipse(300,300,300,300);            //third range ring
    ellipse(300,300,400,400);            //fourth range ring
    line(300,50,300,550);
    line(50,300,550,300);
    line(75,295,75,305);
    line(125,295,125,305);
    line(175,295,175,305);
    line(225,295,225,305);
    line(275,295,275,305);
    line(325,295,325,305);
    line(375,295,375,305);
    line(425,295,425,305);
    line(475,295,475,305);
    line(525,295,525,305);
    line(295,75,305,75);
    line(295,125,305,125);
    line(295,175,305,175);
    line(295,225,305,225);
    line(295,275,305,275);
    line(295,325,305,325);
    line(295,375,305,375);
    line(295,425,305,425);
    line(295,475,305,475);
    line(295,525,305,525);
    strokeWeight(1);
    fill(#070FFF);                       //hex color blue
    strokeWeight(0);
    triangle(50+240,50+255, 50+250,50+240, 50+260,50+255); //creates UAV representation center of window
    //undo scaling and translation
    popMatrix();
    popMatrix();
    popMatrix();     
}
void drawWaypoint(Waypoint w) {
  int x = (int)w.getPosX();
  int y = (int)w.getPosY();
  //println("drawing waypoint " + x + "  " + y);
  //translate(x,y);
  strokeWeight(1*(1/worldScale));
  ellipse(x,y,6*(1/worldScale),6*(1/worldScale));
  textSize(50);
  smooth();
  fill(#000000);
  text("" + w.getId(), x+5, y-5);
  //translate(-x,-y);
  //Draw a waypoint at x,y,z
  //Draw response (if there is one)
  if(w.getResponseSet() != null) {
    //OK we have one---draw it    
    }
    fill(#0BFF00);
  }
  void drawAircraft(Aircraft a) {
    //Do some sketching for icon of (draw circle ay x,y)
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
    pushMatrix();
    //translate(200,200);
    float d = atan2((float)a.nextWaypoint.getPosX()-height/2, (float)a.nextWaypoint.getPosY()-width/2);
    translate((float)a.getCurrent_x(), (float)a.getCurrent_y());
    rotate(d-HALF_PI);
    int tsize=(int)(10*(1/worldScale));
    //for some reason the below code interferes with the above rotation and translations
    //int xt = x;
    //int yt = y;
    //int x0=xt-tsize;
    //int y0=yt+tsize;
    //int x1=xt+tsize;
    //int y1=yt+tsize;
    //triangle(x0,y0,xt,yt,x1,y1);
    triangle(-25,-55,0,0,+25,-55);
    float e = dist((float)a.getCurrent_x(), (float)a.getCurrent_y(), (float)worldCenterX, (float)worldCenterY);
    if(e <= 250) {
      fill(#FFFFFF);
    }
    else {
      fill(#69FF00);
    }
    popMatrix();
  }
  void drawTextBorders() {
    strokeWeight(1);
    fill(#FFFFFF);
    //Left
    //rect(5,465,110,110);
    //Right
    rect(885,465,110,110);
    rect(885,575,110,110);
    rect(885,685,110,110);
  }
  void draw() {
    if(motion) {
      for(int i=0; i < m.getCurrentScenario().getAllAircraft().size(); i++) {
        Aircraft nextAircraft = (Aircraft) m.getCurrentScenario().getAllAircraft().get(i);
        nextAircraft.pulse(playBackSpeed);
      }
    }
    drawRadar();
    Scenario s = model.getCurrentScenario();
    ArrayList allAircraft = s.getAllAircraft();
    //////////////////////////////////////////////////////////////
    //Before we draw the aircraft scale and translate the world
    //////////////////////////////////////////////////////////////
    float transDistanceX = -(1.0f*SCREEN_WIDTH/2.0f);
    float transDistanceY = -(1.0f*SCREEN_HEIGHT/2.0f);
    pushMatrix();
    translate(transDistanceX,transDistanceY);
    //Now scale it
    scale(worldScale);
    //Now translate to center of the world
    transDistanceX = worldCenterX;
    transDistanceY = worldCenterY;
    pushMatrix();
    translate(transDistanceX,transDistanceY);
    for(int i=0; i < allAircraft.size(); i++) {
      Aircraft nextAircraft = (Aircraft) allAircraft.get(i);
      drawAircraft(nextAircraft);
    }
    popMatrix();
    popMatrix();
    drawTextBorders();
    //Draw the gui last
    controlP5.draw();
  }
  /**
  * Converts a hex string to integer
  * http://mindprod.com/jgloss/hex.html
  */
  private int colorHelper(int red, int green, int blue) {
    java.awt.Color c = new java.awt.Color(red,green,blue);
    return c.getRGB();
  }
  private void setupGui() {
    controlP5 = new ControlP5(parent);
    //creates a target speed text field
    conflictText = controlP5.addTextarea("labell","TGT Speed\n"+"target speed\n",890,470,100,100);
    conflictText.setColor(colorHelper(255,0,0));
    conflictText.setColorBackground(colorHelper(255,255,255));
    conflictText.hideScrollbar();
    //creates a text field for target altitude, not UAV
    conflictText = controlP5.addTextarea("labell","TGT Altitude\n\n"+"target altitude",890,585,100,100);
    conflictText.setColor(colorHelper(255,0,0));
    conflictText.setColorBackground(colorHelper(255,255,255));
    conflictText.hideScrollbar();
    //creates a text box for Displacement.  coincides with if test for proxity warning (target)
    conflictText = controlP5.addTextarea("labell","TGT DSPLMT\n\n"+"target displacement",890,690,100,100);
    conflictText.setColor(colorHelper(255,0,0));
    conflictText.setColorBackground(colorHelper(255,255,255));
    conflictText.hideScrollbar();
    playerGroup = controlP5.addGroup("Player",PLAYER_X,PLAYER_Y, PLAYER_WIDTH);
    //player buttons
    controlP5.addButton(" R",-1,0,4,20,20).setGroup(playerGroup);
    controlP5.addButton(" S",0,25,4,20,20).setGroup(playerGroup);
    controlP5.addButton(" >",1,50,4,20,20).setGroup(playerGroup);
    //Speed
    Textlabel textLabel = controlP5.addTextlabel("SpeedText","Speed",0,30);
    textLabel.setColorValue(colorHelper(0,0,255));  //blue
    textLabel.setGroup(playerGroup);
    speedSlider = controlP5.addSlider("Speed",0.01,10,playBackSpeed,0,45,PLAYER_WIDTH,20);
    speedSlider.setGroup(playerGroup);
  }
  public void controlEvent(ControlEvent theEvent) {
    if(theEvent.isGroup()) {
      println("got an event from group "+theEvent.group().name()+", isOpen? "+theEvent.group().isOpen());
    }
    else if (theEvent.isController()) {
      println("got something from a controller "+theEvent.controller().name());
      String cmd = trim(theEvent.controller().name());
      //STOP
      if(cmd.equals("S")) motion = false;
      //PLAY
      if(cmd.equals(">")) motion = true;
      //RESET
      if(cmd.equals("R")) {
        //Reset the aircraft
        for(int i=0; i < m.getCurrentScenario().getAllAircraft().size(); i++) {
          Aircraft nextAircraft = (Aircraft) m.getCurrentScenario().getAllAircraft().get(i);
          nextAircraft.reset();
        }
      }
      //Speed
      if(cmd.equals("Speed")) {
        playBackSpeed = theEvent.controller().value();
      }
    }
  }
  public CharlieView(PApplet theApplet, Model m) {
    model = m;
    size(SCREEN_WIDTH, SCREEN_HEIGHT);                      //application window size
    parent=theApplet;
    setupGui();
    // The font must be located in the sketch's
    // "data" directory to load successfully
    font = loadFont("TimesNewRomanPSMT-12.vlw");
    textFont(font);
    //Record the world center
    worldCenterX = (float) model.getCurrentScenario().getWorldCenterX();
    worldCenterY = (float) model.getCurrentScenario().getWorldCenterY();
    worldCenterZ = (float) model.getCurrentScenario().getWorldCenterZ();
    worldScale = (float) model.getCurrentScenario().getScale();
    backgroundImage = loadImage("./data/aerial.jpg");
  }
}
