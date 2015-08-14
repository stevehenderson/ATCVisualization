/**
* A factory to generate random scenarios to test the
* data model.
*/
int SCREEN_X = 1000;
int SCREEN_Y = 1000;
int SCREEN_Z = 1000;  //not used for rendering at the moment
int MAX_SPEED = 100;
int MAX_RESPONSE_OPTIONS = 6;
int MAX_USER_RESPONSE_TIME = 10;
int MAX_WAYPOINTS_PER_AIRCRAFT = 10;
float responseSetProbability = 0.2;
////UNCOMMENT THE SETUP METHOD TO TEST
/**
void setup() {
  size(SCREEN_X, SCREEN_Y);
  background(255);
  //Create an write a scenario
  writeTest();
  //Try to read it (then round trip write it)
  readTest();
}
*/
void readTest() {
  Model m = new Model();
  m.loadScenario(this, "write_test_out.xml");
  m.saveScenario("read_test_out.xml");
}
void writeTest() {
  ////////////////////////////////////
  // CREATE A RANDOM MODEL
  ////////////////////////////////////
  Model m = new Model();
  m.createScenario();
  int numberAircraft = 10;
  //Create some junk for the response sets
  ArrayList possibleOptions= junkText();
  ArrayList allAircraft = new ArrayList();
  for(int i=0; i < numberAircraft; i++) {
    //Create an aircraft
    Aircraft nextAircraft = new Aircraft();
    //Assign some current data
    nextAircraft.setCurrent_x(int(random(0,SCREEN_X)));
    nextAircraft.setCurrent_y(int(random(0,SCREEN_Y)));
    nextAircraft.setCurrent_z(int(random(0,SCREEN_Z)));
    nextAircraft.setCurrentSpeed(int(random(0,MAX_SPEED)));
    //Create a route for the Aircraft
    Route aRoute = new Route();
    //Figure out how many waypoints we want
    int wp_count = int(random(1,MAX_WAYPOINTS_PER_AIRCRAFT));
    //Now rip the waypoints
    for(int j=0; j < wp_count; j++) {
      Waypoint nextWaypoint = new Waypoint();
      nextWaypoint.setId(j);
      //Assign some random coordinates
      nextWaypoint.setPosX(int(random(0,SCREEN_X)));
      nextWaypoint.setPosY(int(random(0,SCREEN_Y)));
      nextWaypoint.setPosZ(int(random(0,SCREEN_Z)));
      nextWaypoint.setNewSpeed(int(random(0,MAX_SPEED)));
      //Now figure out if we want a repsonse set
      float r = random(0,1);
      //This seems counter intuitive but it works
      if(r < responseSetProbability) {
        //Make one
        ResponseSet rs = new ResponseSet();
        //Figure out how many response options to Make
        int optionCount = int(random(1,MAX_RESPONSE_OPTIONS));
        for(int k=0; k < optionCount; k++) {
          int quoteIndex = int(random(0,possibleOptions.size()-1));
          String nextOption = (String) possibleOptions.get(quoteIndex);
          rs.insertResponseOption(nextOption,k);
        }
        //Now set an arbitrary correct response; user response and time
        	int correctResponse = int(random(0,optionCount-1));
        int userResponse = int(random(0,optionCount-1));
        float userResponseTime = random(0,MAX_USER_RESPONSE_TIME);
        //Save them to the waypoint
        rs.setCorrectResponse(correctResponse); //correctResponse
        rs.setUserResponse(userResponse); //userResponse
        rs.setUserResponseTime(userResponseTime);
        //Finally -- save the ResponseSet in the waypoint
        nextWaypoint.setResponseSet(rs);
      }
      //At this point the waypoint is ready -- add to route
      aRoute.insertWaypoint(nextWaypoint,j);
    }
    //Now the route is good.  Assign it to the Aircraft
    nextAircraft.setRoute(aRoute);
    //Aircraft is good.  Add to scenario
    m.getCurrentScenario().getAllAircraft().add(nextAircraft);
  }
  ////////////////////////////////////
  // SAVE THE MODEL
  ////////////////////////////////////
  m.saveScenario("write_test_out.xml");
}
/**
* Create some junk text for response.
* ref: (see the xls in design folder) or
* http://litemind.com/wp-content/uploads/misc/litemind-quotes.csv
*/
ArrayList junkText() {
  ArrayList junk = new ArrayList();
  junk.add("The third-rate mind --A. A. Milne");
  junk.add("History teaches us t--Abba Eban");
  junk.add("How many legs does a--Abraham Lincoln");
  junk.add("Nearly all men can s--Abraham Lincoln");
  junk.add("When I do good, I fe--Abraham Lincoln");
  junk.add("Better to remain sil--Abraham Lincoln");
  junk.add("You can fool some of--Abraham Lincoln");
  junk.add("To the man who only --Abraham Maslow");
  junk.add("My definition of a f--Adlai E. Stevenson Jr.");
  junk.add("I use emotion for th--Adolf Hitler");
  junk.add("It is always more di--Adolf Hitler");
  junk.add("Do not look where yo--African proverb");
  junk.add("Do you realize if it--Al Boliska");
  junk.add("Any company large en--Alan Kay");
  junk.add("Education is what re--Albert Einstein");
  junk.add("Insanity: doing the --Albert Einstein");
  junk.add("Logic will get you f--Albert Einstein");
  junk.add("Not everything that --Albert Einstein");
  junk.add("A clever person solv--Albert Einstein");
  junk.add("Imagination is more --Albert Einstein");
  junk.add("When you look at you--Albert Einstein");
  junk.add("The only thing that --Albert Einstein");
  junk.add("The difference betwe--Albert Einstein");
  junk.add("The person who reads--Albert Einstein");
  junk.add("Time and space are m--Albert Einstein ");
  junk.add("When you sit with a --Albert Einstein  ");
  junk.add("There are people who--Albert Guinon");
  junk.add("When everyone is aga--Albert Guinon");
  junk.add("An intellectual is a--Aldous Huxley");
  junk.add("Blessed is he who ex--Alexander Pope");
  junk.add("Do not confuse motio--Alfred A. Montapert");
  junk.add("It is easier to figh--Alfred Adler");
  junk.add("The point of quotati--Amanda Cross");
  junk.add("Acquaintance, n.: A --Ambrose Bierce");
  junk.add("Courage is not the a--Ambrose Redmoon");
  junk.add("We don't see things --Anais Nin");
  junk.add("It is better to fail--Andr� Gide");
  junk.add("People cannot discov--Andr� Gide");
  junk.add("Believe those who ar--Andr� Gide");
  junk.add("It is bad luck to be--Andrew W. Mathis");
  junk.add("If the lessons of hi--Anon");
  junk.add("Perfection is achiev--Antoine de Saint-Exup�ry");
  junk.add("What lies in our pow--Aristotle");
  junk.add("It is the mark of an--Aristotle");
  junk.add("We are what we repea--Aristotle");
  junk.add("Talent hits a target--Arthur Schopenhauer");
  junk.add("All truth passes thr--Arthur Schopenhauer");
  junk.add("Every nation ridicul--Arthur Schopenhauer");
  junk.add("I'd rather live with--Aryeh Frimer");
  junk.add("The Argument from In--Ayn Rand");
  junk.add("The real problem is --B. F. Skinner");
  junk.add("A wise man gets more--Baltasar Gracian");
  junk.add("Good judgment comes --Barry LePatner");
  junk.add("A government that is--Thomas Jefferson");
  junk.add("Do not seek to follo--Basho");
  junk.add("Trying to determine --Ben Hecht");
  junk.add("Never apologize for --Benjamin Disraeli");
  junk.add("Either write somethi--Benjamin Franklin");
  junk.add("The tragedy of life --Benjamin Mays");
  junk.add("What happens to the --Bertolt Brecht");
  junk.add("The whole problem wi--Bertrand Russell");
  junk.add("No one gossips about--Bertrand Russell");
  junk.add("If a man is offered --Bertrand Russell");
  junk.add("The greatest challen--Bertrand Russell");
  junk.add("I don't know the key--Bill Cosby");
  junk.add("If at first you don'--Bill Lyon");
  junk.add("Thought is useful wh--Bill Raeder");
  junk.add("An optimist stays up--Bill Vaughan");
  junk.add("We learn something e--Bill Vaughan");
  junk.add("Careful. We don't wa--Bill Watterson");
  junk.add("I really wish I was --Billy Joel");
  junk.add("I have made this let--Blaise Pascal");
  junk.add("A single question ca--Bo Bennett");
  junk.add("A bank is a place th--Bob Hope");
  junk.add("The less you know, t--Bono");
  junk.add("When the student is --Buddhist Proverb");
  junk.add("Don't ever wrestle w--Cale Yarborough");
  junk.add("The most remarkable --Calvin Trillin");
  junk.add("Everything that irri--Carl Jung");
  junk.add("Just the fact that s--Carl Sagan");
  junk.add("Some people make thi--Casey Stengel");
  junk.add("If you can't be a go--Catherine Aird");
  junk.add("You don't get anythi--Cecil Baxter");
  junk.add("Happiness is the abs--Chang-Tzu");
  junk.add("Fight for your opini--Charles A. Dana");
  junk.add("The difference betwe--Charles Bukowski");
  junk.add("An inventor is simpl--Charles F. Kettering");
  junk.add("Bureaucrats write me--Charles Peters");
  junk.add("By the time a man re--Charles Wadsworth");
  junk.add("He who asks is a foo--Chinese Proverb");
  junk.add("One dog barks at som--Chinese Proverb");
  junk.add("I hear: I forget / I--Chinese Proverb ");
  junk.add("Asking a working wri--Christopher Hampton");
  junk.add("There is only one su--Christopher Morley");
  junk.add("Inspiration is for a--Chuck Close");
  junk.add("In theory, there is --Chuck Reid");
  junk.add("When I was a boy I w--Clarence Darrow");
  junk.add("Laughing at our mist--Cullen Hightower");
  junk.add("There are many who d--Cyril Connolly");
  junk.add("Better to write for --Cyril Connolly");
  junk.add("Success is getting w--Dale Carnegie");
  junk.add("Never be afraid to l--Dame Edna Everage");
  junk.add("Do not condemn the j--Dandemis");
  junk.add("The greatest obstacl--Daniel J. Boorstin");
  junk.add("Procastination is no--David Allen");
  junk.add("You can do anything,--David Allen");
  junk.add("It is said that powe--David Brin");
  junk.add("A committee can make--David Cobitz");
  junk.add("The direct use of fo--David Friedman");
  junk.add("Television enables y--David Frost");
  junk.add("Don't be afraid to t--David Lloyd George");
  junk.add("The tooth fairy teac--David Richerby");
  junk.add("The more you know, t--David T. Freeman");
  junk.add("Simple, clear purpos--Dee Hock");
  junk.add("The first step towar--Dennis Waitley");
  junk.add("There's so much come--Dick Cavett");
  junk.add("It's a rare person w--Dick Cavett");
  junk.add("If your parents neve--Dick Cavett");
  junk.add("There is nobody so i--Don Herold");
  junk.add("Procrastination is t--Don Marquis");
  junk.add("If you are not criti--Donald H. Rumsfeld");
  junk.add("The art of simplicit--Doug Horton");
  junk.add("Instead of giving a --Doug Larson");
  junk.add("I love deadlines. I --Douglas Adams");
  junk.add("Hofstadter's Law: It--Douglas Hofstadter");
  junk.add("In God we trust; all--Dr. Edwards Deming");
  junk.add("Be who you are and s--Dr. Seuss");
  junk.add("The best car safety --Dudley Moore");
  junk.add("In preparing for bat--Dwight D. Eisenhower");
  junk.add("I arise in the morni--E. B. White");
  junk.add("Computer Science is --E. W. Dijkstra");
  junk.add("I am patient with st--Edith Sitwell");
  junk.add("If only we'd stop tr--Edith Wharton");
  junk.add("Talent does what it --Edward Bulwer-Lytton");
  junk.add("Just because your vo--Edward R. Murrow");
  junk.add("The skill of writing--Edwin Schlossberg");
  junk.add("No one can make you --Eleanor Roosevelt");
  junk.add("Normal is getting dr--Ellen Goodman");
  junk.add("The cure for boredom--Ellen Parr");
  junk.add("I don't know anythin--Elvis Presley");
  junk.add("If the human mind wa--Emerson Pugh");
  junk.add("If voting changed an--Emma Goldman");
  junk.add("There is only one wa--Epitectus");
  junk.add("You can discover wha--Eric Hoffer");
  junk.add("When people are free--Eric Hoffer");
  junk.add("The opposite of the --Eric Hoffer");
  junk.add("Advice is what we as--Erica Jong");
  junk.add("Courage is grace und--Ernest Hemingway");
  junk.add("You can't get away f--Ernest Hemingway");
  junk.add("A happy life is just--Esther Hicks");
  junk.add("Being in politics is--Eugene McCarthy");
  junk.add("Character is what yo--Evan Esar");
  junk.add("America believes in --Evan Esar");
  junk.add("We confess our littl--Francois de La Rochefoucauld");
  junk.add("We should be taught --Frank Tibolt");
  junk.add("Writing about music --Frank Zappa");
  junk.add("The trouble with bei--Franklin P. Jones");
  junk.add("Experience is that m--Franklin P. Jones");
  junk.add("A celebrity is a per--Fred Allen");
  junk.add("Insanity in individu--Friedrich Nietzsche");
  junk.add("The man of knowledge--Friedrich Nietzsche");
  junk.add("Education... has pro--G. M. Trevelyan");
  junk.add("I do not feel oblige--Galileo Galilei");
  junk.add("I have never met a m--Galileo Galilei");
  junk.add("You must be the chan--Gandhi");
  junk.add("My friends tell me I--Garry Shandling");
  junk.add("I've been trying for--Gary Trudeau");
  junk.add("Everyone is a genius--Georg Christoph Lichtenberg");
  junk.add("My way of joking is --George Bernard Shaw");
  junk.add("The fact that a beli--George Bernard Shaw");
  junk.add("Patriotism is your c--George Bernard Shaw");
  junk.add("Too bad the only peo--George Burns");
  junk.add("You know you're gett--George Burns");
  junk.add("It takes only one dr--George Burns");
  junk.add("Are people more viol--George Carlin");
  junk.add("The nice part about --George F. Will");
  junk.add("All animals are equa--George Orwell");
  junk.add("Those who cannot rem--George Santayana");
  junk.add("A physicist is an at--George Wald");
  junk.add("I have too much resp--Georges Duhamel");
  junk.add("Some people like my --Gordon R. Dickson");
  junk.add("2 is not equal to 3,--Grabel's Law");
  junk.add("Those are my princip--Groucho Marx");
  junk.add("A child of five woul--Groucho Marx");
  junk.add("There is no truth. T--Gustave Flaubert");
  junk.add("All men are frauds. --H. L. Mencken");
  junk.add("There is a great dif--Harold Stephens");
  junk.add("I once wanted to bec--Henny Youngman");
  junk.add("My Grandmother is ov--Henny Youngman");
  junk.add("Think like a man of --Henri Bergson");
  junk.add("Science is facts; ju--Henri Poincare");
  junk.add("Truly great madness --Henrik Tikkanen");
  junk.add("Every generation lau--Henry David Thoreau");
  junk.add("A man is rich in pro--Henry David Thoreau");
  junk.add("Whether you think yo--Henry Ford");
  junk.add("Writing is good, thi--Hermann Hesse");
  junk.add("If you hate a person--Hermann Hesse");
  junk.add("The whole secret of --Horace Walpole");
  junk.add("Science is organized--Immanuel Kant");
  junk.add("If the doctor told m--Isaac Asimov");
  junk.add("Part of the inhumani--Isaac Asimov");
  junk.add("If I have seen furth--Isaac Newton");
  junk.add("Once the game is ove--Italian Proverb");
  junk.add("I don't deserve this--Jack Benny");
  junk.add("I have enough money --Jackie Mason");
  junk.add("It's no longer a que--Jackie Mason");
  junk.add("The world can only b--Jacob Bronowski");
  junk.add("Dream as if you'll l--James Dean");
  junk.add("Too many people are --James F. Byrnes");
  junk.add("A myth is a religion--James Feibleman");
  junk.add("It is better to know--James Thurber");
  junk.add("He knows all about a--James Thurber");
  junk.add("No matter what side --Jascha Heifetz");
  junk.add("Life is like a game --Jawaharlal Nehru");
  junk.add("Only the mediocre ar--Jean Giraudoux");
  junk.add("A timid person is fr--Jean Paul Richter");
  junk.add("My pessimism extends--Jean Rostand");
  junk.add("A good tool improves--Jeff Duntemann");
  junk.add("A person who trusts --Jerome Blattner");
  junk.add("I like work: it fasc--Jerome K. Jerome");
  junk.add("Sometimes the road l--Jerry Seinfeld");
  junk.add("If God lived on eart--Jewish Proverb");
  junk.add("If the phone doesn't--Jimmy Buffet");
  junk.add("We are the people ou--Jimmy Buffett");
  junk.add("The only normal peop--Joe Ancis");
  junk.add("If it weren't for my--Joe Martin");
  junk.add("It is in self-limita--Johann Goethe");
  junk.add("Mistrust the man who--Johann K. Lavater");
  junk.add("In mathematics you d--Johann von Neumann");
  junk.add("The intelligent man --Johann Wolfgang von Goethe");
  junk.add("The only function of--John Kenneth Galbraith");
  junk.add("A man always has two--John Pierpont Morgan");
  junk.add("What we think, or wh--John Ruskin");
  junk.add("We are continually f--John W. Gardner");
  junk.add("Half the money I spe--John Wanamaker");
  junk.add("Before I got married--John Wilmot");
  junk.add("No wise man ever wis--Jonathan Swift");
  junk.add("Man has to suffer. W--Jose Marti");
  junk.add("I hate mankind, for --Joseph Baretti");
  junk.add("A fine quotation is --Joseph Roux");
  junk.add("A single death is a --Joseph Stalin");
  junk.add("Always be a first-ra--Judy Garland");
  junk.add("Imagination is the o--Jules de Gaultier");
  junk.add("Laziness is nothing --Jules Renard");
  junk.add("It is no measure of --Krishnamurti");
  junk.add("If you want truly to--Kurt Lewin");
  junk.add("Those who believe in--Kurt Vonnegut");
  junk.add("Another flaw in the --Kurt Vonnegut");
  junk.add("A journey of a thous--Lao Tzu");
  junk.add("Truth over Harmony.--Larry Bossidy ");
  junk.add("Originality is the f--Laurence J. Peter");
  junk.add("Any event, once it h--Lee Simonson");
  junk.add("Everyone thinks of c--Leo Tolstoy");
  junk.add("Simplicity is the ul--Leonardo da Vinci");
  junk.add("Besides the noble ar--Lian Yutang");
  junk.add("Sometimes I worry ab--Lily Tomlin");
  junk.add("The trouble with the--Lily Tomlin");
  junk.add("I always wanted to b--Lily Tomlin");
  junk.add("When hungry, eat you--Lin-Chi");
  junk.add("The best way to have--Linus Pauling");
  junk.add("The highest proof of--Lord Macaulay");
  junk.add("Life is ten percent --Lou Holtz");
  junk.add("Love thy neighbour a--Louise Beal");
  junk.add("Wisdom is knowing th--M. H. McKee");
  junk.add("It is more important--Mabel Newcomber");
  junk.add("The difference betwe--Gandhi");
  junk.add("An eye for eye only --Gandhi");
  junk.add("God has no religion.--Gandhi");
  junk.add("Education's purpose --Malcolm Forbes");
  junk.add("The real voyage of d--Marcel Proust");
  junk.add("Most conversations a--Margaret Millar");
  junk.add("Times have not becom--Marilyn Manson");
  junk.add("To acquire knowledge--Marilyn vos Savant");
  junk.add("If everything's unde--Mario Andretti");
  junk.add("It is surprinsingly --Mark Forster");
  junk.add("The difference betwe--Mark Twain");
  junk.add("Never argue with a f--Mark Twain");
  junk.add("Most people are both--Mark Twain");
  junk.add("To cease smoking is --Mark Twain");
  junk.add("A lie can travel hal--Mark Twain");
  junk.add("If you eat a frog fi--Mark Twain");
  junk.add("If you have to eat a--Mark Twain");
  junk.add("If you tell the trut--Mark Twain");
  junk.add("It is by the goodnes--Mark Twain");
  junk.add("Never put off until --Mark Twain");
  junk.add("Whenever you find yo--Mark Twain");
  junk.add("When a thought is to--Marquis de Vauvenargues");
  junk.add("I don't necessarily --Marshall McLuhan");
  junk.add("There is no pleasure--Mary Wilson Little");
  junk.add("If God wanted us to --Mel Brooks");
  junk.add("The coward dies a th--Meredith Willson");
  junk.add("I can accept failure--Michael Jordan");
  junk.add("The more you can dre--Michael Korda")
  ;junk.add("You don't stop laugh--Michael Pritchard");
  junk.add("Arithmetic is being --Mickey Mouse");
  junk.add("A man who fears suff--Montaigne");
  junk.add("We can do no great t--Mother Teresa");
  junk.add("A complex system tha--Murphy's Law of Computing");
  junk.add(" Never ascribe to ma--Napoleon (Hanlon's Razor)");
  junk.add("History is the versi--Napoleon Bonaparte");
  junk.add("Never interrupt your--Napoleon Bonaparte");
  junk.add("I've gone into hundr--New York City detective");
  junk.add("The opposite of a co--Niels Bohr");
  junk.add("I like long walks, e--Noel Coward");
  junk.add("Insane people are al--Nora Ephron");
  junk.add("When you go into cou--Norm Crosby");
  junk.add("There is no greater --Norman Mailer");
  junk.add("Heroism consists of --Norwegian saying");
  junk.add("You probably wouldn'--Olin Miller");
  junk.add("The little I know I --Orville Mars");
  junk.add("What the world needs--Oscar Levant");
  junk.add("Always forgive your --Oscar Wilde");
  junk.add("True friends stab yo--Oscar Wilde");
  junk.add("Be yourself; everyon--Oscar Wilde");
  junk.add("I am not young enoug--Oscar Wilde");
  junk.add("Truth, in matters of--Oscar Wilde");
  junk.add("Every saint has a pa--Oscar Wilde");
  junk.add("There is no such thi--Oscar Wilde");
  junk.add("Imagination was give--Oscar Wilde ");
  junk.add("Laws are like sausag--Otto von Bismarck");
  junk.add("Action is the founda--Pablo Picasso");
  junk.add("Computers are useles--Pablo Picasso");
  junk.add("The best way to make--Paul Valery");
  junk.add("There is nothing so --Peter F. Drucker");
  junk.add("Some people have so --Peter McArthur");
  junk.add("Wise men talk becaus--Plato");
  junk.add("Write drunk, revise --Poet's Motto");
  junk.add("I have yet to see an--Poul Anderson");
  junk.add("Technology is domina--Putt's Law");
  junk.add("Some things have to --Ralph Hodgson");
  junk.add("The test of courage --Ralph W. Sockman");
  junk.add("I hate quotations. T--Ralph Waldo Emerson");
  junk.add("You have to know how--Ray Bradbury");
  junk.add("A pessimist is one w--Reginald B. Mansell");
  junk.add("Grant me the serenit--Reinhold Niebuhr");
  junk.add("Each problem that I --Rene Descartes");
  junk.add("Programming today is--Rich Cook ");
  junk.add("I quit therapy becau--Richard Lewis");
  junk.add("One of the keys to h--Rita Mae Brown");
  junk.add("An undefined problem--Robert A. Humphrey");
  junk.add("Understanding is sim--Robert Fripp");
  junk.add("A jury consists of t--Robert Frost");
  junk.add("Two roads diverged i--Robert Frost");
  junk.add("While I am opposed t--Robert Green Ingersoll");
  junk.add("Progress isn't made --Robert Heinlein");
  junk.add("The only Zen you fin--Robert M. Pirsig");
  junk.add("It is a puzzling thi--Robert M. Pirsig");
  junk.add("When one person suff--Robert M. Pirsig");
  junk.add("There's so much poll--Robert Orben");
  junk.add("We've heard that a m--Robert Wilensky");
  junk.add("If the automobile ha--Robert X. Cringely");
  junk.add("I haven't spoken to --Rodney Dangerfield");
  junk.add("My wife and I were h--Rodney Dangerfield");
  junk.add("If there's only one --Ron Jeffries");
  junk.add("Nobody believes the --Ron Nesen");
  junk.add("Abortion is advocate--Ronald Reagan");
  junk.add("After twelve years o--Ronnie Shakes");
  junk.add("Inanimate objects ar--Russell Baker");
  junk.add("O Lord, help me to b--Saint Augustine");
  junk.add("There are more tears--Saint Theresa of Jesus");
  junk.add("You almost never get--Sam Harris");
  junk.add("What shapes our live--Sam Keen");
  junk.add("Somewhere on this gl--Sam Levenson");
  junk.add("It's so simple to be--Sam Levenson");
  junk.add("What is written with--Samuel Johnson");
  junk.add("Your manuscript is b--Samuel Johnson");
  junk.add("If there are no stup--Scott Adams");
  junk.add("If you can eliminate--Sherlock Holmes");
  junk.add("In the beginner's mi--Shunryu Suzuki");
  junk.add("An honest politician--Simon Cameron");
  junk.add("An honest politician--Simon Cameron");
  junk.add("Not only is the univ--Sir Arthur Eddington");
  junk.add("I don't mind what la--Sir Edward Appleton");
  junk.add("By all means marry. --Socrates");
  junk.add("The only true wisdom--Socrates");
  junk.add("The unexamined life --Socrates");
  junk.add("True wisdom comes to--Socrates");
  junk.add("To a brave man, good--St Catherine of Siena");
  junk.add("When you're young, y--Steve Jobs");
  junk.add("Failure to plan ahea--Steven Dutch");
  junk.add("With or without reli--Steven Weinberg");
  junk.add("Millions long for im--Susan Erz ");
  junk.add("Fortune does not cha--Suzanne Necker");
  junk.add("When I hear somebody--Sydney J. Harris");
  junk.add("Have the courage to --Sydney Smith");
  junk.add("If I had to live my --Tallulah Bankhead");
  junk.add("We don't see the thi--Talmund");
  junk.add("If I only had a litt--Ted Turner");
  junk.add("There is nothing so --Terence");
  junk.add("Every great advance --Thomas H. Huxley");
  junk.add("Try to learn somethi--Thomas H. Huxley");
  junk.add("The way to succeed i--Thomas J. Watson");
  junk.add("In archaeology you u--Thomas Pickering");
  junk.add("When a person can no--Thomas Szasz");
  junk.add("Invention is the mot--Thorstein Veblen");
  junk.add("I have such a high r--Timothy Connor");
  junk.add("Women who seek to be--Timothy Leary");
  junk.add("A cult is a religion--Tom Wolfe");
  junk.add("The best way to get --Tony Robbins");
  junk.add("The things you own e--Tyler Durden, in Fight Club");
  junk.add("The real hero is alw--Umberto Eco");
  junk.add("Nobody knows the age--Unknown Author");
  junk.add("Learn from the mista--Unknown Author");
  junk.add("Opportunity may knoc--Unknown Author");
  junk.add(" Quidquid latine dic--Unknown Author");
  junk.add("I wish I was as cert--Unknown Author");
  junk.add("Management works wit--Unknown Author");
  junk.add("There are 10 types o--Unknown Author");
  junk.add("I would love to chan--Unknown Author");
  junk.add("If you don't know wh--Unknown Author");
  junk.add("Be kind to unkind pe--Unknown Author");
  junk.add("It takes about ten y--Unknown Author");
  junk.add("To fight a bull when--Unknown Author");
  junk.add("Some people have not--Unknown Author");
  junk.add("What if this weren't--Unknown Author");
  junk.add("The fact that no one--Unknown Author");
  junk.add("Tell a man there are--Unknown Author");
  junk.add("A wise man can see m--Unknown Author");
  junk.add("Discipline is just c--Unknown Author");
  junk.add("When an ordinary man--Unknown author");
  junk.add("Never try to please --Unknown Author");
  junk.add("Everyone is entitled--Unknown Author");
  junk.add("The richest man is n--Unknown Author");
  junk.add("Work like you don't --Unknown Author");
  junk.add("Experience is a hard--Vernon Sanders Law");
  junk.add("Laughter is the shor--Victor Borge");
  junk.add("I don't mind what Co--Victor Hugo");
  junk.add("Try a thing you have--Virgil Garnett Thomson");
  junk.add("Among those whom I l--W. H. Auden");
  junk.add("The very best thing --Wallace Wattles");
  junk.add("You've achieved succ--Warren Beatty");
  junk.add("It makes more sense --Warren Buffet");
  junk.add("You miss 100 percent--Wayne Gretzky");
  junk.add("Always and never are--Wendell Johnson");
  junk.add("Research is what I'm--Wernher von Braun");
  junk.add("The truth is that th--Whitney Young");
  junk.add("Even if you're on th--Will Rogers");
  junk.add("The trouble with bei--Willem de Kooning");
  junk.add("The pessimist compla--William Arthur Ward");
  junk.add("It is easier to forg--William Blake");
  junk.add("It is impossible to --William G. McAdoo");
  junk.add("The future is here. --William Gibson");
  junk.add("I feel like a fugiti--William H. Mauldin");
  junk.add("After one look at th--William S. Burroughs");
  junk.add("When two men in busi--William Wrigley Jr.");
  junk.add("I respect faith, but--Wilson Mizner");
  junk.add("Success consists of --Winston Churchill");
  junk.add("A fanatic is one who--Winston Churchill");
  junk.add("I took a speed readi--Woody Allen");
  junk.add("If you're not failin--Woody Allen");
  junk.add("No one goes there no--Yogi Berra");
  junk.add("Before enlightnment,--Zen proverb");
  junk.add("People often say tha--Zig Ziglar");
  junk.add("When I read about th--Henny Youngman");
  junk.add("It's no wonder that --Mark Twain");
  junk.add("When your friends be--Mark Twain");
  junk.add("Sometimes when readi--Guy Davenport");
  junk.add("Seriousness is the o--Oscar Wilde");
  junk.add("Honest criticism is --Franklin P. Jones");
  junk.add("A conclusion is the --Martin H. Fischer");
  junk.add("Never believe anythi--Claud Cockburn");
  junk.add("I've done the calcul--Fran Lebowitz");
  junk.add("First we make our ha--Charles C. Noble");
  junk.add("The true measure of --Samuel Johnson");
  junk.add("Until you've lost yo--Margaret Mitchell");
  junk.add("A writer is someone --Thomas Manne");
  junk.add("I never apologize. I--Homer Simpson");
  junk.add("The secret of life i--Groucho Marx");
  junk.add("Never try and teach --Unknown Author");
  junk.add("A genius! For 37 yea--Pablo Sarasate (Spanish Violinist)");
  junk.add("If you have built ca--Henry David Thoreau");
  junk.add("The nice thing about--Andrew S. Tanenbaum");
  junk.add("Who looks outside, d--Carl Jung");
  junk.add("My definition of an --P. J. Plauger");
  junk.add("Eighty percent of su--Woody Allen");
  junk.add("'Someday' is the day--Steve Pavlina");
  junk.add("I can't understand w--Fred Allen");
  junk.add("Time flies like an a--Groucho Marx");
  junk.add("You will not be puni--Buddha");
  junk.add("Who is wise? He who --Ben Zoma");
  junk.add("Dream is not the thi--Adbul Kalam");
  junk.add("If people knew how h--Michelangelo");
  junk.add("When I was young, I --George Bernard Shaw");
  junk.add("There are only two w--Thomas Sowell");
  junk.add("When a thing is funn--George Bernard Shaw");
  junk.add("Don't worry about th--Charles M. Schulz");
  junk.add("Tomorrow is often th--Spanish Proverb");
  junk.add("When I'm working on --R. Buckminster Fuller");
  junk.add("You can never get en--Eric Hoffer");
  junk.add("Time is that quality--Unknown Author");
  junk.add("An incompetent attor--Evelle J. Younger");
  junk.add("I'd rather be hated --Kurt Cobain");
  junk.add("Practice doesn't mak--Vince Lombardi");
  junk.add("Never judge a book b--J. W. Eagan");
  junk.add("The more things a ma--George Bernard Shaw");
  junk.add("I can picture in my --Jack Handey");
  junk.add("A man is but the pro--Gandhi");
  junk.add("Why does the Air For--George Wallace");
  junk.add("Before you go and cr--Unknown Author");
  junk.add("It's not that I'm so--Albert Einstein");
  junk.add("I have been through --Mark Twain");
  junk.add("Time is the stuff li--Benjamin Franklin");
  junk.add("Even a stopped clock--Marie von Ebner-Eschenbach ");
  junk.add("Time you enjoy wasti--John Lennon");
  junk.add("I hope that while so--Herbert Rappaport");
  junk.add("When a stupid man is--George Bernard Shaw");
  junk.add("Silence is so accura--Mark Rothko");
  junk.add("Money doesn't change--Unknown Author");
  junk.add("Quiet is the absence--Robert Fripp");
  junk.add("Love is the triumph --H. L. Mencken");
  junk.add("If you don't make mi--Frank Wilczek ");
  junk.add("The reasonable man a--George Bernard Shaw");
  junk.add("It is amazing what y--Harry Truman");
  junk.add("I don't care what is--Dorothy Parker");
  junk.add("I don't know if God --Jules Renard");
  junk.add("The bad news is time--Michael Althsuler");
  junk.add("The art of progress --Alfred North Whitehead");
  junk.add("You can tell whether--Naguib Mahfouz");
  junk.add("The difference betwe--Will Rogers");
  return junk;
}