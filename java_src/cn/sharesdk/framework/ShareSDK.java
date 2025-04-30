package cn.sharesdk.framework;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.sharesdk.framework.loopshare.LoopSharePasswordListener;
import cn.sharesdk.framework.loopshare.LoopShareResultListener;
import cn.sharesdk.framework.loopshare.MoblinkActionListener;
import cn.sharesdk.framework.loopshare.watermark.ReadQrImageListener;
import cn.sharesdk.framework.loopshare.watermark.WaterMarkListener;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.MobSDK;
import com.mob.commons.ForbThrowable;
import com.mob.commons.dialog.PolicyThrowable;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes2.dex */
public class ShareSDK {
    public static final String SDK_TAG = "SHARESDK";
    public static final int SDK_VERSION_CODE;
    public static final String SDK_VERSION_NAME = "3.10.1";
    public static final String SHARESDK_MOBLINK_RESTORE = "sharesdk_moblink_restore";

    /* renamed from: a  reason: collision with root package name */
    private static i f8713a = null;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f8714b = true;

    /* renamed from: c  reason: collision with root package name */
    private static String f8715c;

    /* renamed from: d  reason: collision with root package name */
    private static HashMap<String, Object> f8716d;

    /* renamed from: e  reason: collision with root package name */
    private static List<HashMap<String, Object>> f8717e;

    /* renamed from: f  reason: collision with root package name */
    private static int f8718f;

    static {
        int i2 = 0;
        for (String str : SDK_VERSION_NAME.split("\\.")) {
            i2 = (i2 * 100) + Integer.parseInt(str);
        }
        SDK_VERSION_CODE = i2;
        try {
            k();
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK static main catch ", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, String str2) {
        try {
            k();
            i iVar = f8713a;
            if (iVar != null) {
                iVar.a(str, str2);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK copyDevinfo ", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b() throws Throwable {
        k();
        i iVar = f8713a;
        if (iVar != null) {
            return iVar.h();
        }
        return false;
    }

    public static void closeDebug() {
        f8714b = false;
    }

    public static void deleteCache() {
        try {
            k();
            i iVar = f8713a;
            if (iVar != null) {
                iVar.i();
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK deleteCache catch ", new Object[0]);
        }
    }

    public static Activity getAuthActivity() {
        try {
            k();
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK getAuthActivity catch ", new Object[0]);
        }
        i iVar = f8713a;
        if (iVar != null) {
            return iVar.a();
        }
        return null;
    }

    @Deprecated
    public static HashMap<String, Object> getCustomDataFromLoopShare() {
        return null;
    }

    public static String getDevinfo(String str, String str2) {
        try {
            k();
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK getDevinfo catch ", new Object[0]);
        }
        i iVar = f8713a;
        if (iVar != null) {
            return iVar.b(str, str2);
        }
        return null;
    }

    public static boolean getEnableAuthTag() {
        try {
            k();
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK getEnableAuthTag catch", new Object[0]);
        }
        i iVar = f8713a;
        if (iVar != null) {
            return iVar.c();
        }
        return false;
    }

    @Deprecated
    public static void getFirstQrImage(Context context, ReadQrImageListener readQrImageListener) {
    }

    public static Platform getPlatform(String str) {
        try {
            k();
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK ensureInit getPlatform catch", new Object[0]);
        }
        i iVar = f8713a;
        if (iVar != null) {
            return iVar.a(str);
        }
        return null;
    }

    public static Platform[] getPlatformList() {
        try {
            k();
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK getPlatformList catch ", new Object[0]);
        }
        i iVar = f8713a;
        if (iVar != null) {
            return iVar.e();
        }
        return null;
    }

    @Deprecated
    public static Bitmap getQRCodeBitmap(String str, int i2, int i4) throws Throwable {
        return null;
    }

    public static <T extends Service> T getService(Class<T> cls) throws Throwable {
        k();
        i iVar = f8713a;
        if (iVar != null) {
            return (T) iVar.c(cls);
        }
        return null;
    }

    static /* synthetic */ int h() {
        int i2 = f8718f;
        f8718f = i2 + 1;
        return i2;
    }

    public static boolean isDebug() {
        return f8714b;
    }

    public static boolean isFBInstagram() {
        try {
            k();
        } catch (Throwable th) {
            SSDKLog b4 = SSDKLog.b();
            b4.a("ShareSDK isFBInstagram catch: " + th, new Object[0]);
        }
        i iVar = f8713a;
        if (iVar != null) {
            return iVar.b();
        }
        return false;
    }

    public static boolean isRemoveCookieOnAuthorize() {
        try {
            k();
        } catch (Throwable th) {
            SSDKLog b4 = SSDKLog.b();
            b4.a("ShareSDK isRemoveCookieOnAuthorize catch: " + th, new Object[0]);
        }
        i iVar = f8713a;
        if (iVar != null) {
            return iVar.f();
        }
        return false;
    }

    private static boolean j() throws Throwable {
        if (!MobSDK.isForb()) {
            int isAuth = MobSDK.isAuth();
            if (isAuth == 1 || isAuth == 2) {
                return true;
            }
            throw new PolicyThrowable();
        }
        throw new ForbThrowable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void k() throws Throwable {
        synchronized (ShareSDK.class) {
            j();
            if (f8713a == null) {
                i iVar = new i();
                iVar.d();
                f8713a = iVar;
            }
        }
    }

    private static void l() {
        new Thread(new Runnable() { // from class: cn.sharesdk.framework.ShareSDK.1
            @Override // java.lang.Runnable
            public void run() {
                Looper.prepare();
                final Handler handler = new Handler(Looper.myLooper()) { // from class: cn.sharesdk.framework.ShareSDK.1.1
                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        super.handleMessage(message);
                        if (message == null || message.what != 3) {
                            return;
                        }
                        try {
                            ShareSDK.k();
                            if (ShareSDK.f8713a != null) {
                                if (ShareSDK.f8716d == null || ShareSDK.f8716d.size() <= 0) {
                                    ShareSDK.f8713a.a(ShareSDK.f8717e);
                                } else {
                                    ShareSDK.f8713a.a(ShareSDK.f8715c, ShareSDK.f8716d);
                                }
                            }
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                };
                handler.post(new Runnable() { // from class: cn.sharesdk.framework.ShareSDK.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        int isAuth = MobSDK.isAuth();
                        if (isAuth == 0) {
                            ShareSDK.h();
                            if (ShareSDK.f8718f == 90) {
                                handler.removeCallbacks(this);
                                return;
                            }
                            SSDKLog.b().d("ShareSDK , Privacy Agreement is not agree, Please agree to the privacy agreement first ", new Object[0]);
                            handler.postDelayed(this, 500L);
                        } else if (isAuth != 1 && isAuth != 2) {
                            handler.removeCallbacks(this);
                        } else if (MobSDK.isForb()) {
                        } else {
                            handler.removeCallbacks(this);
                            Message obtain = Message.obtain();
                            obtain.what = 3;
                            handler.sendMessage(obtain);
                        }
                    }
                });
                Looper.loop();
            }
        }).start();
    }

    public static void logApiEvent(String str, int i2) {
        try {
            k();
            i iVar = f8713a;
            if (iVar != null) {
                iVar.a(str, i2);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK logApiEvent catch ", new Object[0]);
        }
    }

    public static void logDemoEvent(int i2, Platform platform) {
        try {
            k();
            i iVar = f8713a;
            if (iVar != null) {
                iVar.a(i2, platform);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK logDemoEvent catch ", new Object[0]);
        }
    }

    @Deprecated
    public static void makeVideoWaterMark(String str, String str2, String str3, String str4, WaterMarkListener waterMarkListener) {
    }

    @Deprecated
    public static void mobLinkGetMobID(HashMap<String, Object> hashMap, MoblinkActionListener moblinkActionListener) {
    }

    public static String platformIdToName(int i2) {
        try {
            k();
        } catch (Throwable th) {
            SSDKLog b4 = SSDKLog.b();
            b4.a("ShareSDK platformIdToName catch: " + th, new Object[0]);
        }
        i iVar = f8713a;
        if (iVar != null) {
            return iVar.c(i2);
        }
        return null;
    }

    public static int platformNameToId(String str) {
        try {
            k();
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK platformNameToId catch ", new Object[0]);
        }
        i iVar = f8713a;
        if (iVar != null) {
            return iVar.b(str);
        }
        return -1;
    }

    @Deprecated
    public static void prepareLoopShare(LoopShareResultListener loopShareResultListener) {
    }

    @Deprecated
    public static void preparePassWord(HashMap<String, Object> hashMap, String str, LoopSharePasswordListener loopSharePasswordListener) {
    }

    @Deprecated
    public static void readPassWord(boolean z3, LoopSharePasswordListener loopSharePasswordListener) {
    }

    public static void registerPlatform(Class<? extends CustomPlatform> cls) throws Throwable {
        k();
        i iVar = f8713a;
        if (iVar != null) {
            iVar.d(cls);
        }
    }

    public static void registerService(Class<? extends Service> cls) {
        try {
            k();
            i iVar = f8713a;
            if (iVar != null) {
                iVar.a(cls);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK  registerService catch ", new Object[0]);
        }
    }

    public static void removeCookieOnAuthorize(boolean z3) {
        try {
            k();
            i iVar = f8713a;
            if (iVar != null) {
                iVar.c(z3);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK removeCookieOnAuthorize catch ", new Object[0]);
        }
    }

    public static void setActivity(Activity activity) {
        try {
            k();
            i iVar = f8713a;
            if (iVar != null) {
                iVar.a(activity);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK setActivity is catch ", new Object[0]);
        }
    }

    public static void setCloseGppService(boolean z3) {
        try {
            cn.sharesdk.framework.a.a.e.a().b(z3);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
    }

    public static void setConnTimeout(int i2) {
        try {
            k();
            i iVar = f8713a;
            if (iVar != null) {
                iVar.a(i2);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK setConnTimeout catch", new Object[0]);
        }
    }

    public static void setEnableAuthTag(boolean z3) {
        try {
            k();
            i iVar = f8713a;
            if (iVar != null) {
                iVar.b(z3);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK setEnableAuthTag catch", new Object[0]);
        }
    }

    public static void setFBInstagram(boolean z3) {
        try {
            k();
            i iVar = f8713a;
            if (iVar != null) {
                iVar.a(z3);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK setFBInstagram catch ", new Object[0]);
        }
    }

    public static void setPlatformDevInfo(String str, HashMap<String, Object> hashMap) {
        try {
            f8715c = str;
            f8716d = hashMap;
            if (!MobSDK.isForb() && MobSDK.isAuth() == 1) {
                k();
                i iVar = f8713a;
                if (iVar != null) {
                    iVar.a(str, hashMap);
                }
            } else {
                l();
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK setPlatformDevInfo catch ", new Object[0]);
        }
    }

    public static void setPlatformDevInfos(List<HashMap<String, Object>> list) {
        try {
            f8717e = list;
            if (!MobSDK.isForb() && MobSDK.isAuth() == 1) {
                k();
                i iVar = f8713a;
                if (iVar != null) {
                    iVar.a(f8717e);
                }
            } else {
                l();
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK setPlatformDevInfo catch ", new Object[0]);
        }
    }

    public static void setReadTimeout(int i2) {
        try {
            k();
            i iVar = f8713a;
            if (iVar != null) {
                iVar.b(i2);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK setReadTimeout catch", new Object[0]);
        }
    }

    public static void unregisterPlatform(Class<? extends CustomPlatform> cls) throws Throwable {
        k();
        i iVar = f8713a;
        if (iVar != null) {
            iVar.e(cls);
        }
    }

    public static void unregisterService(Class<? extends Service> cls) {
        try {
            k();
            i iVar = f8713a;
            if (iVar != null) {
                iVar.b(cls);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK  unregisterService catch ", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i2, int i4) {
        try {
            k();
            i iVar = f8713a;
            if (iVar != null) {
                iVar.a(i2, i4);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK copyNetworkDevinfo catch ", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(int i2, String str) {
        try {
            k();
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK getNetworkDevinfo catch ", new Object[0]);
        }
        i iVar = f8713a;
        if (iVar != null) {
            return iVar.a(i2, str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        try {
            k();
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK isNetworkDevinfoRequested is catch ", new Object[0]);
        }
        i iVar = f8713a;
        if (iVar != null) {
            return iVar.g();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, boolean z3, int i2, String str2) {
        try {
            k();
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK getShortLink catch ", new Object[0]);
        }
        i iVar = f8713a;
        if (iVar != null) {
            return iVar.a(str, z3, i2, str2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        try {
            k();
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK uploadImageToFileServer catch: ", new Object[0]);
        }
        i iVar = f8713a;
        if (iVar != null) {
            return iVar.c(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Bitmap bitmap) {
        try {
            k();
        } catch (Throwable th) {
            SSDKLog.b().a(th, "ShareSDK uploadImageToFileServer catch ", new Object[0]);
        }
        i iVar = f8713a;
        if (iVar != null) {
            return iVar.a(bitmap);
        }
        return null;
    }
}
