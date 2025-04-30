package com.join.mgps.Util;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.dto.Constant;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.umeng.analytics.pro.ai;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: SignUtil.java */
/* loaded from: classes3.dex */
public class u1 {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f27864a = {"0", "1", PayCenterOrderRequest.PAY_TYPE_RECHARGE, "3", "4", "5", "6", "7", "8", "9", "a", "b", ai.aD, com.xinzhu.overmind.utils.helpers.d.f64708a, "e", "f"};

    private static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b4 : bArr) {
            stringBuffer.append(b(b4));
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r3 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String b(byte r3) {
        /*
            if (r3 >= 0) goto L4
            int r3 = r3 + 256
        L4:
            int r0 = r3 / 16
            int r3 = r3 % 16
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String[] r2 = com.join.mgps.Util.u1.f27864a
            r0 = r2[r0]
            r1.append(r0)
            r3 = r2[r3]
            r1.append(r3)
            java.lang.String r3 = r1.toString()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.u1.b(byte):java.lang.String");
    }

    public static String c(String str) {
        new ArrayList();
        try {
            return a(MessageDigest.getInstance("MD5").digest(("Se+mLqD-mV@y6^Z+" + str).getBytes()));
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    private static String d(Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        boolean z3 = false;
        try {
            for (String str : map.keySet()) {
                if (!str.equals("sig") && !str.equals(Constant.MD5)) {
                    arrayList.add(str + SimpleComparison.EQUAL_TO_OPERATION + map.get(str));
                    if ("device_id".equals(str)) {
                        z3 = true;
                    }
                }
            }
            if (!z3) {
                arrayList.add("device_id=");
            }
            Collections.sort(arrayList);
            return a(MessageDigest.getInstance("MD5").digest(("Se+mLqD-mV@y6^Z+" + arrayList.toString().replace("[", "").replace("]", "").replace(", ", m.a.f72566d)).getBytes()));
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    private static String e(Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        boolean z3 = false;
        try {
            for (String str : map.keySet()) {
                if (!str.equals("sig") && !str.equals(Constant.MD5)) {
                    arrayList.add(str + SimpleComparison.EQUAL_TO_OPERATION + map.get(str));
                    if ("device_id".equals(str)) {
                        z3 = true;
                    }
                }
            }
            if (!z3) {
                arrayList.add("device_id=");
            }
            Collections.sort(arrayList);
            return a(MessageDigest.getInstance("MD5").digest(("Se+mLqD-mV@y6^Z+" + arrayList.toString()).getBytes()));
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public static String f(Object obj) {
        return d(h(obj));
    }

    public static String g(Object obj) {
        return d(j(obj));
    }

    private static Map<String, String> h(Object obj) {
        HashMap hashMap = new HashMap();
        Field[] declaredFields = obj.getClass().getDeclaredFields();
        int length = declaredFields.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (!Modifier.isStatic(declaredFields[i2].getModifiers())) {
                String name = declaredFields[i2].getName();
                try {
                    boolean isAccessible = declaredFields[i2].isAccessible();
                    declaredFields[i2].setAccessible(true);
                    Object obj2 = declaredFields[i2].get(obj);
                    if (obj2 != null) {
                        hashMap.put(name, obj2.toString());
                    }
                    declaredFields[i2].setAccessible(isAccessible);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                } catch (IllegalArgumentException e5) {
                    e5.printStackTrace();
                }
            }
        }
        return hashMap;
    }

    private static void i(Object obj, Map<String, String> map) {
        Field[] declaredFields = obj.getClass().getDeclaredFields();
        int length = declaredFields.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (!Modifier.isStatic(declaredFields[i2].getModifiers())) {
                String name = declaredFields[i2].getName();
                try {
                    boolean isAccessible = declaredFields[i2].isAccessible();
                    declaredFields[i2].setAccessible(true);
                    Object obj2 = declaredFields[i2].get(obj);
                    if (obj2 != null) {
                        if (obj2 instanceof Collection) {
                            map.put(name, JsonMapper.getInstance().toJson(obj2).replace(",", ", "));
                        } else {
                            map.put(name, obj2.toString());
                        }
                    }
                    declaredFields[i2].setAccessible(isAccessible);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                } catch (IllegalArgumentException e5) {
                    e5.printStackTrace();
                }
            }
        }
    }

    private static Map<String, String> j(Object obj) {
        HashMap hashMap = new HashMap();
        Field[] declaredFields = obj.getClass().getDeclaredFields();
        int length = declaredFields.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (!Modifier.isStatic(declaredFields[i2].getModifiers())) {
                String name = declaredFields[i2].getName();
                try {
                    boolean isAccessible = declaredFields[i2].isAccessible();
                    declaredFields[i2].setAccessible(true);
                    Object obj2 = declaredFields[i2].get(obj);
                    if (obj2 != null) {
                        if (name.equals("args")) {
                            i(obj2, hashMap);
                        } else {
                            hashMap.put(name, obj2.toString());
                        }
                    }
                    declaredFields[i2].setAccessible(isAccessible);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                } catch (IllegalArgumentException e5) {
                    e5.printStackTrace();
                }
            }
        }
        return hashMap;
    }

    private static boolean k(Object obj) {
        try {
            return ((Class) obj.getClass().getField("TYPE").get(null)).isPrimitive();
        } catch (Exception unused) {
            return false;
        }
    }
}
