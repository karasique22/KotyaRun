class Button {

    float posX, posY;
    float bwidth, bheigth;
    boolean mouseInside;
    int type;

    Button (float x, float y, float w, float h, int t) {
        posX = x;
        posY = y;
        bwidth = w;
        bheigth = h;
        type = t;
    }

    void draws() {
        if (mouseX >= posX - bwidth/2 && mouseX <= posX + bwidth/2 && mouseY >= posY - bheigth/2 && mouseY <= posY + bheigth/2) 
            mouseInside = true;
        else mouseInside = false;

        if (!mouseInside) {
            switch (type) {
                case 0:
                    image(startButton, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 1:
                    image(exitButton, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 2:
                    image(helpButton, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 3:
                    image(soundOnButton, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 4:
                    image(soundOffButton, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 5:
                    image(styleButton, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 6:
                    image(pauseButton, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 7:
                    image(restartButton, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 8:
                    image(resumeButton, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 9:
                    image(menuButton, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 10:
                    image(menuButtonHelp, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 11:
                    image(startButtonSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 12:
                    image(exitButtonSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 13:
                    image(helpButtonSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 14:
                    image(soundOnButtonSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 15:
                    image(soundOffButtonSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 16:
                    image(styleButtonSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 17:
                    image(pauseButtonSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 18:
                    image(restartButtonSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 19:
                    image(resumeButtonSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 20:
                    image(menuButtonSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 21:
                    image(menuButtonHelpSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
            }
        } else {
            switch (type) {
                case 0:
                    image(startButtonPressed, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 1:
                    image(exitButtonPressed, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 2:
                    image(helpButtonPressed, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 3:
                    image(soundOnButtonPressed, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 4:
                    image(soundOffButtonPressed, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 5:
                    image(styleButtonPressed, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 6:
                    image(pauseButtonPressed, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 7:
                    image(restartButtonPressed, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 8:
                    image(resumeButtonPressed, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 9:
                    image(menuButtonPressed, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 10:
                    image(menuButtonHelpPressed, posX - bwidth/2, posY - bheigth/2);
                    break;
                
                case 11:
                    image(startButtonPressedSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 12:
                    image(exitButtonPressedSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 13:
                    image(helpButtonPressedSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 14:
                    image(soundOnButtonPressedSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 15:
                    image(soundOffButtonPressedSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 16:
                    image(styleButtonPressedSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 17:
                    image(pauseButtonPressedSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 18:
                    image(restartButtonPressedSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 19:
                    image(resumeButtonPressedSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 20:
                    image(menuButtonPressedSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
                case 21:
                    image(menuButtonHelpPressedSecond, posX - bwidth/2, posY - bheigth/2);
                    break;
            }
        }
    }

    boolean getIsPressed() {
        if (mouseInside && keys[3]) {
            button.play();
            return true;
        }
        return false;
    }
}