package com.ss.android.socialbase.downloader.g;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.downloader.c;
import com.ss.android.socialbase.downloader.i.h;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: DownloadSetting.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final h<Integer, a> f58175a = new h<>(16, 16);

    /* renamed from: b  reason: collision with root package name */
    private static final a f58176b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    private static JSONObject f58177c;

    /* renamed from: d  reason: collision with root package name */
    private static JSONObject f58178d;

    /* renamed from: e  reason: collision with root package name */
    private static Boolean f58179e;

    /* renamed from: f  reason: collision with root package name */
    private static boolean f58180f;

    /* renamed from: g  reason: collision with root package name */
    private static a f58181g;

    /* renamed from: h  reason: collision with root package name */
    private final JSONObject f58182h;

    /* renamed from: i  reason: collision with root package name */
    private final JSONObject f58183i;

    /* renamed from: j  reason: collision with root package name */
    private final Boolean f58184j;

    /* renamed from: k  reason: collision with root package name */
    private int f58185k;

    static {
        a();
    }

    private a(JSONObject jSONObject) {
        Boolean bool;
        this.f58182h = jSONObject;
        JSONObject jSONObject2 = null;
        r0 = null;
        r0 = null;
        Boolean bool2 = null;
        if (jSONObject == null || f("bugfix")) {
            bool = null;
        } else {
            JSONObject optJSONObject = jSONObject.optJSONObject("bugfix");
            if (optJSONObject != null && optJSONObject.has("default") && !f("default")) {
                bool2 = Boolean.valueOf(optJSONObject.optInt("default", 0) == 1);
            }
            Boolean bool3 = bool2;
            jSONObject2 = optJSONObject;
            bool = bool3;
        }
        this.f58183i = jSONObject2;
        this.f58184j = bool;
    }

    public static void a() {
        JSONObject E = c.E();
        f58180f = E.optInt("disable_task_setting", 0) == 1;
        f58177c = E.optJSONObject("disabled_task_keys");
        JSONObject optJSONObject = E.optJSONObject("bugfix");
        Boolean bool = null;
        if (optJSONObject != null && optJSONObject.has("default")) {
            bool = Boolean.valueOf(optJSONObject.optInt("default", 0) == 1);
        }
        f58178d = optJSONObject;
        f58179e = bool;
    }

    @NonNull
    public static JSONObject b() {
        return c.E();
    }

    @NonNull
    public static a c() {
        return f58176b;
    }

    public static boolean f(String str) {
        JSONObject jSONObject = f58177c;
        return jSONObject != null && jSONObject.optInt(str, 0) == 1;
    }

    public JSONObject d(String str) {
        JSONObject jSONObject = this.f58182h;
        if (jSONObject != null && jSONObject.has(str) && !f(str)) {
            return this.f58182h.optJSONObject(str);
        }
        return b().optJSONObject(str);
    }

    public JSONArray e(String str) {
        JSONObject jSONObject = this.f58182h;
        if (jSONObject != null && jSONObject.has(str) && !f(str)) {
            return this.f58182h.optJSONArray(str);
        }
        return b().optJSONArray(str);
    }

    public boolean b(String str, boolean z3) {
        if (this.f58183i != null && !f(str)) {
            if (this.f58183i.has(str)) {
                return this.f58183i.optInt(str, z3 ? 1 : 0) == 1;
            }
            Boolean bool = this.f58184j;
            if (bool != null) {
                return bool.booleanValue();
            }
        }
        JSONObject jSONObject = f58178d;
        if (jSONObject != null) {
            if (jSONObject.has(str)) {
                return f58178d.optInt(str, z3 ? 1 : 0) == 1;
            }
            Boolean bool2 = f58179e;
            if (bool2 != null) {
                return bool2.booleanValue();
            }
        }
        return z3;
    }

    public String c(String str) {
        return a(str, "");
    }

    private static a c(int i2) {
        DownloadInfo downloadInfo;
        if (f58180f) {
            return f58176b;
        }
        Context N = c.N();
        if (N != null && (downloadInfo = Downloader.getInstance(N).getDownloadInfo(i2)) != null) {
            return b(downloadInfo);
        }
        return f58176b;
    }

    public static void a(String str, boolean z3) {
        try {
            if (f58178d == null) {
                f58178d = new JSONObject();
            }
            f58178d.put(str, z3 ? 1 : 0);
        } catch (JSONException unused) {
        }
    }

    @NonNull
    public static a a(int i2) {
        return a(i2, (DownloadInfo) null);
    }

    public int b(String str) {
        return a(str, 0);
    }

    @NonNull
    public static a a(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return f58176b;
        }
        return a(downloadInfo.getId(), downloadInfo);
    }

    public static void b(int i2) {
        a aVar = f58181g;
        if (aVar != null && aVar.f58185k == i2) {
            f58181g = null;
        }
        h<Integer, a> hVar = f58175a;
        synchronized (hVar) {
            hVar.remove(Integer.valueOf(i2));
        }
    }

    private static a a(int i2, DownloadInfo downloadInfo) {
        a aVar;
        a aVar2 = f58181g;
        if (aVar2 == null || aVar2.f58185k != i2) {
            h<Integer, a> hVar = f58175a;
            synchronized (hVar) {
                aVar = hVar.get(Integer.valueOf(i2));
            }
            if (aVar == null) {
                aVar = downloadInfo == null ? c(i2) : b(downloadInfo);
                synchronized (hVar) {
                    hVar.put(Integer.valueOf(i2), aVar);
                }
            }
            aVar.f58185k = i2;
            f58181g = aVar;
            return aVar;
        }
        return aVar2;
    }

    private static a b(DownloadInfo downloadInfo) {
        if (f58180f) {
            return f58176b;
        }
        try {
            String downloadSettingString = downloadInfo.getDownloadSettingString();
            if (!TextUtils.isEmpty(downloadSettingString)) {
                return new a(new JSONObject(downloadSettingString));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return f58176b;
    }

    public boolean a(String str) {
        return b(str, false);
    }

    public int a(String str, int i2) {
        JSONObject jSONObject = this.f58182h;
        if (jSONObject != null && jSONObject.has(str) && !f(str)) {
            return this.f58182h.optInt(str, i2);
        }
        return b().optInt(str, i2);
    }

    public long a(String str, long j4) {
        JSONObject jSONObject = this.f58182h;
        if (jSONObject != null && jSONObject.has(str) && !f(str)) {
            return this.f58182h.optLong(str, j4);
        }
        return b().optLong(str, j4);
    }

    public double a(String str, double d4) {
        JSONObject jSONObject = this.f58182h;
        if (jSONObject != null && jSONObject.has(str) && !f(str)) {
            return this.f58182h.optDouble(str, d4);
        }
        return b().optDouble(str, d4);
    }

    public String a(String str, String str2) {
        JSONObject jSONObject = this.f58182h;
        if (jSONObject != null && jSONObject.has(str) && !f(str)) {
            return this.f58182h.optString(str, str2);
        }
        return b().optString(str, str2);
    }

    @NonNull
    public static a a(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject != b() && !f58180f) {
            a aVar = f58181g;
            if (aVar == null || aVar.f58182h != jSONObject) {
                h<Integer, a> hVar = f58175a;
                synchronized (hVar) {
                    for (a aVar2 : hVar.values()) {
                        if (aVar2.f58182h == jSONObject) {
                            f58181g = aVar2;
                            return aVar2;
                        }
                    }
                    a aVar3 = new a(jSONObject);
                    f58181g = aVar3;
                    return aVar3;
                }
            }
            return aVar;
        }
        return f58176b;
    }

    public static void a(int i2, JSONObject jSONObject) {
        if (jSONObject == null || jSONObject == b() || f58180f) {
            return;
        }
        h<Integer, a> hVar = f58175a;
        synchronized (hVar) {
            a aVar = f58181g;
            if (aVar != null && aVar.f58182h == jSONObject) {
                aVar.f58185k = i2;
            } else {
                aVar = null;
                Iterator<a> it2 = hVar.values().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    a next = it2.next();
                    if (next.f58182h == jSONObject) {
                        next.f58185k = i2;
                        aVar = next;
                        break;
                    }
                }
                if (aVar == null) {
                    aVar = new a(jSONObject);
                    aVar.f58185k = i2;
                }
                f58181g = aVar;
            }
            f58175a.put(Integer.valueOf(i2), aVar);
        }
    }
}
