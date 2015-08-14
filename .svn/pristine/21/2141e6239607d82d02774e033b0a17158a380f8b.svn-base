class AuthorView extends View {
  void drawWaypoint(Waypoint w) {
    int x = (int) w.getPosX();
    int y = (int) w.getPosY();
    println("drawing waypoint " + x + "  " + y);
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
    int x = (int) a.getCurrent_x();
    int y = (int) a.getCurrent_y();
    println("drawing aircraft " + a.getId() + " " + x + " , " + y);
    //translate(x, y);
    strokeWeight(0);
    ellipse(x,y,5,5);
    fill(#FF0000);
    //translate(-x,-y);
    //Now draw the route
    Route r = a.getRoute();
    Waypoint lastWaypoint = null;
    ArrayList waypoints = r.getWaypoints();
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
  void draw() {
    Scenario s = model.getCurrentScenario();
    ArrayList allAircraft = s.getAllAircraft();
    for(int i=0; i < allAircraft.size(); i++) {
      Aircraft nextAircraft = (Aircraft) allAircraft.get(i);
      drawAircraft(nextAircraft);
    }
  }
  public AuthorView(Model m) {
    model = m;
  }
}
