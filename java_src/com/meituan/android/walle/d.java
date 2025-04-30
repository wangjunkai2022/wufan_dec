package com.meituan.android.walle;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ChannelReader.java */
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final String f52619a = "channel";

    private d() {
    }

    public static c a(File file) {
        Map<String, String> b4 = b(file);
        if (b4 == null) {
            return null;
        }
        b4.remove("channel");
        return new c(b4.get("channel"), b4);
    }

    public static Map<String, String> b(File file) {
        try {
            String c4 = c(file);
            if (c4 == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(c4);
            Iterator<String> keys = jSONObject.keys();
            HashMap hashMap = new HashMap();
            while (keys.hasNext()) {
                String obj = keys.next().toString();
                hashMap.put(obj, jSONObject.getString(obj));
            }
            return hashMap;
        } catch (JSONException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String c(File file) {
        return f.d(file, a.f52605e);
    }
}
