package com.mob.mcl.a;

import android.os.Bundle;
import android.text.TextUtils;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.network.StringPart;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.HashonHelper;
import java.io.Serializable;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class b implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public String f53170a;

    /* renamed from: b  reason: collision with root package name */
    public String f53171b;

    /* renamed from: c  reason: collision with root package name */
    public String f53172c;

    /* renamed from: d  reason: collision with root package name */
    public String f53173d;

    /* renamed from: e  reason: collision with root package name */
    public int f53174e;

    /* renamed from: f  reason: collision with root package name */
    public int f53175f;

    /* renamed from: g  reason: collision with root package name */
    public int f53176g;

    public static HashMap<String, String> a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return HashonHelper.fromJson(str);
    }

    public static b a(Bundle bundle) {
        b bVar = new b();
        if (bundle != null) {
            bVar.f53170a = bundle.getString("type");
            bVar.f53171b = bundle.getString("url");
            bVar.f53172c = bundle.getString("headers");
            bVar.f53174e = bundle.getInt("chunkLength");
            bVar.f53173d = bundle.getString("body");
            bVar.f53175f = bundle.getInt("readTimout");
            bVar.f53176g = bundle.getInt("connectionTimeout");
        }
        return bVar;
    }

    public static Bundle a(String str, String str2, HashMap<String, String> hashMap, StringPart stringPart, int i2, NetworkHelper.NetworkTimeOut networkTimeOut) {
        Bundle bundle = new Bundle();
        bundle.putString("type", str);
        bundle.putString("url", str2);
        HashMap hashMap2 = new HashMap();
        if (hashMap != null) {
            hashMap2.putAll(hashMap);
        }
        bundle.putString("headers", new Hashon().fromHashMap(hashMap2));
        bundle.putInt("chunkLength", i2);
        if (stringPart != null) {
            bundle.putString("body", stringPart.toString());
        }
        bundle.putInt("readTimout", networkTimeOut.readTimout);
        bundle.putInt("connectionTimeout", networkTimeOut.connectionTimeout);
        return bundle;
    }
}
