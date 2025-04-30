package com.google.zxing.oned;
/* loaded from: classes2.dex */
public abstract class UPCEANWriter extends OneDimensionalCodeWriter {
    /* JADX INFO: Access modifiers changed from: protected */
    public UPCEANWriter() {
        super(UPCEANReader.START_END_PATTERN.length << 1);
    }
}
