package org.repackage.com.vivo.identifier;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
/* compiled from: IdentifierIdClient.java */
/* loaded from: classes5.dex */
public class c {
    private static String A = null;
    private static volatile c B = null;
    private static volatile b C = null;

    /* renamed from: a  reason: collision with root package name */
    private static final String f73915a = "VMS_IDLG_SDK_Client";

    /* renamed from: b  reason: collision with root package name */
    private static final String f73916b = "content://com.vivo.vms.IdProvider/IdentifierId";

    /* renamed from: c  reason: collision with root package name */
    private static final String f73917c = "persist.sys.identifierid.supported";

    /* renamed from: d  reason: collision with root package name */
    private static final String f73918d = "appid";

    /* renamed from: e  reason: collision with root package name */
    private static final String f73919e = "type";

    /* renamed from: f  reason: collision with root package name */
    private static final String f73920f = "OAID";

    /* renamed from: g  reason: collision with root package name */
    private static final String f73921g = "VAID";

    /* renamed from: h  reason: collision with root package name */
    private static final String f73922h = "AAID";

    /* renamed from: i  reason: collision with root package name */
    private static final int f73923i = 0;

    /* renamed from: j  reason: collision with root package name */
    private static final int f73924j = 1;

    /* renamed from: k  reason: collision with root package name */
    private static final int f73925k = 2;

    /* renamed from: l  reason: collision with root package name */
    private static final int f73926l = 4;

    /* renamed from: m  reason: collision with root package name */
    private static final int f73927m = 11;

    /* renamed from: n  reason: collision with root package name */
    private static final int f73928n = 2000;

    /* renamed from: o  reason: collision with root package name */
    private static Context f73929o;

    /* renamed from: p  reason: collision with root package name */
    private static boolean f73930p;

    /* renamed from: q  reason: collision with root package name */
    private static d f73931q;

    /* renamed from: r  reason: collision with root package name */
    private static d f73932r;

    /* renamed from: s  reason: collision with root package name */
    private static d f73933s;

    /* renamed from: t  reason: collision with root package name */
    private static Object f73934t = new Object();

    /* renamed from: u  reason: collision with root package name */
    private static HandlerThread f73935u;

    /* renamed from: v  reason: collision with root package name */
    private static Handler f73936v;

    /* renamed from: w  reason: collision with root package name */
    private static String f73937w;

    /* renamed from: x  reason: collision with root package name */
    private static String f73938x;

    /* renamed from: y  reason: collision with root package name */
    private static String f73939y;

    /* renamed from: z  reason: collision with root package name */
    private static String f73940z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IdentifierIdClient.java */
    /* loaded from: classes5.dex */
    public static class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 11) {
                String unused = c.f73937w = c.C.a(message.getData().getInt("type"), message.getData().getString("appid"));
                synchronized (c.f73934t) {
                    c.f73934t.notify();
                }
            }
        }
    }

    private c() {
    }

    public static String b(String str, String str2) {
        try {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "unknown");
            } catch (Exception e4) {
                e4.printStackTrace();
                return str2;
            }
        } catch (Throwable unused) {
            return str2;
        }
    }

    public static c c(Context context) {
        if (B == null) {
            synchronized (c.class) {
                f73929o = context.getApplicationContext();
                B = new c();
            }
        }
        if (C == null) {
            synchronized (c.class) {
                f73929o = context.getApplicationContext();
                o();
                C = new b(f73929o);
                l();
            }
        }
        return B;
    }

    private static void e(Context context, int i2, String str) {
        if (i2 == 0) {
            f73931q = new d(B, 0, null);
            context.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), true, f73931q);
        } else if (i2 == 1) {
            f73932r = new d(B, 1, str);
            ContentResolver contentResolver = context.getContentResolver();
            contentResolver.registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/VAID_" + str), false, f73932r);
        } else if (i2 != 2) {
        } else {
            f73933s = new d(B, 2, str);
            ContentResolver contentResolver2 = context.getContentResolver();
            contentResolver2.registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/AAID_" + str), false, f73933s);
        }
    }

    private void i(int i2, String str) {
        Message obtainMessage = f73936v.obtainMessage();
        obtainMessage.what = 11;
        Bundle bundle = new Bundle();
        bundle.putInt("type", i2);
        if (i2 == 1 || i2 == 2) {
            bundle.putString("appid", str);
        }
        obtainMessage.setData(bundle);
        f73936v.sendMessage(obtainMessage);
    }

    public static void l() {
        f73930p = "1".equals(b(f73917c, "0"));
    }

    private static void o() {
        HandlerThread handlerThread = new HandlerThread("SqlWorkThread");
        f73935u = handlerThread;
        handlerThread.start();
        f73936v = new a(f73935u.getLooper());
    }

    public String a(String str) {
        if (f()) {
            String str2 = f73939y;
            if (str2 != null) {
                return str2;
            }
            d(1, str);
            if (f73932r == null && f73939y != null) {
                e(f73929o, 1, str);
            }
            return f73939y;
        }
        return null;
    }

    public void d(int i2, String str) {
        synchronized (f73934t) {
            i(i2, str);
            long uptimeMillis = SystemClock.uptimeMillis();
            try {
                f73934t.wait(2000L);
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
            if (SystemClock.uptimeMillis() - uptimeMillis < 2000) {
                if (i2 == 0) {
                    f73938x = f73937w;
                    f73937w = null;
                } else if (i2 != 1) {
                    if (i2 == 2) {
                        String str2 = f73937w;
                        if (str2 != null) {
                            f73940z = str2;
                            f73937w = null;
                        }
                    } else if (i2 != 4) {
                    }
                    A = f73937w;
                    f73937w = null;
                } else {
                    String str3 = f73937w;
                    if (str3 != null) {
                        f73939y = str3;
                        f73937w = null;
                    }
                }
            }
        }
    }

    public boolean f() {
        return f73930p;
    }

    public String g() {
        if (f()) {
            String str = f73938x;
            if (str != null) {
                return str;
            }
            d(0, null);
            if (f73931q == null) {
                e(f73929o, 0, null);
            }
            return f73938x;
        }
        return null;
    }

    public String h(String str) {
        if (f()) {
            String str2 = f73940z;
            if (str2 != null) {
                return str2;
            }
            d(2, str);
            if (f73933s == null && f73940z != null) {
                e(f73929o, 2, str);
            }
            return f73940z;
        }
        return null;
    }

    public String j() {
        if (f()) {
            d(4, null);
            return A;
        }
        return null;
    }
}
