class Fish  {

    boolean fishLeftSide;
    float fishPos = 0;
    int fishCount;

    Fish (boolean side) {
        fishLeftSide = side;
    }

    void draws() {
        if (!secondTheme) {
            if (fishLeftSide) {
                image(fish, 140, fishPos, 40, 40);
            }
            else {
                image(fish, 314, fishPos, 40, 40);
            }
        }
        else {
            if (fishLeftSide) {
                image(fishSecond, 140, fishPos, 40, 40);
            }
            else {
                image(fishSecond, 314, fishPos, 40, 40);
            }
        }
        fishPos += 9;
    }

    boolean finished() {
        if (fishPos > 900) {
            return true;
        }
        else {
            return false;
        }
    }

    boolean catched() {
        if (fishPos >= 610 && fishPos <= 740) {
            if (leftSide == fishLeftSide) {
                return true;
            }
        }
        return false;
    }
}
