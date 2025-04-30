package com.android.dx.dex.file;
/* loaded from: classes2.dex */
public abstract class IndexedItem extends Item {
    private int index = -1;

    public final int getIndex() {
        int i2 = this.index;
        if (i2 >= 0) {
            return i2;
        }
        throw new RuntimeException("index not yet set");
    }

    public final boolean hasIndex() {
        return this.index >= 0;
    }

    public final String indexString() {
        return '[' + Integer.toHexString(this.index) + ']';
    }

    public final void setIndex(int i2) {
        if (this.index == -1) {
            this.index = i2;
            return;
        }
        throw new RuntimeException("index already set");
    }
}
