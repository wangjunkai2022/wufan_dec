package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f59846a = true;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f59847b = true;

    /* renamed from: c  reason: collision with root package name */
    private static SimpleDateFormat f59848c = null;

    /* renamed from: d  reason: collision with root package name */
    private static int f59849d = 30720;

    /* renamed from: e  reason: collision with root package name */
    private static StringBuilder f59850e;

    /* renamed from: f  reason: collision with root package name */
    private static StringBuilder f59851f;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f59852g;

    /* renamed from: h  reason: collision with root package name */
    private static a f59853h;

    /* renamed from: i  reason: collision with root package name */
    private static String f59854i;

    /* renamed from: j  reason: collision with root package name */
    private static String f59855j;

    /* renamed from: k  reason: collision with root package name */
    private static Context f59856k;

    /* renamed from: l  reason: collision with root package name */
    private static String f59857l;

    /* renamed from: m  reason: collision with root package name */
    private static boolean f59858m;

    /* renamed from: n  reason: collision with root package name */
    private static boolean f59859n;

    /* renamed from: o  reason: collision with root package name */
    private static ExecutorService f59860o;

    /* renamed from: p  reason: collision with root package name */
    private static int f59861p;

    /* renamed from: q  reason: collision with root package name */
    private static final Object f59862q = new Object();

    /* compiled from: BUGLY */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f59866a;

        /* renamed from: b  reason: collision with root package name */
        private File f59867b;

        /* renamed from: c  reason: collision with root package name */
        private String f59868c;

        /* renamed from: d  reason: collision with root package name */
        private long f59869d;

        /* renamed from: e  reason: collision with root package name */
        private long f59870e = 30720;

        public a(String str) {
            if (str == null || str.equals("")) {
                return;
            }
            this.f59868c = str;
            this.f59866a = a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a() {
            try {
                File file = new File(this.f59868c);
                this.f59867b = file;
                if (file.exists() && !this.f59867b.delete()) {
                    this.f59866a = false;
                    return false;
                } else if (this.f59867b.createNewFile()) {
                    return true;
                } else {
                    this.f59866a = false;
                    return false;
                }
            } catch (Throwable th) {
                x.a(th);
                this.f59866a = false;
                return false;
            }
        }

        public final boolean a(String str) {
            byte[] bytes;
            if (!this.f59866a) {
                return false;
            }
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(this.f59867b, true);
                try {
                    fileOutputStream2.write(str.getBytes("UTF-8"));
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                    this.f59869d += bytes.length;
                    this.f59866a = true;
                    try {
                        fileOutputStream2.close();
                    } catch (IOException unused) {
                    }
                    return true;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    try {
                        x.a(th);
                        this.f59866a = false;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        return false;
                    } catch (Throwable th2) {
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused3) {
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    static {
        try {
            f59848c = new SimpleDateFormat("MM-dd HH:mm:ss");
        } catch (Throwable th) {
            x.b(th.getCause());
        }
    }

    public static synchronized void a(Context context) {
        synchronized (y.class) {
            if (f59858m || context == null || !f59846a) {
                return;
            }
            try {
                f59860o = Executors.newSingleThreadExecutor();
                f59851f = new StringBuilder(0);
                f59850e = new StringBuilder(0);
                f59856k = context;
                f59854i = com.tencent.bugly.crashreport.common.info.a.a(context).f59364d;
                f59855j = "";
                f59857l = f59856k.getFilesDir().getPath() + "/buglylog_" + f59854i + "_" + f59855j + ".txt";
                f59861p = Process.myPid();
            } catch (Throwable unused) {
            }
            f59858m = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void c(String str, String str2, String str3) {
        synchronized (y.class) {
            if (f59847b) {
                d(str, str2, str3);
            } else {
                e(str, str2, str3);
            }
        }
    }

    private static synchronized void d(String str, String str2, String str3) {
        synchronized (y.class) {
            String a4 = a(str, str2, str3, Process.myTid());
            synchronized (f59862q) {
                f59851f.append(a4);
                if (f59851f.length() >= f59849d) {
                    StringBuilder sb = f59851f;
                    f59851f = sb.delete(0, sb.indexOf("\u0001\r\n") + 1);
                }
            }
        }
    }

    private static synchronized void e(String str, String str2, String str3) {
        synchronized (y.class) {
            String a4 = a(str, str2, str3, Process.myTid());
            synchronized (f59862q) {
                try {
                    f59851f.append(a4);
                } catch (Throwable unused) {
                }
                if (f59851f.length() <= f59849d) {
                    return;
                }
                if (f59852g) {
                    return;
                }
                f59852g = true;
                a aVar = f59853h;
                if (aVar != null) {
                    if (aVar.f59867b == null || f59853h.f59867b.length() + f59851f.length() > f59853h.f59870e) {
                        f59853h.a();
                    }
                } else {
                    f59853h = new a(f59857l);
                }
                if (f59853h.a(f59851f.toString())) {
                    f59851f.setLength(0);
                    f59852g = false;
                }
            }
        }
    }

    private static byte[] b() {
        if (f59846a) {
            StringBuilder sb = new StringBuilder();
            synchronized (f59862q) {
                a aVar = f59853h;
                if (aVar != null && aVar.f59866a && f59853h.f59867b != null && f59853h.f59867b.length() > 0) {
                    sb.append(z.a(f59853h.f59867b, 30720, true));
                }
                StringBuilder sb2 = f59851f;
                if (sb2 != null && sb2.length() > 0) {
                    sb.append(f59851f.toString());
                }
            }
            return z.a((File) null, sb.toString(), "BuglyLog.txt");
        }
        return null;
    }

    public static void a(int i2) {
        synchronized (f59862q) {
            f59849d = i2;
            if (i2 < 0) {
                f59849d = 0;
            } else if (i2 > 30720) {
                f59849d = 30720;
            }
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (th == null) {
            return;
        }
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        a(str, str2, message + '\n' + z.b(th));
    }

    public static synchronized void a(final String str, final String str2, final String str3) {
        synchronized (y.class) {
            if (f59858m && f59846a) {
                try {
                    f59860o.execute(new Runnable() { // from class: com.tencent.bugly.proguard.y.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            y.c(str, str2, str3);
                        }
                    });
                } catch (Exception e4) {
                    x.b(e4);
                }
            }
        }
    }

    private static String a(String str, String str2, String str3, long j4) {
        String date;
        f59850e.setLength(0);
        if (str3.length() > 30720) {
            str3 = str3.substring(str3.length() - 30720, str3.length() - 1);
        }
        Date date2 = new Date();
        SimpleDateFormat simpleDateFormat = f59848c;
        if (simpleDateFormat != null) {
            date = simpleDateFormat.format(date2);
        } else {
            date = date2.toString();
        }
        StringBuilder sb = f59850e;
        sb.append(date);
        sb.append(" ");
        sb.append(f59861p);
        sb.append(" ");
        sb.append(j4);
        sb.append(" ");
        sb.append(str);
        sb.append(" ");
        sb.append(str2);
        sb.append(": ");
        sb.append(str3);
        sb.append("\u0001\r\n");
        return f59850e.toString();
    }

    public static byte[] a() {
        if (f59847b) {
            if (f59846a) {
                return z.a((File) null, f59851f.toString(), "BuglyLog.txt");
            }
            return null;
        }
        return b();
    }
}
