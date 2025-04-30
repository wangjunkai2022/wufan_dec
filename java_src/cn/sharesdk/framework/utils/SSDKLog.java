package cn.sharesdk.framework.utils;

import cn.sharesdk.framework.ShareSDK;
import com.mob.commons.logcollector.DefaultLogsCollector;
import com.mob.tools.log.NLog;
/* loaded from: classes2.dex */
public class SSDKLog {

    /* renamed from: a  reason: collision with root package name */
    private static SSDKLog f8900a;

    /* renamed from: b  reason: collision with root package name */
    private static NLog f8901b;

    /* renamed from: c  reason: collision with root package name */
    private final int f8902c = -1;

    private SSDKLog() {
        a();
    }

    public static NLog a() {
        f8901b = NLog.getInstance(ShareSDK.SDK_TAG);
        DefaultLogsCollector.get().addSDK(ShareSDK.SDK_TAG, ShareSDK.SDK_VERSION_CODE);
        return f8901b;
    }

    private boolean a(NLog nLog) {
        return nLog != null;
    }

    public static SSDKLog b() {
        if (f8900a == null) {
            f8900a = new SSDKLog();
        }
        return f8900a;
    }

    public final int c(Throwable th) {
        try {
            if (a(f8901b)) {
                return f8901b.log(4, th);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int d(Throwable th) {
        try {
            if (a(f8901b)) {
                return f8901b.log(6, th);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int c(Object obj, Object... objArr) {
        try {
            if (a(f8901b)) {
                return f8901b.log(4, obj, objArr);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int d(Object obj, Object... objArr) {
        try {
            if (a(f8901b)) {
                return f8901b.log(6, obj, objArr);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int a(Throwable th) {
        try {
            if (a(f8901b)) {
                return f8901b.log(3, th);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int b(Throwable th) {
        try {
            if (a(f8901b)) {
                return f8901b.log(5, th);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int a(Object obj, Object... objArr) {
        try {
            if (a(f8901b)) {
                return f8901b.log(3, obj, objArr);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int b(Object obj, Object... objArr) {
        try {
            if (a(f8901b)) {
                return f8901b.log(5, obj, objArr);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int a(Throwable th, Object obj, Object... objArr) {
        try {
            if (a(f8901b)) {
                return f8901b.log(3, th, obj, objArr);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int b(Throwable th, Object obj, Object... objArr) {
        try {
            if (a(f8901b)) {
                return f8901b.log(5, th, obj, objArr);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int a(String str) {
        try {
            if (a(f8901b)) {
                return f8901b.log(5, str, new Object[0]);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int b(String str) {
        try {
            if (a(f8901b)) {
                return f8901b.log(4, str, new Object[0]);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }
}
