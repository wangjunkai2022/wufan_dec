package com.facebook.imagepipeline.cache;

import android.net.Uri;
import com.facebook.common.time.RealtimeSinceBootClock;
import com.facebook.imagepipeline.common.RotationOptions;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;
/* compiled from: BitmapMemoryCacheKey.java */
@Immutable
/* loaded from: classes.dex */
public class c implements com.facebook.cache.common.c {

    /* renamed from: a  reason: collision with root package name */
    private final String f12461a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.common.d f12462b;

    /* renamed from: c  reason: collision with root package name */
    private final RotationOptions f12463c;

    /* renamed from: d  reason: collision with root package name */
    private final com.facebook.imagepipeline.common.b f12464d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final com.facebook.cache.common.c f12465e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final String f12466f;

    /* renamed from: g  reason: collision with root package name */
    private final int f12467g;

    /* renamed from: h  reason: collision with root package name */
    private final Object f12468h;

    /* renamed from: i  reason: collision with root package name */
    private final long f12469i;

    public c(String str, @Nullable com.facebook.imagepipeline.common.d dVar, RotationOptions rotationOptions, com.facebook.imagepipeline.common.b bVar, @Nullable com.facebook.cache.common.c cVar, @Nullable String str2, Object obj) {
        this.f12461a = (String) com.facebook.common.internal.h.i(str);
        this.f12462b = dVar;
        this.f12463c = rotationOptions;
        this.f12464d = bVar;
        this.f12465e = cVar;
        this.f12466f = str2;
        this.f12467g = com.facebook.common.util.b.l(Integer.valueOf(str.hashCode()), Integer.valueOf(dVar != null ? dVar.hashCode() : 0), Integer.valueOf(rotationOptions.hashCode()), bVar, cVar, str2);
        this.f12468h = obj;
        this.f12469i = RealtimeSinceBootClock.get().now();
    }

    @Override // com.facebook.cache.common.c
    public String a() {
        return this.f12461a;
    }

    @Override // com.facebook.cache.common.c
    public boolean b(Uri uri) {
        return a().contains(uri.toString());
    }

    public Object c() {
        return this.f12468h;
    }

    public long d() {
        return this.f12469i;
    }

    @Nullable
    public String e() {
        return this.f12466f;
    }

    @Override // com.facebook.cache.common.c
    public boolean equals(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            return this.f12467g == cVar.f12467g && this.f12461a.equals(cVar.f12461a) && com.facebook.common.internal.g.a(this.f12462b, cVar.f12462b) && com.facebook.common.internal.g.a(this.f12463c, cVar.f12463c) && com.facebook.common.internal.g.a(this.f12464d, cVar.f12464d) && com.facebook.common.internal.g.a(this.f12465e, cVar.f12465e) && com.facebook.common.internal.g.a(this.f12466f, cVar.f12466f);
        }
        return false;
    }

    @Override // com.facebook.cache.common.c
    public int hashCode() {
        return this.f12467g;
    }

    @Override // com.facebook.cache.common.c
    public String toString() {
        return String.format(null, "%s_%s_%s_%s_%s_%s_%d", this.f12461a, this.f12462b, this.f12463c, this.f12464d, this.f12465e, this.f12466f, Integer.valueOf(this.f12467g));
    }
}
