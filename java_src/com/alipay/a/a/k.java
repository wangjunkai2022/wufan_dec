package com.alipay.a.a;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public final class k implements i {
    @Override // com.alipay.a.a.i, com.alipay.a.a.j
    public final boolean a(Class<?> cls) {
        return Set.class.isAssignableFrom(cls);
    }

    @Override // com.alipay.a.a.i
    public final Object b(Object obj, Type type) {
        if (obj.getClass().equals(org.json.alipay.b.class)) {
            org.json.alipay.b bVar = (org.json.alipay.b) obj;
            HashSet hashSet = new HashSet();
            Class cls = type instanceof ParameterizedType ? ((ParameterizedType) type).getActualTypeArguments()[0] : Object.class;
            for (int i2 = 0; i2 < bVar.a(); i2++) {
                hashSet.add(e.a(bVar.a(i2), cls));
            }
            return hashSet;
        }
        return null;
    }
}
