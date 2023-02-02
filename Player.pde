PImage cat1;
PImage cat2;
PImage cat3;
PImage cat4;
PImage cat5;
PImage cat6;
PImage cat7;
PImage cat8;

PImage cat1Second;
PImage cat2Second;
PImage cat3Second;
PImage cat4Second;
PImage cat5Second;
PImage cat6Second;
PImage cat7Second;
PImage cat8Second;

PImage cat1rev;
PImage cat2rev;
PImage cat3rev;
PImage cat4rev;
PImage cat5rev;
PImage cat6rev;
PImage cat7rev;
PImage cat8rev;

PImage cat1revSecond;
PImage cat2revSecond;
PImage cat3revSecond;
PImage cat4revSecond;
PImage cat5revSecond;
PImage cat6revSecond;
PImage cat7revSecond;
PImage cat8revSecond;

int catPhase = 1;
int catPhaseRev = 1;

boolean intro = true;
float introPos = 900;

boolean leftSide = true;
int catPos = -10;
int catPosRev = 310;

void loadCat() { // загрузка кота в разных фазах бега
    cat1 = loadImage("Data/Images/cat/1.png");
    cat2 = loadImage("Data/Images/cat/2.png");
    cat3 = loadImage("Data/Images/cat/3.png");
    cat4 = loadImage("Data/Images/cat/4.png");
    cat5 = loadImage("Data/Images/cat/5.png");
    cat6 = loadImage("Data/Images/cat/6.png");
    cat7 = loadImage("Data/Images/cat/7.png");
    cat8 = loadImage("Data/Images/cat/8.png");

    cat1Second = loadImage("Data/Images/cat/1Second.png");
    cat2Second = loadImage("Data/Images/cat/2Second.png");
    cat3Second = loadImage("Data/Images/cat/3Second.png");
    cat4Second = loadImage("Data/Images/cat/4Second.png");
    cat5Second = loadImage("Data/Images/cat/5Second.png");
    cat6Second = loadImage("Data/Images/cat/6Second.png");
    cat7Second = loadImage("Data/Images/cat/7Second.png");
    cat8Second = loadImage("Data/Images/cat/8Second.png");

    cat1rev = loadImage("Data/Images/cat/1rev.png");
    cat2rev = loadImage("Data/Images/cat/2rev.png");
    cat3rev = loadImage("Data/Images/cat/3rev.png");
    cat4rev = loadImage("Data/Images/cat/4rev.png");
    cat5rev = loadImage("Data/Images/cat/5rev.png");
    cat6rev = loadImage("Data/Images/cat/6rev.png");
    cat7rev = loadImage("Data/Images/cat/7rev.png");
    cat8rev = loadImage("Data/Images/cat/8rev.png");

    cat1revSecond = loadImage("Data/Images/cat/1revSecond.png");
    cat2revSecond = loadImage("Data/Images/cat/2revSecond.png");
    cat3revSecond = loadImage("Data/Images/cat/3revSecond.png");
    cat4revSecond = loadImage("Data/Images/cat/4revSecond.png");
    cat5revSecond = loadImage("Data/Images/cat/5revSecond.png");
    cat6revSecond = loadImage("Data/Images/cat/6revSecond.png");
    cat7revSecond = loadImage("Data/Images/cat/7revSecond.png");
    cat8revSecond = loadImage("Data/Images/cat/8revSecond.png");
}

void catDraw() { // с каждым последующим кадром рисуется котик в новой фазе бега
    if (!secondTheme) {
        controls();
        if (intro) { // начальное забегание котика из низа экрана на стартовую позицию
            if (introPos >= 560) {
                if(leftSide) {
                    switch (catPhase) { 
                    case 1 :
                        image(cat1, catPos, introPos);
                    break;
                    case 2 :
                        image(cat2, catPos, introPos);
                    break;
                    case 3 :
                        image(cat3, catPos, introPos);
                    break;
                    case 4 :
                        image(cat4, catPos, introPos);
                    break;
                    case 5 :
                        image(cat5, catPos, introPos);
                    break;
                    case 6 :
                        image(cat6, catPos, introPos);
                    break;
                    case 7 :
                        image(cat7, catPos, introPos);
                    break;
                    case 8 :
                        image(cat8, catPos, introPos);
                    break;
                    }
                    catPhase+=1;
                    if(catPhase == 9) catPhase = 1;
                }
                if(!leftSide) {
                    switch (catPhaseRev) {
                    case 1 :
                        image(cat1rev, catPosRev, introPos);
                    break;
                    case 2 :
                        image(cat2rev, catPosRev, introPos);
                    break;
                    case 3 :
                        image(cat3rev, catPosRev, introPos);
                    break;
                    case 4 :
                        image(cat4rev, catPosRev, introPos);
                    break;
                    case 5 :
                        image(cat5rev, catPosRev, introPos);
                    break;
                    case 6 :
                        image(cat6rev, catPosRev, introPos);
                    break;
                    case 7 :
                        image(cat7rev, catPosRev, introPos);
                    break;
                    case 8 :
                        image(cat8rev, catPosRev, introPos);
                    break;
                    }
                    catPhaseRev+=1;
                    if(catPhaseRev == 9) catPhaseRev = 1;
                }
                introPos -= 10;
            }
            else intro = false;
        }
        else {
            if(leftSide) {
                switch (catPhase) {
                case 1 :
                    image(cat1, catPos, 560);
                break;
                case 2 :
                    image(cat2, catPos, 560);
                break;
                case 3 :
                    image(cat3, catPos, 560);
                break;
                case 4 :
                    image(cat4, catPos, 560);
                break;
                case 5 :
                    image(cat5, catPos, 560);
                break;
                case 6 :
                    image(cat6, catPos, 560);
                break;
                case 7 :
                    image(cat7, catPos, 560);
                break;
                case 8 :
                    image(cat8, catPos, 560);
                break;
                }
                catPhase+=1;
                if(catPhase == 9) catPhase = 1;
            }
            if(!leftSide) {
                switch (catPhaseRev) {
                case 1 :
                    image(cat1rev, catPosRev, 560);
                break;
                case 2 :
                    image(cat2rev, catPosRev, 560);
                break;
                case 3 :
                    image(cat3rev, catPosRev, 560);
                break;
                case 4 :
                    image(cat4rev, catPosRev, 560);
                break;
                case 5 :
                    image(cat5rev, catPosRev, 560);
                break;
                case 6 :
                    image(cat6rev, catPosRev, 560);
                break;
                case 7 :
                    image(cat7rev, catPosRev, 560);
                break;
                case 8 :
                    image(cat8rev, catPosRev, 560);
                break;
                }
                catPhaseRev+=1;
                if(catPhaseRev == 9) catPhaseRev = 1;
            }
        }
    }
    else { // с каждым последующим кадром рисуется котик в новой фазе бега, только во второй цветовой схеме
        controls();
        if (intro) {
            if (introPos >= 560) {
                if(leftSide) {
                    switch (catPhase) {
                    case 1 :
                        image(cat1Second, catPos, introPos);
                    break;
                    case 2 :
                        image(cat2Second, catPos, introPos);
                    break;
                    case 3 :
                        image(cat3Second, catPos, introPos);
                    break;
                    case 4 :
                        image(cat4Second, catPos, introPos);
                    break;
                    case 5 :
                        image(cat5Second, catPos, introPos);
                    break;
                    case 6 :
                        image(cat6Second, catPos, introPos);
                    break;
                    case 7 :
                        image(cat7Second, catPos, introPos);
                    break;
                    case 8 :
                        image(cat8Second, catPos, introPos);
                    break;
                    }
                    catPhase+=1;
                    if(catPhase == 9) catPhase = 1;
                }
                if(!leftSide) {
                    switch (catPhaseRev) {
                    case 1 :
                        image(cat1revSecond, catPosRev, introPos);
                    break;
                    case 2 :
                        image(cat2revSecond, catPosRev, introPos);
                    break;
                    case 3 :
                        image(cat3revSecond, catPosRev, introPos);
                    break;
                    case 4 :
                        image(cat4revSecond, catPosRev, introPos);
                    break;
                    case 5 :
                        image(cat5revSecond, catPosRev, introPos);
                    break;
                    case 6 :
                        image(cat6revSecond, catPosRev, introPos);
                    break;
                    case 7 :
                        image(cat7revSecond, catPosRev, introPos);
                    break;
                    case 8 :
                        image(cat8revSecond, catPosRev, introPos);
                    break;
                    }
                    catPhaseRev+=1;
                    if(catPhaseRev == 9) catPhaseRev = 1;
                }
                introPos -= 10;
            }
            else intro = false;
        }

        else {
            if(leftSide) {
                switch (catPhase) {
                case 1 :
                    image(cat1Second, catPos, 560);
                break;
                case 2 :
                    image(cat2Second, catPos, 560);
                break;
                case 3 :
                    image(cat3Second, catPos, 560);
                break;
                case 4 :
                    image(cat4Second, catPos, 560);
                break;
                case 5 :
                    image(cat5Second, catPos, 560);
                break;
                case 6 :
                    image(cat6Second, catPos, 560);
                break;
                case 7 :
                    image(cat7Second, catPos, 560);
                break;
                case 8 :
                    image(cat8Second, catPos, 560);
                break;
                }
                catPhase+=1;
                if(catPhase == 9) catPhase = 1;
            }
            if(!leftSide) {
                switch (catPhaseRev) {
                case 1 :
                    image(cat1revSecond, catPosRev, 560);
                break;
                case 2 :
                    image(cat2revSecond, catPosRev, 560);
                break;
                case 3 :
                    image(cat3revSecond, catPosRev, 560);
                break;
                case 4 :
                    image(cat4revSecond, catPosRev, 560);
                break;
                case 5 :
                    image(cat5revSecond, catPosRev, 560);
                break;
                case 6 :
                    image(cat6revSecond, catPosRev, 560);
                break;
                case 7 :
                    image(cat7revSecond, catPosRev, 560);
                break;
                case 8 :
                    image(cat8revSecond, catPosRev, 560);
                break;
                }
                catPhaseRev+=1;
                if(catPhaseRev == 9) catPhaseRev = 1;
            }
        }
    }
}

void controls() {
    if(keys[0] == true) leftSide = true;
    if(keys[1] == true) leftSide = false;
}
