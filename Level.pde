float backgroundPos = 0;
float postPos = 0;

ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>(); // массив созданных объектов препятствий
float obstProbability = 0;
boolean obstLeftSide;
boolean obstStatic;
int obstCounter;
int obstLastPos;

ArrayList<Fish> fishes = new ArrayList<Fish>(); // массив созданных объедков рыбов
float fishProbability = 0;
boolean fishLeftSide;
int fishCounter;
int fishLastPos;
int score = 0;

float fullness = 480;

boolean lose = false;
boolean pause = false;

void plays() {
    if (!secondTheme) {
        if(!lose && !pause) {
            image(levelBackground, 0, backgroundPos, 500, 900);
            image(levelBackground, 0, backgroundPos - 900, 500, 900);

            image(post, 0, postPos, 500, 900);
            image(post, 0, postPos - 900, 500, 900);

            rectMode(CENTER);
            fill(93, 213, 245);
            if (fullness >= 480) fullness = 480;
            if (fullness > 0) rect(58, height - fullness/2 - 212, 32, fullness);
            image(indicator, 25, height/2-250);
            image(fish, 7, height-200);
            textAlign(CENTER);
            textSize(65);
            text(score, 60, 180);
            
            buttons[6].draws();
            if (buttons[6].getIsPressed()) {
                pause = true;
            }
            catDraw();       
        }
        else if (lose) {
            image(gameOver, 100, 240);
            fill(0, 0, 0);
            textAlign(CENTER);
            textSize(30);
            text(score, 265, 365);
            buttons[7].draws();
            if (buttons[7].getIsPressed()) {
                clearLevel();
            }

            buttons[9].draws();
            if (buttons[9].getIsPressed()) {
                windowNumber = 0;            
                clearLevel();
            }
        }

        else if (pause) {
            image(pauseWindow, 100, 240);
            buttons[6].draws();
            if (buttons[6].getIsPressed()) {
                pause = false;
               
            }
            
            buttons[7].draws();
            if (buttons[7].getIsPressed()) {
                windowNumber = 0;
                windowNumber = 1;
                clearLevel();
            }

            buttons[9].draws();
            if (buttons[9].getIsPressed()) {
                windowNumber = 0;            
                clearLevel();
            }
        }
    }
    else {
        if(!lose && !pause) {
            image(levelBackgroundSecond, 0, backgroundPos, 500, 900);
            image(levelBackgroundSecond, 0, backgroundPos - 900, 500, 900);

            image(postSecond, 0, postPos, 500, 900);
            image(postSecond, 0, postPos - 900, 500, 900);

            rectMode(CENTER);
            fill(240, 151, 240);
            if (fullness >= 480) fullness = 480;
            if(fullness > 0) rect(58, height - fullness/2 - 212, 32, fullness);
            image(indicatorSecond, 25, height/2-250);
            image(fishSecond, 7, height-200);
            textAlign(CENTER);
            textSize(65);
            text(score, 60, 180);
            
            buttons[17].draws();
            if (buttons[17].getIsPressed()) {
                pause = true;
            }

            catDraw();
        }
        else if (lose) {
            image(gameOverSecond, 100, 240);
            fill(0, 0, 0);
            textAlign(CENTER);
            textSize(30);
            text(score, 265, 365);
            buttons[18].draws();
            if (buttons[18].getIsPressed()) {
                clearLevel();
            }

            buttons[20].draws();
            if (buttons[20].getIsPressed()) {
                windowNumber = 0;            
                clearLevel();
            }
        }

        else if (pause) {
            image(pauseWindowSecond, 100, 240);
            buttons[17].draws();
            if (buttons[17].getIsPressed()) {
                pause = false;
               
            }
            
            buttons[18].draws();
            if (buttons[18].getIsPressed()) {
                clearLevel();
            }

            buttons[20].draws();
            if (buttons[20].getIsPressed()) {
                windowNumber = 0;            
                clearLevel();
            }
        }
    }

    if (!lose && !pause) {
        // механизм иллюзии движения (два спрайта грузятся друг над другом так, чтобы выглядеть как бесконечный по высоте спрайт)
        backgroundPos+= 2;
        if(backgroundPos > 900) backgroundPos = 0;
        postPos+=9;
        if(postPos >= 900) postPos = 0;

        fullness -= 0.5; // падение уровня сытости с течением времени


        obstProbability += 0.01; // с течением времени вероятность появления препятствия в данном кадре линейно увеличивается
        obstLastPos += 9;
        fishLastPos += 9;
        if(obstCounter < 10) {
            if (random(obstProbability, 100) > 100 - obstProbability) { // механизм появления препятствий
                if (int(random(2)) == 1) {
                    obstLeftSide = true;
                }
                else {
                    obstLeftSide = false;
                }
                if (int(random(2)) == 1) {
                    obstStatic = true;
                }
                else {
                    obstStatic = false;
                }

                if (obstLastPos > 180 && fishLastPos > 180) { // ограничение по спавну для того, чтобы препятствия не слипались и не создавалось безвыходных ситуаций для котика
                    obstacles.add(new Obstacle(obstLeftSide, obstStatic));
                    obstLastPos = 0;
                    obstCounter++;
                }
            }

            // чем меньше уровень сытости, тем выше вероятность спавна рыбов в данном кадре
            if (fullness < 480 && fullness >= 300) {
                fishProbability = 5;
            }
            else if (fullness < 300 && fullness >= 200) {
                fishProbability = 8;
            }
            else if (fullness < 200 && fullness >= 100) {
                fishProbability = 12;
            }
            else if (fullness < 100 && fullness > 40) {
                fishProbability = 18;
            }
            else if (fullness < 40 && fullness > 0){
                fishProbability = 27;
            }
            else if (fullness <= 0){
                lose = true;
            }

            if (fishCounter < 7) {
                if (random(fishProbability, 100) > 100 - fishProbability) {
                    if (int(random(2)) == 1) {
                        fishLeftSide = true;
                    }
                    else {
                        fishLeftSide = false;
                    }

                    if (obstLastPos > 180 && fishLastPos > 25) {
                        fishes.add(new Fish(fishLeftSide));
                        fishLastPos = 0;
                        fishCounter++;
                    }
                }
            }
        }
        for (int i = obstacles.size() - 1; i >= 0; i--) { // каждый кадр перебираются созданные объекты, отрисовываются и проверяются на условия методов
            Obstacle obstacle = obstacles.get(i);
            obstacle.draws();

            if (obstacle.clicked()) {
                obstacles.remove(i);
                obstCounter--;
                fullness -= 25;
                rottenFishClicked.play();
            }

            if (obstacle.collapse()) {
                lose = true;
                wallHit.play();
            }

            if (obstacle.catched()) {
                obstacles.remove(i);
                fullness -= 80;
                obstCounter--;
                rottenFishCatched.play();
            }

            if (obstacle.finished()) {
                obstacles.remove(i);
                obstCounter--;
            }
        }
        
        for (int i = fishes.size() - 1; i >= 0; i--) {
            Fish fish = fishes.get(i);
            fish.draws();

            if (fish.catched()) {
                fishes.remove(i);
                fishCounter--;
                fullness += 15;
                score++;
                fishEaten.play();
            }

            if (fish.finished()) {
                fishes.remove(i);
                fishCounter--;
            }
        }
    }
}

void clearLevel() { // механизм очистки уровня при рестарте
    intro = true;
    introPos = 900;
    lose = false;
    pause = false;
    leftSide = true;
    obstProbability = 0;
    fishProbability = 5;
    fullness = 480;
    score = 0;
    fishCounter = 0;

    for(int i = obstacles.size() - 1; i >= 0; i--) { // очистка массива объектов
        Obstacle obstacle = obstacles.get(i);
        obstacles.remove(i);
    }
    for(int i = fishes.size() - 1; i >= 0; i--) {
        Fish fish = fishes.get(i);
        fishes.remove(i);
    }
}