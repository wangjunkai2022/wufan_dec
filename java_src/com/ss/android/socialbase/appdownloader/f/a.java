package com.ss.android.socialbase.appdownloader.f;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.socialbase.appdownloader.g;
import com.umeng.analytics.pro.ai;
import java.lang.reflect.Field;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AnUtils.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<String, g.a> f57683a = new HashMap<>();

    public static boolean a(JSONArray jSONArray, String str) {
        if (jSONArray != null && !TextUtils.isEmpty(str)) {
            int length = jSONArray.length();
            for (int i2 = 0; i2 < length; i2++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i2);
                if (optJSONObject != null && str.equals(optJSONObject.optString("type")) && a(optJSONObject)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return true;
        }
        int i2 = Build.VERSION.SDK_INT;
        String optString = jSONObject.optString("allow_os_api_range");
        int optInt = jSONObject.optInt("min_os_api", -1);
        if (TextUtils.isEmpty(optString)) {
            return optInt <= 0 || i2 >= optInt;
        }
        try {
            String[] split = optString.split("[-,]");
            for (int i4 = 0; i4 < split.length; i4 += 2) {
                int parseInt = Integer.parseInt(split[i4]);
                int parseInt2 = Integer.parseInt(split[i4 + 1]);
                if (i2 >= parseInt && i2 <= parseInt2) {
                    return true;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return false;
    }

    public static boolean c(JSONObject jSONObject) {
        return jSONObject == null || e.a() || jSONObject.optInt("scy_mode") != 1;
    }

    public static boolean a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        return b(jSONObject) && a(jSONObject.optJSONArray("device_requirements")) && c(jSONObject);
    }

    public static boolean a(JSONArray jSONArray) {
        int length;
        String[] split;
        if (jSONArray == null || (length = jSONArray.length()) == 0) {
            return true;
        }
        boolean z3 = false;
        for (int i2 = 0; i2 < length; i2++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i2);
            if (optJSONObject != null) {
                String optString = optJSONObject.optString("package_names");
                JSONArray optJSONArray = optJSONObject.optJSONArray("version_allow");
                JSONArray optJSONArray2 = optJSONObject.optJSONArray("version_block");
                String optString2 = optJSONObject.optString("allow_version_range");
                if (TextUtils.isEmpty(optString)) {
                    return false;
                }
                for (String str : optString.split(",")) {
                    if (BaseConstants.SCHEME_MARKET.equals(str)) {
                        str = d.i();
                    }
                    g.a b4 = b(str);
                    if (b4 != null && !(z3 = a(optJSONArray, optJSONArray2, optString2, b4))) {
                        return false;
                    }
                }
                continue;
            }
        }
        return z3;
    }

    private static boolean b(JSONArray jSONArray, String str) {
        if (jSONArray != null && str != null) {
            int length = jSONArray.length();
            for (int i2 = 0; i2 < length; i2++) {
                if (str.equalsIgnoreCase(jSONArray.optString(i2).trim())) {
                    return true;
                }
            }
        }
        return false;
    }

    private static g.a b(String str) {
        HashMap<String, g.a> hashMap = f57683a;
        if (hashMap.containsKey(str)) {
            g.a aVar = hashMap.get(str);
            if (aVar != null) {
                return aVar;
            }
            return null;
        }
        g.a b4 = g.b(str);
        hashMap.put(str, b4);
        if (b4 != null) {
            return b4;
        }
        return null;
    }

    private static boolean a(JSONArray jSONArray, JSONArray jSONArray2, String str, @NonNull g.a aVar) {
        String g4 = aVar.g();
        int f4 = aVar.f();
        String str2 = f4 + "_" + g4;
        if (!TextUtils.isEmpty(str)) {
            try {
                String[] split = str.split("[-,]");
                for (int i2 = 0; i2 < split.length; i2 += 2) {
                    int parseInt = Integer.parseInt(split[i2]);
                    int parseInt2 = Integer.parseInt(split[i2 + 1]);
                    if (f4 >= parseInt && f4 <= parseInt2) {
                        return true;
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } else if (jSONArray != null && jSONArray.length() > 0) {
            if (b(jSONArray, str2)) {
                return true;
            }
        } else if (jSONArray2 != null && jSONArray2.length() > 0 && !b(jSONArray2, str2)) {
            return true;
        }
        return false;
    }

    public static g.a a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            if (!TextUtils.isEmpty(str)) {
                g.a b4 = b(str);
                if (b4 != null) {
                    return b4;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static boolean a(JSONObject jSONObject, Context context, String str) {
        if (!TextUtils.isEmpty(str) && context != null && jSONObject != null) {
            String optString = jSONObject.optString(ai.az);
            try {
                String a4 = c.a(jSONObject.optString("az"), optString);
                String a5 = c.a(jSONObject.optString("ba"), optString);
                Field declaredField = ContextWrapper.class.getDeclaredField(a4);
                declaredField.setAccessible(true);
                Object obj = declaredField.get(context);
                Field declaredField2 = obj.getClass().getDeclaredField(a5);
                declaredField2.setAccessible(true);
                declaredField2.set(obj, str);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
