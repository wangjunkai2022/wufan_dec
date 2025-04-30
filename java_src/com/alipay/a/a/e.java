package com.alipay.a.a;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    static List<i> f9397a;

    static {
        ArrayList arrayList = new ArrayList();
        f9397a = arrayList;
        arrayList.add(new l());
        f9397a.add(new d());
        f9397a.add(new c());
        f9397a.add(new h());
        f9397a.add(new k());
        f9397a.add(new b());
        f9397a.add(new a());
        f9397a.add(new g());
    }

    public static final <T> T a(Object obj, Type type) {
        T t3;
        for (i iVar : f9397a) {
            if (iVar.a(i.a.a(type)) && (t3 = (T) iVar.b(obj, type)) != null) {
                return t3;
            }
        }
        return null;
    }

    public static final Object b(String str, Type type) {
        Object cVar;
        if (str == null || str.length() == 0) {
            return null;
        }
        String trim = str.trim();
        if (trim.startsWith("[") && trim.endsWith("]")) {
            cVar = new org.json.alipay.b(trim);
        } else if (!trim.startsWith("{") || !trim.endsWith("}")) {
            return a(trim, type);
        } else {
            cVar = new org.json.alipay.c(trim);
        }
        return a(cVar, type);
    }
}
