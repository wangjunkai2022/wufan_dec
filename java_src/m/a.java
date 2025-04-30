package m;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: c  reason: collision with root package name */
    public static final String f72565c = "\"&";

    /* renamed from: d  reason: collision with root package name */
    public static final String f72566d = "&";

    /* renamed from: e  reason: collision with root package name */
    public static final String f72567e = "bizcontext=\"";

    /* renamed from: f  reason: collision with root package name */
    public static final String f72568f = "bizcontext=";

    /* renamed from: g  reason: collision with root package name */
    public static final String f72569g = "\"";

    /* renamed from: h  reason: collision with root package name */
    public static final String f72570h = "appkey";

    /* renamed from: i  reason: collision with root package name */
    public static final String f72571i = "ty";

    /* renamed from: j  reason: collision with root package name */
    public static final String f72572j = "sv";

    /* renamed from: k  reason: collision with root package name */
    public static final String f72573k = "an";

    /* renamed from: l  reason: collision with root package name */
    public static final String f72574l = "av";

    /* renamed from: m  reason: collision with root package name */
    public static final String f72575m = "sdk_start_time";

    /* renamed from: n  reason: collision with root package name */
    public static final String f72576n = "UTF-8";

    /* renamed from: a  reason: collision with root package name */
    private String f72577a;

    /* renamed from: b  reason: collision with root package name */
    private String f72578b;

    public a(Context context) {
        this.f72577a = "";
        this.f72578b = "";
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            this.f72577a = packageInfo.versionName;
            this.f72578b = packageInfo.packageName;
        } catch (Exception unused) {
        }
    }

    private static String c(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split(str2);
        for (int i2 = 0; i2 < split.length; i2++) {
            if (!TextUtils.isEmpty(split[i2]) && split[i2].startsWith(str3)) {
                return split[i2];
            }
        }
        return null;
    }

    private String d(String str, String str2) throws JSONException, UnsupportedEncodingException {
        String b4 = b("", "");
        return str + b4 + str2;
    }

    private String e(String str, String str2, String str3) throws JSONException, UnsupportedEncodingException {
        String substring = str.substring(str2.length());
        JSONObject jSONObject = new JSONObject(substring.substring(0, substring.length() - str3.length()));
        if (!jSONObject.has("appkey")) {
            jSONObject.put("appkey", com.alipay.sdk.cons.a.f9702c);
        }
        if (!jSONObject.has(f72571i)) {
            jSONObject.put(f72571i, "and_lite");
        }
        if (!jSONObject.has(f72572j)) {
            jSONObject.put(f72572j, com.alipay.sdk.cons.a.f9705f);
        }
        if (!jSONObject.has(f72573k)) {
            jSONObject.put(f72573k, this.f72578b);
        }
        if (!jSONObject.has(f72574l)) {
            jSONObject.put(f72574l, this.f72577a);
        }
        if (!jSONObject.has(f72575m)) {
            jSONObject.put(f72575m, System.currentTimeMillis());
        }
        String jSONObject2 = jSONObject.toString();
        return str2 + jSONObject2 + str3;
    }

    private static boolean f(String str) {
        return !str.contains(f72565c);
    }

    private String g(String str) {
        try {
            String c4 = c(str, f72566d, f72568f);
            if (TextUtils.isEmpty(c4)) {
                str = str + f72566d + d(f72568f, "");
            } else {
                int indexOf = str.indexOf(c4);
                str = str.substring(0, indexOf) + e(c4, f72568f, "") + str.substring(indexOf + c4.length());
            }
        } catch (Throwable unused) {
        }
        return str;
    }

    private String h(String str) {
        try {
            String c4 = c(str, f72565c, f72567e);
            if (TextUtils.isEmpty(c4)) {
                return str + f72566d + d(f72567e, f72569g);
            }
            if (!c4.endsWith(f72569g)) {
                c4 = c4 + f72569g;
            }
            int indexOf = str.indexOf(c4);
            return str.substring(0, indexOf) + e(c4, f72567e, f72569g) + str.substring(indexOf + c4.length());
        } catch (Throwable unused) {
            return str;
        }
    }

    public final String a(String str) {
        if (TextUtils.isEmpty(str) || str.startsWith("new_external_info==")) {
            return str;
        }
        if (!str.contains(f72565c)) {
            return g(str);
        }
        return h(str);
    }

    public final String b(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("appkey", com.alipay.sdk.cons.a.f9702c);
            jSONObject.put(f72571i, "and_lite");
            jSONObject.put(f72572j, com.alipay.sdk.cons.a.f9705f);
            jSONObject.put(f72573k, this.f72578b);
            jSONObject.put(f72574l, this.f72577a);
            jSONObject.put(f72575m, System.currentTimeMillis());
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put(str, str2);
            }
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }
}
