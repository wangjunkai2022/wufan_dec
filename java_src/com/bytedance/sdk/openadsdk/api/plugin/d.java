package com.bytedance.sdk.openadsdk.api.plugin;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.AdConfig;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTCustomController;
import com.bytedance.sdk.openadsdk.api.plugin.f;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.qq.e.comm.pi.ACTD;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PluginReporter.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: c  reason: collision with root package name */
    private static SharedPreferences f10590c;

    /* renamed from: b  reason: collision with root package name */
    private static ScheduledExecutorService f10589b = Executors.newSingleThreadScheduledExecutor(new f.b("tt_pangle_thread_pl_report"));

    /* renamed from: d  reason: collision with root package name */
    private static final List<Pair<String, JSONObject>> f10591d = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    static final Map<String, String> f10588a = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private static volatile boolean f10592e = false;

    public static void a(Context context) {
        f10590c = context.getSharedPreferences("tt_sdk_settings_other", 0);
    }

    public static void c(String str, JSONObject jSONObject) {
        f10591d.add(new Pair<>(str, jSONObject));
    }

    private static void e(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        TTAdManager adManager = TTAdSdk.getAdManager();
        if (adManager != null) {
            Bundle bundle = new Bundle();
            bundle.putInt("action", 1);
            bundle.putString("event_name", str);
            bundle.putString("event_extra", jSONObject.toString());
            adManager.getExtra(Bundle.class, bundle);
            return;
        }
        b(str, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject f(String str, JSONObject jSONObject) {
        String str2 = "4.6.0.2";
        JSONObject jSONObject2 = new JSONObject();
        try {
            int i2 = Build.VERSION.SDK_INT;
            jSONObject.put("os_api", i2);
            jSONObject.put("support_abi", Arrays.toString(i2 >= 21 ? Build.SUPPORTED_ABIS : new String[]{Build.CPU_ABI, Build.CPU_ABI2}));
            jSONObject2.put("ad_sdk_version", "4.6.0.2");
            String a4 = e.a("com.byted.pangle");
            if (!TextUtils.isEmpty(a4)) {
                str2 = a4;
            }
            jSONObject2.put(PluginConstants.KEY_PLUGIN_VERSION, str2);
            jSONObject2.put("timestamp", System.currentTimeMillis() / 1000);
            jSONObject2.put("is_plugin", true);
            jSONObject2.put("event_extra", jSONObject.toString());
            jSONObject2.put("type", str);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("model", Build.MODEL);
            jSONObject3.put("vendor", Build.MANUFACTURER);
            Map<String, String> map = f10588a;
            jSONObject3.put("imei", map.get("imei"));
            jSONObject3.put("oaid", map.get("oaid"));
            jSONObject2.put("device_info", jSONObject3);
        } catch (JSONException unused) {
        }
        return jSONObject2;
    }

    public static final void a(int i2, String str, long j4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("duration", Long.valueOf(j4));
            jSONObject.putOpt("code", Integer.valueOf(i2));
            jSONObject.putOpt("message", str);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        e("plugin_load_failed", jSONObject);
    }

    public static final void b(int i2, String str, long j4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("duration", Long.valueOf(j4));
            jSONObject.putOpt("code", Integer.valueOf(i2));
            jSONObject.putOpt("message", str);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        b("plugin_load_failed", jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(List<JSONObject> list) {
        if (list == null) {
            return;
        }
        SharedPreferences sharedPreferences = f10590c;
        String format = String.format("https://%s%s", sharedPreferences != null ? sharedPreferences.getString("url_alog", "api-access.pangolin-sdk-toutiao.com") : "api-access.pangolin-sdk-toutiao.com", "/api/ad/union/sdk/stats/batch/");
        JSONObject jSONObject = new JSONObject();
        try {
            List<Pair<String, JSONObject>> list2 = f10591d;
            if (list2.size() > 0) {
                Iterator<Pair<String, JSONObject>> it2 = list2.iterator();
                while (it2.hasNext()) {
                    Pair<String, JSONObject> next = it2.next();
                    list.add(f((String) next.first, (JSONObject) next.second));
                    it2.remove();
                }
            }
            jSONObject.put("stats_list", new JSONArray((Collection) list));
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.api.plugin.a.c.a().a(true, format, com.bytedance.sdk.openadsdk.api.plugin.b.b.a(jSONObject).toString().getBytes());
    }

    public static void a(String str, JSONObject jSONObject) {
        e("zeus_" + str, jSONObject);
    }

    public static void b(final String str, final JSONObject jSONObject) {
        if (f10592e) {
            return;
        }
        f10589b.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.plugin.d.1
            @Override // java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                arrayList.add(d.f(str, jSONObject));
                d.c(arrayList);
            }
        });
    }

    public static void a() {
        if (f10592e) {
            return;
        }
        try {
            f10592e = true;
            f10589b.shutdown();
        } catch (Throwable unused) {
        }
    }

    public static void a(final List<JSONObject> list) {
        if (f10592e) {
            return;
        }
        if (list != null && list.isEmpty() && f10591d.isEmpty()) {
            return;
        }
        f10589b.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.plugin.d.2
            @Override // java.lang.Runnable
            public void run() {
                d.c(list);
            }
        });
    }

    public static void a(final Bundle bundle) {
        if (f10592e) {
            return;
        }
        f10589b.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.plugin.d.3
            @Override // java.lang.Runnable
            public void run() {
                Bundle bundle2 = bundle;
                if (bundle2 == null) {
                    return;
                }
                try {
                    String string = bundle2.getString("event_name");
                    String string2 = bundle.getString("event_extra");
                    JSONObject jSONObject = TextUtils.isEmpty(string2) ? new JSONObject() : new JSONObject(string2);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(d.f(string, jSONObject));
                    d.c(arrayList);
                } catch (Exception unused) {
                }
            }
        });
    }

    public static void a(AdConfig adConfig) {
        if (adConfig == null) {
            return;
        }
        Map<String, String> map = f10588a;
        map.put(ACTD.APPID_KEY, adConfig.getAppId());
        Object extra = adConfig.getExtra("plugin_update_conf");
        if (extra instanceof Integer) {
            String num = ((Integer) extra).toString();
            if (num == null) {
                num = PayCenterOrderRequest.PAY_TYPE_RECHARGE;
            }
            map.put("plugin_update_conf", num);
        }
        TTCustomController customController = adConfig.getCustomController();
        if (customController != null) {
            try {
                map.put("oaid", customController.getDevOaid());
                map.put("imei", customController.getDevImei());
            } catch (Exception unused) {
            }
        }
    }
}
