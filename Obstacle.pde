class Obstacle  {

    boolean obstLeftSide;
    boolean obstacleStatic;
    float obstPos = 0;
    int obstacleCount;

    Obstacle (boolean side, boolean stat) {
        obstLeftSide = side;
        obstacleStatic = stat;
    }

    void draws() {
        if (!secondTheme) {
            if (!obstacleStatic) {
                if (obstLeftSide) {
                    image(fishRotten, 103, obstPos, 70, 70);
                }
                else {
                    image(fishRotten, 318, obstPos, 70, 70);
                }
                obstPos += 14;
            }

            else {
                if (obstLeftSide) {
                    image(obstacle, 95, obstPos);
                }
                else {
                    image(obstacle, 315, obstPos);
                }
                obstPos += 9;
            }
        }
        else {
            if (!obstacleStatic) {
                if (obstLeftSide) {
                    image(fishRottenSecond, 103, obstPos, 70, 70);
                }
                else {
                    image(fishRottenSecond, 318, obstPos, 70, 70);
                }
                obstPos += 14;
            }

            else {
                if (obstLeftSide) {
                    image(obstacleSecond, 95, obstPos);
                }
                else {
                    image(obstacleSecond, 315, obstPos);

                }
                obstPos += 9;
            }
        }

        
    }

    boolean clicked() {
        if (!obstacleStatic) {
            if (keys[3]) {
                if (mouseY >= obstPos - 50 && mouseY <= obstPos + 50) {
                    if (mouseX >= 110 - 50 && mouseX <= 110 + 50) {
                        return true;
                    }
                    if (mouseX >= 310 - 50 && mouseX <= 310 + 50) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }


    boolean finished() {
        if (obstPos > 900) {
            return true;
        }
        else {
            return false;
        }
    }

    boolean collapse() {
        if(obstacleStatic) {
            if (obstPos >= 610 && obstPos <= 740) {
                if (leftSide == obstLeftSide) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    boolean catched() {
        if (!obstacleStatic) {
            if (obstPos >= 610 && obstPos <= 740) {
                if (leftSide == obstLeftSide) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
