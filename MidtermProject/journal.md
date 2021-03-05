# February 18, 2021: #

[deciding on my game] When I heard that we are going to create a game for our Midterm project, I decided to implement a race game between two cars. Today, I looked at other car race games and imagined a design of my vehicles and roads. 

# February 20, 2021: #

[coming up with another topic] Hey, I changed my mind. Unfortunately, I will not create a car race because to be honest, I did not like the concept of this game and other than that there were some parts that I would not be able to code thoroughly in this short time. So, considering and taking into account my level in programming I will implement a game which I really can do it myself. This game is similar to popular Flappy Bird game, which was created by Vietnamise video artist and is played by many people around the world. I want to change the character of this game, particularly instead of a bird I want to have NYUAD’s mascot as the main character. Also, I want the theme of this game to be dedicated to our university’s Health and Athletics Departments.

# February 21, 2021: #
[collecting images and learning new software] As all of us know, NYUAD’s mascot is Falcon bird, whose name is Faiza. I did typed in on Google however I could not find an animated image of Faiza. That is why I then searched for a mascot of NYU in New York, and found it. It is a Bobcat. I wanted to use this image but unfortunately it’s size is 920 and 1112, which was too big for a window of my game. Then, I opened for myself a free and open-source raster graphics editor used for image manipulation and image edit called GIMP. I downloaded this software, played around with several functions and properties. Especially, I found a very comfortable and easy feature to rescale images. As the character’s size has to be smallI, I scaled Bobcat width and height to 83 and 100, respectively. But UNFORTUNATELY, because of reducing the size of Bobcat from large to small one, the image lost its quality. It was totally not good! My mood is spoiled now ;((( I really wanted to use Falcon or at least Bobcat as my main character and load images of campus as a background… Now I need to change my character.
![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/bobcat.png)

# February 22, 2021 #
[Jerry and Pipes - timeconsuming] I am sure that all of us watched at least 1 episode of Tom and Jerry. Today, my choice fell on Jerry as it's a very loyal, innocent and tiny character that I ever knew lol. So, I found its image and uploaded it to GIMP to change its size. Fortunately, compared to last case, this one’s quality was not bad. But again, I faced a problem. I could not remove the white background of the picture. So, I decided to leave as it is for a while and found background and images of pipes. To be honest, I did not expect that collecting images would be so time-consuming. Yes, you find images that you need but not all of them have a size(width,height) that your canva’s needs. Thanks to GIMP, I played around with the scale of my pipes. On the internet I could find only the bottom pipe, that is why I did the top pipe myself by vertically flipping the bottom pipe. Uhh, I guess materials are now ready and tomorrow I will work on coding.
![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/topPipe.png)
![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/bottomPipe.png)
![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/tjerry.png)

February 23, 2021
[pipes are the whole thing!] Today, I learned how to animated background, finally! I always wondered how the background images of games that we play everyday are moving like from right to left. Not so difficult. Also, as I faced several problems with looping and incrementing pipes, for example some pipes’ heights were too short that there was a space between bottom/earth of the window and height of the pipes. Moreover, during the drawing function some pipes were placed on top of each other. I got really mad because I could not see where the problem was. So, to debug that problem I decided to draw coordinates to understand the exact location of pipes, gaps between them, and also the distance.
    ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/sketch1.jfif)
    ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/sketch2.jfif)
    ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/sketch3.jfif)
    ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/sketch4.jfif)
    ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/sketch5.jfif)
    ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/problemwithpipeheights.png)
    ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/pipeproblem.png)
    

February 25, 2021
[incrementing score and time left] Today, I faced a problem with incrementing a score. According to the instructions, a player has to get 1 point after successfully passing through a pair of pipes. It took time to figure out the RIGHT code to get this 1 point because mine gave a player 31 points for passing only one pair of pipes. I was like I am using score++ , what the hell is it adding 30 more? It turned out to be my frameRate. I have not come up with a solution before I tried to divide my score to 31 in my code. LOL. It worked!!! I am happy.
![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/scoreproblem.png)

March 1, 2021
[changing character and colorizing pipes]
After some break (actually no break, the DEADLINES for other classes) I am back to my code. Today, I decided to change my background, and colorize pipes from green to yellow. Also, I finally chose my character. I got inspired by the animated TV series the Powerpuff Girls. It is one of my favorite cartoons that I used to regularly watch with my classmate. There are 3 adorable girls, who were accidently created by a professor in his laboratory. He was making a mixture of sugar,spice,and everything nice to create the perfect little girl,but he accidently mixed in chemical X! Thus the powerpuff girls were born. Instead of a jerry I chose one of these powerpuff girls - Bubbles. 
![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/powerpuff.jpg)
![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/cutegirl.png)
![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/bpipeyellow.png)

March 2, 2021
[adding sound, creating classes and objects] Today, I realized that because of that division the background music has started producing very weird sounds when each time the score increases by 1. It was because of the frame rate decrease. Haha was so dumb to just divide everything to the number of framerate)) Then owing to having a quick Zoom call with my Professor, I could solve this problem. I liked my game, how it turned out now with background sounds. Much more alive, I would say… Other than that, I created 3 classes: for timer, pipes and character(I called it Dora).
![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/objectoriented.png)

March 3, 2021
[multiple pages] Today I created pages: for welcome, for lose and win cases. 
 ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/welcomePage.png)
 ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/mainPage.png)
 ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/losePage.png)
 ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/winPage.png)
 I finally finished my gameee. SO HAPPY!!! 
