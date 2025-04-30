package com.umeng.commonsdk.stateless;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.FileObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.pro.ai;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.UMServerURL;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.ULog;
import java.io.File;
import java.util.LinkedList;
/* compiled from: UMSLNetWorkSender.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final int f61254a = 273;

    /* renamed from: b  reason: collision with root package name */
    private static Context f61255b = null;

    /* renamed from: c  reason: collision with root package name */
    private static HandlerThread f61256c = null;

    /* renamed from: d  reason: collision with root package name */
    private static Handler f61257d = null;

    /* renamed from: f  reason: collision with root package name */
    private static final int f61259f = 274;

    /* renamed from: g  reason: collision with root package name */
    private static final int f61260g = 275;

    /* renamed from: h  reason: collision with root package name */
    private static final int f61261h = 512;

    /* renamed from: i  reason: collision with root package name */
    private static a f61262i;

    /* renamed from: j  reason: collision with root package name */
    private static IntentFilter f61263j;

    /* renamed from: k  reason: collision with root package name */
    private static boolean f61264k;

    /* renamed from: e  reason: collision with root package name */
    private static Object f61258e = new Object();

    /* renamed from: l  reason: collision with root package name */
    private static LinkedList<String> f61265l = new LinkedList<>();

    /* renamed from: m  reason: collision with root package name */
    private static BroadcastReceiver f61266m = new BroadcastReceiver() { // from class: com.umeng.commonsdk.stateless.b.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ConnectivityManager connectivityManager;
            if (context == null || intent == null) {
                return;
            }
            try {
                if (intent.getAction() != null && intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                    Context unused = b.f61255b = context.getApplicationContext();
                    if (b.f61255b != null && (connectivityManager = (ConnectivityManager) b.f61255b.getSystemService("connectivity")) != null) {
                        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                        if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                            boolean unused2 = b.f61264k = true;
                            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>网络可用： 触发2号数据仓信封消费动作。");
                            b.b(274);
                        } else {
                            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>网络断连： 2号数据仓");
                            boolean unused3 = b.f61264k = false;
                        }
                    }
                }
            } catch (Throwable th) {
                UMCrashManager.reportCrash(context, th);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UMSLNetWorkSender.java */
    /* loaded from: classes4.dex */
    public static class a extends FileObserver {
        public a(String str) {
            super(str);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i2, String str) {
            if ((i2 & 8) != 8) {
                return;
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> envelope file created >>> " + str);
            b.a(274);
        }
    }

    public b(Context context) {
        synchronized (f61258e) {
            if (context != null) {
                try {
                    Context applicationContext = context.getApplicationContext();
                    f61255b = applicationContext;
                    if (applicationContext != null && f61256c == null) {
                        HandlerThread handlerThread = new HandlerThread("SL-NetWorkSender");
                        f61256c = handlerThread;
                        handlerThread.start();
                        if (f61262i == null) {
                            String str = f61255b.getFilesDir() + File.separator + com.umeng.commonsdk.stateless.a.f61248f;
                            File file = new File(str);
                            if (!file.exists()) {
                                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 2号数据仓目录不存在，创建之。");
                                file.mkdir();
                            }
                            a aVar = new a(str);
                            f61262i = aVar;
                            aVar.startWatching();
                            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 2号数据仓File Monitor启动.");
                        }
                        if (f61257d == null) {
                            f61257d = new Handler(f61256c.getLooper()) { // from class: com.umeng.commonsdk.stateless.b.2
                                @Override // android.os.Handler
                                public void handleMessage(Message message) {
                                    int i2 = message.what;
                                    if (i2 != 512) {
                                        switch (i2) {
                                            case 273:
                                                b.m();
                                                return;
                                            case 274:
                                                b.o();
                                                return;
                                            case b.f61260g /* 275 */:
                                                b.q();
                                                break;
                                            default:
                                                return;
                                        }
                                    }
                                    b.r();
                                }
                            };
                        }
                        if (DeviceConfig.checkPermission(f61255b, "android.permission.ACCESS_NETWORK_STATE")) {
                            ULog.i("walle", "[stateless] begin register receiver");
                            if (f61263j == null) {
                                IntentFilter intentFilter = new IntentFilter();
                                f61263j = intentFilter;
                                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                                if (f61266m != null) {
                                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 2号数据仓：注册网络状态监听器。");
                                    f61255b.registerReceiver(f61266m, f61263j);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static void b(int i2) {
        Handler handler;
        try {
            if (!f61264k || (handler = f61257d) == null || handler.hasMessages(i2)) {
                return;
            }
            Message obtainMessage = f61257d.obtainMessage();
            obtainMessage.what = i2;
            f61257d.sendMessage(obtainMessage);
        } catch (Throwable th) {
            UMCrashManager.reportCrash(f61255b, th);
        }
    }

    public static void c() {
        b(f61260g);
    }

    public static void d() {
        b(512);
    }

    private static void j() {
        File[] c4 = d.c(f61255b);
        if (c4 != null) {
            if (f61265l.size() > 0) {
                f61265l.clear();
            }
            for (File file : c4) {
                f61265l.add(file.getAbsolutePath());
            }
        }
    }

    private static String k() {
        String str = null;
        try {
            String peek = f61265l.peek();
            if (peek != null) {
                try {
                    f61265l.removeFirst();
                    return peek;
                } catch (Throwable unused) {
                    str = peek;
                    return str;
                }
            }
            return peek;
        } catch (Throwable unused2) {
        }
    }

    private static void l() {
        String k4;
        if (f61265l.size() <= 0) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> todoList无内容，无需处理。");
            return;
        }
        do {
            if (Build.VERSION.SDK_INT >= 9) {
                k4 = f61265l.pollFirst();
            } else {
                k4 = k();
            }
            if (!TextUtils.isEmpty(k4)) {
                File file = new File(k4);
                if (!file.exists()) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 信封文件不存在，处理下一个文件。");
                    continue;
                } else {
                    c cVar = new c(f61255b);
                    byte[] bArr = null;
                    try {
                        bArr = d.a(k4);
                    } catch (Exception unused) {
                    }
                    String name = file.getName();
                    String substring = !TextUtils.isEmpty(name) ? name.substring(0, 1) : ai.aE;
                    String d4 = d.d(name);
                    String str = com.umeng.commonsdk.stateless.a.f61252j;
                    String c4 = d.c(d4);
                    if (com.umeng.commonsdk.vchannel.a.f61542c.equalsIgnoreCase(c4)) {
                        str = com.umeng.commonsdk.vchannel.a.f61540a;
                    }
                    if (cVar.a(bArr, c4, str, substring) && !file.delete()) {
                        file.delete();
                        continue;
                    }
                }
            }
        } while (k4 != null);
        f61265l.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void m() {
        File a4;
        if (!f61264k || f61255b == null) {
            return;
        }
        do {
            try {
                a4 = d.a(f61255b);
                if (a4 != null && a4.getParentFile() != null && !TextUtils.isEmpty(a4.getParentFile().getName())) {
                    c cVar = new c(f61255b);
                    String str = new String(Base64.decode(a4.getParentFile().getName(), 0));
                    if (!com.umeng.commonsdk.internal.a.f61126a.equalsIgnoreCase(str) && !com.umeng.commonsdk.internal.a.f61127b.equalsIgnoreCase(str) && !com.umeng.commonsdk.internal.a.A.equalsIgnoreCase(str)) {
                        ULog.i("walle", "[stateless] handleProcessNext, pathUrl is " + str);
                        byte[] bArr = null;
                        try {
                            bArr = d.a(a4.getAbsolutePath());
                        } catch (Exception unused) {
                        }
                        String str2 = com.umeng.commonsdk.vchannel.a.f61542c.equalsIgnoreCase(str) ? com.umeng.commonsdk.vchannel.a.f61540a : "";
                        String str3 = ai.aE;
                        if (UMServerURL.PATH_SHARE.equalsIgnoreCase(str)) {
                            str3 = ai.az;
                        }
                        if (UMServerURL.PATH_PUSH_LAUNCH.equalsIgnoreCase(str) || UMServerURL.PATH_PUSH_REGIST.equalsIgnoreCase(str) || UMServerURL.PATH_PUSH_LOG.equalsIgnoreCase(str)) {
                            str3 = ai.av;
                        }
                        if (cVar.a(bArr, str, str2, str3)) {
                            ULog.i("walle", "[stateless] Send envelope file success, delete it.");
                            File file = new File(a4.getAbsolutePath());
                            if (file.delete()) {
                                continue;
                            } else {
                                ULog.i("walle", "[stateless] Failed to delete already processed file. We try again after delete failed.");
                                file.delete();
                                continue;
                            }
                        } else {
                            ULog.i("walle", "[stateless] Send envelope file failed, abandon and wait next trigger!");
                            return;
                        }
                    }
                    new File(a4.getAbsolutePath()).delete();
                }
            } catch (Throwable th) {
                UMCrashManager.reportCrash(f61255b, th);
            }
        } while (a4 != null);
        n();
    }

    private static void n() {
        try {
            File file = new File(f61255b.getFilesDir() + File.separator + com.umeng.commonsdk.stateless.a.f61247e);
            if (file.exists() && file.isDirectory()) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 2号数据仓：删除stateless目录。");
                d.a(file);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o() {
        if (!f61264k || f61255b == null) {
            return;
        }
        j();
        l();
        c();
    }

    private static void p() {
        try {
            File file = new File(f61255b.getFilesDir() + File.separator + com.umeng.commonsdk.stateless.a.f61247e);
            if (file.exists() && file.isDirectory()) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>2号数据仓：检测到stateless目录。");
                b(273);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q() {
        p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void r() {
    }

    public static boolean a() {
        synchronized (f61258e) {
            return f61262i != null;
        }
    }

    public static void b() {
        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>信封构建成功： 触发2号数据仓信封消费动作。");
        b(274);
    }

    public static void a(int i2) {
        Handler handler;
        if (!f61264k || (handler = f61257d) == null) {
            return;
        }
        Message obtainMessage = handler.obtainMessage();
        obtainMessage.what = i2;
        f61257d.sendMessage(obtainMessage);
    }
}
