package cn.sharesdk.framework;

import android.text.TextUtils;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.MobSDK;
/* compiled from: CheckAppKey.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static volatile boolean f8724a;

    /* renamed from: b  reason: collision with root package name */
    public static String f8725b;

    public static boolean a() {
        String appkey = MobSDK.getAppkey();
        if (f8724a || TextUtils.isEmpty(appkey)) {
            return false;
        }
        if (TextUtils.isEmpty(f8725b)) {
            SSDKLog.b().a("CheckAppKeyAsynchronously verify the appkey", new Object[0]);
            new Thread() { // from class: cn.sharesdk.framework.a.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        b.a().b();
                    } catch (Throwable th) {
                        SSDKLog b4 = SSDKLog.b();
                        b4.a("CheckAppKeyAsyn verify the appkey catch " + th, new Object[0]);
                    }
                }
            }.start();
            return true;
        }
        SSDKLog.b().a("CheckAppKeyDetermine whether successAppKey is equal to mobsdk.getappkey", new Object[0]);
        return appkey.equals(f8725b);
    }
}
