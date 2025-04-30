package com.papa.gsyvideoplayer.model;
/* compiled from: VideoOptionModel.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: f  reason: collision with root package name */
    public static final int f54970f = 0;

    /* renamed from: g  reason: collision with root package name */
    public static final int f54971g = 1;

    /* renamed from: a  reason: collision with root package name */
    int f54972a;

    /* renamed from: b  reason: collision with root package name */
    int f54973b;

    /* renamed from: c  reason: collision with root package name */
    int f54974c;

    /* renamed from: d  reason: collision with root package name */
    String f54975d;

    /* renamed from: e  reason: collision with root package name */
    String f54976e;

    public c(int i2, String str, int i4) {
        this.f54972a = 0;
        this.f54973b = i2;
        this.f54975d = str;
        this.f54974c = i4;
        this.f54972a = 0;
    }

    public int a() {
        return this.f54973b;
    }

    public String b() {
        return this.f54975d;
    }

    public int c() {
        return this.f54974c;
    }

    public String d() {
        return this.f54976e;
    }

    public int e() {
        return this.f54972a;
    }

    public void f(int i2) {
        this.f54973b = i2;
    }

    public void g(String str) {
        this.f54975d = str;
    }

    public void h(int i2) {
        this.f54974c = i2;
        this.f54972a = 0;
    }

    public void i(String str) {
        this.f54976e = str;
        this.f54972a = 1;
    }

    public void j(int i2) {
        this.f54972a = i2;
    }

    public c(int i2, String str, String str2) {
        this.f54972a = 0;
        this.f54973b = i2;
        this.f54975d = str;
        this.f54976e = str2;
        this.f54972a = 1;
    }
}
