package com.join.mgps.Util;

import java.io.Serializable;
/* loaded from: classes3.dex */
public class IntentToDetialBean implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f27397a;

    /* renamed from: b  reason: collision with root package name */
    private float f27398b;

    /* renamed from: c  reason: collision with root package name */
    private String f27399c;

    /* renamed from: d  reason: collision with root package name */
    private String f27400d;

    /* renamed from: e  reason: collision with root package name */
    private int f27401e;

    public IntentToDetialBean() {
        this.f27401e = 0;
    }

    public String a() {
        return this.f27399c;
    }

    public String b() {
        return this.f27397a;
    }

    public int c() {
        return this.f27401e;
    }

    public String d() {
        return this.f27400d;
    }

    public float e() {
        return this.f27398b;
    }

    public void f(String str) {
        this.f27399c = str;
    }

    public void g(String str) {
        this.f27397a = str;
    }

    public void h(int i2) {
        this.f27401e = i2;
    }

    public void i(String str) {
        this.f27400d = str;
    }

    public void j(float f4) {
        this.f27398b = f4;
    }

    public IntentToDetialBean(String str, float f4, String str2, String str3, int i2) {
        this.f27401e = 0;
        this.f27397a = str;
        this.f27398b = f4;
        this.f27399c = str2;
        this.f27400d = str3;
        this.f27401e = i2;
    }
}
