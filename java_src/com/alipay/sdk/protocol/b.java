package com.alipay.sdk.protocol;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public a f9810a;

    /* renamed from: b  reason: collision with root package name */
    private String f9811b;

    /* renamed from: c  reason: collision with root package name */
    public String[] f9812c;

    private b(String str) {
        this.f9811b = str;
    }

    private String a() {
        return this.f9811b;
    }

    public static List<b> b(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        if (jSONObject == null) {
            return arrayList;
        }
        String optString = jSONObject.optString("name", "");
        String[] split = TextUtils.isEmpty(optString) ? null : optString.split(";");
        for (int i2 = 0; i2 < split.length; i2++) {
            a a4 = a.a(split[i2]);
            if (a4 != a.None) {
                b bVar = new b(split[i2], a4);
                bVar.f9812c = d(split[i2]);
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    private static void c(b bVar) {
        String[] strArr = bVar.f9812c;
        if (strArr.length == 3 && TextUtils.equals(com.alipay.sdk.cons.b.f9718c, strArr[0])) {
            Context context = m.b.b().f72580a;
            n.b a4 = n.b.a();
            if (TextUtils.isEmpty(strArr[1]) || TextUtils.isEmpty(strArr[2])) {
                return;
            }
            a4.f72750a = strArr[1];
            a4.f72751b = strArr[2];
            n.a aVar = new n.a(context);
            try {
                aVar.h(com.alipay.sdk.util.b.a(context).b(), com.alipay.sdk.util.b.a(context).e(), a4.f72750a, a4.f72751b);
            } catch (Exception unused) {
            } finally {
                aVar.close();
            }
        }
    }

    private static String[] d(String str) {
        ArrayList arrayList = new ArrayList();
        int indexOf = str.indexOf(40);
        int lastIndexOf = str.lastIndexOf(41);
        if (indexOf == -1 || lastIndexOf == -1 || lastIndexOf <= indexOf) {
            return null;
        }
        String[] split = str.substring(indexOf + 1, lastIndexOf).split(",");
        if (split != null) {
            for (int i2 = 0; i2 < split.length; i2++) {
                if (!TextUtils.isEmpty(split[i2])) {
                    arrayList.add(split[i2].trim().replaceAll("'", "").replaceAll(m.a.f72569g, ""));
                }
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    private a e() {
        return this.f9810a;
    }

    private static String[] f(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.split(";");
    }

    private String[] g() {
        return this.f9812c;
    }

    private b(String str, a aVar) {
        this.f9811b = str;
        this.f9810a = aVar;
    }
}
