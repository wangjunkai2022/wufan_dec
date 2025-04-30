package com.umeng.umcrash;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.efs.sdk.launch.LaunchManager;
import com.efs.sdk.memoryinfo.UMMemoryMonitor;
import com.efs.sdk.pa.PAFactory;
import com.efs.sdk.pa.config.IEfsReporter;
import com.efs.sdk.pa.config.PackageLevel;
import com.uc.crashsdk.export.CrashApi;
import com.uc.crashsdk.export.CustomLogInfo;
import com.uc.crashsdk.export.ICrashClient;
import com.uc.crashsdk.export.LogType;
import com.umeng.analytics.pro.ai;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback;
import com.umeng.commonsdk.utils.UMUtils;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import q.a;
/* loaded from: classes4.dex */
public class UMCrash {
    private static final boolean DEFAULT_VALUE_CRASH_ALL = true;
    private static final boolean DEFAULT_VALUE_CRASH_ANR = true;
    private static final boolean DEFAULT_VALUE_CRASH_JAVA = true;
    private static final boolean DEFAULT_VALUE_CRASH_NATIVE = true;
    private static final boolean DEFAULT_VALUE_CRASH_UNEXP = false;
    private static final boolean DEFAULT_VALUE_LAUNCH = true;
    private static final boolean DEFAULT_VALUE_MEM = true;
    private static final boolean DEFAULT_VALUE_PA = true;
    private static final String KEY_ACTIITY_ON_CREATED = "onCreated";
    private static final String KEY_ACTIITY_ON_DESTROYED = "onDestroyed";
    private static final String KEY_ACTIITY_ON_PAUSED = "onPaused";
    private static final String KEY_ACTIITY_ON_RESUMED = "onResumed";
    private static final String KEY_ACTIITY_ON_STARTED = "onStarted";
    private static final String KEY_ACTIITY_ON_STOPPED = "onStopped";
    public static final String KEY_APM_DEFAULT_SECRET = "NEej8y@anWa*8hep";
    public static final String KEY_APM_ROOT_NAME = "UApm";
    public static final String KEY_CALLBACK_PAGE_ACTION = "um_action_log";
    public static final String KEY_CALLBACK_UMID = "um_umid";
    private static final String KEY_CALLBACK_USER_STRING = "um_user_string";
    public static final String KEY_ENABLE_ANR = "enableANRLog";
    public static final String KEY_ENABLE_CRASH_ALL = "enableCrashLog";
    public static final String KEY_ENABLE_CRASH_JAVA = "enableJavaLog";
    public static final String KEY_ENABLE_CRASH_NATIVE = "enableNativeLog";
    public static final String KEY_ENABLE_CRASH_UNEXP = "enableUnexpLog";
    public static final String KEY_ENABLE_LAUNCH = "enableLaunchLog";
    public static final String KEY_ENABLE_MEM = "enableMemLog";
    public static final String KEY_ENABLE_PA = "enablePaLog";
    public static final String KEY_HEADER_ACCESS = "um_access";
    public static final String KEY_HEADER_ACCESS_SUBTYPE = "um_access_subtype";
    public static final String KEY_HEADER_APPKEY = "um_app_key";
    public static final String KEY_HEADER_BESRIAL = "um_bserial";
    public static final String KEY_HEADER_BSVER = "um_bsver";
    public static final String KEY_HEADER_BVER = "um_bver";
    public static final String KEY_HEADER_CARRIER = "um_app_carrier";
    public static final String KEY_HEADER_CHANNEL = "um_app_channel";
    public static final String KEY_HEADER_CRASH_VERSION = "um_crash_sdk_version";
    public static final String KEY_HEADER_NETWORK_TYPE = "um_network_type";
    public static final String KEY_HEADER_OS = "um_os";
    public static final String KEY_HEADER_PROVIDER = "um_app_provider";
    public static final String KEY_HEADER_PUID = "um_app_puid";
    public static final String KEY_HEADER_START_TIME = "um_app_start_time";
    public static final String KEY_HEADER_UMID = "um_umid_header";
    private static final int KEY_MAX_LENGTH = 256;
    private static final int KEY_MAX_LENGTH_128 = 128;
    private static final String TAG = "UMCrash";
    private static String crashSdkVersion = "1.4.0";
    private static boolean isDebug = true;
    private static boolean isEncrypt = false;
    private static boolean isIntl = false;
    private static boolean isZip = true;
    private static Context mContext;
    private static UMCrashCallback mUMCrashCallback;
    public static EfsReporter sReporter;
    private static String userBesrial;
    private static String userBsver;
    private static String userBver;
    private static Object pageArrayLock = new Object();
    private static ArrayList<String> mArrayList = new ArrayList<>(10);
    private static boolean isPA = false;
    private static boolean isLa = false;
    private static boolean enableJavaLog = true;
    private static boolean enableNativeLog = true;
    private static boolean enableANRLog = true;
    private static boolean enablePaLog = true;
    private static boolean enableLaunchLog = true;
    private static boolean enableMemLog = true;

    /* loaded from: classes4.dex */
    private static class CrashClientImpl implements ICrashClient {
        private CrashClientImpl() {
        }

        @Override // com.uc.crashsdk.export.ICrashClient
        public void onAddCrashStats(String str, int i2, int i4) {
        }

        @Override // com.uc.crashsdk.export.ICrashClient
        public File onBeforeUploadLog(File file) {
            return file;
        }

        @Override // com.uc.crashsdk.export.ICrashClient
        public void onClientProcessLogGenerated(String str, File file, String str2) {
        }

        @Override // com.uc.crashsdk.export.ICrashClient
        public void onCrashRestarting(boolean z3) {
        }

        @Override // com.uc.crashsdk.export.ICrashClient
        public String onGetCallbackInfo(String str, boolean z3) {
            String onCallback;
            String str2 = null;
            if (UMCrash.KEY_CALLBACK_PAGE_ACTION.equals(str)) {
                try {
                    if (UMCrash.mArrayList != null && UMCrash.mArrayList.size() > 0) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("source", 0);
                        jSONObject.put("action_name", "page_view");
                        JSONArray jSONArray = new JSONArray();
                        for (int i2 = 0; i2 < UMCrash.mArrayList.size(); i2++) {
                            String str3 = (String) UMCrash.mArrayList.get(i2);
                            if (str3 != null) {
                                JSONObject jSONObject2 = new JSONObject();
                                jSONObject2.put("name", str3);
                                jSONArray.put(jSONObject2);
                            }
                        }
                        jSONObject.put("action_parameter", jSONArray);
                        str2 = jSONObject.toString();
                        if (UMCrash.isDebug) {
                            String unused = UMCrash.TAG;
                            StringBuilder sb = new StringBuilder();
                            sb.append("page json is ");
                            sb.append(str2);
                        }
                    }
                } catch (Throwable unused2) {
                }
                return str2;
            } else if (UMCrash.KEY_CALLBACK_UMID.equals(str)) {
                return UMCrash.getUMID(UMCrash.mContext);
            } else {
                if (!UMCrash.KEY_CALLBACK_USER_STRING.equals(str) || UMCrash.mUMCrashCallback == null || (onCallback = UMCrash.mUMCrashCallback.onCallback()) == null) {
                    return null;
                }
                return onCallback.trim().getBytes().length > 256 ? UMCrashUtils.splitByByte(onCallback, 256) : onCallback;
            }
        }

        @Override // com.uc.crashsdk.export.ICrashClient
        public void onLogGenerated(File file, String str) {
        }
    }

    public static void enableANRLog(boolean z3) {
        enableANRLog = z3;
    }

    public static void enableMemoryMonitor(boolean z3) {
        UMMemoryMonitor.get().setEnable(z3);
    }

    public static void enableNativeLog(boolean z3) {
        enableNativeLog = z3;
    }

    public static void generateCustomLog(Throwable th, String str) {
        if (th != null && !TextUtils.isEmpty(str)) {
            try {
                CustomLogInfo build = new UMCustomLogInfoBuilder(str).stack(th).build();
                ArrayList<String> arrayList = new ArrayList<>();
                arrayList.add(KEY_CALLBACK_UMID);
                arrayList.add(KEY_CALLBACK_PAGE_ACTION);
                build.mCallbacks = arrayList;
                CrashApi crashApi = CrashApi.getInstance();
                if (crashApi == null) {
                    return;
                }
                crashApi.generateCustomLog(build);
            } catch (Throwable unused) {
            }
        }
    }

    public static String getUMAPMFlag() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", 0);
            jSONObject.put("crash", 1);
            if (enableNativeLog) {
                jSONObject.put("crashNative", 1);
            } else {
                jSONObject.put("crashNative", 0);
            }
            if (enableANRLog) {
                jSONObject.put(LogType.ANR_TYPE, 1);
            } else {
                jSONObject.put(LogType.ANR_TYPE, 0);
            }
            if (isPA) {
                jSONObject.put("pa", 1);
            } else {
                jSONObject.put("pa", 0);
            }
            if (isLa) {
                jSONObject.put("la", 1);
            } else {
                jSONObject.put("la", 0);
            }
            if (UMMemoryMonitor.get().isEnable()) {
                jSONObject.put("mem", 1);
            } else {
                jSONObject.put("mem", 0);
            }
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized String getUMID(Context context) {
        Class<?> cls;
        Method method;
        synchronized (UMCrash.class) {
            String str = null;
            if (context == null) {
                return null;
            }
            try {
                cls = Class.forName("com.umeng.commonsdk.UMConfigure");
            } catch (ClassNotFoundException unused) {
                cls = null;
            }
            if (cls != null) {
                try {
                    method = cls.getMethod("getUMIDString", Context.class);
                } catch (NoSuchMethodException unused2) {
                    method = null;
                }
                if (method != null) {
                    try {
                        Object invoke = method.invoke(null, context);
                        if (invoke != null) {
                            str = invoke.toString();
                        }
                    } catch (IllegalAccessException | InvocationTargetException unused3) {
                    }
                }
            }
            return str;
        }
    }

    public static void init(final Context context, String str, String str2) {
        if (context == null || str == null) {
            return;
        }
        mContext = context;
        try {
            Bundle bundle = new Bundle();
            bundle.putBoolean("mDebug", isDebug);
            bundle.putBoolean("mEncryptLog", isEncrypt);
            bundle.putBoolean("mZipLog", isZip);
            bundle.putBoolean(KEY_ENABLE_CRASH_JAVA, enableJavaLog);
            bundle.putBoolean(KEY_ENABLE_CRASH_NATIVE, enableNativeLog);
            bundle.putBoolean(KEY_ENABLE_ANR, enableANRLog);
            bundle.putBoolean(KEY_ENABLE_CRASH_UNEXP, false);
            bundle.putBoolean("mIsInternational", isIntl);
            CrashApi createInstanceEx = CrashApi.createInstanceEx(context, str, isDebug, bundle, new CrashClientImpl());
            if (createInstanceEx != null) {
                createInstanceEx.addHeaderInfo(KEY_HEADER_APPKEY, str);
                createInstanceEx.addHeaderInfo(KEY_HEADER_CHANNEL, str2);
                createInstanceEx.addHeaderInfo(KEY_HEADER_OS, a.f73954a);
                createInstanceEx.addHeaderInfo(KEY_HEADER_CRASH_VERSION, crashSdkVersion);
                createInstanceEx.addHeaderInfo(KEY_HEADER_UMID, getUMID(context));
                String[] activeUser = UMCrashUtils.getActiveUser(context);
                if (activeUser != null && activeUser.length == 2) {
                    createInstanceEx.addHeaderInfo(KEY_HEADER_PUID, activeUser[1]);
                    createInstanceEx.addHeaderInfo(KEY_HEADER_PROVIDER, activeUser[0]);
                }
                createInstanceEx.addHeaderInfo(KEY_HEADER_CARRIER, UMCrashUtils.getNetworkOperatorName(context));
                if (!TextUtils.isEmpty(userBver)) {
                    createInstanceEx.addHeaderInfo(KEY_HEADER_BVER, userBver);
                }
                if (!TextUtils.isEmpty(userBsver)) {
                    createInstanceEx.addHeaderInfo(KEY_HEADER_BSVER, userBsver);
                }
                if (!TextUtils.isEmpty(userBesrial)) {
                    createInstanceEx.addHeaderInfo(KEY_HEADER_BESRIAL, userBesrial);
                }
                String[] networkAccessMode = NetworkUtil.getNetworkAccessMode(context);
                if ("Wi-Fi".equals(networkAccessMode[0])) {
                    createInstanceEx.addHeaderInfo(KEY_HEADER_ACCESS, NetworkUtil.NETWORK_TYPE_WIFI);
                } else if ("2G/3G".equals(networkAccessMode[0])) {
                    createInstanceEx.addHeaderInfo(KEY_HEADER_ACCESS, "2G/3G");
                } else {
                    createInstanceEx.addHeaderInfo(KEY_HEADER_ACCESS, "unknow");
                }
                if (!"".equals(networkAccessMode[1])) {
                    createInstanceEx.addHeaderInfo(KEY_HEADER_ACCESS_SUBTYPE, networkAccessMode[1]);
                }
                int networkTypeUmeng = NetworkUtil.getNetworkTypeUmeng(context);
                createInstanceEx.addHeaderInfo(KEY_HEADER_NETWORK_TYPE, "" + networkTypeUmeng);
                if (context instanceof Application) {
                    ((Application) context).registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.umeng.umcrash.UMCrash.1
                        @Override // android.app.Application.ActivityLifecycleCallbacks
                        public void onActivityCreated(Activity activity, Bundle bundle2) {
                            UMCrash.saveActivityState(activity.getLocalClassName(), UMCrash.KEY_ACTIITY_ON_CREATED);
                        }

                        @Override // android.app.Application.ActivityLifecycleCallbacks
                        public void onActivityDestroyed(Activity activity) {
                            UMCrash.saveActivityState(activity.getLocalClassName(), UMCrash.KEY_ACTIITY_ON_DESTROYED);
                        }

                        @Override // android.app.Application.ActivityLifecycleCallbacks
                        public void onActivityPaused(Activity activity) {
                            UMCrash.saveActivityState(activity.getLocalClassName(), UMCrash.KEY_ACTIITY_ON_PAUSED);
                        }

                        @Override // android.app.Application.ActivityLifecycleCallbacks
                        public void onActivityResumed(Activity activity) {
                            UMCrash.saveActivityState(activity.getLocalClassName(), UMCrash.KEY_ACTIITY_ON_RESUMED);
                            UMMemoryMonitor.get().onActivityResumed(activity);
                        }

                        @Override // android.app.Application.ActivityLifecycleCallbacks
                        public void onActivitySaveInstanceState(Activity activity, Bundle bundle2) {
                        }

                        @Override // android.app.Application.ActivityLifecycleCallbacks
                        public void onActivityStarted(Activity activity) {
                            UMCrash.saveActivityState(activity.getLocalClassName(), UMCrash.KEY_ACTIITY_ON_STARTED);
                            UMMemoryMonitor.get().onActivityStarted(activity);
                        }

                        @Override // android.app.Application.ActivityLifecycleCallbacks
                        public void onActivityStopped(Activity activity) {
                            UMCrash.saveActivityState(activity.getLocalClassName(), UMCrash.KEY_ACTIITY_ON_STOPPED);
                            UMMemoryMonitor.get().onActivityStopped(activity);
                        }
                    });
                    createInstanceEx.registerInfoCallback(KEY_CALLBACK_UMID, 1048593);
                    createInstanceEx.registerInfoCallback(KEY_CALLBACK_PAGE_ACTION, 1048593);
                }
            }
        } catch (Throwable unused) {
        }
        try {
            initReporter(context, str, str2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            if (enablePaLog) {
                PAFactory.Builder builder = new PAFactory.Builder(context.getApplicationContext(), new IEfsReporter() { // from class: com.umeng.umcrash.UMCrash.2
                    @Override // com.efs.sdk.pa.config.IEfsReporter
                    public EfsReporter getReporter() {
                        return UMCrash.sReporter;
                    }
                });
                builder.packageLevel(PackageLevel.RELEASE);
                PAFactory build = builder.build();
                build.getPaInstance().start();
                isPA = build.getConfigManager().enableTracer();
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        try {
            if (enableLaunchLog) {
                LaunchManager.init(context, sReporter);
                isLa = LaunchManager.getLaunchConfigManager().enableTracer();
                String uMId = UMUtils.getUMId(context);
                if (uMId == null || TextUtils.isEmpty(uMId)) {
                    boolean z3 = isDebug;
                    ImprintHandler.getImprintService(context).registImprintCallback(ai.f60407g, new UMImprintChangeCallback() { // from class: com.umeng.umcrash.UMCrash.3
                        @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
                        public void onImprintValueChanged(String str3, String str4) {
                            if (UMCrash.isDebug) {
                                String unused2 = UMCrash.TAG;
                                StringBuilder sb = new StringBuilder();
                                sb.append("common callback.  key is ");
                                sb.append(str3);
                                sb.append("; value is ");
                                sb.append(str4);
                            }
                            try {
                                if (ai.f60407g.equals(str3)) {
                                    LaunchManager.sendLaunchCache(context, str4);
                                    ImprintHandler.getImprintService(context).unregistImprintCallback(ai.f60407g, this);
                                }
                            } catch (Throwable th3) {
                                th3.printStackTrace();
                            }
                        }
                    });
                }
            }
        } catch (Throwable th3) {
            th3.printStackTrace();
        }
        try {
            if (enableMemLog) {
                UMMemoryMonitor.get().start(context, sReporter);
            }
        } catch (Throwable th4) {
            th4.printStackTrace();
        }
    }

    public static void initConfig(Bundle bundle) {
        if (bundle != null) {
            if (bundle.getBoolean(KEY_ENABLE_CRASH_JAVA, true)) {
                enableJavaLog = true;
            } else {
                enableJavaLog = false;
            }
            if (bundle.getBoolean(KEY_ENABLE_CRASH_NATIVE, true)) {
                enableNativeLog = true;
            } else {
                enableNativeLog = false;
            }
            if (bundle.getBoolean(KEY_ENABLE_CRASH_ALL, true)) {
                enableJavaLog = true;
                enableNativeLog = true;
            } else {
                enableJavaLog = false;
                enableNativeLog = false;
            }
            if (bundle.getBoolean(KEY_ENABLE_ANR, true)) {
                enableANRLog = true;
            } else {
                enableANRLog = false;
            }
            if (bundle.getBoolean(KEY_ENABLE_PA, true)) {
                enablePaLog = true;
            } else {
                enablePaLog = false;
            }
            if (bundle.getBoolean(KEY_ENABLE_LAUNCH, true)) {
                enableLaunchLog = true;
            } else {
                enableLaunchLog = false;
            }
            if (bundle.getBoolean(KEY_ENABLE_MEM, true)) {
                enableMemLog = true;
            } else {
                enableMemLog = false;
            }
        }
    }

    private static void initReporter(Context context, String str, String str2) {
        HashMap hashMap = new HashMap(1);
        hashMap.put(KEY_HEADER_UMID, getUMID(context));
        hashMap.put(KEY_HEADER_CHANNEL, str2);
        hashMap.put(KEY_HEADER_CARRIER, UMCrashUtils.getNetworkOperatorName(context));
        hashMap.put(KEY_HEADER_OS, a.f73954a);
        hashMap.put(KEY_HEADER_CRASH_VERSION, crashSdkVersion);
        try {
            String[] activeUser = UMCrashUtils.getActiveUser(context);
            if (activeUser != null && activeUser.length == 2) {
                hashMap.put(KEY_HEADER_PUID, activeUser[1]);
                hashMap.put(KEY_HEADER_PROVIDER, activeUser[0]);
            }
        } catch (Throwable unused) {
            hashMap.put(KEY_HEADER_PUID, "");
            hashMap.put(KEY_HEADER_PROVIDER, "");
        }
        if (!TextUtils.isEmpty(userBver)) {
            hashMap.put(KEY_HEADER_BVER, userBver);
        }
        if (!TextUtils.isEmpty(userBsver)) {
            hashMap.put(KEY_HEADER_BSVER, userBsver);
        }
        if (!TextUtils.isEmpty(userBesrial)) {
            hashMap.put(KEY_HEADER_BESRIAL, userBesrial);
        }
        EfsReporter build = new EfsReporter.Builder(context.getApplicationContext(), str, KEY_APM_DEFAULT_SECRET).debug(isDebug).efsDirRootName(KEY_APM_ROOT_NAME).printLogDetail(isDebug).intl(isIntl).build();
        sReporter = build;
        build.addPublicParams(hashMap);
    }

    public static void registerUMCrashCallback(UMCrashCallback uMCrashCallback) {
        if (uMCrashCallback != null) {
            mUMCrashCallback = uMCrashCallback;
            if (CrashApi.getInstance() != null) {
                CrashApi.getInstance().registerInfoCallback(KEY_CALLBACK_USER_STRING, 1048593);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void saveActivityState(String str, String str2) {
        try {
            ArrayList<String> arrayList = mArrayList;
            if (arrayList != null) {
                if (arrayList.size() >= 20) {
                    mArrayList.remove(0);
                }
                ArrayList<String> arrayList2 = mArrayList;
                arrayList2.add(str + "-" + System.currentTimeMillis() + "-" + str2);
            }
        } catch (Throwable unused) {
        }
    }

    public static void setAppVersion(String str, String str2, String str3) {
        try {
            if (!TextUtils.isEmpty(str)) {
                if (str.trim().getBytes().length > 128) {
                    str = UMCrashUtils.splitByByte(str, 128);
                }
                userBver = str;
            } else {
                boolean z3 = isDebug;
            }
            if (!TextUtils.isEmpty(str2)) {
                if (str2.trim().getBytes().length > 128) {
                    str2 = UMCrashUtils.splitByByte(str2, 128);
                }
                userBsver = str2;
            } else {
                boolean z4 = isDebug;
            }
            if (!TextUtils.isEmpty(str3)) {
                if (str3.trim().getBytes().length > 128) {
                    str3 = UMCrashUtils.splitByByte(str3, 128);
                }
                userBesrial = str3;
            } else {
                boolean z5 = isDebug;
            }
            CrashApi crashApi = CrashApi.getInstance();
            if (crashApi != null) {
                if (!TextUtils.isEmpty(userBver)) {
                    crashApi.addHeaderInfo(KEY_HEADER_BVER, userBver);
                }
                if (!TextUtils.isEmpty(userBsver)) {
                    crashApi.addHeaderInfo(KEY_HEADER_BSVER, userBsver);
                }
                if (!TextUtils.isEmpty(userBesrial)) {
                    crashApi.addHeaderInfo(KEY_HEADER_BESRIAL, userBesrial);
                }
            } else {
                boolean z6 = isDebug;
            }
            HashMap hashMap = new HashMap(1);
            if (!TextUtils.isEmpty(userBver)) {
                hashMap.put(KEY_HEADER_BVER, userBver);
            }
            if (!TextUtils.isEmpty(userBsver)) {
                hashMap.put(KEY_HEADER_BSVER, userBsver);
            }
            if (!TextUtils.isEmpty(userBesrial)) {
                hashMap.put(KEY_HEADER_BESRIAL, userBesrial);
            }
            EfsReporter efsReporter = sReporter;
            if (efsReporter != null) {
                efsReporter.addPublicParams(hashMap);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void setDebug(boolean z3) {
        isDebug = z3;
        LaunchManager.isDebug = z3;
    }

    private static void useIntlServices(boolean z3) {
        isIntl = z3;
        if (isDebug) {
            StringBuilder sb = new StringBuilder();
            sb.append("useIntlServices is ");
            sb.append(isIntl);
        }
    }

    public static void generateCustomLog(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                CustomLogInfo customLogInfo = new CustomLogInfo(null, "exception");
                ArrayList<String> arrayList = new ArrayList<>();
                arrayList.add(KEY_CALLBACK_UMID);
                arrayList.add(KEY_CALLBACK_PAGE_ACTION);
                customLogInfo.mCallbacks = arrayList;
                HashMap hashMap = new HashMap(20);
                hashMap.put(UMCustomLogInfoBuilder.LOG_KEY_CT, "exception");
                hashMap.put(UMCustomLogInfoBuilder.LOG_KEY_AC, str2);
                StringBuffer stringBuffer = new StringBuffer();
                for (Map.Entry entry : hashMap.entrySet()) {
                    stringBuffer.append((String) entry.getKey());
                    stringBuffer.append(":");
                    stringBuffer.append((String) entry.getValue());
                    stringBuffer.append("\n");
                }
                String str3 = "Exception message:\nBack traces starts.\n" + str + "\nBack traces ends.";
                if (!TextUtils.isEmpty(str3)) {
                    stringBuffer.append(str3);
                    stringBuffer.append("\n");
                }
                customLogInfo.mData = stringBuffer;
                CrashApi crashApi = CrashApi.getInstance();
                if (crashApi == null) {
                    return;
                }
                crashApi.generateCustomLog(customLogInfo);
            } catch (Throwable unused) {
            }
        }
    }
}
