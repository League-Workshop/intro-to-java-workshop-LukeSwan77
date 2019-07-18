import javax.swing.JOptionPane;
int guesses = 0;
int num;
int guess1;
void setup(){
 size(800,600); 
  num = (int)random(0,100);
}

void draw(){
 String guess = JOptionPane.showInputDialog("I have a number between 1 and 100.\n Try to guess what my number is within 10 guesses!");
int guess1 = Integer.parseInt(guess);
  if(guess1 == num){
    JOptionPane.showMessageDialog(null, "Correct! you guessed the number!");
    System.exit(0);
  } else if(guess1 > num) {
    JOptionPane.showMessageDialog(null, "Lower!");
  } else if (guess1 < num) {
    JOptionPane.showMessageDialog(null, "Higher!");
  }
  guesses++;
  if(guesses == 10){
    JOptionPane.showMessageDialog(null, "Your 10 guesses are up! You lose!");
    
  }
}
