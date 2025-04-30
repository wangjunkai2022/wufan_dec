package com.android.dx.cf.iface;

import com.android.dx.util.FixedSizeList;
/* loaded from: classes2.dex */
public final class StdFieldList extends FixedSizeList implements FieldList {
    public StdFieldList(int i2) {
        super(i2);
    }

    @Override // com.android.dx.cf.iface.FieldList
    public Field get(int i2) {
        return (Field) get0(i2);
    }

    public void set(int i2, Field field) {
        set0(i2, field);
    }
}
