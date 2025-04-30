package com.uc.crashsdk;

import android.os.Bundle;
import android.webkit.ValueCallback;
import com.uc.crashsdk.export.ICrashClient;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ProGuard */
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static ICrashClient f60254a = null;

    /* renamed from: b  reason: collision with root package name */
    private static int f60255b = 3;

    /* renamed from: c  reason: collision with root package name */
    private static volatile List<ValueCallback<Bundle>> f60256c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile List<ValueCallback<Bundle>> f60257d;

    /* renamed from: e  reason: collision with root package name */
    private static volatile List<ValueCallback<Bundle>> f60258e;

    /* renamed from: f  reason: collision with root package name */
    private static volatile List<ValueCallback<Bundle>> f60259f;

    /* renamed from: g  reason: collision with root package name */
    private static final Object f60260g = new Object();

    public static void a(ICrashClient iCrashClient) {
        f60254a = iCrashClient;
    }

    public static boolean b(ValueCallback<Bundle> valueCallback) {
        if (f60257d == null) {
            synchronized (f60260g) {
                if (f60257d == null) {
                    f60257d = new ArrayList();
                }
            }
        }
        synchronized (f60257d) {
            if (f60257d.size() >= f60255b) {
                return false;
            }
            f60257d.add(valueCallback);
            return true;
        }
    }

    public static boolean c(ValueCallback<Bundle> valueCallback) {
        if (f60258e == null) {
            synchronized (f60260g) {
                if (f60258e == null) {
                    f60258e = new ArrayList();
                }
            }
        }
        synchronized (f60258e) {
            if (f60258e.size() >= f60255b) {
                return false;
            }
            f60258e.add(valueCallback);
            return true;
        }
    }

    public static boolean d(ValueCallback<Bundle> valueCallback) {
        if (f60259f == null) {
            synchronized (f60260g) {
                if (f60259f == null) {
                    f60259f = new ArrayList();
                }
            }
        }
        synchronized (f60259f) {
            if (f60259f.size() >= f60255b) {
                return false;
            }
            f60259f.add(valueCallback);
            return true;
        }
    }

    public static void a(String str, String str2, String str3) {
        if (com.uc.crashsdk.a.g.a(str)) {
            com.uc.crashsdk.a.a.a("crashsdk", "onLogGenerated file name is null!", null);
            return;
        }
        boolean equals = e.h().equals(str2);
        if (f60254a != null) {
            File file = new File(str);
            try {
                if (equals) {
                    f60254a.onLogGenerated(file, str3);
                } else {
                    f60254a.onClientProcessLogGenerated(str2, file, str3);
                }
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
        }
        List<ValueCallback<Bundle>> list = f60256c;
        if (!equals) {
            list = f60257d;
        }
        if (list != null) {
            synchronized (list) {
                for (ValueCallback<Bundle> valueCallback : list) {
                    Bundle bundle = new Bundle();
                    bundle.putString("filePathName", str);
                    if (!equals) {
                        bundle.putString("processName", str2);
                    }
                    bundle.putString("logType", str3);
                    valueCallback.onReceiveValue(bundle);
                }
            }
        }
    }

    public static File a(File file) {
        ICrashClient iCrashClient = f60254a;
        if (iCrashClient != null) {
            try {
                return iCrashClient.onBeforeUploadLog(file);
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
        }
        return file;
    }

    public static void a(boolean z3) {
        ICrashClient iCrashClient = f60254a;
        if (iCrashClient != null) {
            try {
                iCrashClient.onCrashRestarting(z3);
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
        }
        if (f60258e != null) {
            synchronized (f60258e) {
                for (ValueCallback<Bundle> valueCallback : f60258e) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("isJava", z3);
                    valueCallback.onReceiveValue(bundle);
                }
            }
        }
    }

    public static void a(String str, int i2, int i4) {
        ICrashClient iCrashClient = f60254a;
        if (iCrashClient != null) {
            iCrashClient.onAddCrashStats(str, i2, i4);
        }
        if (f60259f != null) {
            synchronized (f60259f) {
                for (ValueCallback<Bundle> valueCallback : f60259f) {
                    Bundle bundle = new Bundle();
                    bundle.putString("processName", str);
                    bundle.putInt("key", i2);
                    bundle.putInt("count", i4);
                    valueCallback.onReceiveValue(bundle);
                }
            }
        }
    }

    public static String a(String str, boolean z3) {
        ICrashClient iCrashClient = f60254a;
        return iCrashClient != null ? iCrashClient.onGetCallbackInfo(str, z3) : "";
    }

    public static boolean a(ValueCallback<Bundle> valueCallback) {
        if (f60256c == null) {
            synchronized (f60260g) {
                if (f60256c == null) {
                    f60256c = new ArrayList();
                }
            }
        }
        synchronized (f60256c) {
            if (f60256c.size() >= f60255b) {
                return false;
            }
            f60256c.add(valueCallback);
            return true;
        }
    }
}
