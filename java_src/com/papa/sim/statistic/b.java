package com.papa.sim.statistic;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.drawable.Drawable;
/* compiled from: APKUtils.java */
/* loaded from: classes4.dex */
public class b {

    /* compiled from: APKUtils.java */
    /* loaded from: classes4.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        private String f55383a;

        /* renamed from: b  reason: collision with root package name */
        private int f55384b;

        /* renamed from: c  reason: collision with root package name */
        private String f55385c;

        /* renamed from: d  reason: collision with root package name */
        private String f55386d;

        /* renamed from: e  reason: collision with root package name */
        private Drawable f55387e;

        public a() {
        }

        public String a() {
            return this.f55385c;
        }

        public Drawable b() {
            return this.f55387e;
        }

        public String c() {
            return this.f55386d;
        }

        public int d() {
            return this.f55384b;
        }

        public String e() {
            return this.f55383a;
        }

        public void f(String str) {
            this.f55385c = str;
        }

        public void g(Drawable drawable) {
            this.f55387e = drawable;
        }

        public void h(String str) {
            this.f55386d = str;
        }

        public void i(int i2) {
            this.f55384b = i2;
        }

        public void j(String str) {
            this.f55383a = str;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000f, code lost:
        if (r3.activities.length > 0) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(android.content.Context r3, java.lang.String r4) {
        /*
            r2 = this;
            android.content.pm.PackageManager r3 = r3.getPackageManager()
            r0 = 1
            r1 = 0
            android.content.pm.PackageInfo r3 = r3.getPackageInfo(r4, r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L14
            if (r3 == 0) goto L12
            android.content.pm.ActivityInfo[] r3 = r3.activities     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L14
            int r3 = r3.length     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L14
            if (r3 <= 0) goto L12
            goto L13
        L12:
            r0 = 0
        L13:
            r1 = r0
        L14:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.papa.sim.statistic.b.a(android.content.Context, java.lang.String):boolean");
    }

    public a b(Context context, String str) {
        a aVar = new a();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 1);
            if (packageInfo != null) {
                String str2 = packageInfo.versionName;
                int i2 = packageInfo.versionCode;
                String charSequence = packageInfo.applicationInfo.loadLabel(context.getPackageManager()).toString();
                String str3 = packageInfo.packageName;
                aVar.i(i2);
                aVar.j(str2);
                aVar.f(charSequence);
                aVar.h(str3);
                aVar.g(null);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return aVar;
    }
}
