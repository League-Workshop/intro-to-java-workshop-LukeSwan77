package section3;

import javax.swing.JOptionPane;

import com.sun.speech.freetts.Voice;
import com.sun.speech.freetts.VoiceManager;

public class SpeakAndSpell {

	public static void main(String[] args) {
		// 1. Use the speak method to say the word. "e.g. spell mandlebrot"
		speak("Spell the mord mandlebrot");
		String answer = JOptionPane.showInputDialog("Typw your answer here:");
		if (answer.equalsIgnoreCase ("mandlebrot")) {
			speak("Correct");
		} else {
			speak("Wrong");
		}
		
		speak("Spell the mord Pharoah");
		String answer2 = JOptionPane.showInputDialog("Typw your answer here:");
		if (answer2.equalsIgnoreCase ("Pharoah")) {
			speak("Correct");
		} else {
			speak("Wrong");
		}
		speak("Spell the mord Publically");
		String answer3 = JOptionPane.showInputDialog("Typw your answer here:");
		if (answer3.equalsIgnoreCase ("Publically")) {
			speak("Correct");
		} else {
			speak("Wrong");
		}
		
	}

	static void speak(String words) {
		try {
			Runtime.getRuntime().exec("say " + words).waitFor();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

}


