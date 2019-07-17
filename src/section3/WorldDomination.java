package section3;

import javax.swing.JOptionPane;

public class WorldDomination {
	
	public static void main(String[] args) {
		// 1. Ask the user if they know how to write code.
		String question = JOptionPane.showInputDialog("Do you know how to write code?");
		// 2. If they say "yes", tell them they will rule the world.
		if (question.equalsIgnoreCase ("yes")) {
			JOptionPane.showMessageDialog(null, "You are going to rule the world someday");
		} else {
			JOptionPane.showMessageDialog(null, "Have fun washing dishes!");
		}
		// 3. Otherwise, wish them good luck washing dishes.

	}
}

