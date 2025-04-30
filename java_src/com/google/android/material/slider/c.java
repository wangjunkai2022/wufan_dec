package com.google.android.material.slider;

import androidx.annotation.NonNull;
import java.util.Locale;
/* compiled from: BasicLabelFormatter.java */
/* loaded from: classes2.dex */
public final class c implements d {

    /* renamed from: e  reason: collision with root package name */
    private static final long f15772e = 1000000000000L;

    /* renamed from: f  reason: collision with root package name */
    private static final int f15773f = 1000000000;

    /* renamed from: g  reason: collision with root package name */
    private static final int f15774g = 1000000;

    /* renamed from: h  reason: collision with root package name */
    private static final int f15775h = 1000;

    @Override // com.google.android.material.slider.d
    @NonNull
    public String a(float f4) {
        return f4 >= 1.0E12f ? String.format(Locale.US, "%.1fT", Float.valueOf(f4 / 1.0E12f)) : f4 >= 1.0E9f ? String.format(Locale.US, "%.1fB", Float.valueOf(f4 / 1.0E9f)) : f4 >= 1000000.0f ? String.format(Locale.US, "%.1fM", Float.valueOf(f4 / 1000000.0f)) : f4 >= 1000.0f ? String.format(Locale.US, "%.1fK", Float.valueOf(f4 / 1000.0f)) : String.format(Locale.US, "%.0f", Float.valueOf(f4));
    }
}
