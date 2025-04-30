package cn.com.chinatelecom.account.api;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import cn.com.chinatelecom.account.api.a.b;
import cn.com.chinatelecom.account.api.e.d;
import cn.com.chinatelecom.account.api.e.g;
import java.security.interfaces.RSAPublicKey;
/* loaded from: classes2.dex */
public final class ClientUtils {
    private static final String TAG = "ClientUtils";
    public static final int TYPE_SDK_API = 0;
    public static final int TYPE_SDK_BIO = 2;
    public static final int TYPE_SDK_HY = 1;
    private static int sdkType;

    public static String enrdata(String str, String str2) {
        try {
            return b.a(str, (RSAPublicKey) b.a(str2));
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public static String getApiVersion() {
        return "3.0";
    }

    public static String getCurrentNetworkType(Context context) {
        return g.f(context);
    }

    public static boolean getHealthy(Context context) {
        try {
            return d.d(context);
        } catch (Throwable th) {
            String str = TAG;
            CtAuth.warn(str, "getHealthy error ：" + th.getMessage(), th);
            return false;
        }
    }

    public static boolean getMacData() {
        try {
            return d.c();
        } catch (Throwable th) {
            String str = TAG;
            CtAuth.warn(str, "getMacData error ：" + th.getMessage(), th);
            return false;
        }
    }

    public static String getMobileBrand() {
        return Build.BRAND;
    }

    public static String getModel() {
        return Build.MODEL;
    }

    public static boolean getNetSafe(Context context) {
        try {
            return d.c(context);
        } catch (Throwable th) {
            String str = TAG;
            CtAuth.warn(str, "getNetSafe error ：" + th.getMessage(), th);
            return false;
        }
    }

    public static String getOnlineType(Context context) {
        return g.g(context);
    }

    public static String getOperatorType(Context context) {
        return g.h(context);
    }

    public static String getOs() {
        return getMobileBrand() + "-" + getModel() + "-A:" + Build.VERSION.RELEASE;
    }

    public static String getPID() {
        try {
            String str = Thread.currentThread().getId() + "" + Process.myPid();
            return str.length() > 6 ? str.substring(0, 6) : "ctacco";
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public static int getSdkType() {
        return sdkType;
    }

    public static String getSdkVersion() {
        int i2 = sdkType;
        return i2 == 1 ? "SDK-HY-v3.8.12" : i2 == 2 ? "SDK-BIOM-v3.8.12" : "SDK-API-v3.8.12";
    }

    public static boolean getTimePass(Context context) {
        try {
            if (!d.b(context)) {
                if (!d.d()) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            String str = TAG;
            CtAuth.warn(str, "getTimePass error ：" + th.getMessage(), th);
            return false;
        }
    }

    public static long getTp() {
        return System.currentTimeMillis();
    }

    public static boolean isJY() {
        return true;
    }

    public static boolean objChange(Object obj, String str) {
        try {
            return d.a(obj, str);
        } catch (Throwable th) {
            String str2 = TAG;
            CtAuth.warn(str2, "objChange error ：" + th.getMessage(), th);
            return false;
        }
    }

    public static void setSdkType(int i2) {
        sdkType = i2;
    }

    public static String strBuf() {
        try {
            return d.b().toString();
        } catch (Throwable th) {
            String str = TAG;
            CtAuth.warn(str, "strBuf error ：" + th.getMessage(), th);
            return "";
        }
    }
}
