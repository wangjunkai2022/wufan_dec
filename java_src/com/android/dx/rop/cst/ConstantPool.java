package com.android.dx.rop.cst;
/* loaded from: classes2.dex */
public interface ConstantPool {
    Constant get(int i2);

    Constant get0Ok(int i2);

    Constant[] getEntries();

    Constant getOrNull(int i2);

    int size();
}
