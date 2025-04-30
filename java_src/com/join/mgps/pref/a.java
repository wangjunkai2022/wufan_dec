package com.join.mgps.pref;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AdPrefs.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    protected SharedPreferences f51106a;

    public a(Context context) {
        this.f51106a = PreferenceManager.getDefaultSharedPreferences(context);
    }

    public void a(String str, String str2) {
        SharedPreferences sharedPreferences = this.f51106a;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.getString(str, str2);
    }

    public String b(String str) {
        if (this.f51106a == null) {
            return "";
        }
        return this.f51106a.getString("AdGame_" + str, "");
    }

    public String c(String str, String str2) {
        if (this.f51106a == null) {
            return "";
        }
        return this.f51106a.getString("AdGame_" + str + "_" + str2, "");
    }

    public long d(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("lastTime")) {
                return Long.parseLong(jSONObject.get("lastTime").toString());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return 0L;
    }

    public void e(String str) {
        if (this.f51106a == null) {
            return;
        }
        this.f51106a.edit().remove("AdGame_" + str).apply();
    }

    public void f(String str, String str2) {
        if (this.f51106a == null) {
            return;
        }
        this.f51106a.edit().remove("AdGame_" + str + "_" + str2).apply();
    }

    public void g(String str, String str2) {
        SharedPreferences sharedPreferences = this.f51106a;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putString(str, str2).commit();
    }

    public void h(String str) {
        if (this.f51106a == null) {
            return;
        }
        String str2 = "AdGame_" + str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("startDay", 1);
            jSONObject.put("lastTime", System.currentTimeMillis() + "");
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        this.f51106a.edit().putString(str2, jSONObject.toString()).apply();
    }

    public void i(String str, String str2) {
        if (this.f51106a == null) {
            return;
        }
        String str3 = "AdGame_" + str + "_" + str2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("startDay", 1);
            jSONObject.put("lastTime", System.currentTimeMillis() + "");
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        this.f51106a.edit().putString(str3, jSONObject.toString()).apply();
    }
}
