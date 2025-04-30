package com.android.dx.cf.iface;

import com.android.dx.util.FixedSizeList;
/* loaded from: classes2.dex */
public final class StdMethodList extends FixedSizeList implements MethodList {
    public StdMethodList(int i2) {
        super(i2);
    }

    @Override // com.android.dx.cf.iface.MethodList
    public Method get(int i2) {
        return (Method) get0(i2);
    }

    public void set(int i2, Method method) {
        set0(i2, method);
    }
}
