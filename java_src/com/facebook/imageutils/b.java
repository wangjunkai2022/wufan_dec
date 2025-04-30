package com.facebook.imageutils;

import android.graphics.ColorSpace;
import android.util.Pair;
import javax.annotation.Nullable;
/* compiled from: ImageMetaData.java */
/* loaded from: classes.dex */
public class b {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Pair<Integer, Integer> f13371a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final ColorSpace f13372b;

    public b(int i2, int i4, @Nullable ColorSpace colorSpace) {
        this.f13371a = (i2 == -1 || i4 == -1) ? null : new Pair<>(Integer.valueOf(i2), Integer.valueOf(i4));
        this.f13372b = colorSpace;
    }

    @Nullable
    public ColorSpace a() {
        return this.f13372b;
    }

    @Nullable
    public Pair<Integer, Integer> b() {
        return this.f13371a;
    }
}
