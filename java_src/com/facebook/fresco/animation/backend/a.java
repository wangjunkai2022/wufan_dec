package com.facebook.fresco.animation.backend;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
import javax.annotation.Nullable;
/* compiled from: AnimationBackend.java */
/* loaded from: classes.dex */
public interface a extends d {

    /* renamed from: a  reason: collision with root package name */
    public static final int f12229a = -1;

    int c();

    void clear();

    int e();

    void f(Rect rect);

    int g();

    void h(@Nullable ColorFilter colorFilter);

    boolean i(Drawable drawable, Canvas canvas, int i2);

    void k(@IntRange(from = 0, to = 255) int i2);
}
