package com.cmic.sso.sdk.d;

import android.text.TextUtils;
import com.cmic.sso.sdk.e.o;
import java.util.HashMap;
/* compiled from: EventUtils.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static C0050a<String, String> f10885a = new C0050a<>();

    /* compiled from: EventUtils.java */
    /* renamed from: com.cmic.sso.sdk.d.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static class C0050a<K, V> extends HashMap<K, V> {
        private C0050a() {
        }
    }

    public static void a(String str) {
        try {
            String str2 = f10885a.get(str);
            f10885a.put(str, String.valueOf((TextUtils.isEmpty(str2) ? 0 : Integer.parseInt(str2)) + 1));
            C0050a<String, String> c0050a = f10885a;
            c0050a.put(str + "Time", o.a());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void a(String str, String str2) {
        f10885a.put(str, str2);
    }
}
