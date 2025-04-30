package com.umeng.analytics.pro;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* compiled from: FieldMetaData.java */
/* loaded from: classes4.dex */
public class bd implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static Map<Class<? extends ar>, Map<? extends ay, bd>> f60521d = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    public final String f60522a;

    /* renamed from: b  reason: collision with root package name */
    public final byte f60523b;

    /* renamed from: c  reason: collision with root package name */
    public final be f60524c;

    public bd(String str, byte b4, be beVar) {
        this.f60522a = str;
        this.f60523b = b4;
        this.f60524c = beVar;
    }

    public static void a(Class<? extends ar> cls, Map<? extends ay, bd> map) {
        f60521d.put(cls, map);
    }

    public static Map<? extends ay, bd> a(Class<? extends ar> cls) {
        if (!f60521d.containsKey(cls)) {
            try {
                cls.newInstance();
            } catch (IllegalAccessException e4) {
                throw new RuntimeException("IllegalAccessException for TBase class: " + cls.getName() + ", message: " + e4.getMessage());
            } catch (InstantiationException e5) {
                throw new RuntimeException("InstantiationException for TBase class: " + cls.getName() + ", message: " + e5.getMessage());
            }
        }
        return f60521d.get(cls);
    }
}
