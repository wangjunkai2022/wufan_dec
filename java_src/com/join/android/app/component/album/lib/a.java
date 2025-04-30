package com.join.android.app.component.album.lib;

import java.util.List;
import net.lingala.zip4j.util.e;
/* compiled from: ImageFolder.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private String f17462a;

    /* renamed from: b  reason: collision with root package name */
    private String f17463b;

    /* renamed from: c  reason: collision with root package name */
    private String f17464c;

    /* renamed from: d  reason: collision with root package name */
    private String f17465d;

    /* renamed from: e  reason: collision with root package name */
    private int f17466e;

    /* renamed from: f  reason: collision with root package name */
    private List<String> f17467f;

    public List<String> a() {
        return this.f17467f;
    }

    public String b() {
        return this.f17465d;
    }

    public int c() {
        return this.f17466e;
    }

    public String d() {
        return this.f17462a;
    }

    public String e() {
        return this.f17463b;
    }

    public String f() {
        return this.f17464c;
    }

    public void g(List<String> list) {
        this.f17467f = list;
    }

    public void h(String str) {
        this.f17465d = str;
    }

    public void i(int i2) {
        this.f17466e = i2;
    }

    public void j(String str) {
        this.f17462a = str;
        this.f17464c = this.f17462a.substring(str.lastIndexOf(e.F0) + 1);
    }

    public void k(String str) {
        this.f17463b = str;
    }

    public void l(String str) {
        this.f17464c = str;
    }

    public String toString() {
        return "ImageFolder{dir='" + this.f17462a + "', firstImagePath='" + this.f17463b + "', name='" + this.f17464c + "', count=" + this.f17466e + '}';
    }
}
