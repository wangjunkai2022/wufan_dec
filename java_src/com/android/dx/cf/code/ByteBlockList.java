package com.android.dx.cf.code;

import com.android.dx.util.Hex;
import com.android.dx.util.LabeledItem;
import com.android.dx.util.LabeledList;
/* loaded from: classes2.dex */
public final class ByteBlockList extends LabeledList {
    public ByteBlockList(int i2) {
        super(i2);
    }

    public ByteBlock get(int i2) {
        return (ByteBlock) get0(i2);
    }

    public ByteBlock labelToBlock(int i2) {
        int indexOfLabel = indexOfLabel(i2);
        if (indexOfLabel >= 0) {
            return get(indexOfLabel);
        }
        throw new IllegalArgumentException("no such label: " + Hex.u2(i2));
    }

    public void set(int i2, ByteBlock byteBlock) {
        super.set(i2, (LabeledItem) byteBlock);
    }
}
