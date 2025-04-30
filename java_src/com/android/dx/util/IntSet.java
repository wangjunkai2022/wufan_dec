package com.android.dx.util;
/* loaded from: classes2.dex */
public interface IntSet {
    void add(int i2);

    int elements();

    boolean has(int i2);

    IntIterator iterator();

    void merge(IntSet intSet);

    void remove(int i2);
}
