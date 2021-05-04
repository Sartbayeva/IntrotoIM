# April 14, 2021
### Final Project Proposal
 
For my Final Project, I am probably going to recreate an old game Doodle Jump. I used to play this game a lot when I was younger and had an Android phone, and so I would like to
add some new elements to it and recreate this game.

My character will keep jumping higher and higher while earning points. Also, there will be different special objects as the doodle player gets higher. The special objects will include things and associations related to NYUAD. For example, Faiza, Falcon, Marketplace, CDC, D2, symptom checker, PCR and etc. By catching these items, a player gets bonus points. Below you can find the rough sketch of the game that I made on my iPad:

![](https://github.com/Sartbayeva/IntrotoIM/blob/main/FinalProject/images/doodle%20jump%20prototype.jfif)

I am planning to use 4 switches/buttons to control my character’s moving up, down, left and right. Also, I am thinking about including a photoresistor to catch those NYUAD objects. 

This game itself would be reflected on the screen with the score and the various elements. I will use both the Arduino and Processing to make this game. Arduino will determine if one of the buttons is pressed and whether the photoresistor is covered thus send the input to Processing, while Processing will take the input from the buttons, the photoresistor, and use them to move the doodle character to the left, right, top or bottom, and to catch the objects.


# April 17, 2021
Hey. I changed my mind. I am not going to create this game as I decided to do something more complicated and creative. Also, that jumping game is something that I had already done similar to and I feel like I knew how to implement it. I would like to try something that I hadn't done before. Thanks to the Professor, who advised me today, I will make an obstacle-avoiding robot. Yes, yes, robot! I am so excited to do this. Will see :) 


# April 20, 2021
*The goal for this day:* to start wiring up my circuit and make a prototype in the form of a sketch similar to a robot, if time permits, to start implementing it. To make this robot I need: two gear motors, a motor driver, switch, wires, 2 wheels, dual lock tape, and the most important - an ultrasonic sensor. 

*The result:* I am done with the circuit. I feel like it is working. I referred to an example we did at class. But as we connected only 1 motor in class I added one more. Actually, before starting my circuit I got acquainted with many new components that I have not used before except the practical exercise that we did during the class. 

Here is what I have learned so far:
1. Motors require a lot of current. That is why it turned out that we can’t drive them directly from a digital pin on the arduino. Instead, we have to use a motor driver board to power and spin themotors accordingly. The motor controller contains a set of switches (called an H-bridge) that let us easily control the direction of the motors. Also, for me it was not easy to insert in on the breadboard. This is such a fragile component. I had to remove it a couple of times from the breadboard to leave enough space for other components too. And guess what? As it has many legs it was harder to pull it out and I was afraid that I may damage its bridge. So, to make it easier I recalled that I have a screwdriver. Finally, I opened and used it. haha
2. Next new component was a switch. It is just like the momentary buttons that we used in earlier projects. Function is to control the openness or closedness of an electric circuit. However, a switch is different in that it will stay in the position it was last in until it is switched again. WHY I DID NOT KNOW THAT WE HAVE IT IN OUR KIT? Anyways, this is such a convenient component. 
3. Final component was an ultrasonic sensor. As I have already used it in making my musical instrument I can say that I know well how it works, that is why I did not have any problems while wiring it..
![](circuit)
![](sketch)
 

# April 22, 2021
Today, I crafted my robot. In order for my robot to be mobile I used the battery pack. Finally, I opened and tested that battery holder. I bought the batteries from the Convenience Store, came to my dorm and inserted them into the holder. One problem that I had encountered today was that one motor was not spinning at all. I tested each of the motors one by one. After checking the circuit and code, it turned out that I have mixed up wires connected to the motor driver. Oops!

![https://github.com/Sartbayeva/IntrotoIM/blob/main/FinalProject/images/1.jfif]

![https://github.com/Sartbayeva/IntrotoIM/blob/main/FinalProject/images/2.jfif]

![https://github.com/Sartbayeva/IntrotoIM/blob/main/FinalProject/images/3.jfif]

![https://github.com/Sartbayeva/IntrotoIM/blob/main/FinalProject/images/4.jfif]

![https://github.com/Sartbayeva/IntrotoIM/blob/main/FinalProject/images/5.jfif]

![https://github.com/Sartbayeva/IntrotoIM/blob/main/FinalProject/images/6.jfif]


# April 25, 2021
*Update:* my robot works so well. By the way, I did not tell you how it works. So, basically when the switch is turned off, the robot will sit still. When the switch is turned on, the robot will drive forward until it senses an object.  If there will be an object in front of the ultrasonic sensor within a certain threshold my robot will detect that stop, back up and move back. However I felt like I needed to add something to make it more realistic and vibrant. So, I decided to add a buzzer. 

     if (distance < 10) {              //if an object is detected
     tone(buzzer, 1200, 250);
     tone(buzzer, 800, 250);
     
When the robot encounters an obstacle, there will be a warning sound like an alarm. This *tone()* function generates a square wave of the specified frequency on a pin number 4.


# April 27, 2021
My goal for today was to start doing *Serial Communication* with Processing. In Particular, I was planning to create a sketch in Processing. However, unfortunately, this goal is not achieved. Because during today's class I noticed that when I put my robot on top of the table it stops working. Literally, motors stop spinning. But what is so interesting is that when I hold the robot in my hand it works perfectly, sometimes it drives slowly. I went to the breakout room with the Professor and asked him the reason behind that. He checked my code and said that there are no issues with it. Then asked me to send the schematics of my circuit. I drew my schematics and sent it to the discord. The circuit also looks fine. 

![](https://github.com/Sartbayeva/IntrotoIM/blob/main/FinalProject/images/initial%20schematics.jpg)

So, I thought that the problem may be in the batteries. Maybe some of them are dead, who knows :/ I am going to buy new batteries after dinner...


# April 28, 2021
It is 04:24 am. The deadline is tomorrow. I am so WORRIED omg but I still have a whole day and also time before our class. Update: I bought new batteries, replaced it with old ones but I still have the same problem. What is the problem??? It worked perfectly until I added a buzzer. Maybe the problem is there I thought. I removed a buzzer, but anyways the wheels move so slow. Then I took some close up pictures of my wiring, so that the Professor could clearly see all the wires. Also took a video of the wiring while moving my camera over the board to cover all angles. Posted it on Github and Google Drive Now, I am going to wait for the Professor's response.
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Professor could not see any errors but he said that possibly part of the motor driver is damaged. The motor driver may have been damaged by a temporary short circuit or wires connected to the wrong place. This could have been very brief and he mentioned that I wouldn't have seen any evidence of the damage. So, he suggested me to swap our motor drivers. But since I had 3 classes today I did not have time to go off campus and asked my friend’s motor driver as she is not using it in her final project. I pried out my motor driver so gently with a screwdriver and inserted a new one. I was so hopeful that after replacing it, it would work perfectly as before. No. It again does not move on the table. I was really so pissed off. I have replaced batteries and now a motor driver. I was so curious to know what is the problem here...

Once I stared at my breadboard for a while… Then suddenly I noticed that I am using all the pins of the motor driver except GND. According to the examples that we did in class and tutorials on the Internet, it is not mandatory to use this pin and no one mentioned about using it. But I was like: let’s try to hook this up. *And GUESS WHAAT???! My robot drives SO CRAZY!* Wherever I put it or held it, motors spin so fast. Faster than before. I wish you could see my reaction when I saw how it worked. I was so happy! After many trials, finally it w-o-r-k-e-d! I decreased the speed of motors from 255 till 200. This is what I want. Perfect.


# April 29, 2021
I still have not slept. Because my goal before class is to do serial communication between Arduino and Processing. As my project itself on Arduino is not easy, I did not want to have a complicated code in Processing. Also, taking into consideration this short time frame I decided to display on the screen the position of the robot while it is moving. 

I need to show 2 messages: 1 - *warning zone*, when the robot encounters any obstacles, 2 - *safe zone*, when there are no obstacles. In Arduino, the ultrasonic distance measuring sensor will transmit received data to the Processing. Then Processing shows the output by giving the right message. I created a variable called Message. If there will be an obstacle, message equals 1 and the red Warning message will show up. It seemed to me that serial communication would take me quite a lot of time but it was pretty fast.

    if (distance < 10) {             
      tone(buzzer, 1200, 250);
      tone(buzzer, 800, 250);
      message = 1;
      Serial.println(message);
      
![](https://github.com/Sartbayeva/IntrotoIM/blob/main/FinalProject/images/11.png)

![](https://github.com/Sartbayeva/IntrotoIM/blob/main/FinalProject/images/12.png)

##### Finally, I am done with my Final Project.  Even though it was frustrating and nerve-wracking, I definitely enjoyed the whole process. Most importantly, this project gave me a big learning experience!!! I am proud of myself.
 
 
 
 
