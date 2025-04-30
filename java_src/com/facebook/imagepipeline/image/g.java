package com.facebook.imagepipeline.image;
/* compiled from: ImmutableQualityInfo.java */
/* loaded from: classes2.dex */
public class g implements h {

    /* renamed from: d  reason: collision with root package name */
    public static final h f12777d = d(Integer.MAX_VALUE, true, true);

    /* renamed from: a  reason: collision with root package name */
    int f12778a;

    /* renamed from: b  reason: collision with root package name */
    boolean f12779b;

    /* renamed from: c  reason: collision with root package name */
    boolean f12780c;

    private g(int i2, boolean z3, boolean z4) {
        this.f12778a = i2;
        this.f12779b = z3;
        this.f12780c = z4;
    }

    public static h d(int i2, boolean z3, boolean z4) {
        return new g(i2, z3, z4);
    }

    @Override // com.facebook.imagepipeline.image.h
    public boolean a() {
        return this.f12780c;
    }

    @Override // com.facebook.imagepipeline.image.h
    public boolean b() {
        return this.f12779b;
    }

    @Override // com.facebook.imagepipeline.image.h
    public int c() {
        return this.f12778a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            return this.f12778a == gVar.f12778a && this.f12779b == gVar.f12779b && this.f12780c == gVar.f12780c;
        }
        return false;
    }

    public int hashCode() {
        return (this.f12778a ^ (this.f12779b ? 4194304 : 0)) ^ (this.f12780c ? 8388608 : 0);
    }
}
