class Model {
  Scenario currentScenario;
  int currentTime;
  View currentView;
  /**
  * Loads a scenario from an XML File and uses
  * it as current scenario.
  */
  public int loadScenario(PApplet parent, String filename) {
    currentScenario = new Scenario();
    int result = currentScenario.loadFromXML(parent, filename);
    return result;
  }
  /**
  * save a scenario to an XML file
  */
  public void saveScenario(String filename) {
    if(currentScenario !=null) {
      currentScenario.saveToXML(filename);
    }
  }
  /**
  * create a new scenario
  */
  public void createScenario() {
    currentScenario = new Scenario();
  }
  public void setCurrentView(View v) {
    currentView = v;
  }
  public void setCurrentTime(int t) {
    currentTime = t;
  }
  public void setCurrentScenarion(Scenario s) {
    currentScenario = s;
  }
  public Scenario getCurrentScenario() {
    return currentScenario;
  }
  /**
  * Creates a model and sets the view
  */
  public Model() {
    println("Hello from the model");
  }
}
