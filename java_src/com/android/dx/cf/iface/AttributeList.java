package com.android.dx.cf.iface;
/* loaded from: classes2.dex */
public interface AttributeList {
    int byteLength();

    Attribute findFirst(String str);

    Attribute findNext(Attribute attribute);

    Attribute get(int i2);

    boolean isMutable();

    int size();
}
