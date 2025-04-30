package com.xinzhu.overmind.utils;
/* compiled from: Slog.java */
/* loaded from: classes.dex */
public final class u {
    private u() {
    }

    public static int a(String tag, String msg) {
        return com.xinzhu.overmind.b.a(tag, msg);
    }

    public static int b(String tag, String msg, Throwable tr) {
        return com.xinzhu.overmind.b.b(tag, msg, tr);
    }

    public static int c(String tag, String msg) {
        return com.xinzhu.overmind.b.c(tag, msg);
    }

    public static int d(String tag, String msg, Throwable tr) {
        return com.xinzhu.overmind.b.d(tag, msg, tr);
    }

    public static int e(String tag, String msg) {
        return com.xinzhu.overmind.b.f(tag, msg);
    }

    public static int f(String tag, String msg, Throwable tr) {
        return com.xinzhu.overmind.b.g(tag, msg, tr);
    }

    public static int g(int priority, String tag, String msg) {
        return com.xinzhu.overmind.b.i(priority, tag, msg);
    }

    public static int h(String tag, String msg) {
        return com.xinzhu.overmind.b.j(tag, msg);
    }

    public static int i(String tag, String msg, Throwable tr) {
        return com.xinzhu.overmind.b.k(tag, msg, tr);
    }

    public static int j(String tag, String msg) {
        return com.xinzhu.overmind.b.l(tag, msg);
    }

    public static int k(String tag, String msg, Throwable tr) {
        return com.xinzhu.overmind.b.m(tag, msg, tr);
    }

    public static int l(String tag, Throwable tr) {
        return com.xinzhu.overmind.b.n(tag, tr);
    }

    public static int m(String tag, String msg) {
        return com.xinzhu.overmind.b.o(tag, msg);
    }

    public static int n(String tag, String msg, Throwable tr) {
        return com.xinzhu.overmind.b.p(tag, msg, tr);
    }

    public static int o(String tag, Throwable tr) {
        return com.xinzhu.overmind.b.q(tag, tr);
    }

    public static void p(String tag, String msg) {
        com.xinzhu.overmind.b.o(tag, msg);
    }

    public static int q(String tag, String msg) {
        return com.xinzhu.overmind.b.o(tag, msg);
    }
}
