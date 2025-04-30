package com.umeng.commonsdk;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.utils.onMessageSendListener;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class UMConfigureImpl {

    /* renamed from: a  reason: collision with root package name */
    private static String f60981a = "delayed_transmission_flag_new";

    /* renamed from: e  reason: collision with root package name */
    private static final int f60985e = 1000;

    /* renamed from: f  reason: collision with root package name */
    private static ScheduledExecutorService f60986f;

    /* renamed from: g  reason: collision with root package name */
    private static Context f60987g;

    /* renamed from: b  reason: collision with root package name */
    private static CopyOnWriteArrayList<onMessageSendListener> f60982b = new CopyOnWriteArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private static int f60983c = 0;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f60984d = false;

    /* renamed from: h  reason: collision with root package name */
    private static int f60988h = 0;

    /* renamed from: i  reason: collision with root package name */
    private static Runnable f60989i = new Runnable() { // from class: com.umeng.commonsdk.UMConfigureImpl.1
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (UMConfigureImpl.f60983c == 0 || UMConfigureImpl.f60988h >= 10) {
                    if (!UMConfigureImpl.f60984d) {
                        boolean unused = UMConfigureImpl.f60984d = true;
                        UMConfigureImpl.b(UMConfigureImpl.f60987g);
                    }
                    if (UMConfigureImpl.f60986f != null) {
                        UMConfigureImpl.f60986f.shutdown();
                        ScheduledExecutorService unused2 = UMConfigureImpl.f60986f = null;
                    }
                }
                UMConfigureImpl.f();
            } catch (Exception unused3) {
            }
        }
    };

    static /* synthetic */ int f() {
        int i2 = f60988h;
        f60988h = i2 + 1;
        return i2;
    }

    public static void init(Context context) {
        if (context == null) {
            return;
        }
        f60987g = context;
        try {
            if (f60983c >= 1) {
                if (!d(context)) {
                    UMEnvelopeBuild.setTransmissionSendFlag(false);
                    c(context);
                    if (f60986f == null) {
                        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1);
                        f60986f = newScheduledThreadPool;
                        newScheduledThreadPool.scheduleAtFixedRate(f60989i, 0L, 100L, TimeUnit.MILLISECONDS);
                    }
                } else {
                    UMEnvelopeBuild.setTransmissionSendFlag(true);
                }
            } else {
                UMEnvelopeBuild.setTransmissionSendFlag(true);
            }
        } catch (Exception unused) {
        }
    }

    public static synchronized void registerInterruptFlag() {
        synchronized (UMConfigureImpl.class) {
            try {
                f60983c++;
            } catch (Exception unused) {
            }
        }
    }

    public static synchronized void registerMessageSendListener(onMessageSendListener onmessagesendlistener) {
        CopyOnWriteArrayList<onMessageSendListener> copyOnWriteArrayList;
        synchronized (UMConfigureImpl.class) {
            try {
                CopyOnWriteArrayList<onMessageSendListener> copyOnWriteArrayList2 = f60982b;
                if (copyOnWriteArrayList2 != null) {
                    copyOnWriteArrayList2.add(onmessagesendlistener);
                }
                if (UMEnvelopeBuild.getTransmissionSendFlag() && (copyOnWriteArrayList = f60982b) != null && copyOnWriteArrayList.size() > 0) {
                    Iterator<onMessageSendListener> it2 = f60982b.iterator();
                    while (it2.hasNext()) {
                        it2.next().onMessageSend();
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public static synchronized void removeInterruptFlag() {
        synchronized (UMConfigureImpl.class) {
            try {
                f60983c--;
            } catch (Exception unused) {
            }
        }
    }

    public static synchronized void removeMessageSendListener(onMessageSendListener onmessagesendlistener) {
        synchronized (UMConfigureImpl.class) {
            try {
                CopyOnWriteArrayList<onMessageSendListener> copyOnWriteArrayList = f60982b;
                if (copyOnWriteArrayList != null) {
                    copyOnWriteArrayList.remove(onmessagesendlistener);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void b(Context context) {
        synchronized (UMConfigureImpl.class) {
            try {
                UMEnvelopeBuild.setTransmissionSendFlag(true);
                CopyOnWriteArrayList<onMessageSendListener> copyOnWriteArrayList = f60982b;
                if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
                    Iterator<onMessageSendListener> it2 = f60982b.iterator();
                    while (it2.hasNext()) {
                        it2.next().onMessageSend();
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    private static void c(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(f60981a, 0);
            if (sharedPreferences != null) {
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putBoolean(f60981a, true);
                edit.commit();
            }
        } catch (Throwable unused) {
        }
    }

    private static boolean d(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(f60981a, 0);
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean(f60981a, false);
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }
}
