package com.google.zxing.oned.rss.expanded.decoders;
/* loaded from: classes2.dex */
final class DecodedChar extends DecodedObject {
    static final char FNC1 = '$';
    private final char value;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DecodedChar(int i2, char c4) {
        super(i2);
        this.value = c4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public char getValue() {
        return this.value;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFNC1() {
        return this.value == '$';
    }
}
