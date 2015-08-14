/**
* A Waypoint represents a control point along a route.  An Aircraft will fly from Waypoint
* to Waypoint.  At each Waypoint, the aircraft can change speed.  A Waypoint can also be useed
* as an anchor for a ResponseSet.
*
*
* <br><br>
* <ul>References</ul>	
* {@link <Aircraft> [Aircraft]}
* {@link <Route> [Route]}
* {@link <ResponseSet> [ResponseSet]}
*
*/
class Waypoint {

	/**
	* A unique id for the Aircraft
	*/
	int id;	


	/**
	* A name for the Waypoint
	*/
	String name;

	/**
	* The x position of the waypoint in the airspace.
	*/	
	double posX;
	
	/**
	* The y position of the waypoint in the airspace.
	*/	
	double posY;
	
	/**
	* The z position (altitude) of the waypoint in the airspace.
	*/	
	double posZ;
	
	/**
	* The new speed the aircraft will assume when reaching the airspace.
	*/	
	double newSpeed;
		
	/**
	* The ResponseSet (if any) to make visible when the aircraft reaches the waypoint
	*/	
	ResponseSet responseSet;
	
	/**
	* Returns the name of the Waypoint
	*/
	public String getName() { return name; }
	
	/**
	* Returns the id of the Waypoint
	*/
	public int getId() { return id; }
	
	/**
	* Returns the x position of the waypoint in the airspace.
	*/
	public double getPosX() { return posX; }
	
	/**
	* Returns the x position of the waypoint in the airspace.
	*/
	public double getPosY() { return posY; }
	
	/**
	* Returns the x position of the waypoint in the airspace.
	*/
	public double getPosZ() { return posZ; }
	
	/**
	* Returns the speed setting the aircraftr wll assume when reaching the waypoint.
	*/
	public double getNewSpeed() { return newSpeed; }
	
	/**
	* Returns the ResponseSet associated with the waypoint (if applicable).
	* Will return null if no associated ResponseSet!
	*/
	public ResponseSet getResponseSet() { return responseSet; }

	/**
	* Sets the id of the Waypoint
	*/
	public void setId(int i) { id=i; }
	
	/**
	* Sets the x position of the Waypoint
	*/
	public void setPosX(double i) { posX=i; }
	
	/**
	* Sets the y position of the Waypoint
	*/
	public void setPosY(double i) { posY=i; }
	
	/**
	* Sets the z position of the Waypoint
	*/
	public void setPosZ(double i) { posZ=i; }
	
	/**
	* Sets the speed the aircraft will adopt when reaching the Waypoint
	*/
	public void setNewSpeed(double i) { newSpeed=i; }
			
	/**
	* Sets the response set associated w/ the Waypoint
	*/
	public void setResponseSet(ResponseSet rs) { responseSet=rs;}
	
	
	
	/**
	* An internal helper class to parse string tags
	*/
	private String parseXMLString(XMLElement f, String tag) {
		XMLElement e = f.getChild(tag);  
	  if(e !=null) {
	  	return e.getContent();	  	
	  } else {
	  	println("WAYPOINT:Didn't find tag " + tag + "..driving on..");
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
	  } else {
	  	println("WAYPOINT:Didn't find tag " + tag + "..driving on..");
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
	  } else {
	  	println("WAYPOINT:Didn't find tag " + tag + "..driving on..");
	  	return -888.0;
	  }
	}
		
	/**
	* Loads a waypoint from an XML Element. Returns 1 on success.
	*/
	public int loadFromXMLElement(XMLElement xml) {
		
		int result = 1;
				
	  id = parseXMLInteger(xml, "id");  
	  
	  println("\t\tLoading Waypoint " + id);
	  
	  newSpeed = parseXMLDouble(xml, "new_speed");  
	  posX = parseXMLDouble(xml, "pos_x");  
	  posY = parseXMLDouble(xml, "pos_y");  
	  posZ = parseXMLDouble(xml, "pos_z");  
	  
	  
	  XMLElement e = xml.getChild("response_set");  
	  if(e !=null) {
	  	responseSet = new ResponseSet();
	  	responseSet.loadFromXMLElement(e);	  	
	  } else {
	  	//TODO:  Warning?
	  } 
	  		
		return result;
		
	}
	
	/**
	* Returns an XMl representation of the Waypoint
	*/
	public String toXML() {
		StringBuffer sb = new StringBuffer();
		sb.append("<waypoint>");
		sb.append("<id>" + id + "</id>");
		sb.append("<pos_x>" + posX + "</pos_x>");
		sb.append("<pos_y>" + posY + "</pos_y>");
		sb.append("<pos_z>" + posZ + "</pos_z>");
		sb.append("<new_speed>" + newSpeed + "</new_speed>");
		if(responseSet != null) {
			sb.append(responseSet.toXML());
		}		
		sb.append("</waypoint>");
		return sb.toString();			
	}
			
	/**
	* Creates a new waypoint, at 0,0,0, with zero speed and no ResponseSet
	*/
  public Waypoint() {
  	posX=0.0;
  	posY=0.0;
  	posZ=0.0;
  	newSpeed=0.0;
  	responseSet=null;  	 
  }
}
