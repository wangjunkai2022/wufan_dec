package com.switfpass.pay.activity;

import android.text.TextUtils;
/* loaded from: classes4.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private String f58694a;

    /* renamed from: b  reason: collision with root package name */
    private String f58695b;

    /* renamed from: c  reason: collision with root package name */
    private String f58696c;

    public q(String str) {
        String[] split;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        for (String str2 : str.split(";")) {
            if (str2.startsWith("resultStatus")) {
                this.f58694a = a(str2, "resultStatus");
            }
            if (str2.startsWith("result")) {
                this.f58695b = a(str2, "result");
            }
            if (str2.startsWith("memo")) {
                this.f58696c = a(str2, "memo");
            }
        }
    }

    private static String a(String str, String str2) {
        String str3 = String.valueOf(str2) + "={";
        return str.substring(str.indexOf(str3) + str3.length(), str.lastIndexOf("}"));
    }

    public String b() {
        return this.f58696c;
    }

    public String c() {
        return this.f58695b;
    }

    public String d() {
        return this.f58694a;
    }

    public String toString() {
        return "resultStatus={" + this.f58694a + "};memo={" + this.f58696c + "};result={" + this.f58695b + "}";
    }
}
