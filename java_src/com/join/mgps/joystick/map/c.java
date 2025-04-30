package com.join.mgps.joystick.map;

import android.view.InputEvent;
/* compiled from: KeyMapEvent.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    InputEvent f50983a;

    /* renamed from: b  reason: collision with root package name */
    String f50984b;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    int f50985c;

    /* renamed from: d  reason: collision with root package name */
    String f50986d;

    public String a() {
        return this.f50984b;
    }

    public String b() {
        return this.f50986d;
    }

    @Deprecated
    public int c() {
        return this.f50985c;
    }

    public InputEvent d() {
        return this.f50983a;
    }

    public void e(String str) {
        this.f50984b = str;
    }

    public void f(String str) {
        this.f50986d = str;
    }

    @Deprecated
    public void g(int i2) {
        this.f50985c = i2;
    }

    public void h(InputEvent inputEvent) {
        this.f50983a = inputEvent;
    }

    public String toString() {
        return "KeyMapEvent{event=" + this.f50983a + ", customKey='" + this.f50984b + "', emumapKeyIndex=" + this.f50985c + ", emuKey='" + this.f50986d + "'}";
    }
}
