View currentView;
Model m;
void setup() {
  size(1500, 1500);                      //application window size
  background(255);
  m = new Model();
  m.createScenario();
  m.loadScenario(this, "andrew2.xml");
  //Select the view here
  //currentView = new EditorView(this, m);
  currentView = new CharlieView(this, m);
  //currentView = new TestView(this, m);
  m.setCurrentView(currentView);
}
void draw() {
  //background(255);
  //All render takes place in the view
  currentView.draw();
  frameRate(30);
}
public void controlEvent(controlP5.ControlEvent theEvent) {
  currentView.controlEvent(theEvent);
}
