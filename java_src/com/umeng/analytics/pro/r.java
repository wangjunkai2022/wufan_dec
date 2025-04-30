package com.umeng.analytics.pro;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.CoreProtocol;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: EventTracker.java */
/* loaded from: classes4.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private static final String f60882a = "fs_lc_tl_uapp";

    /* renamed from: f  reason: collision with root package name */
    private static final String f60883f = "-1";

    /* renamed from: g  reason: collision with root package name */
    private static Context f60884g;

    /* renamed from: b  reason: collision with root package name */
    private final int f60885b;

    /* renamed from: c  reason: collision with root package name */
    private final int f60886c;

    /* renamed from: d  reason: collision with root package name */
    private final int f60887d;

    /* renamed from: e  reason: collision with root package name */
    private final int f60888e;

    /* renamed from: h  reason: collision with root package name */
    private JSONObject f60889h;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: EventTracker.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final r f60890a = new r();

        private a() {
        }
    }

    public static r a(Context context) {
        if (f60884g == null && context != null) {
            f60884g = context.getApplicationContext();
        }
        return a.f60890a;
    }

    private void b(Context context) {
        try {
            String string = PreferenceWrapper.getDefault(context).getString(f60882a, null);
            if (!TextUtils.isEmpty(string)) {
                this.f60889h = new JSONObject(string);
            }
            a();
        } catch (Exception unused) {
        }
    }

    private void c(Context context) {
        try {
            if (this.f60889h != null) {
                PreferenceWrapper.getDefault(f60884g).edit().putString(f60882a, this.f60889h.toString()).commit();
            }
        } catch (Throwable unused) {
        }
    }

    private r() {
        this.f60885b = 128;
        this.f60886c = 256;
        this.f60887d = 1024;
        this.f60888e = 10;
        this.f60889h = null;
        try {
            b(f60884g);
        } catch (Throwable unused) {
        }
    }

    private boolean c(String str) {
        if (str == null) {
            return true;
        }
        try {
            return str.trim().getBytes().length <= 1024;
        } catch (Exception unused) {
            return false;
        }
    }

    public void a(String str, String str2, long j4, int i2, String str3) {
        String a4;
        try {
            if (a(str) && b(str2)) {
                if (Arrays.asList(c.aG).contains(str)) {
                    MLog.e("key is " + str + ", please check key, illegal");
                    UMLog.aq(i.f60769m, 0, "\\|");
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", str);
                jSONObject.put("ts", currentTimeMillis);
                if (j4 > 0) {
                    jSONObject.put(c.W, j4);
                }
                jSONObject.put("__t", h.f60737a);
                if (!TextUtils.isEmpty(str2)) {
                    jSONObject.put(str, str2);
                }
                if (UMUtils.isMainProgress(f60884g)) {
                    a4 = x.a().d(UMGlobalContext.getAppContext(f60884g));
                } else {
                    a4 = x.a().a(UMGlobalContext.getAppContext(f60884g), currentTimeMillis);
                }
                if (TextUtils.isEmpty(a4)) {
                    a4 = f60883f;
                }
                jSONObject.put("__i", a4);
                if (!TextUtils.isEmpty(str3)) {
                    try {
                        JSONObject jSONObject2 = new JSONObject(str3);
                        if (jSONObject2.length() > 0) {
                            jSONObject.put(c.au, jSONObject2);
                        }
                    } catch (JSONException unused) {
                    }
                }
                jSONObject.put("ds", 0);
                jSONObject.put("pn", UMGlobalContext.getInstance(f60884g).getProcessName(f60884g));
                a();
                JSONObject jSONObject3 = this.f60889h;
                if (jSONObject3 != null && jSONObject3.has(str) && !((Boolean) this.f60889h.get(str)).booleanValue()) {
                    jSONObject.put(c.Y, 1);
                    this.f60889h.put(str, true);
                    c(f60884g);
                }
                Context context = f60884g;
                UMWorkDispatch.sendEvent(context, 4097, CoreProtocol.getInstance(context), jSONObject);
                return;
            }
            UMLog.aq(i.f60768l, 0, "\\|");
        } catch (Throwable unused2) {
        }
    }

    private boolean b(String str) {
        if (str == null) {
            return true;
        }
        try {
            if (str.trim().getBytes().length <= 256) {
                return true;
            }
        } catch (Exception unused) {
        }
        MLog.e("value is " + str + ", please check value, illegal");
        return false;
    }

    private boolean b(Map<String, Object> map) {
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    for (Map.Entry<String, Object> entry : map.entrySet()) {
                        if (!a(entry.getKey())) {
                            UMLog.aq(i.f60764h, 0, "\\|");
                            return false;
                        } else if (entry.getValue() == null) {
                            UMLog.aq(i.f60765i, 0, "\\|");
                            return false;
                        } else if (entry.getValue() instanceof String) {
                            if (c.aE.equals(entry.getKey())) {
                                if (!c(entry.getValue().toString())) {
                                    UMLog.aq(i.P, 0, "\\|");
                                    return false;
                                }
                            } else if ("_$!url".equals(entry.getKey())) {
                                if (!c(entry.getValue().toString())) {
                                    UMLog.aq("url参数长度超过限制。|参数url长度不能超过1024字符。", 0, "\\|");
                                    return false;
                                }
                            } else if (!b(entry.getValue().toString())) {
                                UMLog.aq(i.f60766j, 0, "\\|");
                                return false;
                            }
                        }
                    }
                    return true;
                }
            } catch (Exception unused) {
                return true;
            }
        }
        UMLog.aq(i.f60763g, 0, "\\|");
        return false;
    }

    public void a(String str, Map<String, Object> map, long j4, String str2, boolean z3) {
        String a4;
        try {
            if (!a(str)) {
                UMLog.aq(i.f60762f, 0, "\\|");
            } else if (b(map)) {
                if (map.size() > 100) {
                    MLog.e("map size is " + map.size() + ", please check");
                } else if (Arrays.asList(c.aG).contains(str)) {
                    MLog.e("key is " + str + ", please check key, illegal");
                    UMLog.aq(i.f60758b, 0, "\\|");
                } else {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("id", str);
                    jSONObject.put("ts", System.currentTimeMillis());
                    if (j4 > 0) {
                        jSONObject.put(c.W, j4);
                    }
                    jSONObject.put("__t", h.f60737a);
                    ULog.i("befort ekv map, event is " + jSONObject.toString());
                    for (Map.Entry<String, Object> entry : map.entrySet()) {
                        if (!Arrays.asList(c.aG).contains(entry.getKey())) {
                            Object value = entry.getValue();
                            if (!(value instanceof String) && !(value instanceof Integer) && !(value instanceof Long) && !(value instanceof Short) && !(value instanceof Float) && !(value instanceof Double)) {
                                if (value.getClass().isArray()) {
                                    if (value instanceof int[]) {
                                        int[] iArr = (int[]) value;
                                        if (iArr.length > 10) {
                                            MLog.e("please check key or value, size overlength!");
                                            return;
                                        }
                                        JSONArray jSONArray = new JSONArray();
                                        for (int i2 : iArr) {
                                            jSONArray.put(i2);
                                        }
                                        jSONObject.put(entry.getKey(), jSONArray);
                                    } else if (value instanceof double[]) {
                                        double[] dArr = (double[]) value;
                                        if (dArr.length > 10) {
                                            MLog.e("please check key or value, size overlength!");
                                            return;
                                        }
                                        JSONArray jSONArray2 = new JSONArray();
                                        for (double d4 : dArr) {
                                            jSONArray2.put(d4);
                                        }
                                        jSONObject.put(entry.getKey(), jSONArray2);
                                    } else if (value instanceof long[]) {
                                        long[] jArr = (long[]) value;
                                        if (jArr.length > 10) {
                                            MLog.e("please check key or value, size overlength!");
                                            return;
                                        }
                                        JSONArray jSONArray3 = new JSONArray();
                                        for (long j5 : jArr) {
                                            jSONArray3.put(j5);
                                        }
                                        jSONObject.put(entry.getKey(), jSONArray3);
                                    } else if (value instanceof float[]) {
                                        float[] fArr = (float[]) value;
                                        if (fArr.length > 10) {
                                            MLog.e("please check key or value, size overlength!");
                                            return;
                                        }
                                        JSONArray jSONArray4 = new JSONArray();
                                        for (float f4 : fArr) {
                                            jSONArray4.put(f4);
                                        }
                                        jSONObject.put(entry.getKey(), jSONArray4);
                                    } else if (value instanceof short[]) {
                                        short[] sArr = (short[]) value;
                                        if (sArr.length > 10) {
                                            MLog.e("please check key or value, size overlength!");
                                            return;
                                        }
                                        JSONArray jSONArray5 = new JSONArray();
                                        for (short s3 : sArr) {
                                            jSONArray5.put((int) s3);
                                        }
                                        jSONObject.put(entry.getKey(), jSONArray5);
                                    } else if (value instanceof String[]) {
                                        String[] strArr = (String[]) value;
                                        if (strArr.length > 10) {
                                            MLog.e("please check key or value, size overlength!");
                                            return;
                                        }
                                        JSONArray jSONArray6 = new JSONArray();
                                        for (int i4 = 0; i4 < strArr.length; i4++) {
                                            if (strArr[i4] == null) {
                                                MLog.e("please check array, null item!");
                                                return;
                                            } else if (!b(strArr[i4])) {
                                                return;
                                            } else {
                                                jSONArray6.put(strArr[i4]);
                                            }
                                        }
                                        jSONObject.put(entry.getKey(), jSONArray6);
                                    } else {
                                        MLog.e("please check key or value, illegal type!");
                                        return;
                                    }
                                } else {
                                    MLog.e("please check key or value, illegal type!");
                                    return;
                                }
                            }
                            jSONObject.put(entry.getKey(), value);
                        } else {
                            UMLog.aq(i.f60761e, 0, "\\|");
                            return;
                        }
                    }
                    if (UMUtils.isMainProgress(f60884g)) {
                        a4 = x.a().d(UMGlobalContext.getAppContext(f60884g));
                    } else {
                        a4 = x.a().a(UMGlobalContext.getAppContext(f60884g), jSONObject.getLong("ts"));
                    }
                    if (TextUtils.isEmpty(a4)) {
                        a4 = f60883f;
                    }
                    jSONObject.put("__i", a4);
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            JSONObject jSONObject2 = new JSONObject(str2);
                            if (jSONObject2.length() > 0) {
                                jSONObject.put(c.au, jSONObject2);
                            }
                        } catch (JSONException unused) {
                        }
                    }
                    jSONObject.put("ds", 0);
                    jSONObject.put("pn", UMGlobalContext.getInstance(f60884g).getProcessName(f60884g));
                    a();
                    JSONObject jSONObject3 = this.f60889h;
                    if (jSONObject3 != null && jSONObject3.has(str) && !((Boolean) this.f60889h.get(str)).booleanValue()) {
                        jSONObject.put(c.Y, 1);
                        this.f60889h.put(str, true);
                        c(f60884g);
                    }
                    ULog.i("----->>>>>ekv event json is " + jSONObject.toString());
                    if (!z3) {
                        Context context = f60884g;
                        UMWorkDispatch.sendEvent(context, 4097, CoreProtocol.getInstance(context), jSONObject);
                        return;
                    }
                    Context context2 = f60884g;
                    UMWorkDispatch.sendEvent(context2, 4355, CoreProtocol.getInstance(context2), jSONObject);
                }
            }
        } catch (Throwable unused2) {
        }
    }

    public void a(String str, Map<String, Object> map, String str2) {
        try {
            if (a(str)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", str);
                jSONObject.put("ts", System.currentTimeMillis());
                jSONObject.put(c.W, 0);
                jSONObject.put("__t", h.f60738b);
                ULog.i("befort gkv map, event is " + jSONObject.toString());
                Iterator<Map.Entry<String, Object>> it2 = map.entrySet().iterator();
                for (int i2 = 0; i2 < 10 && it2.hasNext(); i2++) {
                    Map.Entry<String, Object> next = it2.next();
                    if (!c.Y.equals(next.getKey()) && !c.W.equals(next.getKey()) && !"id".equals(next.getKey()) && !"ts".equals(next.getKey())) {
                        Object value = next.getValue();
                        if ((value instanceof String) || (value instanceof Integer) || (value instanceof Long)) {
                            jSONObject.put(next.getKey(), value);
                        }
                    }
                }
                String d4 = x.a().d(UMGlobalContext.getAppContext(f60884g));
                if (TextUtils.isEmpty(d4)) {
                    d4 = f60883f;
                }
                jSONObject.put("__i", d4);
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        JSONObject jSONObject2 = new JSONObject(str2);
                        if (jSONObject2.length() > 0) {
                            jSONObject.put(c.au, jSONObject2);
                        }
                    } catch (JSONException unused) {
                    }
                }
                jSONObject.put("ds", 0);
                jSONObject.put("pn", UMGlobalContext.getInstance(f60884g).getProcessName(f60884g));
                ULog.i("----->>>>>gkv event json is " + jSONObject.toString());
                Context context = f60884g;
                UMWorkDispatch.sendEvent(context, 4098, CoreProtocol.getInstance(context), jSONObject);
            }
        } catch (Throwable unused2) {
        }
    }

    private void a() {
        try {
            String imprintProperty = UMEnvelopeBuild.imprintProperty(f60884g, "track_list", "");
            if (TextUtils.isEmpty(imprintProperty)) {
                return;
            }
            String[] split = imprintProperty.split("!");
            JSONObject jSONObject = new JSONObject();
            int i2 = 0;
            if (this.f60889h != null) {
                for (String str : split) {
                    String subStr = HelperUtils.subStr(str, 128);
                    if (this.f60889h.has(subStr)) {
                        jSONObject.put(subStr, this.f60889h.get(subStr));
                    }
                }
            }
            this.f60889h = new JSONObject();
            if (split.length >= 10) {
                while (i2 < 10) {
                    a(split[i2], jSONObject);
                    i2++;
                }
            } else {
                while (i2 < split.length) {
                    a(split[i2], jSONObject);
                    i2++;
                }
            }
            c(f60884g);
        } catch (Exception unused) {
        }
    }

    private void a(String str, JSONObject jSONObject) throws JSONException {
        String subStr = HelperUtils.subStr(str, 128);
        if (jSONObject.has(subStr)) {
            a(subStr, ((Boolean) jSONObject.get(subStr)).booleanValue());
        } else {
            a(subStr, false);
        }
    }

    private void a(String str, boolean z3) {
        try {
            if (c.Y.equals(str) || c.W.equals(str) || "id".equals(str) || "ts".equals(str) || this.f60889h.has(str)) {
                return;
            }
            this.f60889h.put(str, z3);
        } catch (Exception unused) {
        }
    }

    public void a(List<String> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    a();
                    JSONObject jSONObject = this.f60889h;
                    if (jSONObject == null) {
                        this.f60889h = new JSONObject();
                        int size = list.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            JSONObject jSONObject2 = this.f60889h;
                            if (jSONObject2 == null) {
                                this.f60889h = new JSONObject();
                            } else if (jSONObject2.length() >= 5) {
                                break;
                            }
                            String str = list.get(i2);
                            if (!TextUtils.isEmpty(str)) {
                                a(HelperUtils.subStr(str, 128), false);
                            }
                        }
                        c(f60884g);
                        return;
                    } else if (jSONObject.length() >= 5) {
                        MLog.d("already setFistLaunchEvent, igone.");
                        return;
                    } else {
                        for (int i4 = 0; i4 < list.size(); i4++) {
                            if (this.f60889h.length() >= 5) {
                                MLog.d(" add setFistLaunchEvent over.");
                                return;
                            }
                            a(HelperUtils.subStr(list.get(i4), 128), false);
                        }
                        c(f60884g);
                        return;
                    }
                }
            } catch (Exception unused) {
                return;
            }
        }
        UMLog.aq(i.ak, 0, "\\|");
    }

    private JSONObject a(Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                try {
                    String key = entry.getKey();
                    if (key != null) {
                        String subStr = HelperUtils.subStr(key, 128);
                        Object value = entry.getValue();
                        if (value != null) {
                            int i2 = 0;
                            if (value.getClass().isArray()) {
                                if (value instanceof int[]) {
                                    int[] iArr = (int[]) value;
                                    JSONArray jSONArray = new JSONArray();
                                    while (i2 < iArr.length) {
                                        jSONArray.put(iArr[i2]);
                                        i2++;
                                    }
                                    jSONObject.put(subStr, jSONArray);
                                } else if (value instanceof double[]) {
                                    double[] dArr = (double[]) value;
                                    JSONArray jSONArray2 = new JSONArray();
                                    while (i2 < dArr.length) {
                                        jSONArray2.put(dArr[i2]);
                                        i2++;
                                    }
                                    jSONObject.put(subStr, jSONArray2);
                                } else if (value instanceof long[]) {
                                    long[] jArr = (long[]) value;
                                    JSONArray jSONArray3 = new JSONArray();
                                    while (i2 < jArr.length) {
                                        jSONArray3.put(jArr[i2]);
                                        i2++;
                                    }
                                    jSONObject.put(subStr, jSONArray3);
                                } else if (value instanceof float[]) {
                                    float[] fArr = (float[]) value;
                                    JSONArray jSONArray4 = new JSONArray();
                                    while (i2 < fArr.length) {
                                        jSONArray4.put(fArr[i2]);
                                        i2++;
                                    }
                                    jSONObject.put(subStr, jSONArray4);
                                } else if (value instanceof short[]) {
                                    short[] sArr = (short[]) value;
                                    JSONArray jSONArray5 = new JSONArray();
                                    while (i2 < sArr.length) {
                                        jSONArray5.put((int) sArr[i2]);
                                        i2++;
                                    }
                                    jSONObject.put(subStr, jSONArray5);
                                }
                            } else if (value instanceof List) {
                                List list = (List) value;
                                JSONArray jSONArray6 = new JSONArray();
                                while (i2 < list.size()) {
                                    Object obj = list.get(i2);
                                    if ((obj instanceof String) || (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Short)) {
                                        jSONArray6.put(list.get(i2));
                                    }
                                    i2++;
                                }
                                if (jSONArray6.length() > 0) {
                                    jSONObject.put(subStr, jSONArray6);
                                }
                            } else if (value instanceof String) {
                                jSONObject.put(subStr, HelperUtils.subStr(value.toString(), 256));
                            } else {
                                if (!(value instanceof Long) && !(value instanceof Integer) && !(value instanceof Float) && !(value instanceof Double) && !(value instanceof Short)) {
                                    MLog.e("The param has not support type. please check !");
                                }
                                jSONObject.put(subStr, value);
                            }
                        }
                    }
                } catch (Exception e4) {
                    MLog.e(e4);
                }
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private boolean a(String str) {
        if (str != null) {
            try {
                int length = str.trim().getBytes().length;
                if (length > 0 && length <= 128) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        MLog.e("key is " + str + ", please check key, illegal");
        return false;
    }
}
