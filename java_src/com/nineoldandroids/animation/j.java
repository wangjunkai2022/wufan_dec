package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
/* compiled from: Keyframe.java */
/* loaded from: classes4.dex */
public abstract class j implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    float f54411a;

    /* renamed from: b  reason: collision with root package name */
    Class f54412b;

    /* renamed from: c  reason: collision with root package name */
    private Interpolator f54413c = null;

    /* renamed from: d  reason: collision with root package name */
    boolean f54414d = false;

    /* compiled from: Keyframe.java */
    /* loaded from: classes4.dex */
    static class c extends j {

        /* renamed from: e  reason: collision with root package name */
        Object f54417e;

        c(float f4, Object obj) {
            this.f54411a = f4;
            this.f54417e = obj;
            boolean z3 = obj != null;
            this.f54414d = z3;
            this.f54412b = z3 ? obj.getClass() : Object.class;
        }

        @Override // com.nineoldandroids.animation.j
        public Object d() {
            return this.f54417e;
        }

        @Override // com.nineoldandroids.animation.j
        public void n(Object obj) {
            this.f54417e = obj;
            this.f54414d = obj != null;
        }

        @Override // com.nineoldandroids.animation.j
        /* renamed from: o */
        public c clone() {
            c cVar = new c(b(), this.f54417e);
            cVar.m(c());
            return cVar;
        }
    }

    public static j f(float f4) {
        return new a(f4);
    }

    public static j g(float f4, float f5) {
        return new a(f4, f5);
    }

    public static j h(float f4) {
        return new b(f4);
    }

    public static j i(float f4, int i2) {
        return new b(f4, i2);
    }

    public static j j(float f4) {
        return new c(f4, null);
    }

    public static j k(float f4, Object obj) {
        return new c(f4, obj);
    }

    @Override // 
    /* renamed from: a */
    public abstract j clone();

    public float b() {
        return this.f54411a;
    }

    public Interpolator c() {
        return this.f54413c;
    }

    public abstract Object d();

    public boolean e() {
        return this.f54414d;
    }

    public Class getType() {
        return this.f54412b;
    }

    public void l(float f4) {
        this.f54411a = f4;
    }

    public void m(Interpolator interpolator) {
        this.f54413c = interpolator;
    }

    public abstract void n(Object obj);

    /* compiled from: Keyframe.java */
    /* loaded from: classes4.dex */
    static class a extends j {

        /* renamed from: e  reason: collision with root package name */
        float f54415e;

        a(float f4, float f5) {
            this.f54411a = f4;
            this.f54415e = f5;
            this.f54412b = Float.TYPE;
            this.f54414d = true;
        }

        @Override // com.nineoldandroids.animation.j
        public Object d() {
            return Float.valueOf(this.f54415e);
        }

        @Override // com.nineoldandroids.animation.j
        public void n(Object obj) {
            if (obj == null || obj.getClass() != Float.class) {
                return;
            }
            this.f54415e = ((Float) obj).floatValue();
            this.f54414d = true;
        }

        @Override // com.nineoldandroids.animation.j
        /* renamed from: o */
        public a clone() {
            a aVar = new a(b(), this.f54415e);
            aVar.m(c());
            return aVar;
        }

        public float p() {
            return this.f54415e;
        }

        a(float f4) {
            this.f54411a = f4;
            this.f54412b = Float.TYPE;
        }
    }

    /* compiled from: Keyframe.java */
    /* loaded from: classes4.dex */
    static class b extends j {

        /* renamed from: e  reason: collision with root package name */
        int f54416e;

        b(float f4, int i2) {
            this.f54411a = f4;
            this.f54416e = i2;
            this.f54412b = Integer.TYPE;
            this.f54414d = true;
        }

        @Override // com.nineoldandroids.animation.j
        public Object d() {
            return Integer.valueOf(this.f54416e);
        }

        @Override // com.nineoldandroids.animation.j
        public void n(Object obj) {
            if (obj == null || obj.getClass() != Integer.class) {
                return;
            }
            this.f54416e = ((Integer) obj).intValue();
            this.f54414d = true;
        }

        @Override // com.nineoldandroids.animation.j
        /* renamed from: o */
        public b clone() {
            b bVar = new b(b(), this.f54416e);
            bVar.m(c());
            return bVar;
        }

        public int p() {
            return this.f54416e;
        }

        b(float f4) {
            this.f54411a = f4;
            this.f54412b = Integer.TYPE;
        }
    }
}
