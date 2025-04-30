package com.alipay.a.a;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class a implements i, j {
    @Override // com.alipay.a.a.j
    public final Object a(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : (Object[]) obj) {
            arrayList.add(f.b(obj2));
        }
        return arrayList;
    }

    @Override // com.alipay.a.a.i, com.alipay.a.a.j
    public final boolean a(Class<?> cls) {
        return cls.isArray();
    }

    @Override // com.alipay.a.a.i
    public final Object b(Object obj, Type type) {
        if (obj.getClass().equals(org.json.alipay.b.class)) {
            org.json.alipay.b bVar = (org.json.alipay.b) obj;
            if (type instanceof GenericArrayType) {
                throw new IllegalArgumentException("Does not support generic array!");
            }
            Class<?> componentType = ((Class) type).getComponentType();
            int a4 = bVar.a();
            Object newInstance = Array.newInstance(componentType, a4);
            for (int i2 = 0; i2 < a4; i2++) {
                Array.set(newInstance, i2, e.a(bVar.a(i2), componentType));
            }
            return newInstance;
        }
        return null;
    }
}
