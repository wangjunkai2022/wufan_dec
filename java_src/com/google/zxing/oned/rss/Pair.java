package com.google.zxing.oned.rss;
/* loaded from: classes2.dex */
final class Pair extends DataCharacter {
    private int count;
    private final FinderPattern finderPattern;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Pair(int i2, int i4, FinderPattern finderPattern) {
        super(i2, i4);
        this.finderPattern = finderPattern;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCount() {
        return this.count;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FinderPattern getFinderPattern() {
        return this.finderPattern;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void incrementCount() {
        this.count++;
    }
}
