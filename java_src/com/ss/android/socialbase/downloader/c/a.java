package com.ss.android.socialbase.downloader.c;

import android.text.TextUtils;
/* compiled from: Logger.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static int f57847a = 4;

    /* renamed from: b  reason: collision with root package name */
    private static AbstractC0311a f57848b;

    /* compiled from: Logger.java */
    /* renamed from: com.ss.android.socialbase.downloader.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static abstract class AbstractC0311a {
        public void a(String str, String str2) {
        }

        public void a(String str, String str2, Throwable th) {
        }

        public void b(String str, String str2) {
        }

        public void c(String str, String str2) {
        }

        public void d(String str, String str2) {
        }

        public void e(String str, String str2) {
        }
    }

    public static void a(int i2) {
        f57847a = i2;
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "DownloaderLogger";
        }
        return "Downloader-" + str;
    }

    public static void c(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (f57847a <= 4) {
            b(str);
        }
        AbstractC0311a abstractC0311a = f57848b;
        if (abstractC0311a != null) {
            abstractC0311a.c(b(str), str2);
        }
    }

    public static void d(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (f57847a <= 5) {
            b(str);
        }
        AbstractC0311a abstractC0311a = f57848b;
        if (abstractC0311a != null) {
            abstractC0311a.e(b(str), str2);
        }
    }

    public static void e(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (f57847a <= 6) {
            b(str);
        }
        AbstractC0311a abstractC0311a = f57848b;
        if (abstractC0311a != null) {
            abstractC0311a.d(b(str), str2);
        }
    }

    public static boolean a() {
        return f57847a <= 3;
    }

    public static void a(String str, String str2) {
        AbstractC0311a abstractC0311a;
        if (str2 == null || (abstractC0311a = f57848b) == null) {
            return;
        }
        abstractC0311a.a(b(str), str2);
    }

    public static void b(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (f57847a <= 3) {
            b(str);
        }
        AbstractC0311a abstractC0311a = f57848b;
        if (abstractC0311a != null) {
            abstractC0311a.b(b(str), str2);
        }
    }

    public static void a(String str) {
        b("DownloaderLogger", str);
    }

    public static void c(String str) {
        d("DownloaderLogger", str);
    }

    public static void a(String str, String str2, Throwable th) {
        if (str2 == null && th == null) {
            return;
        }
        if (f57847a <= 6) {
            b(str);
        }
        AbstractC0311a abstractC0311a = f57848b;
        if (abstractC0311a != null) {
            abstractC0311a.a(b(str), str2, th);
        }
    }
}
