package com.facebook.common.logging;

import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
/* compiled from: FLogDefaultLoggingDelegate.java */
/* loaded from: classes2.dex */
public class b implements c {

    /* renamed from: c  reason: collision with root package name */
    public static final b f11709c = new b();

    /* renamed from: a  reason: collision with root package name */
    private String f11710a = "unknown";

    /* renamed from: b  reason: collision with root package name */
    private int f11711b = 5;

    private b() {
    }

    public static b k() {
        return f11709c;
    }

    private static String l(String str, Throwable th) {
        return str + '\n' + m(th);
    }

    private static String m(Throwable th) {
        if (th == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    private String n(String str) {
        if (this.f11710a != null) {
            return this.f11710a + ":" + str;
        }
        return str;
    }

    private void o(int i2, String str, String str2) {
        Log.println(i2, n(str), str2);
    }

    private void p(int i2, String str, String str2, Throwable th) {
        Log.println(i2, n(str), l(str2, th));
    }

    @Override // com.facebook.common.logging.c
    public int a() {
        return this.f11711b;
    }

    @Override // com.facebook.common.logging.c
    public void b(String str, String str2) {
        o(6, str, str2);
    }

    @Override // com.facebook.common.logging.c
    public void c(String str, String str2, Throwable th) {
        p(3, str, str2, th);
    }

    @Override // com.facebook.common.logging.c
    public void d(String str, String str2) {
        o(3, str, str2);
    }

    @Override // com.facebook.common.logging.c
    public void e(String str, String str2) {
        o(6, str, str2);
    }

    @Override // com.facebook.common.logging.c
    public void f(String str, String str2, Throwable th) {
        p(6, str, str2, th);
    }

    @Override // com.facebook.common.logging.c
    public void g(String str, String str2, Throwable th) {
        p(2, str, str2, th);
    }

    @Override // com.facebook.common.logging.c
    public boolean h(int i2) {
        return this.f11711b <= i2;
    }

    @Override // com.facebook.common.logging.c
    public void i(int i2) {
        this.f11711b = i2;
    }

    @Override // com.facebook.common.logging.c
    public void j(String str, String str2, Throwable th) {
        p(4, str, str2, th);
    }

    public void q(String str) {
        this.f11710a = str;
    }

    @Override // com.facebook.common.logging.c
    public void v(String str, String str2) {
        o(2, str, str2);
    }

    @Override // com.facebook.common.logging.c
    public void w(String str, String str2) {
        o(5, str, str2);
    }

    @Override // com.facebook.common.logging.c
    public void d(int i2, String str, String str2) {
        o(i2, str, str2);
    }

    @Override // com.facebook.common.logging.c
    public void e(String str, String str2, Throwable th) {
        p(6, str, str2, th);
    }

    @Override // com.facebook.common.logging.c
    public void i(String str, String str2) {
        o(4, str, str2);
    }

    @Override // com.facebook.common.logging.c
    public void w(String str, String str2, Throwable th) {
        p(5, str, str2, th);
    }
}
