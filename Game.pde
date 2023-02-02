// main

Button[] buttons;
import processing.sound.*;
PFont kittyFont;
boolean secondTheme = false; // цветовая тема
int windowNumber = 0;

void setup() {

    size(500, 900);
    frameRate(40);
    smooth();
    kittyFont = createFont("Data/Font/Kotya_Run-font.ttf", 128);
    textFont(kittyFont);

    loadImages();
    loadAudio();
    music.play();

    loadCat();

    buttons = new Button[22];
    buttons[0] = new Button(width/2, 380, 203, 57, 0); // start
    buttons[1] = new Button(width/2, 470, 203, 57, 1); // exit
    buttons[2] = new Button(182, 563, 50, 49, 2); // help
    buttons[3] = new Button(255, 565, 50, 49, 3); // soundOn
    buttons[4] = new Button(255, 565, 50, 49, 4); // soundOff
    buttons[5] = new Button(325, 565, 50, 49, 5); // style
    buttons[6] = new Button(410, 100, 70, 71, 6); // pause
    buttons[7] = new Button(width/2, 420, 203, 57, 7); // restart
    buttons[8] = new Button(width/2, 900, 203, 57, 8); // resume
    buttons[9] = new Button(width/2, 500, 203, 57, 9); // menu
    buttons[10] = new Button(width/2, 620, 203, 57, 10); // menuHelp

    buttons[11] = new Button(width/2, 380, 203, 57, 11); // startSecond
    buttons[12] = new Button(width/2, 470, 203, 57, 12); // exitSecond
    buttons[13] = new Button(182, 563, 50, 49, 13); // helpSecond
    buttons[14] = new Button(255, 565, 50, 49, 14); // soundOnSecond
    buttons[15] = new Button(255, 565, 50, 49, 15); // soundOffSecond
    buttons[16] = new Button(325, 565, 50, 49, 16); // styleSecond
    buttons[17] = new Button(410, 100, 70, 71, 17); // pauseSecond
    buttons[18] = new Button(width/2, 420, 203, 57, 18); // restartSecond
    buttons[19] = new Button(width/2, 900, 203, 57, 19); // resumeSecond
    buttons[20] = new Button(width/2, 500, 203, 57, 20); // menuSecond
    buttons[21] = new Button(width/2, 620, 203, 57, 21); // menuHelpSecond
    
}

void draw() {
    switch(windowNumber) {
    case 0:
        menu();
        break;
    case 1:
        plays();
        break;
    case 2:
        help();
        break;
    }

    disableKeys();
}

static boolean[] keys = new boolean[5];

void keyPressed() {
    if (key == 'a' || key =='ф')  
        keys[0] = true;
    if (key == 'd' || key == 'в')  
        keys[1] = true;
    if (key == ' ')
        keys[2] = true;
}
void keyReleased() {
    if (key == 'a' || key =='ф')  
        keys[0] = false;
    if (key == 'd' || key == 'в')
        keys[1] = false;
    if (key == ' ')
        keys[2] = false;
}

void mousePressed() {    
    if (mouseButton==LEFT)
        keys[3] = true;
    if (mouseButton==RIGHT)
        keys[4] = true;
}

void disableKeys() {
    if (keys[3])
        keys[3] = false;
    if (keys[4])
        keys[4] = false;
}
