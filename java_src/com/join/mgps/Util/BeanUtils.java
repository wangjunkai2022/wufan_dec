package com.join.mgps.Util;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public class BeanUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final List<Class<?>> f27375a = new ArrayList<Class<?>>() { // from class: com.join.mgps.Util.BeanUtils.1
        {
            add(Long.class);
            add(Double.class);
            add(Integer.class);
            add(String.class);
            add(Boolean.class);
            add(Date.class);
            add(java.sql.Date.class);
        }
    };

    private static final boolean a(Class<?> cls) {
        return cls.isPrimitive() || f27375a.contains(cls);
    }

    public static void b(Object obj, Object obj2) {
        Field[] declaredFields;
        Field[] declaredFields2;
        HashMap hashMap = new HashMap();
        for (Field field : obj.getClass().getDeclaredFields()) {
            try {
                field.setAccessible(true);
                field.getName();
                hashMap.put(field.getName(), field.get(obj));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        for (Field field2 : obj2.getClass().getDeclaredFields()) {
            if (hashMap.get(field2.getName()) != null) {
                try {
                    field2.set(obj2, hashMap.get(field2.getName()));
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
        }
    }

    public static <T> List<T> c(List<?> list, Class<T> cls) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(g(list.get(i2), cls));
        }
        return arrayList;
    }

    public static <T> List<T> d(List<Map<String, ?>> list, Class<T> cls) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Map<String, ?> map : list) {
            arrayList.add(f(map, cls));
        }
        return arrayList;
    }

    public static <T> Map<String, T> e(Map<String, ?> map, Class<T> cls) {
        HashMap hashMap = new HashMap(map.size());
        for (String str : map.keySet()) {
            hashMap.put(str, g(map.get(str), cls));
        }
        return hashMap;
    }

    public static <T> T f(Map<String, ?> map, Class<T> cls) {
        try {
            Set<String> keySet = map.keySet();
            T newInstance = cls.newInstance();
            for (String str : keySet) {
                try {
                    Object obj = map.get(str);
                    Field declaredField = cls.getDeclaredField(str);
                    declaredField.setAccessible(true);
                    declaredField.set(newInstance, obj);
                } catch (Exception unused) {
                }
            }
            return newInstance;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T g(Object obj, Class<T> cls) {
        Field[] declaredFields;
        try {
            Class<?> cls2 = obj.getClass();
            if (a(cls)) {
                return obj;
            }
            T newInstance = cls.newInstance();
            for (Field field : cls.getDeclaredFields()) {
                try {
                    int modifiers = field.getModifiers();
                    if (!Modifier.isFinal(modifiers) && !Modifier.isStatic(modifiers)) {
                        String name = field.getName();
                        Mapping mapping = (Mapping) field.getAnnotation(Mapping.class);
                        if (mapping != null && mapping.name() != null && !mapping.name().trim().equals("")) {
                            name = mapping.name();
                        }
                        field.setAccessible(true);
                        Field declaredField = cls2.getDeclaredField(name);
                        declaredField.setAccessible(true);
                        field.set(newInstance, declaredField.get(obj));
                    }
                } catch (Exception e4) {
                    if (e4 instanceof IllegalArgumentException) {
                        e4.printStackTrace();
                    }
                }
            }
            return newInstance;
        } catch (Exception e5) {
            e5.printStackTrace();
            return null;
        }
    }
}
