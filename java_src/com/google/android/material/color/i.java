package com.google.android.material.color;

import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
/* compiled from: HarmonizedColorAttributes.java */
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f14598c = {R.attr.colorError, R.attr.colorOnError, R.attr.colorErrorContainer, R.attr.colorOnErrorContainer};

    /* renamed from: a  reason: collision with root package name */
    private final int[] f14599a;
    @StyleRes

    /* renamed from: b  reason: collision with root package name */
    private final int f14600b;

    private i(@AttrRes @NonNull int[] iArr, @StyleRes int i2) {
        if (i2 != 0 && iArr.length == 0) {
            throw new IllegalArgumentException("Theme overlay should be used with the accompanying int[] attributes.");
        }
        this.f14599a = iArr;
        this.f14600b = i2;
    }

    @NonNull
    public static i a(@AttrRes @NonNull int[] iArr) {
        return new i(iArr, 0);
    }

    @NonNull
    public static i b(@AttrRes @NonNull int[] iArr, @StyleRes int i2) {
        return new i(iArr, i2);
    }

    @NonNull
    public static i c() {
        return b(f14598c, R.style.ThemeOverlay_Material3_HarmonizedColors);
    }

    @NonNull
    public int[] d() {
        return this.f14599a;
    }

    @StyleRes
    public int e() {
        return this.f14600b;
    }
}
