# Intro to IM Final Project: An obstacle-avoiding robot Puffy

Initially, I was planning to recreate an old game Doodle Jump by adding NYUAD-related elements. However, since the jumping game was something that I had already done similar to, 
I would have liked to try something creative that I hadn't done before. So, for my final project, using Arduino and Processing, I decided to construct an obstacle-avoiding robot. 

![](https://github.com/Sartbayeva/IntrotoIM/blob/main/FinalProject/images/my%20robot.jfif)
 
## Description
When the switch is turned on, the robot will drive forward until it senses an object. When the switch is turned off, the robot will sit still. When it encounters an object, 
an alarm buzzer will be played, it will stop, back up and turn to the right before driving forward again. A user will know whether his robot faces an obstacle because a screen 
will display a warning message.

## Main components
The HC-SR04 ultrasonic distance sensor: serves as the sensor that gives information on obstacles, detects objects within 10 cm

Two DC Motors: spin to rotate wheels, and in charge of robot’s movement

A buzzer: generate warning beeps when the robot encounters obstacles

A switch: to turn the robot on and off

## Schematic 

The schematic for this project is below. 

![](https://github.com/Sartbayeva/IntrotoIM/blob/main/FinalProject/images/schematics.jfif)

## Final Circuit

## Game Demonstration Video 

Click this link to see the final result of my work:

https://youtu.be/J7ljON5hl9s 


## Demo GIF 

## Challenges 

### One motor was not spinning at all 
I tested each of the motors one by one. After checking the circuit and code, it turned out that I have mixed up wires connected to the motor driver. Oops..
The most effective way to track errors was to label the pins and put them in one by one checking to see if the previous components still worked when a new element was added. 

### The robot did not work on top of the table or ground 
This was my main challenge throughout this project. Even though it was powered, it stopped working or sometimes it did work but was very slow. First of all, I replaced the batteries because I thought the problem was there….Professor could not see any errors both in my code and circuit but he said that possibly part of the motor driver is damaged. The motor driver may have been damaged by a temporary short circuit or wires connected to the wrong place. This could have been very brief and he mentioned that I wouldn't have seen any evidence of the damage. So, then I replaced my motor driver. I was so hopeful that after replacing it, it would work perfectly as before. But anyways I had the same problem. After many attempts, once I stared at my breadboard for a while. Suddenly, I noticed that I am using all the pins of the motor driver except GND. According to the examples that we did in class and tutorials on the Internet, it is not mandatory to use tall GND pins and no one mentioned about using it. But out of curiosity and hopelessness, I tried to hook it up. Then my robot drove so fast that I had to change the speed of the motors from 255 to 200.

## Arduino and Processing: Serial Communication
As my project itself on Arduino is not easy, I did not want to have a complicated code in Processing. Also, taking into consideration this short time frame I decided to display on the screen the position of the robot while it is moving. It seemed to me that serial communication would take me quite a lot of time but it was pretty fast. 
Arduino to Processing:
The ultrasonic distance measuring sensor detects an obstacle and transmits this data to the Processing.

## Process & Journal

You can read the process of implementing my robot Puffy with a day by day progress and challenges by clicking this link: 

## Reflection and future thoughts

Overall, even though it was frustrating and nerve-wracking, I definitely enjoyed the whole process. Most importantly, this project gave me a big learning experience. I am proud of myself.
In the future, I wish I could control the robot’s movements with my smartphone..

## References

https://learn.sparkfun.com/tutorials/sparkfun-inventors-kit-experiment-guide---v41/circuit-5a-motor-basics

https://github.com/michaelshiloh/IntroductionToInteractiveMedia/blob/master/lectureNotes.md



