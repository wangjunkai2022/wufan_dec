package com.umeng.commonsdk;

import android.app.Application;
import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.Toast;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.pro.am;
import com.umeng.analytics.pro.k;
import com.umeng.analytics.pro.z;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.debug.UMLogCommon;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.listener.OnGetOaidListener;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.SdkVersion;
import com.umeng.commonsdk.statistics.b;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.utils.UMUtils;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class UMConfigure {
    public static final int DEVICE_TYPE_BOX = 2;
    public static final int DEVICE_TYPE_PHONE = 1;
    private static final String KEY_FILE_NAME_APPKEY = "APPKEY";
    private static final String KEY_FILE_NAME_LOG = "LOG";
    private static final String KEY_METHOD_NAME_PUSH_SETCHANNEL = "setMessageChannel";
    private static final String KEY_METHOD_NAME_PUSH_SET_SECRET = "setSecret";
    private static final String KEY_METHOD_NAME_SETAPPKEY = "setAppkey";
    private static final String KEY_METHOD_NAME_SETCHANNEL = "setChannel";
    private static final String KEY_METHOD_NAME_SETDEBUGMODE = "setDebugMode";
    private static final String TAG = "UMConfigure";
    private static final String WRAPER_TYPE_COCOS2DX_X = "Cocos2d-x";
    private static final String WRAPER_TYPE_COCOS2DX_XLUA = "Cocos2d-x_lua";
    private static final String WRAPER_TYPE_FLUTTER = "flutter";
    private static final String WRAPER_TYPE_HYBRID = "hybrid";
    private static final String WRAPER_TYPE_NATIVE = "native";
    private static final String WRAPER_TYPE_PHONEGAP = "phonegap";
    private static final String WRAPER_TYPE_REACTNATIVE = "react-native";
    private static final String WRAPER_TYPE_UNITY = "Unity";
    private static final String WRAPER_TYPE_WEEX = "weex";
    private static boolean debugLog;
    private static OnGetOaidListener mOnGetOaidListener;
    public static UMLog umDebugLog = new UMLog();
    private static boolean preInitComplete = false;
    private static Object PreInitLock = new Object();
    public static String sAppkey = "";
    public static String sChannel = "";
    public static boolean isInit = false;
    private static boolean isFinish = false;
    private static Object lockObject = new Object();

    private static boolean checkShareSdk(Class<?> cls) {
        try {
            return cls.getDeclaredField("isZyb") != null;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0035 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void enterRTDModeIfNeeded(android.content.Context r11) {
        /*
            if (r11 != 0) goto L3
            return
        L3:
            java.lang.String r0 = "um_rtd_conf"
            java.lang.String r1 = "debugkey"
            java.lang.String r2 = com.umeng.common.b.a(r11, r0, r1)
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 != 0) goto L8c
            java.lang.String r3 = "startTime"
            java.lang.String r3 = com.umeng.common.b.a(r11, r0, r3)
            java.lang.String r4 = "period"
            java.lang.String r4 = com.umeng.common.b.a(r11, r0, r4)
            boolean r5 = android.text.TextUtils.isEmpty(r3)
            r6 = 0
            if (r5 != 0) goto L2e
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch: java.lang.Throwable -> L2e
            long r8 = r3.longValue()     // Catch: java.lang.Throwable -> L2e
            goto L2f
        L2e:
            r8 = r6
        L2f:
            boolean r3 = android.text.TextUtils.isEmpty(r4)
            if (r3 != 0) goto L3e
            java.lang.Long r3 = java.lang.Long.valueOf(r4)     // Catch: java.lang.Throwable -> L3e
            long r3 = r3.longValue()     // Catch: java.lang.Throwable -> L3e
            goto L3f
        L3e:
            r3 = r6
        L3f:
            java.lang.String r5 = "MobclickRT"
            int r10 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r10 == 0) goto L84
            int r10 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r10 != 0) goto L4a
            goto L84
        L4a:
            long r6 = java.lang.System.currentTimeMillis()
            long r6 = r6 - r8
            r8 = 60
            long r3 = r3 * r8
            r8 = 1000(0x3e8, double:4.94E-321)
            long r3 = r3 * r8
            int r8 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r8 <= 0) goto L6d
            java.lang.String r1 = "--->>> [RTD]本地缓存dk值已经超时，清除缓存数据。"
            com.umeng.commonsdk.debug.UMRTLog.i(r5, r1)
            com.umeng.common.b.a(r11, r0)
            boolean r11 = com.umeng.analytics.AnalyticsConfig.isRealTimeDebugMode()
            if (r11 == 0) goto L8c
            com.umeng.analytics.AnalyticsConfig.turnOffRealTimeDebug()
            goto L8c
        L6d:
            java.util.HashMap r11 = new java.util.HashMap
            r11.<init>()
            r11.put(r1, r2)
            boolean r0 = com.umeng.analytics.AnalyticsConfig.isRealTimeDebugMode()
            if (r0 != 0) goto L8c
            java.lang.String r0 = "--->>> [RTD]本地缓存dk值在有效期内，切换到埋点验证模式。"
            com.umeng.commonsdk.debug.UMRTLog.i(r5, r0)
            com.umeng.analytics.AnalyticsConfig.turnOnRealTimeDebug(r11)
            goto L8c
        L84:
            java.lang.String r1 = "--->>> [RTD]本地缓存startTime或者duration值无效，清除缓存数据"
            com.umeng.commonsdk.debug.UMRTLog.i(r5, r1)
            com.umeng.common.b.a(r11, r0)
        L8c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.UMConfigure.enterRTDModeIfNeeded(android.content.Context):void");
    }

    private static Class<?> getClass(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private static Object getDecInstanceObject(Class<?> cls) {
        Constructor<?> constructor;
        if (cls != null) {
            try {
                constructor = cls.getDeclaredConstructor(new Class[0]);
            } catch (NoSuchMethodException unused) {
                constructor = null;
            }
            if (constructor != null) {
                constructor.setAccessible(true);
                try {
                    return constructor.newInstance(new Object[0]);
                } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | InvocationTargetException unused2) {
                    return null;
                }
            }
            return null;
        }
        return null;
    }

    private static Method getDecMethod(Class<?> cls, String str, Class<?>[] clsArr) {
        Method method = null;
        if (cls != null) {
            try {
                method = cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException unused) {
            }
            if (method != null) {
                method.setAccessible(true);
            }
        }
        return method;
    }

    public static boolean getInitStatus() {
        boolean z3;
        synchronized (lockObject) {
            z3 = isFinish;
        }
        return z3;
    }

    public static void getOaid(Context context, OnGetOaidListener onGetOaidListener) {
        if (context == null) {
            return;
        }
        final Context applicationContext = context.getApplicationContext();
        mOnGetOaidListener = onGetOaidListener;
        new Thread(new Runnable() { // from class: com.umeng.commonsdk.UMConfigure.4
            @Override // java.lang.Runnable
            public void run() {
                String a4 = z.a(applicationContext);
                if (UMConfigure.mOnGetOaidListener != null) {
                    UMConfigure.mOnGetOaidListener.onGetOaid(a4);
                }
            }
        }).start();
    }

    public static String[] getTestDeviceInfo(Context context) {
        String[] strArr = new String[2];
        if (context != null) {
            try {
                strArr[0] = DeviceConfig.getDeviceIdForGeneral(context);
                strArr[1] = DeviceConfig.getMac(context);
            } catch (Exception unused) {
            }
        }
        return strArr;
    }

    public static String getUMIDString(Context context) {
        if (context != null) {
            return UMUtils.getUMId(context.getApplicationContext());
        }
        return null;
    }

    public static String getUmengZID(Context context) {
        if (context != null) {
            return UMUtils.getZid(context.getApplicationContext());
        }
        return null;
    }

    public static void init(Context context, int i2, String str) {
        init(context, null, null, i2, str);
    }

    private static void invoke(Method method, Object obj, Object[] objArr) {
        if (method == null || obj == null) {
            return;
        }
        try {
            method.invoke(obj, objArr);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
        }
    }

    public static boolean isDebugLog() {
        return debugLog;
    }

    private static boolean isPreInit() {
        boolean z3;
        synchronized (PreInitLock) {
            z3 = preInitComplete;
        }
        return z3;
    }

    public static boolean needSendZcfgEnv(Context context) {
        File filesDir = context.getFilesDir();
        StringBuilder sb = new StringBuilder();
        sb.append(filesDir.getAbsolutePath());
        sb.append(File.separator);
        sb.append(am.f60490l);
        return !new File(sb.toString()).exists();
    }

    public static void preInit(Context context, String str, String str2) {
        if (context == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (TextUtils.isEmpty(str)) {
            str = UMUtils.getAppkeyByXML(applicationContext);
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = UMUtils.getChannelByXML(applicationContext);
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = "Unknown";
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        sAppkey = str;
        sChannel = str2;
        UMGlobalContext.getInstance(applicationContext);
        k.a(applicationContext);
        if (!needSendZcfgEnv(applicationContext)) {
            FieldManager.a().a(applicationContext);
        }
        synchronized (PreInitLock) {
            preInitComplete = true;
        }
    }

    private static void setCheckDevice(boolean z3) {
        AnalyticsConstants.CHECK_DEVICE = z3;
    }

    public static void setEncryptEnabled(boolean z3) {
        b.a(z3);
    }

    private static void setFile(Class<?> cls, String str, String str2) {
        if (cls != null) {
            try {
                cls.getField(str).set(str, str2);
            } catch (Exception unused) {
            }
        }
    }

    private static void setLatencyWindow(long j4) {
        com.umeng.commonsdk.statistics.a.f61277c = ((int) j4) * 1000;
    }

    public static void setLogEnabled(boolean z3) {
        try {
            debugLog = z3;
            MLog.DEBUG = z3;
            Class<?> cls = getClass("com.umeng.message.PushAgent");
            Object decInstanceObject = getDecInstanceObject(cls);
            Class cls2 = Boolean.TYPE;
            invoke(getDecMethod(cls, KEY_METHOD_NAME_SETDEBUGMODE, new Class[]{cls2}), decInstanceObject, new Object[]{Boolean.valueOf(z3)});
            setFile(getClass("com.umeng.socialize.Config"), "DEBUG", z3);
            invoke(getDecMethod(getClass("com.umeng.umcrash.UMCrash"), "setDebug", new Class[]{cls2}), new Object[]{Boolean.valueOf(z3)});
        } catch (Exception e4) {
            if (debugLog) {
                StringBuilder sb = new StringBuilder();
                sb.append("set log enabled e is ");
                sb.append(e4);
            }
        } catch (Throwable th) {
            if (debugLog) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("set log enabled e is ");
                sb2.append(th);
            }
        }
    }

    public static void setProcessEvent(boolean z3) {
        AnalyticsConstants.SUB_PROCESS_EVENT = z3;
    }

    private static void setWraperType(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (str.equals(WRAPER_TYPE_NATIVE)) {
                com.umeng.commonsdk.stateless.a.f61243a = WRAPER_TYPE_NATIVE;
                com.umeng.commonsdk.statistics.a.f61275a = WRAPER_TYPE_NATIVE;
            } else if (str.equals(WRAPER_TYPE_COCOS2DX_X)) {
                com.umeng.commonsdk.stateless.a.f61243a = WRAPER_TYPE_COCOS2DX_X;
                com.umeng.commonsdk.statistics.a.f61275a = WRAPER_TYPE_COCOS2DX_X;
            } else if (str.equals(WRAPER_TYPE_COCOS2DX_XLUA)) {
                com.umeng.commonsdk.stateless.a.f61243a = WRAPER_TYPE_COCOS2DX_XLUA;
                com.umeng.commonsdk.statistics.a.f61275a = WRAPER_TYPE_COCOS2DX_XLUA;
            } else if (str.equals(WRAPER_TYPE_UNITY)) {
                com.umeng.commonsdk.stateless.a.f61243a = WRAPER_TYPE_UNITY;
                com.umeng.commonsdk.statistics.a.f61275a = WRAPER_TYPE_UNITY;
            } else if (str.equals(WRAPER_TYPE_REACTNATIVE)) {
                com.umeng.commonsdk.stateless.a.f61243a = WRAPER_TYPE_REACTNATIVE;
                com.umeng.commonsdk.statistics.a.f61275a = WRAPER_TYPE_REACTNATIVE;
            } else if (str.equals(WRAPER_TYPE_PHONEGAP)) {
                com.umeng.commonsdk.stateless.a.f61243a = WRAPER_TYPE_PHONEGAP;
                com.umeng.commonsdk.statistics.a.f61275a = WRAPER_TYPE_PHONEGAP;
            } else if (str.equals(WRAPER_TYPE_WEEX)) {
                com.umeng.commonsdk.stateless.a.f61243a = WRAPER_TYPE_WEEX;
                com.umeng.commonsdk.statistics.a.f61275a = WRAPER_TYPE_WEEX;
            } else if (str.equals(WRAPER_TYPE_HYBRID)) {
                com.umeng.commonsdk.stateless.a.f61243a = WRAPER_TYPE_HYBRID;
                com.umeng.commonsdk.statistics.a.f61275a = WRAPER_TYPE_HYBRID;
            } else if (str.equals(WRAPER_TYPE_FLUTTER)) {
                com.umeng.commonsdk.stateless.a.f61243a = WRAPER_TYPE_FLUTTER;
                com.umeng.commonsdk.statistics.a.f61275a = WRAPER_TYPE_FLUTTER;
            }
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        com.umeng.commonsdk.stateless.a.f61244b = str2;
        com.umeng.commonsdk.statistics.a.f61276b = str2;
    }

    public static void init(Context context, String str, String str2, int i2, String str3) {
        Object invoke;
        Method declaredMethod;
        Method declaredMethod2;
        Method declaredMethod3;
        Object invoke2;
        Method declaredMethod4;
        try {
            try {
                if (debugLog) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("common type is ");
                    sb.append(SdkVersion.SDK_TYPE);
                }
            } catch (Throwable th) {
                if (debugLog) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("init e is ");
                    sb2.append(th);
                }
            }
        } catch (Exception e4) {
            if (debugLog) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("init e is ");
                sb3.append(e4);
            }
        }
        if (context == null || isInit) {
            return;
        }
        final Context applicationContext = context.getApplicationContext();
        try {
            if (getClass("com.umeng.umzid.ZIDManager") == null) {
                new Thread() { // from class: com.umeng.commonsdk.UMConfigure.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            Looper.prepare();
                            Toast.makeText(applicationContext, "SDK 初始化失败，请检查是否集成umeng-asms-1.2.X.aar库。", 1).show();
                            Looper.loop();
                        } catch (Throwable unused) {
                        }
                    }
                }.start();
                return;
            }
        } catch (Throwable unused) {
        }
        try {
            Class<?> cls = getClass("com.umeng.message.PushAgent");
            if (cls != null && !checkShareSdk(cls)) {
                new Thread() { // from class: com.umeng.commonsdk.UMConfigure.2
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            Looper.prepare();
                            Toast.makeText(applicationContext, UMLogCommon.SC_10015, 1).show();
                            Looper.loop();
                        } catch (Throwable unused2) {
                        }
                    }
                }.start();
            }
        } catch (Throwable unused2) {
        }
        try {
            Class<?> cls2 = getClass("com.umeng.socialize.UMShareAPI");
            if (cls2 != null && !checkShareSdk(cls2)) {
                new Thread() { // from class: com.umeng.commonsdk.UMConfigure.3
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            Looper.prepare();
                            Toast.makeText(applicationContext, UMLogCommon.SC_10015, 1).show();
                            Looper.loop();
                        } catch (Throwable unused3) {
                        }
                    }
                }.start();
            }
        } catch (Throwable unused3) {
        }
        if (!isPreInit()) {
            preInit(applicationContext, str, str2);
            if (!isPreInit()) {
                return;
            }
        }
        UMUtils.setAppkey(applicationContext, sAppkey);
        String lastAppkey = UMUtils.getLastAppkey(applicationContext);
        if (!TextUtils.isEmpty(sAppkey) && !sAppkey.equals(lastAppkey)) {
            if (!TextUtils.isEmpty(lastAppkey) && debugLog) {
                UMLog.mutlInfo(UMLogCommon.SC_10008, 2, "");
            }
            UMUtils.setLastAppkey(applicationContext, sAppkey);
        }
        if (debugLog) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("current appkey is ");
            sb4.append(sAppkey);
            sb4.append(", last appkey is ");
            sb4.append(lastAppkey);
        }
        if (debugLog) {
            String appkeyByXML = UMUtils.getAppkeyByXML(applicationContext);
            if (!TextUtils.isEmpty(sAppkey) && !TextUtils.isEmpty(appkeyByXML) && !sAppkey.equals(appkeyByXML)) {
                UMLog.mutlInfo(UMLogCommon.SC_10011, 3, "", new String[]{"@", "#"}, new String[]{sAppkey, appkeyByXML});
            }
        }
        UMUtils.setChannel(applicationContext, sChannel);
        if (debugLog) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append("channel is ");
            sb5.append(sChannel);
        }
        try {
            Method declaredMethod5 = MobclickAgent.class.getDeclaredMethod("init", Context.class);
            if (declaredMethod5 != null) {
                declaredMethod5.setAccessible(true);
                declaredMethod5.invoke(MobclickAgent.class, applicationContext);
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.F)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> FirstResumeTrigger enabled.");
                    k.a(applicationContext).b(applicationContext);
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> FirstResumeTrigger disabled.");
                }
                if (debugLog) {
                    UMLog.mutlInfo(UMLogCommon.SC_10003, 2, "");
                }
            }
            Class.forName("com.umeng.analytics.game.UMGameAgent");
            Method declaredMethod6 = MobclickAgent.class.getDeclaredMethod("setGameScenarioType", Context.class);
            if (declaredMethod6 != null) {
                declaredMethod6.setAccessible(true);
                declaredMethod6.invoke(MobclickAgent.class, applicationContext);
            }
            if (b.f61278a.indexOf("e") >= 0 && (declaredMethod4 = MobclickAgent.class.getDeclaredMethod("disableExceptionCatch", new Class[0])) != null) {
                declaredMethod4.setAccessible(true);
                declaredMethod4.invoke(MobclickAgent.class, new Object[0]);
            }
        } catch (Throwable unused4) {
        }
        try {
            Class<?> cls3 = Class.forName("com.umeng.message.MessageSharedPrefs");
            Method declaredMethod7 = cls3.getDeclaredMethod("getInstance", Context.class);
            if (declaredMethod7 != null && (invoke2 = declaredMethod7.invoke(cls3, applicationContext)) != null) {
                Method declaredMethod8 = cls3.getDeclaredMethod("setMessageAppKey", String.class);
                if (declaredMethod8 != null) {
                    declaredMethod8.setAccessible(true);
                    declaredMethod8.invoke(invoke2, sAppkey);
                    if (debugLog) {
                        UMLog.mutlInfo(UMLogCommon.SC_10004, 2, "");
                    }
                }
                Method declaredMethod9 = cls3.getDeclaredMethod(KEY_METHOD_NAME_PUSH_SETCHANNEL, String.class);
                if (declaredMethod9 != null) {
                    declaredMethod9.setAccessible(true);
                    declaredMethod9.invoke(invoke2, sChannel);
                    if (debugLog) {
                        UMLog.mutlInfo(UMLogCommon.SC_10005, 2, "");
                    }
                }
                if (!TextUtils.isEmpty(str3)) {
                    if (debugLog) {
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append("push secret is ");
                        sb6.append(str3);
                    }
                    Method declaredMethod10 = cls3.getDeclaredMethod("setMessageAppSecret", String.class);
                    if (declaredMethod10 != null) {
                        declaredMethod10.setAccessible(true);
                        declaredMethod10.invoke(invoke2, str3);
                        if (debugLog) {
                            UMLog.mutlInfo(UMLogCommon.SC_10009, 2, "");
                        }
                    }
                }
            }
        } catch (Exception unused5) {
        }
        try {
            Class<?> cls4 = getClass("com.umeng.socialize.UMShareAPI");
            setFile(cls4, KEY_FILE_NAME_APPKEY, sAppkey);
            if (cls4 != null && (declaredMethod3 = cls4.getDeclaredMethod("init", Context.class, String.class)) != null) {
                declaredMethod3.setAccessible(true);
                declaredMethod3.invoke(cls4, applicationContext, sAppkey);
                if (debugLog) {
                    UMLog.mutlInfo(UMLogCommon.SC_10006, 2, "");
                }
            }
        } catch (Throwable unused6) {
        }
        AnalyticsConstants.setDeviceType(i2);
        try {
            Class<?> cls5 = Class.forName("com.umeng.error.UMError");
            Method declaredMethod11 = cls5.getDeclaredMethod("init", Context.class);
            if (declaredMethod11 != null) {
                declaredMethod11.setAccessible(true);
                declaredMethod11.invoke(cls5, applicationContext);
                if (debugLog) {
                    UMLog.mutlInfo(UMLogCommon.SC_10010, 2, "");
                }
            }
        } catch (Throwable unused7) {
        }
        try {
            Class<?> cls6 = Class.forName("com.umeng.umcrash.UMCrash");
            if (SdkVersion.SDK_TYPE == 1 && (declaredMethod2 = cls6.getDeclaredMethod("useIntlServices", Boolean.TYPE)) != null) {
                declaredMethod2.setAccessible(true);
                declaredMethod2.invoke(cls6, Boolean.TRUE);
            }
            Method declaredMethod12 = cls6.getDeclaredMethod("init", Context.class, String.class, String.class);
            if (declaredMethod12 != null) {
                declaredMethod12.setAccessible(true);
                declaredMethod12.invoke(cls6, applicationContext, sAppkey, sChannel);
                if (debugLog) {
                    UMLog.mutlInfo(UMLogCommon.SC_10014, 2, "");
                }
            }
        } catch (Throwable unused8) {
        }
        try {
            Method declaredMethod13 = Class.forName("com.umeng.vt.facade.EventFacade").getDeclaredMethod("init", Application.class, String.class, String.class, Integer.TYPE, String.class);
            if (declaredMethod13 != null) {
                declaredMethod13.invoke(null, applicationContext, sAppkey, sChannel, Integer.valueOf(i2), str3);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>初始化 EventFacade 成功.");
            }
        } catch (Throwable unused9) {
        }
        try {
            Method declaredMethod14 = Class.forName("com.umeng.vt.common.VTTracker").getDeclaredMethod("init", Application.class, String.class);
            if (declaredMethod14 != null) {
                declaredMethod14.invoke(null, applicationContext, sAppkey);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>初始化 VTTracker 成功.");
            }
        } catch (Throwable unused10) {
        }
        synchronized (lockObject) {
            isFinish = true;
        }
        if (needSendZcfgEnv(applicationContext)) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 走零号报文发送逻辑");
            UMWorkDispatch.sendEvent(applicationContext, com.umeng.commonsdk.internal.a.f61141p, com.umeng.commonsdk.internal.b.a(applicationContext).a(), null);
        } else {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 走正常逻辑.");
            if (FieldManager.b()) {
                UMWorkDispatch.sendEvent(applicationContext, com.umeng.commonsdk.internal.a.f61150y, com.umeng.commonsdk.internal.b.a(applicationContext).a(), null);
            }
        }
        if (isDebugLog()) {
            UMConfigureInternation.doSelfCheck(applicationContext);
        }
        try {
            Context applicationContext2 = context.getApplicationContext();
            Class<?> cls7 = Class.forName("com.umeng.cconfig.UMRemoteConfig");
            Method declaredMethod15 = cls7.getDeclaredMethod("getInstance", new Class[0]);
            if (declaredMethod15 != null && (invoke = declaredMethod15.invoke(cls7, new Object[0])) != null && (declaredMethod = cls7.getDeclaredMethod("init", Context.class)) != null) {
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(invoke, applicationContext2);
            }
        } catch (Exception unused11) {
        }
        enterRTDModeIfNeeded(context.getApplicationContext());
        if (isInit) {
            return;
        }
        isInit = true;
    }

    private static void invoke(Method method, Object[] objArr) {
        if (method != null) {
            try {
                method.invoke(null, objArr);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
            }
        }
    }

    private static void setFile(Class<?> cls, String str, boolean z3) {
        if (cls != null) {
            try {
                cls.getField(str).set(str, Boolean.valueOf(z3));
            } catch (Exception unused) {
            }
        }
    }
}
