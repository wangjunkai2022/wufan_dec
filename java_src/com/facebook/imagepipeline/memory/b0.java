package com.facebook.imagepipeline.memory;

import androidx.annotation.Nullable;
/* compiled from: PoolBackend.java */
/* loaded from: classes2.dex */
interface b0<T> {
    int a(T t3);

    @Nullable
    T get(int i2);

    @Nullable
    T pop();

    void put(T t3);
}
