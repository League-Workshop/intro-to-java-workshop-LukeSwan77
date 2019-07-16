package section2;

import org.jointheleague.graphical.robot.Robot;

public class FlamingNinjaStar {
	
	public static void main(String[] args) {

		int baseSize = 300;		//the size of the black part of the star
		int flameSize = 200;		//the length of the flaming arms
		
		// 1. Make a new robot, and set it's pen down.
		Robot rob = new Robot();
		// *14. Use the methods setX and setY to move the ninja star into the center of the screen
		
		// *15. Make some adjustments to see what other kinds of shapes you can make.

		// 12. Set the robot speed to 100
		rob.setSpeed(100);
		rob.penDown();
		// 13. Use a for loop to repeat all of the code below 25 times
		for(int i=0; i<25; i++) {
			rob.turn(360/8);
			rob.move(64);
			rob.turn(40);
			rob.move(flameSize);
			rob.turn(170);
			rob.turn(flameSize);
			rob.turn(64);
			rob.move(baseSize);
			
			
		}
			
			// 11. Color your ninja star like Figure 2.
		
	}

}


