package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import javax.annotation.Nullable;
/* compiled from: PoolParams.java */
/* loaded from: classes.dex */
public class e0 {

    /* renamed from: i  reason: collision with root package name */
    public static final int f12851i = -1;

    /* renamed from: a  reason: collision with root package name */
    public final int f12852a;

    /* renamed from: b  reason: collision with root package name */
    public final int f12853b;

    /* renamed from: c  reason: collision with root package name */
    public final SparseIntArray f12854c;

    /* renamed from: d  reason: collision with root package name */
    public final int f12855d;

    /* renamed from: e  reason: collision with root package name */
    public final int f12856e;

    /* renamed from: f  reason: collision with root package name */
    public String f12857f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f12858g;

    /* renamed from: h  reason: collision with root package name */
    public final int f12859h;

    public e0(int i2, @Nullable SparseIntArray sparseIntArray) {
        this(i2, i2, sparseIntArray, 0, Integer.MAX_VALUE, -1);
    }

    public e0(int i2, int i4, @Nullable SparseIntArray sparseIntArray) {
        this(i2, i4, sparseIntArray, 0, Integer.MAX_VALUE, -1);
    }

    public e0(int i2, int i4, @Nullable SparseIntArray sparseIntArray, int i5, int i6, int i7) {
        com.facebook.common.internal.h.o(i2 >= 0 && i4 >= i2);
        this.f12853b = i2;
        this.f12852a = i4;
        this.f12854c = sparseIntArray;
        this.f12855d = i5;
        this.f12856e = i6;
        this.f12859h = i7;
    }
}
