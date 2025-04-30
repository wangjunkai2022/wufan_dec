package com.facebook.imageformat;

import com.facebook.common.internal.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: DefaultImageFormats.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final c f12372a = new c("JPEG", "jpeg");

    /* renamed from: b  reason: collision with root package name */
    public static final c f12373b = new c("PNG", "png");

    /* renamed from: c  reason: collision with root package name */
    public static final c f12374c = new c("GIF", "gif");

    /* renamed from: d  reason: collision with root package name */
    public static final c f12375d = new c("BMP", "bmp");

    /* renamed from: e  reason: collision with root package name */
    public static final c f12376e = new c("ICO", "ico");

    /* renamed from: f  reason: collision with root package name */
    public static final c f12377f = new c("WEBP_SIMPLE", "webp");

    /* renamed from: g  reason: collision with root package name */
    public static final c f12378g = new c("WEBP_LOSSLESS", "webp");

    /* renamed from: h  reason: collision with root package name */
    public static final c f12379h = new c("WEBP_EXTENDED", "webp");

    /* renamed from: i  reason: collision with root package name */
    public static final c f12380i = new c("WEBP_EXTENDED_WITH_ALPHA", "webp");

    /* renamed from: j  reason: collision with root package name */
    public static final c f12381j = new c("WEBP_ANIMATED", "webp");

    /* renamed from: k  reason: collision with root package name */
    public static final c f12382k = new c("HEIF", "heif");

    /* renamed from: l  reason: collision with root package name */
    private static ImmutableList<c> f12383l;

    private b() {
    }

    public static List<c> a() {
        if (f12383l == null) {
            ArrayList arrayList = new ArrayList(9);
            arrayList.add(f12372a);
            arrayList.add(f12373b);
            arrayList.add(f12374c);
            arrayList.add(f12375d);
            arrayList.add(f12376e);
            arrayList.add(f12377f);
            arrayList.add(f12378g);
            arrayList.add(f12379h);
            arrayList.add(f12380i);
            arrayList.add(f12381j);
            arrayList.add(f12382k);
            f12383l = ImmutableList.a(arrayList);
        }
        return f12383l;
    }

    public static boolean b(c cVar) {
        return cVar == f12377f || cVar == f12378g || cVar == f12379h || cVar == f12380i;
    }

    public static boolean c(c cVar) {
        return b(cVar) || cVar == f12381j;
    }
}
