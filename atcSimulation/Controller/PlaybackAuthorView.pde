class PlaybackAuthorView extends View {
  void draw() {
    //Get the scenario
    Scenario scenario = model.getCurrentScenario();
    Aircraft aircraft = scenario.getAircraft();
    int x = (int)aircraft.getCurrent_x();
    int y = (int)aircraft.getCurrent_y();
    translate(x, y);
    ellipse(5, 5, 5, 5);
    fill(#FF0000);
    strokeWeight(0);
    println(x+ " " + y);
    println("I have aircraft " + aircraft.getId());
  }
  public PlaybackAuthorView(Model m) {
    model = m;
  }
}


