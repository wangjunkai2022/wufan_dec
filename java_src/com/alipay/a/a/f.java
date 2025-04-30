package com.alipay.a.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static List<j> f9398a;

    static {
        ArrayList arrayList = new ArrayList();
        f9398a = arrayList;
        arrayList.add(new l());
        f9398a.add(new d());
        f9398a.add(new c());
        f9398a.add(new h());
        f9398a.add(new b());
        f9398a.add(new a());
        f9398a.add(new g());
    }

    public static String a(Object obj) {
        if (obj == null) {
            return null;
        }
        Object b4 = b(obj);
        if (i.a.b(b4.getClass())) {
            return org.json.alipay.c.c(b4.toString());
        }
        if (Collection.class.isAssignableFrom(b4.getClass())) {
            return new org.json.alipay.b((Collection) ((List) b4)).toString();
        }
        if (Map.class.isAssignableFrom(b4.getClass())) {
            return new org.json.alipay.c((Map) b4).toString();
        }
        throw new IllegalArgumentException("Unsupported Class : " + b4.getClass());
    }

    public static Object b(Object obj) {
        Object a4;
        if (obj == null) {
            return null;
        }
        for (j jVar : f9398a) {
            if (jVar.a(obj.getClass()) && (a4 = jVar.a(obj)) != null) {
                return a4;
            }
        }
        throw new IllegalArgumentException("Unsupported Class : " + obj.getClass());
    }
}
