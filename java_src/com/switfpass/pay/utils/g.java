package com.switfpass.pay.utils;

import android.app.Activity;
import android.content.Intent;
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public String f58987a;

    /* renamed from: b  reason: collision with root package name */
    public Intent f58988b;

    /* renamed from: c  reason: collision with root package name */
    public int f58989c;

    /* renamed from: d  reason: collision with root package name */
    public Activity f58990d;

    public g() {
        this.f58989c = 0;
    }

    public g(String str, Intent intent) {
        this.f58989c = 0;
        this.f58987a = str;
        this.f58988b = intent;
    }

    public g(String str, Intent intent, int i2, Activity activity) {
        this.f58989c = 0;
        this.f58987a = str;
        this.f58988b = intent;
        this.f58989c = i2;
        this.f58990d = activity;
    }

    public Intent a() {
        return this.f58988b;
    }

    public String b() {
        return this.f58987a;
    }

    public int c() {
        return this.f58989c;
    }

    public void d(Intent intent) {
        this.f58988b = intent;
    }

    public void e(String str) {
        this.f58987a = str;
    }

    public void f(int i2) {
        this.f58989c = i2;
    }
}
