package com.alipay.a.a;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Properties;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2.dex */
public final class h implements i, j {
    private static Map<Object, Object> c(Type type) {
        while (type != Properties.class) {
            if (type == Hashtable.class) {
                return new Hashtable();
            }
            if (type == IdentityHashMap.class) {
                return new IdentityHashMap();
            }
            if (type == SortedMap.class || type == TreeMap.class) {
                return new TreeMap();
            }
            if (type == ConcurrentMap.class || type == ConcurrentHashMap.class) {
                return new ConcurrentHashMap();
            }
            if (type == Map.class || type == HashMap.class) {
                return new HashMap();
            }
            if (type == LinkedHashMap.class) {
                return new LinkedHashMap();
            }
            if (!(type instanceof ParameterizedType)) {
                Class cls = (Class) type;
                if (cls.isInterface()) {
                    throw new IllegalArgumentException("unsupport type " + type);
                }
                try {
                    return (Map) cls.newInstance();
                } catch (Exception e4) {
                    throw new IllegalArgumentException("unsupport type " + type, e4);
                }
            }
            type = ((ParameterizedType) type).getRawType();
        }
        return new Properties();
    }

    @Override // com.alipay.a.a.j
    public final Object a(Object obj) {
        TreeMap treeMap = new TreeMap();
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            if (!(entry.getKey() instanceof String)) {
                throw new IllegalArgumentException("Map key must be String!");
            }
            treeMap.put((String) entry.getKey(), f.b(entry.getValue()));
        }
        return treeMap;
    }

    @Override // com.alipay.a.a.i, com.alipay.a.a.j
    public final boolean a(Class<?> cls) {
        return Map.class.isAssignableFrom(cls);
    }

    @Override // com.alipay.a.a.i
    public final Object b(Object obj, Type type) {
        if (obj.getClass().equals(org.json.alipay.c.class)) {
            org.json.alipay.c cVar = (org.json.alipay.c) obj;
            Map<Object, Object> c4 = c(type);
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Type type2 = parameterizedType.getActualTypeArguments()[0];
                Type type3 = parameterizedType.getActualTypeArguments()[1];
                if (String.class == type2) {
                    Iterator a4 = cVar.a();
                    while (a4.hasNext()) {
                        String str = (String) a4.next();
                        c4.put(str, i.a.b((Class) type3) ? cVar.a(str) : e.a(cVar.a(str), type3));
                    }
                    return c4;
                }
                throw new IllegalArgumentException("Deserialize Map Key must be String.class");
            }
            throw new IllegalArgumentException("Deserialize Map must be Generics!");
        }
        return null;
    }
}
