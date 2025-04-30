package com.xinzhu.overmind;

import android.content.Intent;
/* compiled from: OvermindConfig.java */
/* loaded from: classes3.dex */
public abstract class c {

    /* compiled from: OvermindConfig.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final String f63958a = "66:55:44:33:22:11";

        /* renamed from: b  reason: collision with root package name */
        private static final String f63959b = "11:22:33:44:55:66";

        /* renamed from: c  reason: collision with root package name */
        private static final String f63960c = "FAKE_SSID";

        public String a() {
            return f63958a;
        }

        public String b() {
            return f63959b;
        }

        public String c() {
            return f63960c;
        }
    }

    public boolean a(String packageName) {
        return false;
    }

    public boolean b() {
        return false;
    }

    public a c() {
        return null;
    }

    public boolean d() {
        return false;
    }

    public abstract String e();

    public String f() {
        return "com.xinzhu.overmind.msms";
    }

    public String g() {
        return "com.xinzhu.overmind.stub.virtual.service.ext_helper";
    }

    public abstract String h();

    public boolean i(String packageName) {
        return false;
    }

    public boolean j(String packageName) {
        return false;
    }

    public boolean k(String packageName) {
        return false;
    }

    public String l() {
        return "overmind";
    }

    public boolean m(String action) {
        return "android.media.action.IMAGE_CAPTURE".equals(action) || "android.media.action.VIDEO_CAPTURE".equals(action) || "android.intent.action.PICK".equals(action);
    }

    public abstract boolean n(String packageName);

    public boolean o(Intent intent) {
        return false;
    }

    public boolean p() {
        return true;
    }

    public boolean q() {
        return true;
    }

    public Intent r(Intent originIntent) {
        return null;
    }
}
