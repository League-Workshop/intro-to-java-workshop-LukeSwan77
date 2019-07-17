package section4;



import javax.swing.JOptionPane;

public class QuizGame {
	static int score = 0;
	
	public static void main(String[] args) {
		
		// 1.  Create a variable to hold the user's score 
		
		// 2.  Ask the user a question 
		String question1 = JOptionPane.showInputDialog("Who always enjoys poor health?");
		checkAnswer (question1, "a doctor");
		String question2 = JOptionPane.showInputDialog("What travels around the world but stays in a corner?");
		checkAnswer (question2, "a stamp");
		
		JOptionPane.showMessageDialog(null, score);
	}

static void checkAnswer (String question, String ans) {
	if (question.equalsIgnoreCase(ans)) {
		score++;
	}
}
}