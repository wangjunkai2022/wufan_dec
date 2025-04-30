package com.google.zxing.oned.rss.expanded.decoders;
/* loaded from: classes2.dex */
final class DecodedNumeric extends DecodedObject {
    static final int FNC1 = 10;
    private final int firstDigit;
    private final int secondDigit;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DecodedNumeric(int i2, int i4, int i5) {
        super(i2);
        this.firstDigit = i4;
        this.secondDigit = i5;
        if (i4 < 0 || i4 > 10) {
            throw new IllegalArgumentException("Invalid firstDigit: " + i4);
        } else if (i5 < 0 || i5 > 10) {
            throw new IllegalArgumentException("Invalid secondDigit: " + i5);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getFirstDigit() {
        return this.firstDigit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSecondDigit() {
        return this.secondDigit;
    }

    int getValue() {
        return (this.firstDigit * 10) + this.secondDigit;
    }

    boolean isAnyFNC1() {
        return this.firstDigit == 10 || this.secondDigit == 10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFirstDigitFNC1() {
        return this.firstDigit == 10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isSecondDigitFNC1() {
        return this.secondDigit == 10;
    }
}
