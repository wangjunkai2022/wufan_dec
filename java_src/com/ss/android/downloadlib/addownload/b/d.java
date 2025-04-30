package com.ss.android.downloadlib.addownload.b;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.ss.android.downloadlib.addownload.j;
import java.util.Iterator;
import java.util.LinkedList;
/* compiled from: InstalledAppManager.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static volatile d f57130a;

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f57131c = {"com", q.a.f73954a, "ss"};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f57132d = {3101, 3102, 3103, 3201, 3202, 3203};

    /* renamed from: b  reason: collision with root package name */
    private final LinkedList<a> f57133b = new LinkedList<>();

    /* compiled from: InstalledAppManager.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f57134a;

        /* renamed from: b  reason: collision with root package name */
        public final int f57135b;

        /* renamed from: c  reason: collision with root package name */
        public final String f57136c;

        /* renamed from: d  reason: collision with root package name */
        public final String f57137d;

        /* renamed from: e  reason: collision with root package name */
        public final long f57138e;

        private a(String str, int i2, String str2, String str3, long j4) {
            this.f57134a = str;
            this.f57135b = i2;
            this.f57136c = str2 != null ? str2.toLowerCase() : null;
            this.f57137d = str3 != null ? str3.toLowerCase() : null;
            this.f57138e = j4;
        }
    }

    private d() {
    }

    public static d a() {
        if (f57130a == null) {
            synchronized (d.class) {
                if (f57130a == null) {
                    f57130a = new d();
                }
            }
        }
        return f57130a;
    }

    private a c(String str) {
        try {
            PackageManager packageManager = j.getContext().getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo != null) {
                return new a(str, packageInfo.versionCode, packageInfo.versionName, (String) packageManager.getApplicationLabel(packageInfo.applicationInfo), System.currentTimeMillis());
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public void b(String str) {
        b();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.f57133b) {
            Iterator<a> it2 = this.f57133b.iterator();
            while (it2.hasNext()) {
                if (str.equals(it2.next().f57134a)) {
                    it2.remove();
                    return;
                }
            }
        }
    }

    public void a(String str) {
        a c4;
        b();
        if (TextUtils.isEmpty(str) || (c4 = c(str)) == null) {
            return;
        }
        synchronized (this.f57133b) {
            this.f57133b.add(c4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0096, code lost:
        r7[1] = r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.util.Pair<com.ss.android.downloadlib.addownload.b.d.a, java.lang.Integer> b(com.ss.android.downloadad.api.a.b r19) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.downloadlib.addownload.b.d.b(com.ss.android.downloadad.api.a.b):android.util.Pair");
    }

    public a a(com.ss.android.downloadad.api.a.b bVar) {
        if (bVar == null) {
            return null;
        }
        b();
        synchronized (this.f57133b) {
            Iterator<a> it2 = this.f57133b.iterator();
            while (it2.hasNext()) {
                a next = it2.next();
                if (next.f57138e > bVar.C()) {
                    return next;
                }
            }
            return null;
        }
    }

    private static boolean a(String str, String str2) {
        String[] split;
        String[] split2;
        boolean z3;
        try {
            split = str.split("\\.");
            split2 = str2.split("\\.");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (split.length != 0 && split2.length != 0) {
            int i2 = 0;
            int i4 = 0;
            for (String str3 : split) {
                String[] strArr = f57131c;
                int length = strArr.length;
                int i5 = 0;
                while (true) {
                    if (i5 >= length) {
                        z3 = false;
                        break;
                    }
                    String str4 = strArr[i5];
                    if (str4.equals(str3)) {
                        if (i2 < split2.length && str4.equals(split2[i2])) {
                            i2++;
                        }
                        z3 = true;
                    } else {
                        i5++;
                    }
                }
                if (!z3) {
                    int i6 = i4;
                    int i7 = i2;
                    while (i2 < split2.length) {
                        if (str3.equals(split2[i2])) {
                            if (i2 == i7) {
                                i7++;
                            }
                            i6++;
                            if (i6 >= 2) {
                                return true;
                            }
                        }
                        i2++;
                    }
                    i2 = i7;
                    i4 = i6;
                }
            }
            return false;
        }
        return false;
    }

    private void b() {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this.f57133b) {
            Iterator<a> it2 = this.f57133b.iterator();
            while (it2.hasNext() && currentTimeMillis - it2.next().f57138e > 1800000) {
                it2.remove();
            }
        }
    }
}
