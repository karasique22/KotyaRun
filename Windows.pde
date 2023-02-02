PImage levelBackground;
PImage post;
PImage menuImg;
PImage ramka;
PImage gameOver;
PImage help;
PImage fish;
PImage fishRotten;
PImage obstacle;
PImage indicator;
PImage logo;
PImage pauseWindow;

PImage levelBackgroundSecond;
PImage postSecond;
PImage menuImgSecond;
PImage ramkaSecond;
PImage gameOverSecond;
PImage helpSecond;
PImage fishSecond;
PImage fishRottenSecond;
PImage obstacleSecond;
PImage indicatorSecond;
PImage pauseWindowSecond;

PImage startButton;
PImage exitButton;
PImage helpButton;
PImage soundOnButton;
PImage soundOffButton;
PImage styleButton;
PImage pauseButton;
PImage restartButton;
PImage resumeButton;
PImage menuButton;
PImage menuButtonHelp;

PImage startButtonSecond;
PImage exitButtonSecond;
PImage helpButtonSecond;
PImage soundOnButtonSecond;
PImage soundOffButtonSecond;
PImage styleButtonSecond;
PImage pauseButtonSecond;
PImage restartButtonSecond;
PImage resumeButtonSecond;
PImage menuButtonSecond;
PImage menuButtonHelpSecond;


PImage startButtonPressed;
PImage exitButtonPressed;
PImage helpButtonPressed;
PImage soundOnButtonPressed;
PImage soundOffButtonPressed;
PImage styleButtonPressed;
PImage pauseButtonPressed;
PImage restartButtonPressed;
PImage resumeButtonPressed;
PImage menuButtonPressed;
PImage menuButtonHelpPressed;

PImage startButtonPressedSecond;
PImage exitButtonPressedSecond;
PImage helpButtonPressedSecond;
PImage soundOnButtonPressedSecond;
PImage soundOffButtonPressedSecond;
PImage styleButtonPressedSecond;
PImage pauseButtonPressedSecond;
PImage restartButtonPressedSecond;
PImage resumeButtonPressedSecond;
PImage menuButtonPressedSecond;
PImage menuButtonHelpPressedSecond;

SoundFile music;
SoundFile button;
SoundFile fishEaten;
SoundFile rottenFishClicked;
SoundFile rottenFishCatched;
SoundFile wallHit;

float y = 0;
boolean floatSwitch = false;

void menu() {
    if (!secondTheme) {
        image(menuImg, 0, 0);
        image(ramka, 73, 200);

        // image(logo, width/2-50, 50+y, 100, 100);
        // if (y < 10 && !floatSwitch) {
        //     y = lerp(y, 20, 0.1);
        // }
        // if (y >= 10) {
        //     floatSwitch = true;
        // }
        // if (y > -10 && floatSwitch) {
        //     y = lerp(y, -20, 0.1);
        // }
        // if (y <= -10) {
        //     floatSwitch = false;
        // }


        buttons[0].draws(); // новая игра
        if (buttons[0].getIsPressed()) {
            clearLevel();
            windowNumber = 1;
        }

        buttons[1].draws(); // выход
        if (buttons[1].getIsPressed()) {
            exit();
        }

        buttons[2].draws(); // меню помощи
        if (buttons[2].getIsPressed()) {
            windowNumber = 2;
        }

        if (music.isPlaying()) { // остановка/запуск музыки
            buttons[3].draws();
            if (buttons[3].getIsPressed()) {
                music.stop();
            }
        }

        else if (!music.isPlaying()) {
            buttons[4].draws();
            if (buttons[4].getIsPressed()) {
                music.play();
            }
        }

        buttons[5].draws(); // смена цветовой темы
        if (buttons[5].getIsPressed()) {
            secondTheme = true;
           
        }
    }
    else {
        image(menuImgSecond, 0, 0);
        image(ramkaSecond, 73, 200);

        buttons[11].draws();
        if (buttons[11].getIsPressed()) {
            clearLevel();
            windowNumber = 1;
        }

        buttons[12].draws();
        if (buttons[12].getIsPressed()) {
           
            exit();
        }

        buttons[13].draws();
        if (buttons[13].getIsPressed()) {
            windowNumber = 2;
        }


        if (music.isPlaying()) {
            buttons[14].draws();
            if (buttons[14].getIsPressed()) {
                music.stop();
            }
        }

        else if (!music.isPlaying()) {
            buttons[15].draws();
            if (buttons[15].getIsPressed()) {
                music.play();
            }
        }


        buttons[16].draws();
        if (buttons[16].getIsPressed()) {
            secondTheme = false;
           
        }
    }
    textSize(24);
    textAlign(CENTER);
    fill(255, 255, 255);
    text("Bebra Studios (c), 2023", width/2, height-32);
}

void help() {
    if (!secondTheme) {
        image(help, 50, 200);
        buttons[10].draws();
        if (buttons[10].getIsPressed()) {
            windowNumber = 0;
        }
    }    
    else {
        image(helpSecond, 50, 200);
        buttons[21].draws();
        if (buttons[21].getIsPressed()) {
            windowNumber = 0;
        }
    }
}


void loadImages() {
    levelBackground = loadImage("Data/Images/sprites/levelBackground.png");
    post = loadImage("Data/Images/sprites/post.png");
    menuImg = loadImage("Data/Images/sprites/menuBack.png");
    ramka = loadImage("Data/Images/sprites/ramka.png");
    gameOver = loadImage("Data/Images/sprites/gameover.png");
    help = loadImage("Data/Images/sprites/help.png");
    fish = loadImage("Data/Images/sprites/fish.png");
    fishRotten = loadImage("Data/Images/sprites/fishRotten.png");
    obstacle = loadImage("Data/Images/sprites/obstacle.png");
    indicator = loadImage("Data/Images/sprites/indicator.png");
    logo = loadImage("Data/Images/sprites/logo.png");
    pauseWindow = loadImage("Data/Images/sprites/pause.png");

    levelBackgroundSecond = loadImage("Data/Images/sprites/levelBackgroundSecond.png");
    postSecond = loadImage("Data/Images/sprites/postSecond.png");
    menuImgSecond = loadImage("Data/Images/sprites/menuBackSecond.png");
    ramkaSecond = loadImage("Data/Images/sprites/ramkaSecond.png");
    gameOverSecond = loadImage("Data/Images/sprites/gameoverSecond.png");
    helpSecond = loadImage("Data/Images/sprites/helpSecond.png");
    fishSecond = loadImage("Data/Images/sprites/fishSecond.png");
    fishRottenSecond = loadImage("Data/Images/sprites/fishRottenSecond.png");
    obstacleSecond = loadImage("Data/Images/sprites/obstacleSecond.png");
    indicatorSecond = loadImage("Data/Images/sprites/indicatorSecond.png");
    pauseWindowSecond = loadImage("Data/Images/sprites/pauseSecond.png");

    startButton = loadImage("Data/Images/buttons/start.png");
    exitButton = loadImage("Data/Images/buttons/exit.png");
    helpButton = loadImage("Data/Images/buttons/help.png");
    soundOnButton = loadImage("Data/Images/buttons/soundOn.png");
    soundOffButton = loadImage("Data/Images/buttons/soundOff.png");
    styleButton = loadImage("Data/Images/buttons/styles.png");
    pauseButton = loadImage("Data/Images/buttons/pause.png");
    restartButton = loadImage("Data/Images/buttons/restart.png");
    resumeButton = loadImage("Data/Images/buttons/resume.png");
    menuButton = loadImage("Data/Images/buttons/menu.png");
    menuButtonHelp = loadImage("Data/Images/buttons/menu.png");
    
    startButtonSecond = loadImage("Data/Images/buttons/startSecond.png");
    exitButtonSecond = loadImage("Data/Images/buttons/exitSecond.png");
    helpButtonSecond = loadImage("Data/Images/buttons/helpSecond.png");
    soundOnButtonSecond = loadImage("Data/Images/buttons/soundOnSecond.png");
    soundOffButtonSecond = loadImage("Data/Images/buttons/soundOffSecond.png");
    styleButtonSecond = loadImage("Data/Images/buttons/stylesSecond.png");
    pauseButtonSecond = loadImage("Data/Images/buttons/pauseSecond.png");
    restartButtonSecond = loadImage("Data/Images/buttons/restartSecond.png");
    resumeButtonSecond = loadImage("Data/Images/buttons/resumeSecond.png");
    menuButtonSecond = loadImage("Data/Images/buttons/menuSecond.png");
    menuButtonHelpSecond = loadImage("Data/Images/buttons/menuSecond.png");

    startButtonPressed = loadImage("Data/Images/buttons/startPressed.png");
    exitButtonPressed = loadImage("Data/Images/buttons/exitPressed.png");
    helpButtonPressed = loadImage("Data/Images/buttons/helpPressed.png");
    soundOnButtonPressed = loadImage("Data/Images/buttons/soundOnPressed.png");
    soundOffButtonPressed = loadImage("Data/Images/buttons/soundOffPressed.png");
    styleButtonPressed = loadImage("Data/Images/buttons/stylesPressed.png");
    pauseButtonPressed = loadImage("Data/Images/buttons/pausePressed.png");
    restartButtonPressed = loadImage("Data/Images/buttons/restartPressed.png");
    resumeButtonPressed = loadImage("Data/Images/buttons/resumePressed.png");
    menuButtonPressed = loadImage("Data/Images/buttons/menuPressed.png");
    menuButtonHelpPressed = loadImage("Data/Images/buttons/menuPressed.png");

    startButtonPressedSecond = loadImage("Data/Images/buttons/startPressedSecond.png");
    exitButtonPressedSecond = loadImage("Data/Images/buttons/exitPressedSecond.png");
    helpButtonPressedSecond = loadImage("Data/Images/buttons/helpPressedSecond.png");
    soundOnButtonPressedSecond = loadImage("Data/Images/buttons/soundOnPressedSecond.png");
    soundOffButtonPressedSecond = loadImage("Data/Images/buttons/soundOffPressedSecond.png");
    styleButtonPressedSecond = loadImage("Data/Images/buttons/stylesPressedSecond.png");
    pauseButtonPressedSecond = loadImage("Data/Images/buttons/pausePressedSecond.png");
    restartButtonPressedSecond = loadImage("Data/Images/buttons/restartPressedSecond.png");
    resumeButtonPressedSecond = loadImage("Data/Images/buttons/resumePressedSecond.png");
    menuButtonPressedSecond = loadImage("Data/Images/buttons/menuPressedSecond.png");
    menuButtonHelpPressedSecond = loadImage("Data/Images/buttons/menuPressedSecond.png");
}

void loadAudio() {
    music = new SoundFile(this, sketchPath("Data/Sound/music.mp3"));
    button = new SoundFile(this, sketchPath("Data/Sound/button.wav"));
    fishEaten = new SoundFile(this, sketchPath("Data/Sound/fishEaten.wav"));
    rottenFishClicked = new SoundFile(this, sketchPath("Data/Sound/rottenFishClicked.wav"));
    rottenFishCatched = new SoundFile(this, sketchPath("Data/Sound/rottenFishCatched.wav"));
    wallHit = new SoundFile(this, sketchPath("Data/Sound/wallHit.wav"));
}
