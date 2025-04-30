package com.facebook.imagepipeline.common;

import android.graphics.Bitmap;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;
/* compiled from: ImageDecodeOptions.java */
@Immutable
/* loaded from: classes.dex */
public class b {

    /* renamed from: j  reason: collision with root package name */
    private static final b f12550j = b().a();

    /* renamed from: a  reason: collision with root package name */
    public final int f12551a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f12552b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f12553c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f12554d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f12555e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f12556f;

    /* renamed from: g  reason: collision with root package name */
    public final Bitmap.Config f12557g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final com.facebook.imagepipeline.decoder.b f12558h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final s0.a f12559i;

    public b(c cVar) {
        this.f12551a = cVar.h();
        this.f12552b = cVar.f();
        this.f12553c = cVar.j();
        this.f12554d = cVar.e();
        this.f12555e = cVar.g();
        this.f12557g = cVar.b();
        this.f12558h = cVar.d();
        this.f12556f = cVar.i();
        this.f12559i = cVar.c();
    }

    public static b a() {
        return f12550j;
    }

    public static c b() {
        return new c();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f12552b == bVar.f12552b && this.f12553c == bVar.f12553c && this.f12554d == bVar.f12554d && this.f12555e == bVar.f12555e && this.f12556f == bVar.f12556f && this.f12557g == bVar.f12557g && this.f12558h == bVar.f12558h && this.f12559i == bVar.f12559i;
    }

    public int hashCode() {
        int ordinal = ((((((((((((this.f12551a * 31) + (this.f12552b ? 1 : 0)) * 31) + (this.f12553c ? 1 : 0)) * 31) + (this.f12554d ? 1 : 0)) * 31) + (this.f12555e ? 1 : 0)) * 31) + (this.f12556f ? 1 : 0)) * 31) + this.f12557g.ordinal()) * 31;
        com.facebook.imagepipeline.decoder.b bVar = this.f12558h;
        int hashCode = (ordinal + (bVar != null ? bVar.hashCode() : 0)) * 31;
        s0.a aVar = this.f12559i;
        return hashCode + (aVar != null ? aVar.hashCode() : 0);
    }

    public String toString() {
        return String.format(null, "%d-%b-%b-%b-%b-%b-%s-%s-%s", Integer.valueOf(this.f12551a), Boolean.valueOf(this.f12552b), Boolean.valueOf(this.f12553c), Boolean.valueOf(this.f12554d), Boolean.valueOf(this.f12555e), Boolean.valueOf(this.f12556f), this.f12557g.name(), this.f12558h, this.f12559i);
    }
}
