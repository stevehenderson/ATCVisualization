/**
* A Scenario is a collection of aircraft, each with their own flight plan.
* Each flight plan contains one or more scripted "response sets" where a
* user is presented, and must respond to, certain options to control the flights
*/
class Scenario {
  
 /**
 * A unique id for the scenario
 */
 int id;
 
 /**
 * A meaningful name for the scenario  -- "Pinkslip Alley"
 */
 String name;
 
 /**
 * Developer code only.  Eventually, we will return all
 * aircraft as an array, and then gran the aircraft from there.
 */
 Aircraft theAircraft;
 
 
 /**
 *  The center of the world in the scenario (X)
 */
 double worldCenterX;
 
 
 /**
 *  The center of the world in the scenario (Y)
 */
 double worldCenterY;
 
 
 /**
 *  The center of the world in the scenario (Z)
 */
 double worldCenterZ;
 
 /***
 * The scale of the scenario..used to fit it into the viewer
 */
 double scale;
 
 
 public double getWorldCenterX() {return worldCenterX;}
 public double getWorldCenterY() {return worldCenterY;}
 public double getWorldCenterZ() {return worldCenterZ;}
 public double getScale() {return scale;}
 
 public void setWorldCenterX(double d) { worldCenterX = d;}
 public void setWorldCenterY(double d) { worldCenterY = d;}
 public void setWorldCenterZ(double d) { worldCenterZ = d;}
 public void setScale(double d) { scale = d;}
 
 /**
 * The set of all aircraft
 */
 ArrayList allAircraft;
 
 /**
 * Return the unique id of the scenario
 */
 public int getId() {
   return id;
 } 
 
 /**
 * Return a meaningful name for the scenario
 */
 public String getName() {
  return name; 
 }
 
 /**
 * Develop code only.  Remove in time.
 */
 public Aircraft getAircraft() {
   return theAircraft;
 }    
 
 /**
 * Return a list of all aircraft
 */
 public ArrayList getAllAircraft() {
 	return allAircraft;
 }
 
 
 public void setAllAircraft(ArrayList a) {
  	allAircraft = a;
 }
 
 
/**
* Loads a scenario from an XML File.   Returns 1 on success, 0 on error
*
* If you dont specify a full path, it will look in your root processing
* folder.
*/
public int loadFromXML(PApplet parent, String xmlFilename) {
 	
 	//Assume the best!
 	int result = 1;
 	
 	println("SCENARIO:Attempting to load a scenario from " + xmlFilename);
 	 	
 	XMLElement xml = new XMLElement(parent, xmlFilename);
	XMLElement[] children = xml.getChildren();
  
  println("SCENARIO:There are " + children.length + " elements..");
  
  
  //Try and get the id
  XMLElement idElement = xml.getChild("id");  
  if(idElement !=null) {
  	id = Integer.parseInt(idElement.getContent());
  	println("SCENARIO:id=" + id);
  } else {
  	println("SCENARIO:Failed to find an <id> tag...aborting load!");
  	result=0;
  }
  
  //Try and get the name
  XMLElement nameElement = xml.getChild("name");  
  if(idElement !=null) {
  	name = nameElement.getContent();
  	println("SCENARIO:name=" + name);
  } else {
  	println("SCENARIO:Failed to find a <name> tag...aborting load!");
  	result=0;
  }
  
  //Try and get the worldCenterX
  XMLElement wcxElement = xml.getChild("world_center_x");  
  if(wcxElement !=null) {
  	worldCenterX = Double.parseDouble(wcxElement.getContent());
  	println("SCENARIO:worldCenterX=" + worldCenterX);
  } else {
  	println("SCENARIO:Failed to find a <world_center_x> tag...continuing..");  	
  }

  //Try and get the worldCenterY
  XMLElement wcyElement = xml.getChild("world_center_y");  
  if(wcyElement !=null) {
  	worldCenterY = Double.parseDouble(wcyElement.getContent());
  	println("SCENARIO:worldCenterY=" + worldCenterY);
  } else {
  	println("SCENARIO:Failed to find a <world_center_y> tag...continuing..");  	
  }

  //Try and get the worldCenterY
  XMLElement wczElement = xml.getChild("world_center_z");  
  if(wczElement !=null) {
  	worldCenterZ = Double.parseDouble(wczElement.getContent());
  	println("SCENARIO:worldCenterZ=" + worldCenterZ);
  } else {
  	println("SCENARIO:Failed to find a <world_center_z> tag...continuing..");  	
  }

  //Try and get the worldCenterY
  XMLElement sElement = xml.getChild("scale");  
  if(sElement !=null) {
  	scale= Double.parseDouble(sElement.getContent());
  	println("SCENARIO:scale=" + scale);
  } else {
  	println("SCENARIO:Failed to find a <scale> tag...continuing..");  	
  }


  println("SCENARIO:Attempting to load aircraft");
   
 	XMLElement[] aircraftElements = xml.getChildren("aircraft");
  if(aircraftElements.length > 0) {
  	allAircraft = new ArrayList();	
	  for(int i=0; i < aircraftElements.length; i++) {
	  	Aircraft nextAircraft = new Aircraft();
	  	nextAircraft.loadFromXMLElement(aircraftElements[i]);
	  	allAircraft.add(nextAircraft);
	  }	  	
  } else {
  	println("SCENARIO:Failed to find any <aircraft> tags...aborting load!");
  	result=0;
  }
  
  return result;
 	
}


/**
* Saves a scenario to an XML File.
*
* If you dont specify a full path, it will look in your root processing
* folder.
*/
public void saveToXML(String xmlFilename) {
 	 	
 	String scenarioXML = toXML();
  XMLElement e = new XMLElement(scenarioXML);
  
  
  //Save it
  try {
  	FileWriter out = new FileWriter(xmlFilename);  
  	XMLWriter xmlWriter = new XMLWriter(out);
  	xmlWriter.write(e,true);
  	out.close();
  	println("Successfully saved scenario " + id + " to " + xmlFilename);
  	
  } catch (Exception ouch) {
  	println("ERROR: saving scenario as XML (saveScenario) " + ouch);
  } 	
}

 
 
 /**
 * Returns the scenario as an XMLElement
 */
 public String toXML() {
 	
 		StringBuffer sb = new StringBuffer();
 		sb.append("<?xml version=\"1.0\"?>");
 		sb.append("<scenario>");
 		sb.append("<id>" + id + "</id>");
 		sb.append("<name>" + name + "</name>");
 		sb.append("<world_center_x>" + worldCenterX + "</world_center_x>");
 		sb.append("<world_center_y>" + worldCenterY + "</world_center_y>");
 		sb.append("<world_center_z>" + worldCenterZ + "</world_center_z>");
 		sb.append("<scale>" + scale + "</scale>");
 		
 		for(int i=0; i < allAircraft.size(); i++)
 		{
 			Aircraft nextAircraft = (Aircraft) allAircraft.get(i);
 			sb.append(nextAircraft.toXML());
 		} 		
 		sb.append("</scenario>");
 		//println("DEBUG: scenario toXML" + sb.toString());
 		return sb.toString();
 }
     
 /**
 * A default constructor for the scenario.  Creates a blank scenario,
 * assigns a default name and random id, then initializes the array of aircraft
 */
 public Scenario() {
 	
 	//TODO: Remove these lines later
  theAircraft = new Aircraft();
  theAircraft.setId(13);
  //End to do
  
  //Create a random id
  id = int( random(1000));
  
  //Set a name
  name = "unset_scenario";
  
  //Initialize the set of aircraft
  allAircraft = new ArrayList();
  
  worldCenterX=0.0;
  worldCenterY=0.0;
  worldCenterZ=0.0;
  scale=1.0;
  
 }   
}
