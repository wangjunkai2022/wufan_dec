package com.papa.gsyvideoplayer.model;

import java.io.File;
import java.util.Map;
/* compiled from: GSYModel.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    String f54961a;

    /* renamed from: b  reason: collision with root package name */
    File f54962b;

    /* renamed from: c  reason: collision with root package name */
    Map<String, String> f54963c;

    /* renamed from: d  reason: collision with root package name */
    float f54964d;

    /* renamed from: e  reason: collision with root package name */
    boolean f54965e;

    /* renamed from: f  reason: collision with root package name */
    boolean f54966f;

    /* renamed from: g  reason: collision with root package name */
    String f54967g;

    public a(String str, Map<String, String> map, boolean z3, float f4, boolean z4, File file, String str2) {
        this.f54964d = 1.0f;
        this.f54961a = str;
        this.f54963c = map;
        this.f54965e = z3;
        this.f54964d = f4;
        this.f54966f = z4;
        this.f54962b = file;
        this.f54967g = str2;
    }

    public File a() {
        return this.f54962b;
    }

    public Map<String, String> b() {
        return this.f54963c;
    }

    public String c() {
        return this.f54967g;
    }

    public float d() {
        return this.f54964d;
    }

    public String e() {
        return this.f54961a;
    }

    public boolean f() {
        return this.f54966f;
    }

    public boolean g() {
        return this.f54965e;
    }

    public void h(boolean z3) {
        this.f54966f = z3;
    }

    public void i(File file) {
        this.f54962b = file;
    }

    public void j(boolean z3) {
        this.f54965e = z3;
    }

    public void k(Map<String, String> map) {
        this.f54963c = map;
    }

    public void l(String str) {
        this.f54967g = str;
    }

    public void m(float f4) {
        this.f54964d = f4;
    }

    public void n(String str) {
        this.f54961a = str;
    }
}
