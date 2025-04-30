package com.switfpass.pay.handle;

import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f58858a = "com.switfpass.pay.handle.a";

    /* renamed from: b  reason: collision with root package name */
    public static HashMap f58859b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public static final int f58860c = 0;

    /* renamed from: d  reason: collision with root package name */
    public static final int f58861d = 6;

    /* renamed from: e  reason: collision with root package name */
    public static final int f58862e = 7;

    /* renamed from: f  reason: collision with root package name */
    public static final int f58863f = 8;

    /* renamed from: g  reason: collision with root package name */
    public static final int f58864g = 1;

    /* renamed from: h  reason: collision with root package name */
    public static final int f58865h = 0;

    /* renamed from: i  reason: collision with root package name */
    public static final int f58866i = 2;

    /* renamed from: j  reason: collision with root package name */
    public static final int f58867j = 3;

    /* renamed from: k  reason: collision with root package name */
    public static final int f58868k = 4;

    /* renamed from: l  reason: collision with root package name */
    public static final int f58869l = 5;

    /* renamed from: m  reason: collision with root package name */
    public static final int f58870m = -1;

    /* renamed from: n  reason: collision with root package name */
    public static final int f58871n = 0;

    /* renamed from: o  reason: collision with root package name */
    public static final int f58872o = -1;

    /* renamed from: p  reason: collision with root package name */
    public static final int f58873p = 9;

    public static void a(int i2, int i4) {
        if (f58859b == null) {
            f58859b = new HashMap();
        }
        synchronized (f58859b) {
            ArrayList arrayList = (ArrayList) f58859b.get(Integer.valueOf(i2));
            if (arrayList != null) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    Handler handler = (Handler) it2.next();
                    if (handler != null) {
                        handler.sendEmptyMessage(i4);
                    }
                }
            }
        }
    }

    public static void b(int i2, int i4, Object obj) {
        if (f58859b == null) {
            f58859b = new HashMap();
        }
        synchronized (f58859b) {
            ArrayList arrayList = (ArrayList) f58859b.get(Integer.valueOf(i2));
            if (arrayList != null) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    Handler handler = (Handler) it2.next();
                    if (handler != null) {
                        handler.sendMessage(handler.obtainMessage(i4, obj));
                    }
                }
            }
        }
    }

    public static void c(int i2, Message message) {
        if (f58859b == null) {
            f58859b = new HashMap();
        }
        synchronized (f58859b) {
            ArrayList arrayList = (ArrayList) f58859b.get(Integer.valueOf(i2));
            if (arrayList != null) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    Handler handler = (Handler) it2.next();
                    if (handler != null) {
                        try {
                            handler.sendMessage(handler.obtainMessage(message.what, message.arg1, message.arg2, message.obj));
                        } catch (Exception e4) {
                            e4.toString();
                        }
                    }
                }
            }
        }
    }

    public static void d(int i2, Handler handler) {
        if (f58859b == null) {
            f58859b = new HashMap();
        }
        ArrayList arrayList = (ArrayList) f58859b.get(Integer.valueOf(i2));
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        arrayList.add(handler);
        f58859b.put(Integer.valueOf(i2), arrayList);
    }

    public static void e(int i2, Handler handler) {
        if (f58859b == null) {
            f58859b = new HashMap();
        }
        ArrayList arrayList = (ArrayList) f58859b.get(Integer.valueOf(i2));
        if (arrayList != null) {
            arrayList.remove(handler);
            if (arrayList.size() <= 0) {
                f58859b.remove(Integer.valueOf(i2));
            }
        }
    }
}
