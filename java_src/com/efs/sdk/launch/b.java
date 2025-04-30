package com.efs.sdk.launch;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.efs.sdk.base.Constants;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.protocol.record.EfsJSONLog;
import com.umeng.umcrash.UMCrash;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static long f11427a;

    /* renamed from: b  reason: collision with root package name */
    private static long f11428b;

    /* renamed from: c  reason: collision with root package name */
    private static long f11429c;

    /* renamed from: d  reason: collision with root package name */
    private static long f11430d;

    /* renamed from: e  reason: collision with root package name */
    private static long f11431e;

    /* renamed from: f  reason: collision with root package name */
    private static boolean f11432f;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f11433g;

    /* renamed from: h  reason: collision with root package name */
    private static boolean f11434h;

    /* renamed from: i  reason: collision with root package name */
    private static long f11435i;

    /* renamed from: j  reason: collision with root package name */
    private static long f11436j;

    /* renamed from: k  reason: collision with root package name */
    private static int f11437k;

    /* renamed from: l  reason: collision with root package name */
    private static List<EfsJSONLog> f11438l = new ArrayList();

    /* renamed from: m  reason: collision with root package name */
    private static Map<String, Long[]> f11439m = new HashMap();

    public static void a(Activity activity, String str, boolean z3) {
        long currentTimeMillis;
        Context applicationContext;
        String name;
        int i2;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        long j9;
        long j10;
        long j11;
        long j12;
        if (TextUtils.equals(str, LaunchManager.PAGE_ON_CREATE)) {
            if (z3) {
                boolean z4 = LaunchManager.isDebug;
                f11430d = System.currentTimeMillis();
            }
        } else if (TextUtils.equals(str, LaunchManager.PAGE_ON_RE_START)) {
            if (z3 && f11437k == 0) {
                boolean z5 = LaunchManager.isDebug;
                f11431e = System.currentTimeMillis();
                f11433g = true;
            }
        } else if (TextUtils.equals(str, LaunchManager.PAGE_ON_START)) {
            if (z3) {
                boolean z6 = LaunchManager.isDebug;
                f11437k++;
                f11434h = true;
            }
        } else if (!TextUtils.equals(str, LaunchManager.PAGE_ON_RESUME)) {
            if (TextUtils.equals(str, LaunchManager.PAGE_ON_STOP) && z3) {
                boolean z7 = LaunchManager.isDebug;
                f11437k--;
            }
        } else if (z3) {
        } else {
            boolean z8 = LaunchManager.isDebug;
            if (f11432f) {
                f11432f = false;
                long currentTimeMillis2 = System.currentTimeMillis();
                long j13 = currentTimeMillis2 - f11429c;
                if (LaunchManager.isDebug) {
                    "loadTime is ".concat(String.valueOf(j13));
                }
                long j14 = currentTimeMillis2 - f11427a;
                if (LaunchManager.isDebug) {
                    "======>>>>>> coldTime is ".concat(String.valueOf(j14));
                }
                int i4 = !c.d(activity.getApplicationContext()) ? 1 : 0;
                if (LaunchManager.isDebug) {
                    "type is ".concat(String.valueOf(i4));
                }
                a(activity.getApplicationContext(), i4, activity.getClass().getName(), j14, f11427a, f11428b, f11435i, f11429c, f11436j, currentTimeMillis2, j13, 0L, 0L, f11439m);
            } else if (f11437k == 1) {
                if (f11433g) {
                    f11433g = false;
                    j12 = System.currentTimeMillis() - f11431e;
                    if (LaunchManager.isDebug) {
                        "======>>>>>> hotTime is ".concat(String.valueOf(j12));
                    }
                    applicationContext = activity.getApplicationContext();
                    name = activity.getClass().getName();
                    i2 = 2;
                    j4 = 0;
                    j5 = 0;
                    j6 = 0;
                    j7 = 0;
                    j8 = 0;
                    j9 = 0;
                    j10 = 0;
                    j11 = 0;
                    currentTimeMillis = 0;
                } else if (f11434h) {
                    currentTimeMillis = System.currentTimeMillis() - f11430d;
                    if (LaunchManager.isDebug) {
                        "======>>>>>> warmTime is ".concat(String.valueOf(currentTimeMillis));
                    }
                    applicationContext = activity.getApplicationContext();
                    name = activity.getClass().getName();
                    i2 = 3;
                    j4 = 0;
                    j5 = 0;
                    j6 = 0;
                    j7 = 0;
                    j8 = 0;
                    j9 = 0;
                    j10 = 0;
                    j11 = 0;
                    j12 = 0;
                }
                a(applicationContext, i2, name, j4, j5, j6, j7, j8, j9, j10, j11, j12, currentTimeMillis, f11439m);
            }
            f11434h = false;
        }
    }

    private static void a(Context context, int i2, String str, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, Map<String, Long[]> map) {
        String str2;
        String str3;
        int i4;
        List<EfsJSONLog> list;
        StringBuilder sb;
        String generateString;
        Long valueOf;
        if (!LaunchManager.isInit()) {
            if (i2 == 0) {
                boolean z3 = LaunchManager.isDebug;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("w_type", i2);
                    jSONObject.put("w_url", str);
                    jSONObject.put("l_version", "0.0.1.umeng");
                    jSONObject.put("wl_avgv", j4);
                    jSONObject.put("wd_init", j5);
                    jSONObject.put("wd_inittm", j6);
                    jSONObject.put("wl_init", j7);
                    jSONObject.put("wd_build", j6);
                    jSONObject.put("wd_buildtm", j8);
                    jSONObject.put("wl_build", j9);
                    jSONObject.put("wd_page", j8);
                    jSONObject.put("wd_pagetm", j10);
                    jSONObject.put("wl_page", j11);
                    if (map != null && !map.isEmpty()) {
                        JSONObject jSONObject2 = new JSONObject();
                        for (Map.Entry<String, Long[]> entry : map.entrySet()) {
                            String key = entry.getKey();
                            Long[] value = entry.getValue();
                            if (key != null && value != null) {
                                try {
                                    JSONArray jSONArray = new JSONArray();
                                    jSONArray.put(value[0]);
                                    jSONArray.put(value[1]);
                                    jSONObject2.put(key, jSONArray);
                                } catch (Throwable unused) {
                                }
                            }
                        }
                        jSONObject.put("userExtra", jSONObject2);
                    }
                    c.a(context, jSONObject.toString());
                    if (LaunchManager.isDebug) {
                        new StringBuilder("no init, cache first launch, content is ").append(jSONObject.toString());
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    th.printStackTrace();
                    return;
                }
            }
            if (LaunchManager.isDebug) {
                str2 = "wl_page";
                str3 = "wd_pagetm";
                "no init, cache launch, type is ".concat(String.valueOf(i2));
            } else {
                str2 = "wl_page";
                str3 = "wd_pagetm";
            }
            EfsJSONLog efsJSONLog = new EfsJSONLog(Constants.LOG_TYPE_STARTPERF);
            efsJSONLog.put("w_type", Integer.valueOf(i2));
            efsJSONLog.put("w_url", str);
            efsJSONLog.put("l_version", "0.0.1.umeng");
            if (i2 == 1) {
                efsJSONLog.put("wl_avgv", Long.valueOf(j4));
                efsJSONLog.put("wd_init", Long.valueOf(j5));
                efsJSONLog.put("wd_inittm", Long.valueOf(j6));
                efsJSONLog.put("wl_init", Long.valueOf(j7));
                efsJSONLog.put("wd_build", Long.valueOf(j6));
                efsJSONLog.put("wd_buildtm", Long.valueOf(j8));
                efsJSONLog.put("wl_build", Long.valueOf(j9));
                efsJSONLog.put("wd_page", Long.valueOf(j8));
                efsJSONLog.put(str3, Long.valueOf(j10));
                efsJSONLog.put(str2, Long.valueOf(j11));
                if (map != null && !map.isEmpty()) {
                    JSONObject jSONObject3 = new JSONObject();
                    for (Map.Entry<String, Long[]> entry2 : map.entrySet()) {
                        String key2 = entry2.getKey();
                        Long[] value2 = entry2.getValue();
                        if (key2 != null && value2 != null) {
                            try {
                                JSONArray jSONArray2 = new JSONArray();
                                try {
                                    jSONArray2.put(value2[0]);
                                    try {
                                        jSONArray2.put(value2[1]);
                                        jSONObject3.put(key2, jSONArray2);
                                    } catch (Throwable unused2) {
                                    }
                                } catch (Throwable unused3) {
                                }
                            } catch (Throwable unused4) {
                            }
                        }
                    }
                    efsJSONLog.put("userExtra", jSONObject3);
                }
            } else if (i2 == 2) {
                efsJSONLog.put("wl_avgv", Long.valueOf(j12));
            } else {
                i4 = 3;
                if (i2 == 3) {
                    efsJSONLog.put("wl_avgv", Long.valueOf(j13));
                }
                list = f11438l;
                if (list != null || list.size() >= i4) {
                    boolean z4 = LaunchManager.isDebug;
                    return;
                }
                f11438l.add(efsJSONLog);
                if (!LaunchManager.isDebug) {
                    return;
                }
                sb = new StringBuilder("cache launch report --->>> ");
                generateString = efsJSONLog.generateString();
            }
            i4 = 3;
            list = f11438l;
            if (list != null) {
            }
            boolean z42 = LaunchManager.isDebug;
            return;
        }
        LaunchConfigManager launchConfigManager = LaunchManager.getLaunchConfigManager();
        if (launchConfigManager == null || !launchConfigManager.enableTracer()) {
            boolean z5 = LaunchManager.isDebug;
            return;
        }
        EfsJSONLog efsJSONLog2 = new EfsJSONLog(Constants.LOG_TYPE_STARTPERF);
        efsJSONLog2.put("w_type", Integer.valueOf(i2));
        efsJSONLog2.put("w_url", str);
        efsJSONLog2.put("l_version", "0.0.1.umeng");
        if (i2 == 0 || i2 == 1) {
            efsJSONLog2.put("wl_avgv", Long.valueOf(j4));
            efsJSONLog2.put("wd_init", Long.valueOf(j5));
            efsJSONLog2.put("wd_inittm", Long.valueOf(j6));
            efsJSONLog2.put("wl_init", Long.valueOf(j7));
            efsJSONLog2.put("wd_build", Long.valueOf(j6));
            efsJSONLog2.put("wd_buildtm", Long.valueOf(j8));
            efsJSONLog2.put("wl_build", Long.valueOf(j9));
            efsJSONLog2.put("wd_page", Long.valueOf(j8));
            efsJSONLog2.put("wd_pagetm", Long.valueOf(j10));
            efsJSONLog2.put("wl_page", Long.valueOf(j11));
            if (map != null && !map.isEmpty()) {
                JSONObject jSONObject4 = new JSONObject();
                for (Map.Entry<String, Long[]> entry3 : map.entrySet()) {
                    String key3 = entry3.getKey();
                    Long[] value3 = entry3.getValue();
                    if (key3 != null && value3 != null) {
                        try {
                            JSONArray jSONArray3 = new JSONArray();
                            jSONArray3.put(value3[0]);
                            jSONArray3.put(value3[1]);
                            jSONObject4.put(key3, jSONArray3);
                        } catch (Throwable unused5) {
                        }
                    }
                }
                efsJSONLog2.put("userExtra", jSONObject4);
            }
        } else {
            if (i2 == 2) {
                valueOf = Long.valueOf(j12);
            } else if (i2 == 3) {
                valueOf = Long.valueOf(j13);
            }
            efsJSONLog2.put("wl_avgv", valueOf);
        }
        String a4 = c.a(context);
        if (LaunchManager.isDebug) {
            "umid is ".concat(String.valueOf(a4));
        }
        if (a4 != null && !TextUtils.isEmpty(a4)) {
            if (LaunchManager.isDebug) {
                new StringBuilder("send current launch report --->>> ").append(efsJSONLog2.generateString());
            }
            EfsReporter reporter = LaunchManager.getReporter();
            if (reporter != null) {
                reporter.send(efsJSONLog2);
                return;
            }
            return;
        }
        List<EfsJSONLog> list2 = f11438l;
        if (list2 == null || list2.size() >= 3) {
            boolean z6 = LaunchManager.isDebug;
            return;
        }
        f11438l.add(efsJSONLog2);
        if (!LaunchManager.isDebug) {
            return;
        }
        sb = new StringBuilder("cache launch report --->>> ");
        generateString = efsJSONLog2.generateString();
        sb.append(generateString);
    }

    public static void a(Context context, String str) {
        boolean z3 = LaunchManager.isDebug;
        if (str == null || TextUtils.isEmpty(str)) {
            str = c.a(context);
        }
        if (str == null || TextUtils.isEmpty(str)) {
            return;
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put(UMCrash.KEY_HEADER_UMID, str);
        if (LaunchManager.getReporter() != null) {
            LaunchManager.getReporter().addPublicParams(hashMap);
        }
        String b4 = c.b(context);
        if (b4 != null && !TextUtils.isEmpty(b4)) {
            try {
                JSONObject jSONObject = new JSONObject(b4);
                jSONObject.put(UMCrash.KEY_HEADER_UMID, str);
                if (a(jSONObject)) {
                    c.c(context);
                }
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
        }
        List<EfsJSONLog> list = f11438l;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (EfsJSONLog efsJSONLog : f11438l) {
            if (efsJSONLog != null) {
                if (LaunchManager.isDebug) {
                    new StringBuilder("send cache launch report --->>> ").append(efsJSONLog.generateString());
                }
                EfsReporter reporter = LaunchManager.getReporter();
                if (reporter != null) {
                    reporter.send(efsJSONLog);
                }
            }
        }
        f11438l.clear();
        f11438l = null;
    }

    public static void a(String str, long j4) {
        Map<String, Long[]> map = f11439m;
        if (map == null || map.containsKey(str) || f11439m.size() >= 10) {
            boolean z3 = LaunchManager.isDebug;
            return;
        }
        Long[] lArr = new Long[2];
        lArr[0] = Long.valueOf(j4);
        f11439m.put(str, lArr);
    }

    public static void a(String str, boolean z3) {
        if (TextUtils.equals(str, LaunchManager.APP_CONSTRUCT)) {
            return;
        }
        if (!TextUtils.equals(str, LaunchManager.APP_ATTACH_BASE_CONTEXT)) {
            if (!TextUtils.equals(str, LaunchManager.APP_ON_CREATE) || z3) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            f11429c = currentTimeMillis;
            f11436j = currentTimeMillis - f11428b;
            if (LaunchManager.isDebug) {
                new StringBuilder("buildTime is ").append(f11436j);
            }
        } else if (z3) {
            f11427a = System.currentTimeMillis();
            f11432f = true;
        } else {
            long currentTimeMillis2 = System.currentTimeMillis();
            f11428b = currentTimeMillis2;
            f11435i = currentTimeMillis2 - f11427a;
            if (LaunchManager.isDebug) {
                new StringBuilder("initTime is ").append(f11435i);
            }
        }
    }

    private static boolean a(JSONObject jSONObject) {
        try {
            EfsJSONLog efsJSONLog = new EfsJSONLog(Constants.LOG_TYPE_STARTPERF);
            efsJSONLog.put("w_type", jSONObject.opt("w_type"));
            efsJSONLog.put("w_url", jSONObject.opt("w_url"));
            efsJSONLog.put("l_version", jSONObject.opt("l_version"));
            efsJSONLog.put("wl_avgv", jSONObject.opt("wl_avgv"));
            efsJSONLog.put("wd_init", jSONObject.opt("wd_init"));
            efsJSONLog.put("wd_inittm", jSONObject.opt("wd_inittm"));
            efsJSONLog.put("wl_init", jSONObject.opt("wl_init"));
            efsJSONLog.put("wd_build", jSONObject.opt("wd_build"));
            efsJSONLog.put("wd_buildtm", jSONObject.opt("wd_buildtm"));
            efsJSONLog.put("wl_build", jSONObject.opt("wl_build"));
            efsJSONLog.put("wd_page", jSONObject.opt("wd_page"));
            efsJSONLog.put("wd_pagetm", jSONObject.opt("wd_pagetm"));
            efsJSONLog.put("wl_page", jSONObject.opt("wl_page"));
            efsJSONLog.put("userExtra", jSONObject.opt("userExtra"));
            if (LaunchManager.isDebug) {
                new StringBuilder("send cache cold launch report --->>> ").append(efsJSONLog.generateString());
            }
            EfsReporter reporter = LaunchManager.getReporter();
            if (reporter != null) {
                reporter.send(efsJSONLog);
                return true;
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static void b(String str, long j4) {
        Map<String, Long[]> map = f11439m;
        if (map == null || !map.containsKey(str)) {
            boolean z3 = LaunchManager.isDebug;
            return;
        }
        Long[] lArr = f11439m.get(str);
        lArr[1] = Long.valueOf(j4);
        f11439m.put(str, lArr);
    }
}
