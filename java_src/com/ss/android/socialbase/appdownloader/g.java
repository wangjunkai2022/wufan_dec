package com.ss.android.socialbase.appdownloader;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
/* compiled from: AppUtils.java */
/* loaded from: classes4.dex */
public final class g {

    /* compiled from: AppUtils.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f57721a;

        /* renamed from: b  reason: collision with root package name */
        private String f57722b;

        /* renamed from: c  reason: collision with root package name */
        private Drawable f57723c;

        /* renamed from: d  reason: collision with root package name */
        private String f57724d;

        /* renamed from: e  reason: collision with root package name */
        private String f57725e;

        /* renamed from: f  reason: collision with root package name */
        private int f57726f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f57727g;

        public a(String str, String str2, Drawable drawable, String str3, String str4, int i2, boolean z3) {
            b(str2);
            a(drawable);
            a(str);
            c(str3);
            d(str4);
            a(i2);
            a(z3);
        }

        public Drawable a() {
            return this.f57723c;
        }

        public boolean b() {
            return this.f57727g;
        }

        public String c() {
            return this.f57721a;
        }

        public String d() {
            return this.f57722b;
        }

        public String e() {
            return this.f57724d;
        }

        public int f() {
            return this.f57726f;
        }

        public String g() {
            return this.f57725e;
        }

        public String toString() {
            return "{\n  pkg name: " + c() + "\n  app icon: " + a() + "\n  app name: " + d() + "\n  app path: " + e() + "\n  app v name: " + g() + "\n  app v code: " + f() + "\n  is system: " + b() + "}";
        }

        public void a(Drawable drawable) {
            this.f57723c = drawable;
        }

        public void b(String str) {
            this.f57722b = str;
        }

        public void c(String str) {
            this.f57724d = str;
        }

        public void d(String str) {
            this.f57725e = str;
        }

        public void a(boolean z3) {
            this.f57727g = z3;
        }

        public void a(String str) {
            this.f57721a = str;
        }

        public void a(int i2) {
            this.f57726f = i2;
        }
    }

    public static int a(String str) {
        if (c(str)) {
            return -1;
        }
        try {
            PackageInfo packageInfo = com.ss.android.socialbase.downloader.downloader.c.N().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return -1;
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return -1;
        }
    }

    public static a b(String str) {
        try {
            PackageManager packageManager = com.ss.android.socialbase.downloader.downloader.c.N().getPackageManager();
            if (packageManager == null) {
                return null;
            }
            return a(packageManager, packageManager.getPackageInfo(str, 0));
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private static boolean c(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isWhitespace(str.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    private static a a(PackageManager packageManager, PackageInfo packageInfo) {
        Drawable drawable = null;
        if (packageInfo == null) {
            return null;
        }
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        String str = packageInfo.packageName;
        String charSequence = applicationInfo.loadLabel(packageManager).toString();
        try {
            drawable = applicationInfo.loadIcon(packageManager);
        } catch (Exception unused) {
        }
        return new a(str, charSequence, drawable, applicationInfo.sourceDir, packageInfo.versionName, packageInfo.versionCode, (applicationInfo.flags & 1) != 0);
    }
}
