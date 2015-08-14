class View 
{
  
   Model model;
   Controller controller;
   
   public void setModel(Model aModel) {
    model = aModel; 
   }
   
  public void setController(Controller aController) {
    controller = aController;
   }
   public void draw() {
   }
   
   
   public void controlEvent(controlP5.ControlEvent theEvent) {
      ///This is overridden
   }
  
   
   public View() {
   } 
  
}
