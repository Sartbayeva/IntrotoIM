# Help your children to learn traffic lights! :)
### Arduino UNO Assignment 2: to create an arduino project that gets information from at least one analog sensor and at least one digital sensor and use this information to control at least two LEDs, one in a digital fashion and the other in an analog fashion

![](https://github.com/Sartbayeva/IntrotoIM/blob/main/March%2030/lights.jpg)

# Process
 
When we were assigned for this week to get information from both an analog and digital sensor in our circuit, I thought of the potentiometer as we have already got acquainted and used a photocell in the last lesson. Also, I wanted to try something different and new for me. {A potentiometer is a simple knob/voltage divider, which is used for measuring electric potential.} After choosing an analog input my next step was to brainstorm ideas. Initially, I thought about creating police or ambulance sirens but then switched to the idea of doing a game for kids to learn how traffic lights work. I wanted to try Mr.Michael’s advice on “first draw schematics and only then build a circuit” because I know that it may prevent us from being confused about when and which wires or resistors to use. But apparently, I don’t know why, maybe because of a big excitement and enthusiasm :D to create those patterns, first I did my circuit. So, I set up my circuit with 3 LEDs: the red, yellow and green lights (actuators), 4 resistors, 1 potentiometer (analog sensor) and 1 switch (digital sensor). 
 
# Description
 
A user turns on LED lights one by one by adjusting a potentiometer and once the user memorizes a particular color of traffic lights, he/she should turn off that light by pressing a button. The color that the user has learned will turn off while other subsequent lights will light up one by one to show the player what colors are left to learn.
 
# The schematic

![](https://github.com/Sartbayeva/IntrotoIM/blob/main/March%2030/schematics_Aiya.jfif)
 
# The breadboard

![](https://github.com/Sartbayeva/IntrotoIM/blob/main/March%2030/breadbord_Aiya.jfif)

![](https://github.com/Sartbayeva/IntrotoIM/blob/main/March%2030/circuit_Aiya.jfif)
 
# Challenges
Compared to last week, setting up the circuit was much smoother for me. However, as I used a potentiometer for the first time I misplaced the location of wires. Theoretically, the third wire goes from analog input pin to the middle pin of the potentiometer. But mine was connected to the outer pin of the potentiometer. I realized it as soon as I checked my circuit for the second time.. Moreover, I had some problems with separating the functionality of the button and potentiometer because initially the button was not working at all as I expected, it was dependent on the potentiometer. Then, after playing about for quite a while, I managed to debug it with adding some if else statements. Other than that as we learned that we can read an output from the potentiometer and map its values from the base values of 0 - 1023 to values of 1 - 24 I wanted to convert potentiometer reading to a percentage as following code:
          
         void loop() {
      
         potMeasure = analogRead(potPin); //read the value from the potentiometer and assign the name potMeasure
  
         percent = map(potValue, 0, 1023, 0, 100); / convert potentiometer reading to a percentage

         if (percent > 40) { //if the percentage is more than 40%...
  
            digitalWrite(13, HIGH); // turn the red LED on
      
            digitalWrite(12, LOW); // turn the yellow LED off
     
            digitalWrite(11, LOW); // turn the green LED off
And like this by changing the range of percentage. 

Unfortunately, wherever I adjusted the potentiometer, only one led lit up. That is why instead of percentage I used a traditional way of putting ranges from 0 till 1023.
 
## Helpful resources to learn more about potentiometer
1. https://www.instructables.com/Arduino-Potentiometer-Analog-Input-Tinkercad/

2. https://www.arduino.cc/en/tutorial/potentiometer
 
## A video of the FINAL RESULT
https://youtu.be/08aGqNP7GbA

*If you show this game to your kids, you lessen their chances of getting into an accident :D*
