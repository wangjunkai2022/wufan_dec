package com.facebook.imageutils;

import com.facebook.imagepipeline.common.RotationOptions;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: TiffUtil.java */
/* loaded from: classes2.dex */
class e {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f13384a = e.class;

    /* renamed from: b  reason: collision with root package name */
    public static final int f13385b = 1296891946;

    /* renamed from: c  reason: collision with root package name */
    public static final int f13386c = 1229531648;

    /* renamed from: d  reason: collision with root package name */
    public static final int f13387d = 274;

    /* renamed from: e  reason: collision with root package name */
    public static final int f13388e = 3;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TiffUtil.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        boolean f13389a;

        /* renamed from: b  reason: collision with root package name */
        int f13390b;

        /* renamed from: c  reason: collision with root package name */
        int f13391c;

        private b() {
        }
    }

    e() {
    }

    public static int a(int i2) {
        if (i2 != 3) {
            if (i2 != 6) {
                if (i2 != 8) {
                    return 0;
                }
                return RotationOptions.f12538f;
            }
            return 90;
        }
        return 180;
    }

    private static int b(InputStream inputStream, int i2, boolean z3) throws IOException {
        if (i2 >= 10 && d.a(inputStream, 2, z3) == 3 && d.a(inputStream, 4, z3) == 1) {
            int a4 = d.a(inputStream, 2, z3);
            d.a(inputStream, 2, z3);
            return a4;
        }
        return 0;
    }

    private static int c(InputStream inputStream, int i2, boolean z3, int i4) throws IOException {
        if (i2 < 14) {
            return 0;
        }
        int a4 = d.a(inputStream, 2, z3);
        int i5 = i2 - 2;
        while (true) {
            int i6 = a4 - 1;
            if (a4 <= 0 || i5 < 12) {
                break;
            }
            int i7 = i5 - 2;
            if (d.a(inputStream, 2, z3) == i4) {
                return i7;
            }
            inputStream.skip(10L);
            i5 = i7 - 10;
            a4 = i6;
        }
        return 0;
    }

    public static int d(InputStream inputStream, int i2) throws IOException {
        b bVar = new b();
        int e4 = e(inputStream, i2, bVar);
        int i4 = bVar.f13391c - 8;
        if (e4 == 0 || i4 > e4) {
            return 0;
        }
        inputStream.skip(i4);
        return b(inputStream, c(inputStream, e4 - i4, bVar.f13389a, f13387d), bVar.f13389a);
    }

    private static int e(InputStream inputStream, int i2, b bVar) throws IOException {
        if (i2 <= 8) {
            return 0;
        }
        int a4 = d.a(inputStream, 4, false);
        bVar.f13390b = a4;
        int i4 = i2 - 4;
        if (a4 != 1229531648 && a4 != 1296891946) {
            com.facebook.common.logging.a.q(f13384a, "Invalid TIFF header");
            return 0;
        }
        boolean z3 = a4 == 1229531648;
        bVar.f13389a = z3;
        int a5 = d.a(inputStream, 4, z3);
        bVar.f13391c = a5;
        int i5 = i4 - 4;
        if (a5 < 8 || a5 - 8 > i5) {
            com.facebook.common.logging.a.q(f13384a, "Invalid offset");
            return 0;
        }
        return i5;
    }
}
