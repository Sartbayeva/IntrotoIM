For this assignment, the task was to create an instrument that included one analogue input and one digital input.

## Attempt 1 - alarm buzzer

Initially, as I couldn’t participate in the last lesson, I wanted to try to understand and see how the buzzer itself works. That is why I created an alarm buzzer for the security system, using a photoresistor and an LED. If a room is dark nothing happens but if any flashlights come closer a red LED and an alarm sound will turn on. *Below you can see my circuit and final video:*

## Attempt 2 - music

Then, I did a kind of musical instrument, using a button and 3 LED lights. The button was used as a toggle switch to turn on particular music and while music is being played LED lights will turn on in order. *Below you can see my circuit and final video:*

# Fails and Discoveries

According to the assignment, we had to use both ANALOG and DIGITAL sensors. I wanted to use a potentiometer to adjust the volume of music in the second project but I faced logical problems, and eventually, it turned out that I cannot use it to regulate the sound of melodies…

*I did not want to give up and that is why my next attempt was to learn more about the HC-SR04 ultrasonic sensor (analogue one) and try to use it in my project along with a button (digital one).*

I started with searching for the reference page for the ultrasonic sensor and got acquainted with its features, tried some examples. 
[Ultrasonic Sensor HC-SR04 is a sensor that can measure distance. It emits ultrasound at 40 000 Hz (40kHz) which travels through the air and if there is an object or obstacle on its path It will bounce back to the module. Considering the travel time and the speed of the sound you can calculate the distance.] 
It uses sonar to determine the distance to an object. A sensor has 2 main pins, which are transmitters: trig and echo. The transmitter (trig pin) sends a signal: a high-frequency sound and if the signal finds an object, it is reflected and the transmitter (echo pin) receives it.

Eventually, along with the ultrasonic sensor and speaker, I decided to add 3 LEDs and a button.  When the yellow button is pressed, it gives a signal to the speaker to play a note, based on the segment in which the object is found, and when pitches are being played 3 LEDs will light up. Using this concept, a person can play anything as long as they are placing something into the segments and pressing the button at the same time. The pitches and LEDs are dependent on the distance sensor's reading values. As I bring my hands further away the pitch of the sound increases while I bring my hands closer to the sensor it decreases. 


It took me a while to figure out proper connections for all the components I was using. That is why I had to remove all of them on my breadboard and start over a couple of times. 


### Overall, even thoough this was something new to me I really enjoyed working on it and satisfied with my final result after so many attempts :)

## The schematics

## The breadboard

## The final result

## Helpful resources
