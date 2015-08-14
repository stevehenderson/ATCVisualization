/**
* An aircraft is any flying object of interest in the airspace
* of the simulation
*/
class Aircraft {
  //Set true to enable verbose debugging
  public final static boolean DEBUG = false;
  /**
  * Aircraft Collision with UAV(cadet request)
  */
  int aircraftCollision;
  /**
  * A unique id for the Aircraft
  */
  int id;
  /**
  * A route the aircraft flies through the airspace
  */
  Route aircraftRoute;
  /**
  * The current speed of the aircraft.  Represents pixels per clock tick.
  */
  double currentSpeed;
  /**
  * The current x coordinate of the aircraft
  */
  double current_x;
  /**
  * The current y coordinate of the aircraft
  */
  double current_y;
  /**
  * The current z coordinate of the aircraft
  */
  double current_z;
  //Keep track of start for reset
  double startx;
  double starty;
  double startz;
  /**
  * The next waypoint the aircraft will encounter on the route
  */
  Waypoint nextWaypoint;
  int recurseCount = 0;
  /**
  * Sets the route for the aircraft
  */
  public void setRoute(Route r) {
    aircraftRoute = r;
  }
  /**
  * Returns the current x coordinate of the aircraft
  */
  public double getCurrent_x() {
    return current_x;
  }
  /**
  * Returns the current y coordinate of the aircraft
  */
  public double getCurrent_y() {
    return current_y;
  }
  /**
  * Returns the current z coordinate of the aircraft
  */
  public double getCurrent_z() {
    return current_z;
  }
  public Route getRoute() {
    return aircraftRoute;
  }
  /**
  * Sets the speed of the aircraft
  */
  public double setCurrentSpeed(double s) {
    return currentSpeed = s;
  }
  /**
  * Sets the current x coordinate of the aircraft
  */
  public void setCurrent_x(double x) {
    current_x = x;
  }
  /**
  * Sets the current y coordinate of the aircraft
  */
  public void setCurrent_y(double y) {
    current_y = y;
  }
  public Waypoint getNextWayPoint() {
    return nextWaypoint;
  }
  /**
  * Sets the current z coordinate of the aircraft
  */
  public double setCurrent_z(double z) {
    return current_z = z;
  }
  /**
  * Sets the next waypoint of the aircraft
  */
  public void setNextWaypoint(Waypoint nw) {
    nextWaypoint = nw;
  }
  /**
  * Sets the id of the aircraft
  */
  public void setId(int i) {
    id = i;
  }
  /**
  * Returns the id of the aircraft
  */
  public int getId() {
    return id;
  }
  /**
  * local debug utility
  */
  private void debug(String s) {
    if(DEBUG) System.out.println(s);
  }
  /**
  * Returns true if the aircraft has arrived at the last waypoint
  */
  public boolean atLastwaypoint() {
    boolean result = false;
    if(nextWaypoint==null) {
      debug("Called atLastpoint() for aircraft " + id + " but nextWaypoint is not set.");
    }
    //See if there is one after next
    Waypoint followon = this.aircraftRoute.getFollowonWaypoint(nextWaypoint);
    if(followon==null) {
      result=true;
    }
    else {
      result=false;
    }
    return result;
  }
  /**
  * Returns the Euclidian distance between two points in 3-space
  */
  private double getDistance(double x0, double y0, double z0, double x1, double y1, double z1) {
    return Math.sqrt(Math.pow((x0-x1),2) + Math.pow((y0-y1),2)); // YO ADD Z LATER!!! + Math.pow((z0-z1),2));
  }
  /**
  * Resets the aircraft to starting waypoint
  */
  public void reset() {
    if(aircraftRoute.getWaypoints() !=null) {
      nextWaypoint = (Waypoint) aircraftRoute.getWaypoints().get(0);
      double x1 = startx;
      double y1 = starty;
      double z1 = startz;
      setCurrent_x(x1);
      setCurrent_y(y1);
    }
  }
  /**
  * Pulse the aircraft along its route based on next waypoint, speed
  * and number of ticks
  */
  public void pulse(float ticks) {
    debug("pulse");
    if(aircraftRoute.getWaypoints() == null) {
      debug("Aircraft " + id + " doesn't have anywaypoints!  can't pulse");
    }
    if(nextWaypoint==null) {
      startx = getCurrent_x();
      starty = getCurrent_y();
      startz = getCurrent_z();
      debug("Trying to pulse but no next waypoint..");
      debug("Loading the first waypoint on the route..");
      nextWaypoint = aircraftRoute.getFollowonWaypoint(null);
      return;
    }
    double speed = 0.1* currentSpeed;
    if(speed <=0) {
      debug("WARNING:  Speed for A/C " + id + " is negative or zero..can't pulse");
      return;
    }
    double x0 = current_x;
    double y0 = current_y;
    double z0 = current_z;
    //debug("id= " + id + "..current location: " + x0 + "," + y0 + "," +z0);
    double x1 = nextWaypoint.getPosX();
    double y1 = nextWaypoint.getPosY();
    double z1 = nextWaypoint.getPosZ();
    debug("desitination location: " + x1 + "," + y1 + "," +z1);
    double currentToNextWP = getDistance(x0, y0, z0, x1, y1, z1);
    double x_a = x1-x0;
    double y_a = y1-y0;
    //debug("x_a  : " + x_a + " y_a : " + y_a);
    //debug("speed  : " + speed + " ticks : " + ticks);
    double next_x = (x0 + ((1/currentToNextWP)*speed*ticks*x_a));
    double next_y = (y0 + ((1/currentToNextWP)*speed*ticks*y_a));
    double nexy_z = z0;
    //debug("next after pulse : " + next_x + "," +next_y);
    //Did we overshoot the next waypoint?
    double currentToPulse = getDistance(x0, y0, z0, next_x, next_y, 0);
    //debug("currentToPulse : " + currentToPulse);
    //debug("currentToNextWP : " + currentToNextWP);
    if(currentToPulse > currentToNextWP) {
      debug("DEBUG:******OVERSHOOT************");
      debug("DEBUG:******OVERSHOOT************");
      debug("DEBUG:******OVERSHOOT************");
      //Yes, we overshot it!
      Waypoint nextPossibleWaypoint = aircraftRoute.getFollowonWaypoint(nextWaypoint);
      if(nextPossibleWaypoint==null) {
        //we reached end of route -- exit
        debug("DEBUG:******HIT END OF ROUTE!!!!!!!!!!!************");
        return;
      }
      else {
        //Set the next possible as the next real
        nextWaypoint = nextPossibleWaypoint;
        currentSpeed = nextWaypoint.getNewSpeed();
      }
      /*
      //OK how much did we overshoot?
      double over = currentToPulse-currentToNextWP;
      //Back out how much tick to fly on new leg
      float remainingTick = new Double(ticks*(over/speed)).floatValue();
      //Now recurse for the ramining leg...but only if remianing ticks is > 0.1
      if((remainingTick > 0.1) && (remainingTick < ticks))  {
        debug("DEBUG:  speed " + speed + " over=" + over + " ticks=" + ticks );
        debug("A/C " + id + " overshot next WP..recurising with tick=" + remainingTick );
        recurseCount++;
        pulse(remainingTick);
      }
      */
    }
    else {
      //Didn't overshoot
      //debug("next before end : " + next_x + "," +next_y );
      setCurrent_x(next_x);
      setCurrent_y(next_y);
    }
    recurseCount = 0;
  }
  /**
  * An internal helper class to parse string tags
  */
  private String parseXMLString(XMLElement f, String tag) {
    XMLElement e = f.getChild(tag);
    if(e !=null) {
      return e.getContent();
    }
    else {
      println("AIRCRAFT:Didn't find tag " + tag + "..driving on..");
      return "no_xml_parse";
    }
  }
  /**
  * An internal helper class to parse integer tags
  */
  private int parseXMLInteger(XMLElement f, String tag) {
    XMLElement e = f.getChild(tag);
    if(e !=null) {
      int result = Integer.parseInt(e.getContent());
      return result;
    }
    else {
      println("AIRCRAFT:Didn't find tag " + tag + "..driving on..");
      return -888;
    }
  }
  /**
  * An internal helper class to parse double tags
  */
  private double parseXMLDouble(XMLElement f, String tag) {
    XMLElement e = f.getChild(tag);
    if(e !=null) {
      double result = Double.parseDouble(e.getContent());
      return result;
    }
    else {
      println("WAYPOINT:Didn't find tag " + tag + "..driving on..");
      return -888.0;
    }
  }
  /**
  * Loads an aircraft from an XML Element. Returns 1 on success.
  */
  public int loadFromXMLElement(XMLElement xml) {
    int result = 1;
    id = parseXMLInteger(xml, "id");
    println("Loading Aircraft # " + id);
    currentSpeed = parseXMLDouble(xml, "current_speed");
    current_x = parseXMLDouble(xml, "current_x");
    current_y = parseXMLDouble(xml, "current_y");
    current_z = parseXMLDouble(xml, "current_z");
    XMLElement e = xml.getChild("next_waypoint");
    if(e !=null) {
      nextWaypoint = new Waypoint();
      nextWaypoint.loadFromXMLElement(e);
    }
    else {
      //TODO:  Warning?
    }
    e = xml.getChild("route");
    if(e !=null) {
      aircraftRoute = new Route();
      aircraftRoute.loadFromXMLElement(e);
    }
    else {
      //TODO:  Warning?
    }
    return result;
  }
  /**
  * Returns an XML representation of the aircraft as a String
  */
  public String toXML() {
    StringBuffer sb = new StringBuffer();
    sb.append("<aircraft>");
    sb.append("<id>" + id + "</id>");
    sb.append("<current_speed>" + currentSpeed + "</current_speed>");
    sb.append("<current_x>" + current_x + "</current_x>");
    sb.append("<current_y>" + current_y + "</current_y>");
    sb.append("<current_z>" + current_z + "</current_z>");
    sb.append(aircraftRoute.toXML());
    if(nextWaypoint!=null) {
      sb.append(nextWaypoint.toXML());
    }
    sb.append("</aircraft>");
    return sb.toString();
  }
  /**
  * Creats an aircraft.  Sets a random id, initialize a blank route
  */
  public Aircraft() {
    id = int(random(10000));
    aircraftRoute = new Route();
  }
}
