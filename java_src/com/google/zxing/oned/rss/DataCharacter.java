package com.google.zxing.oned.rss;
/* loaded from: classes2.dex */
public class DataCharacter {
    private final int checksumPortion;
    private final int value;

    public DataCharacter(int i2, int i4) {
        this.value = i2;
        this.checksumPortion = i4;
    }

    public int getChecksumPortion() {
        return this.checksumPortion;
    }

    public int getValue() {
        return this.value;
    }
}
