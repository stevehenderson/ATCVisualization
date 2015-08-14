/**
* A ResponseSet is a compound object used to model zero or more <i>possible</i> responses 
* a user can take (e.g., "Do Nothing", "Tell Aircraft#2341 to turn right", etc) and the
* user's selected response.  Think of it as a test that captures a set of multiple 
* choice questions and the users response.  Response time is also modeled.
*/
class ResponseSet {

	/**
	* An id for the ResponseSet.  This should be a coded entry
	* that the experimenters can use to track the question's data.
	*/
	int id;
	
  /**
  * The set of all possible options presented to the user (as Strings)
  */
  ArrayList responseOptions;
  
  /**
  * The index of the correct repsonse
  */
  int correctResponse;
  
  /**
  * The user's selected repsonse.  -1 (default) indicates no response.
  */
  int userResponse = -1;
  
  /**
  * The user's time to respond.
  */
  float userResponseTime = -1.0;
  
  /**
	* Returns the id of the ResponseSet
	*/
	public int getId() { return id; }
  
  /**
  * Gets the response options (if any) associated with the ResponseSet
  */
  public ArrayList getResponseOptions() {		return responseOptions;	}
	
	/**
	* Gets the index of the correct response (in the collection of response options)
	*/
	public int getCorrectResponse() {	return correctResponse;	}
	
	/*
	* Gets the index of the users repsonse.  -1 if no response.
	*/
	public int getUserResponse() {return userResponse;	}	
	
	/**
	* Gets the user's time to respond.
	*/
	public float getUserResponseTime() {	return userResponseTime;	}
	
	
	/**
	* Sets the id of the ResponseSet
	*/
	public void setId(int i) { id=i; }
	
	/**
	* Sets the list of response options.
	*/
	public void setResponseOptions(ArrayList rs) {
		responseOptions = rs;
	}

	/**
	* Sets the index of the correct response
	*/
	public void setCorrectResponse(int aCorrectResponse) {
		correctResponse = aCorrectResponse;
	}
	
	/**
	* Sets the user's response
	*/	
	public void setUserResponse(int aUserResponse) {
		userResponse = aUserResponse;
	}
	
	/**
	* Sets the user's response time
	*/	
	public void setUserResponseTime(float aUserResponseTime) {
		userResponseTime = aUserResponseTime;
	}
	
	/**
	* Helper method to insert a response option into the list of options.  If position exceeds the
	* the current count in the collection, the option will be added to the end (so use
	a big number to force it to the end). NOTE:  the first position (startpoint) is 0 (zero).
	*/
	public void insertResponseOption(String option, int position) {
		ArrayList newList = new ArrayList();
		boolean added=false;
		for(int i=0; i < responseOptions.size(); i++) {
			if(i==position) {
				//Add the new guy
				newList.add(option);
				
				//Add the existing
				newList.add((String) responseOptions.get(i));
				added=true;
			} else {
				//Add the existing
				newList.add((String) responseOptions.get(i));
			}
		}
		//Did we still not add the new guy?
		if(added==false)  {
			//Yes -- add it now.  We don't care about position
			newList.add(option);
		}
				
		//finally copy the new list to the real list
		responseOptions=newList;
	}	
	
	/**
	* Helper mthod to remove a response option (based on position in list/collection) 
	* from the route.  Counting starts at 0/zero for the first item
	* in the list.  Returns 1 upon success.
	*/
	public int removeResponseOption(int option) {
		
		if((option >0) && (option < responseOptions.size()))  
		{
			responseOptions.remove(option);
			return 1;
		} else {
			return 0;
		}	
	}
	
	
	/**
	* An internal helper class to parse string tags
	*/
	private String parseXMLString(XMLElement f, String tag) {
		XMLElement e = f.getChild(tag);  
	  if(e !=null) {
	  	return e.getContent();	  	
	  } else {
	  	println("RESPONSESET:Didn't find tag " + tag + "..driving on..");
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
	  	println("RESPONSESET:Didn't find tag " + tag + "..driving on..");
	  	return -888;
	  }
	}
		
	/**
	* An internal helper class to parse float tags
	*/
	private float parseXMLFloat(XMLElement f, String tag) {
		XMLElement e = f.getChild(tag);  
	  if(e !=null) {
	  	float result = Float.parseFloat(e.getContent());
	  	return result;	  	
	  } else {
	  	println("RESPONSESET:Didn't find tag " + tag + "..driving on..");
	  	return -888.88;
	  }
	}
		
	/**
	* Loads a ResponseSet from an XML Element. Returns 1 on success.
	*/
	public int loadFromXMLElement(XMLElement xml) {
		
		int result = 1;
				
	  id = parseXMLInteger(xml, "id");  
	  
	  println("\t\t\tLoading ResponseSet " + id);
	  
	  correctResponse = parseXMLInteger(xml, "correct_response");  
	  userResponse = parseXMLInteger(xml, "user_response");  
	  userResponseTime = parseXMLFloat(xml, "user_response_time");  
	  
	  XMLElement[] wElements = xml.getChildren("response_option");
	  if(wElements.length > 0) {
	  	responseOptions = new ArrayList(wElements.length);
		  for(int i=0; i < wElements.length; i++) {
		  	XMLElement nextOptionElement = wElements[i];
		  	int optionIndex = parseXMLInteger(nextOptionElement, "index");
		  	String optionString = parseXMLString(nextOptionElement, "option");
		  	insertResponseOption(optionString, optionIndex);		  	
		  }	  	
	  } else {
	  	//TODO:  Advise?
	  } 
	  		
		return result;
		
	}
	
	/**
	* Returns an XML representation of the ResponseSet
	*/
	public String toXML() {
		StringBuffer sb = new StringBuffer();
		sb.append("<response_set>");
		sb.append("<id>" + id + "</id>");
		for(int i=0; i < responseOptions.size(); i++) {			
			String nextOption = (String) responseOptions.get(i);
			sb.append("<response_option>");
			sb.append("<index>" + i + "</index>");
			sb.append("<option>" + nextOption + " </option>");			
			sb.append("</response_option>");			 
		}		
		sb.append("<correct_response>" + correctResponse + "</correct_response>");
		sb.append("<user_response>" + userResponse + "</user_response>");
		sb.append("<user_response_time>" + userResponseTime + "</user_response_time>");		
		sb.append("</response_set>");
		return sb.toString();				
	}
	
      
  /**
  * Create a new ResponseSet.  Initialize an empty collection
  * of response options.
  */
  public ResponseSet() {
  	responseOptions = new ArrayList();
  }
   
}

