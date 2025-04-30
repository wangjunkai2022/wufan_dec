package com.mob;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.join.mgps.Util.g0;
import com.mob.commons.InternationalDomain;
import com.mob.commons.MobProduct;
import com.mob.commons.n;
import com.mob.commons.o;
import com.mob.commons.q;
import com.mob.commons.r;
import com.mob.commons.s;
import com.mob.tools.MobLog;
import com.mob.tools.proguard.PublicMemberKeeper;
import com.mob.tools.utils.ReflectHelper;
import com.mob.tools.utils.UIHandler;
/* loaded from: classes.dex */
public class MobSDK implements PublicMemberKeeper {
    public static final int CHANNEL_APICLOUD = 5;
    public static final int CHANNEL_COCOS = 1;
    public static final int CHANNEL_FLUTTER = 4;
    public static final int CHANNEL_JS = 3;
    public static final int CHANNEL_NATIVE = 0;
    public static final int CHANNEL_QUICKSDK = 6;
    public static final int CHANNEL_UNIAPP = 7;
    public static final int CHANNEL_UNITY = 2;
    public static final int SDK_VERSION_CODE;
    public static final String SDK_VERSION_NAME;

    /* renamed from: a  reason: collision with root package name */
    private static volatile Context f52700a;

    static {
        int i2;
        String str = "1.0.0";
        try {
            str = "2022-12-15".replace("-", g0.f27568a);
            i2 = Integer.parseInt("2022-12-15".replace("-", ""));
        } catch (Throwable unused) {
            i2 = 1;
        }
        SDK_VERSION_CODE = i2;
        SDK_VERSION_NAME = str;
    }

    @Deprecated
    public static void canIContinueBusiness(final MobProduct mobProduct, Object obj, final Object obj2) {
        if (obj2 != null) {
            new Thread(new Runnable() { // from class: com.mob.MobSDK.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (MobProduct.this == null) {
                            ReflectHelper.invokeInstanceMethod(obj2, "onFailure", new Throwable("MobProduct can not be null"));
                        } else {
                            ReflectHelper.invokeInstanceMethod(obj2, "onComplete", Boolean.TRUE);
                        }
                    } catch (Throwable th) {
                        MobLog.getInstance().e(th);
                        try {
                            ReflectHelper.invokeInstanceMethod(obj2, "onFailure", th);
                        } catch (Throwable unused) {
                        }
                    }
                }
            }).start();
            return;
        }
        throw new IllegalArgumentException("callback can not be null");
    }

    public static boolean checkForceHttps() {
        return n.f53085d;
    }

    @Deprecated
    public static String checkRequestUrl(String str) {
        return r.a(str);
    }

    public static boolean checkV6() {
        return n.f53087f;
    }

    @Deprecated
    public static String dynamicModifyUrl(String str) {
        return r.a(str);
    }

    public static String getAppSecret() {
        return n.f53083b;
    }

    public static String getAppkey() {
        if (TextUtils.isEmpty(n.f53082a) && f52700a != null) {
            n.a(f52700a);
        }
        return n.f53082a;
    }

    public static Context getContext() {
        if (f52700a == null) {
            try {
                Context a4 = r.a();
                if (a4 != null) {
                    init(a4);
                }
            } catch (Throwable unused) {
            }
        }
        return f52700a;
    }

    public static Context getContextSafely() {
        return f52700a;
    }

    public static boolean getDefaultPrivacy() {
        return n.f53086e;
    }

    public static InternationalDomain getDomain() {
        return n.f53084c == null ? InternationalDomain.DEFAULT : n.f53084c;
    }

    public static int getPrivacyGrantedStatus() {
        return s.c();
    }

    public static synchronized void init(Context context) {
        synchronized (MobSDK.class) {
            init(context, null, null);
        }
    }

    public static final int isAuth() {
        return q.c();
    }

    public static final boolean isForb() {
        return q.e();
    }

    public static final boolean isGppVer() {
        return n.f53089h;
    }

    public static final boolean isMob() {
        return q.d();
    }

    public static void setChannel(MobProduct mobProduct, int i2) {
        o.a().a(mobProduct, i2);
    }

    public static void submitPolicyGrantResult(boolean z3) {
        s.b(z3);
    }

    @Deprecated
    public static void submitPolicyGrantResult(boolean z3, final OperationCallback<Void> operationCallback) {
        s.b(z3);
        if (operationCallback != null) {
            UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: com.mob.MobSDK.1
                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    OperationCallback operationCallback2 = OperationCallback.this;
                    if (operationCallback2 != null) {
                        operationCallback2.onComplete(null);
                        return false;
                    }
                    return false;
                }
            });
        }
    }

    public static synchronized void init(Context context, String str) {
        synchronized (MobSDK.class) {
            init(context, str, null);
        }
    }

    public static synchronized void init(Context context, String str, String str2) {
        synchronized (MobSDK.class) {
            if (context == null) {
                return;
            }
            if (f52700a == null) {
                f52700a = context.getApplicationContext();
                n.f53082a = str;
                n.f53083b = str2;
                q.a();
            } else if (!TextUtils.isEmpty(str) && TextUtils.isEmpty(n.f53082a)) {
                n.f53082a = str;
                n.f53083b = str2;
                q.b();
            }
        }
    }
}
