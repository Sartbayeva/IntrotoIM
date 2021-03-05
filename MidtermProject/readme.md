For my Midterm Project, I eventually decided to create a game called **The Flappy Powerpuff Girl**.

# Inspiration
    Why this game?
I got inspired by the very famous Flappy Bird game. It is one of the funniest games to play out there. I remember how during my primary school, I would come home from school and play this game for 51243 hours. That is why I thought it would be cool to recreate this game on my own after 8 years, play again and bring those memories back.

# Description 
The logic of this arcade-style game is the same as in Flappy Bird. However, I changed my character, pipes, and background. The goal of the game is to control a powerpuff girl, which moves persistently to the right, by trying to fly between columns of golden pipes without hitting them. A Player controls the girl by using a spacebar key. Each successful pass through a pair of pipes awards the player one point. Colliding with a pipe or the ground ends the gameplay.

    About my character
My motive came from the animated TV series the Powerpuff Girls. It is one of my favorite cartoons that I used to regularly watch with my classmate. There are 3 adorable girls, who were accidently created by a professor in his laboratory. He was making a mixture of sugar,spice,and everything nice to create the perfect little girl,but he accidently mixed in chemical X! Thus the powerpuff girls were born, who can FLY. Instead of a bird I chose one of these powerpuff girls, namely Bubbles. Because Bubbles is the cutest of the Powerpuff Girls known as "The Joy and the Laughter." 

![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/problemwithpipeheights.png)
![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/pipeproblem.png)

# Demonstration 
 I have 3 pages: welcome, main, lose, and win:
 ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/welcomePage.png)
 ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/mainPage.png)
 ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/losePage.png)
 ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/winPage.png)

# Challenges & Reflection 

There were quite a lot of bugs while creating the game. Major problems:

1. **Identifying the location of pipes, the size and number, and distance between the top and bottom pipes.**
It may look an easy task, however this part took me roughly a couple of days to achieve the perfect state. I faced several problems with looping and incrementing pipes, for example some pipes’ heights were too short that there was a space between bottom/earth of the window and height of the pipes. Moreover, during the drawing function some pipes were placed on top of each other. 
![]https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/pipeproblem.png
![]https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/problemwithpipeheights.png

I got really mad because I could not see where the problem was. So, to debug that problem I decided to draw coordinates to understand the exact location of pipes, gaps between them, and also the distance, on my iPad. 
    *After sketching on notes, I kind of understood the logic behind locating these pipes.*
    ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/sketch1.jfif)
    ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/sketch2.jfif)
    ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/sketch3.jfif)
    ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/sketch4.jfif)
    ![](https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/sketch5.jfif)
2. **Incrementing Scores.**
According to the instructions, a player has to get 1 point after successfully passing through a pair of pipes. It took time to figure out the RIGHT code to get this 1 point because mine gave a player 31 points for passing only one pair of pipes. I was like I am using score++ , what the hell is it adding 30 more? It turned out to be my frameRate. I have not come up with a solution before I tried to divide my score to 31 in my code. LOL, it worked. 

![]https://github.com/Sartbayeva/IntrotoIM/blob/main/MidtermProject/images/scoreproblem.png

But it was so dumb to just divide everything to the number of framerate. I was so happy with that unless I realized that because of this division the background music has started producing very weird sounds when each time the score increases by 1. It was because of the frame rate decrease. Then owing to having a quick Zoom call with my Professor, I could solve this problem. 
3. **Choosing character.**
Initially, my plan was to create a game, which will be dedicated to NYUAD’s Health and Welness departments. I wanted my main character to be Falcon  Faiza. Unfortunately, I could not find the animated/sketched picture of it, then decided to use NYUNY’s mascot - Bobcat because I found its image. However, the size of the picture is so large that even though I resized it with the help of another software, the quality was so bad. Then, I chose Jerry as my character from Tom and Jerry. It was all perfect, until I realized that I was not able to remove its white background and make it transparent. I watched tutorials to get to know how to remove its background, I repeated every step they showed but no result. Eventually, I came up with a Blossom from The Powerpuff Girls.

    Internet, Instructor and Professor
I would like to highlight my source of help. Besides watching tutorials, reading reference pages of processing and playing around with my code, I want to mention assistance from Jack (IM instructor) and of course Professor Shiloh. When I could not solve some problems with my code, zoom meetings with them were like a magic wand :) I really appreciate their help. Thank You!

**Overall**, I am really happy that I could finish my first game as I wished. Even though it was challenging and time-consuming, I learned a lot, which is the most important. I am glad that I could use almost everything we have learned so far for these past 7 weeks. UNFORGETTABLE EXPERIENCE!

# Things I found interesting
1. GIMP -  is a free and open-source raster graphics editor used for image manipulation and image editing, free-form drawing, transcoding between different image file formats, and more specialized tasks. *THANK CREATORS OF THIS APP!*
2. Importing Sounds. *IT WAS FUUN!*
3. Animating background photo. *I WAS ALWAYS CURIOUS ABOUT THAT, NOW I KNOW!*


