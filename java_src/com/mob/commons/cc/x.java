package com.mob.commons.cc;

import com.mob.commons.cc.w;
import com.mob.commons.cc.y;
import com.mob.commons.cc.z;
import com.tencent.cos.common.COSHttpResponseKey;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
/* loaded from: classes4.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    public int f52950a;

    /* renamed from: b  reason: collision with root package name */
    public String f52951b;

    /* renamed from: c  reason: collision with root package name */
    public int f52952c;

    /* renamed from: d  reason: collision with root package name */
    public String f52953d;

    /* renamed from: e  reason: collision with root package name */
    public String f52954e;

    /* renamed from: f  reason: collision with root package name */
    public String f52955f;

    /* renamed from: g  reason: collision with root package name */
    public int f52956g;

    /* renamed from: h  reason: collision with root package name */
    public String f52957h;

    /* renamed from: i  reason: collision with root package name */
    public int f52958i;

    /* renamed from: j  reason: collision with root package name */
    public int f52959j;

    /* renamed from: k  reason: collision with root package name */
    public int f52960k;

    /* renamed from: l  reason: collision with root package name */
    public String f52961l;

    /* renamed from: m  reason: collision with root package name */
    public Object[] f52962m;

    /* renamed from: n  reason: collision with root package name */
    public String f52963n;

    /* renamed from: o  reason: collision with root package name */
    public String[] f52964o;

    /* renamed from: p  reason: collision with root package name */
    public String f52965p;

    /* renamed from: q  reason: collision with root package name */
    public Object f52966q;

    /* renamed from: r  reason: collision with root package name */
    public int f52967r;

    /* renamed from: s  reason: collision with root package name */
    public String f52968s;

    /* renamed from: t  reason: collision with root package name */
    public String[] f52969t;

    /* renamed from: u  reason: collision with root package name */
    public int f52970u;

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f52971a;

        /* renamed from: b  reason: collision with root package name */
        public r f52972b;

        /* renamed from: c  reason: collision with root package name */
        public List<Object> f52973c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f52974d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f52975e;

        /* renamed from: f  reason: collision with root package name */
        public ArrayList<x> f52976f;

        /* renamed from: g  reason: collision with root package name */
        public ArrayList<Object> f52977g;

        public Object a() {
            return this.f52972b.a();
        }

        public Object b(String str) {
            return this.f52972b.a(str);
        }

        public void a(Object obj) {
            this.f52972b.a(obj);
        }

        public Class<?> a(String str) {
            return this.f52972b.b(str);
        }

        public void a(String str, Class<?> cls) {
            this.f52972b.a(str, cls);
        }

        public void a(String str, Object obj) {
            this.f52972b.a(str, obj);
        }

        public void a(String str, Class<?> cls, Object obj) {
            this.f52972b.a(str, cls, obj);
        }
    }

    public x(int i2) {
        this.f52950a = i2;
    }

    public void a(w.a aVar) throws Throwable {
        int i2 = 0;
        switch (this.f52950a) {
            case 1:
                this.f52957h = (String) aVar.a();
                this.f52968s = (String) aVar.a();
                return;
            case 2:
                this.f52966q = aVar.a();
                return;
            case 3:
                this.f52957h = (String) aVar.a();
                return;
            case 4:
                this.f52960k = ((Integer) aVar.a()).intValue();
                return;
            case 5:
                this.f52960k = ((Integer) aVar.a()).intValue();
                return;
            case 6:
                this.f52970u = ((Integer) aVar.a()).intValue();
                return;
            case 7:
                this.f52967r = ((Integer) aVar.a()).intValue();
                return;
            case 8:
            case 15:
            case 23:
            case 25:
            case 28:
            case 30:
            case 33:
            case 34:
            default:
                return;
            case 9:
                this.f52957h = (String) aVar.a();
                return;
            case 10:
                this.f52953d = (String) aVar.a();
                this.f52954e = (String) aVar.a();
                return;
            case 11:
                this.f52961l = (String) aVar.a();
                return;
            case 12:
                this.f52965p = (String) aVar.a();
                this.f52958i = ((Integer) aVar.a()).intValue();
                return;
            case 13:
                this.f52963n = (String) aVar.a();
                this.f52961l = (String) aVar.a();
                return;
            case 14:
                this.f52963n = (String) aVar.a();
                this.f52965p = (String) aVar.a();
                this.f52958i = ((Integer) aVar.a()).intValue();
                return;
            case 16:
                this.f52958i = ((Integer) aVar.a()).intValue();
                return;
            case 17:
                this.f52963n = (String) aVar.a();
                return;
            case 18:
                this.f52963n = (String) aVar.a();
                this.f52958i = ((Integer) aVar.a()).intValue();
                return;
            case 19:
                this.f52957h = (String) aVar.a();
                return;
            case 20:
                this.f52955f = (String) aVar.a();
                return;
            case 21:
                this.f52955f = (String) aVar.a();
                int intValue = ((Integer) aVar.a()).intValue();
                this.f52956g = intValue;
                this.f52956g = intValue + aVar.b();
                return;
            case 22:
                this.f52955f = (String) aVar.a();
                int intValue2 = ((Integer) aVar.a()).intValue();
                this.f52956g = intValue2;
                this.f52956g = intValue2 + aVar.b();
                return;
            case 24:
                this.f52961l = (String) aVar.a();
                return;
            case 26:
                this.f52963n = (String) aVar.a();
                this.f52961l = (String) aVar.a();
                return;
            case 27:
                this.f52963n = (String) aVar.a();
                return;
            case 29:
                this.f52957h = (String) aVar.a();
                this.f52958i = ((Integer) aVar.a()).intValue();
                int intValue3 = ((Integer) aVar.a()).intValue();
                this.f52959j = intValue3;
                this.f52959j = intValue3 + aVar.b();
                return;
            case 31:
                this.f52957h = (String) aVar.a();
                this.f52958i = ((Integer) aVar.a()).intValue();
                return;
            case 32:
                this.f52958i = ((Integer) aVar.a()).intValue();
                return;
            case 35:
                this.f52953d = (String) aVar.a();
                this.f52954e = (String) aVar.a();
                return;
            case 36:
                int intValue4 = ((Integer) aVar.a()).intValue();
                this.f52964o = new String[intValue4];
                this.f52969t = new String[intValue4];
                while (i2 < intValue4) {
                    this.f52964o[i2] = (String) aVar.a();
                    this.f52969t[i2] = (String) aVar.a();
                    i2++;
                }
                return;
            case 37:
                int intValue5 = ((Integer) aVar.a()).intValue();
                this.f52962m = new Object[intValue5];
                while (i2 < intValue5) {
                    this.f52962m[i2] = aVar.a();
                    i2++;
                }
                return;
            case 38:
                int intValue6 = ((Integer) aVar.a()).intValue();
                this.f52964o = new String[intValue6];
                while (i2 < intValue6) {
                    this.f52964o[i2] = (String) aVar.a();
                    i2++;
                }
                return;
        }
    }

    void b(Object obj, r rVar) throws Throwable {
        Object a4 = rVar.a();
        if (obj instanceof Map) {
            ((Map) obj).put(this.f52961l, a4);
            return;
        }
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            Field field = null;
            try {
                field = cls.getDeclaredField(this.f52961l);
            } catch (Throwable unused) {
            }
            if (field != null && !Modifier.isStatic(field.getModifiers())) {
                field.setAccessible(true);
                field.set(obj, a4);
                return;
            }
        }
        x xVar = new x(12);
        xVar.f52951b = this.f52951b;
        xVar.f52952c = this.f52952c;
        xVar.f52965p = "set" + Character.toUpperCase(this.f52961l.charAt(0)) + this.f52961l.substring(1);
        xVar.f52958i = 1;
        xVar.a(obj, new Object[]{a4}, rVar);
    }

    public x() {
    }

    void b(Class<?> cls, r rVar) throws Throwable {
        Field field;
        Object a4 = rVar.a();
        while (cls != null) {
            try {
                field = cls.getDeclaredField(this.f52961l);
            } catch (Throwable unused) {
                field = null;
            }
            if (field != null && Modifier.isStatic(field.getModifiers())) {
                field.setAccessible(true);
                field.set(null, a4);
                return;
            }
            cls = cls.getSuperclass();
        }
        x xVar = new x(14);
        xVar.f52951b = this.f52951b;
        xVar.f52952c = this.f52952c;
        xVar.f52963n = this.f52963n;
        xVar.f52965p = "set" + Character.toUpperCase(this.f52961l.charAt(0)) + this.f52961l.substring(1);
        xVar.f52958i = 1;
        xVar.a(cls, new Object[]{a4}, rVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:496:0x0c1e  */
    /* JADX WARN: Removed duplicated region for block: B:500:0x0c37  */
    /* JADX WARN: Removed duplicated region for block: B:512:0x0c67 A[LOOP:14: B:510:0x0c64->B:512:0x0c67, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:515:0x0c74  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.mob.commons.cc.x.a r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 4424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.commons.cc.x.a(com.mob.commons.cc.x$a):void");
    }

    void a(Object obj, r rVar) throws Throwable {
        if (obj instanceof Map) {
            rVar.a(((Map) obj).get(this.f52961l));
        } else if ("length".equals(this.f52961l) && obj.getClass().isArray()) {
            rVar.a(Integer.valueOf(Array.getLength(obj)));
        } else {
            for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
                Field field = null;
                try {
                    field = cls.getDeclaredField(this.f52961l);
                } catch (Throwable unused) {
                }
                if (field != null && !Modifier.isStatic(field.getModifiers())) {
                    field.setAccessible(true);
                    rVar.a(field.get(obj));
                    return;
                }
            }
            x xVar = new x(12);
            xVar.f52951b = this.f52951b;
            xVar.f52952c = this.f52952c;
            xVar.f52965p = "get" + Character.toUpperCase(this.f52961l.charAt(0)) + this.f52961l.substring(1);
            xVar.f52958i = 0;
            xVar.a(obj, new Object[0], rVar);
        }
    }

    void a(Class<?> cls, r rVar) throws Throwable {
        Field field;
        while (true) {
            if (cls != null) {
                if ("class".equals(this.f52961l)) {
                    rVar.a(cls);
                    return;
                } else if (cls.equals(w.class) && "version".equals(this.f52961l)) {
                    rVar.a((Object) 60);
                    return;
                } else if (cls.isEnum()) {
                    Object[] enumConstants = cls.getEnumConstants();
                    if (enumConstants != null) {
                        for (Object obj : enumConstants) {
                            if (((Enum) obj).name().equals(this.f52961l)) {
                                rVar.a(obj);
                                return;
                            }
                        }
                        continue;
                    } else {
                        continue;
                    }
                } else {
                    try {
                        field = cls.getDeclaredField(this.f52961l);
                    } catch (Throwable unused) {
                        field = null;
                    }
                    if (field != null && Modifier.isStatic(field.getModifiers())) {
                        field.setAccessible(true);
                        rVar.a(field.get(null));
                        return;
                    }
                    cls = cls.getSuperclass();
                }
            } else {
                x xVar = new x(14);
                xVar.f52951b = this.f52951b;
                xVar.f52952c = this.f52952c;
                xVar.f52963n = this.f52963n;
                xVar.f52965p = "get" + Character.toUpperCase(this.f52961l.charAt(0)) + this.f52961l.substring(1);
                xVar.f52958i = 1;
                xVar.a(cls, new Object[0], rVar);
                return;
            }
        }
    }

    void a(Class<?> cls, Object[] objArr, r rVar) throws Throwable {
        y yVar;
        y yVar2;
        Class<?>[] parameterTypes;
        boolean[] zArr;
        boolean[] a4;
        Constructor<?>[] declaredConstructors;
        Map map;
        List list;
        Class<?> cls2 = cls;
        y yVar3 = null;
        int i2 = 1;
        if ("new".equals(this.f52965p)) {
            if (List.class.isAssignableFrom(cls2) && objArr.length == 1 && objArr[0] != null && objArr[0].getClass().isArray()) {
                int length = Array.getLength(objArr[0]);
                if (cls2.equals(List.class)) {
                    list = new ArrayList(length);
                } else {
                    list = (List) cls.newInstance();
                }
                for (int i4 = 0; i4 < length; i4++) {
                    list.add(Array.get(objArr[0], i4));
                }
                rVar.a(list);
            } else if (Map.class.isAssignableFrom(cls2) && objArr.length == 1 && objArr[0] != null) {
                if (cls2.equals(Map.class)) {
                    map = new HashMap();
                } else {
                    map = (Map) cls.newInstance();
                }
                if (objArr[0] instanceof Map) {
                    map.putAll((Map) objArr[0]);
                } else {
                    Class<?> cls3 = Class.forName("org.json.JSONObject");
                    a(map, a(objArr[0], cls3), cls3, Class.forName("org.json.JSONArray"));
                }
                rVar.a(map);
            } else if (cls2.equals(z.class)) {
                if (objArr.length == 2) {
                    rVar.a(new z((Number) objArr[0], (Number) objArr[1], null));
                } else if (objArr.length == 3) {
                    rVar.a(new z((Number) objArr[0], (Number) objArr[1], (Number) objArr[2]));
                } else {
                    throw new NoSuchMethodException("method name: new at line: " + this.f52951b + "(" + this.f52952c + ")");
                }
            } else {
                boolean[][] zArr2 = new boolean[2];
                Constructor a5 = s.a(cls2, objArr, zArr2);
                if (a5 != null) {
                    Object[] a6 = !zArr2[1][0] ? s.a(rVar, a5.getParameterTypes(), objArr, zArr2[0]) : objArr;
                    a5.setAccessible(true);
                    rVar.a(a5.newInstance(a6));
                    return;
                }
                for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
                    Class<?>[] parameterTypes2 = constructor.getParameterTypes();
                    boolean[] zArr3 = new boolean[1];
                    boolean[] a7 = s.a(parameterTypes2, objArr, zArr3);
                    if (a7 != null) {
                        Object[] a8 = !zArr3[0] ? s.a(rVar, parameterTypes2, objArr, a7) : objArr;
                        constructor.setAccessible(true);
                        rVar.a(constructor.newInstance(a8));
                        return;
                    }
                }
                throw new NoSuchMethodException("method name: new at line: " + this.f52951b + "(" + this.f52952c + ")");
            }
        } else if ("fromJson".equals(this.f52965p) && Map.class.isAssignableFrom(cls2) && objArr.length == 1 && objArr[0] != null) {
            this.f52965p = "new";
            a(cls, objArr, rVar);
        } else if ("copy".equals(this.f52965p) && cls2.equals(Array.class)) {
            int i5 = this.f52958i;
            if (i5 == 5) {
                System.arraycopy(objArr[0], Integer.valueOf(String.valueOf(objArr[1])).intValue(), objArr[2], Integer.valueOf(String.valueOf(objArr[3])).intValue(), Integer.valueOf(String.valueOf(objArr[44])).intValue());
            } else if (i5 == 2) {
                System.arraycopy(objArr[0], 0, objArr[1], 0, Math.min(Array.getLength(objArr[0]), Array.getLength(objArr[1])));
            }
            throw new NoSuchMethodException("method name: copy at line: " + this.f52951b + "(" + this.f52952c + ")");
        } else if ("quit".equals(this.f52965p) && cls2.equals(w.class)) {
            rVar.e();
        } else if (!s.a((Object) null, cls2, this.f52965p, objArr, rVar)) {
            for (Class<?> cls4 = cls2; cls4 != null; cls4 = cls4.getSuperclass()) {
                Method method = s.f52931c.get(s.a(cls4, this.f52965p, objArr));
                if (method != null && (a4 = s.a((parameterTypes = method.getParameterTypes()), objArr, (zArr = new boolean[1]))) != null) {
                    Object[] a9 = !zArr[0] ? s.a(rVar, parameterTypes, objArr, a4) : objArr;
                    method.setAccessible(true);
                    if (method.getReturnType() == Void.TYPE) {
                        method.invoke(null, a9);
                        return;
                    } else {
                        rVar.a(method.invoke(null, a9));
                        return;
                    }
                }
                boolean[][] zArr4 = new boolean[2];
                Method a10 = s.a(cls4, this.f52965p, true, objArr, zArr4);
                if (a10 != null) {
                    Object[] a11 = !zArr4[1][0] ? s.a(rVar, a10.getParameterTypes(), objArr, zArr4[0]) : objArr;
                    a10.setAccessible(true);
                    if (a10.getReturnType() == Void.TYPE) {
                        a10.invoke(null, a11);
                        return;
                    } else {
                        rVar.a(a10.invoke(null, a11));
                        return;
                    }
                }
            }
            Class<?> cls5 = cls2;
            while (cls5 != null) {
                Method[] declaredMethods = cls5.getDeclaredMethods();
                int length2 = declaredMethods.length;
                int i6 = 0;
                while (i6 < length2) {
                    Method method2 = declaredMethods[i6];
                    if (method2.getName().equals(this.f52965p) && Modifier.isStatic(method2.getModifiers())) {
                        Class<?>[] parameterTypes3 = method2.getParameterTypes();
                        boolean[] zArr5 = new boolean[i2];
                        boolean[] a12 = s.a(parameterTypes3, objArr, zArr5);
                        s.f52931c.put(s.a(cls5, this.f52965p, parameterTypes3), method2);
                        if (a12 != null) {
                            Object[] a13 = !zArr5[0] ? s.a(rVar, parameterTypes3, objArr, a12) : objArr;
                            method2.setAccessible(true);
                            if (method2.getReturnType() == Void.TYPE) {
                                method2.invoke(null, a13);
                                return;
                            } else {
                                rVar.a(method2.invoke(null, a13));
                                return;
                            }
                        }
                        yVar2 = null;
                    } else {
                        yVar2 = yVar3;
                    }
                    i6++;
                    yVar3 = yVar2;
                    i2 = 1;
                }
                cls5 = cls5.getSuperclass();
                yVar3 = yVar3;
                i2 = 1;
            }
            y yVar4 = yVar3;
            while (cls2 != null) {
                try {
                    yVar = rVar.a((Class<?>) cls2, this.f52965p);
                } catch (Throwable unused) {
                    yVar = yVar4;
                }
                if (yVar != null) {
                    LinkedList<Object> b4 = yVar.b(objArr);
                    if (b4.size() > 0) {
                        rVar.a(b4.get(0));
                        return;
                    }
                    return;
                }
                cls2 = cls2.getSuperclass();
            }
            throw new NoSuchMethodException("method name: " + this.f52965p + " at line: " + this.f52951b + "(" + this.f52952c + ")");
        }
    }

    private Object a(Object obj, Class<?> cls) throws Throwable {
        if (obj instanceof ByteArrayOutputStream) {
            return a(((ByteArrayOutputStream) obj).toByteArray(), cls);
        }
        if (obj instanceof byte[]) {
            return a(new String((byte[]) obj, "utf-8"), cls);
        }
        if (!(obj instanceof StringBuffer) && !(obj instanceof StringBuilder)) {
            if (obj instanceof String) {
                return cls.getConstructor(String.class).newInstance(obj);
            }
            if (obj.getClass().equals(cls)) {
                return obj;
            }
            throw new ClassCastException("Failed to cast " + obj + " to be " + cls.getName() + " at line: " + this.f52951b + "(" + this.f52952c + ")");
        }
        return a(obj.toString(), cls);
    }

    private void a(Map map, Object obj, Class<?> cls, Class<?> cls2) throws Throwable {
        Field declaredField = cls.getDeclaredField("nameValuePairs");
        declaredField.setAccessible(true);
        Field declaredField2 = cls.getDeclaredField("NULL");
        declaredField2.setAccessible(true);
        Object obj2 = declaredField2.get(null);
        for (Map.Entry entry : ((Map) declaredField.get(obj)).entrySet()) {
            map.put(entry.getKey(), a(entry.getValue(), obj2, cls, cls2));
        }
    }

    private Object a(Object obj, Object obj2, Class<?> cls, Class<?> cls2) throws Throwable {
        if (obj == null || obj2.equals(obj)) {
            return null;
        }
        if (obj.getClass().equals(cls)) {
            HashMap hashMap = new HashMap();
            a((Map) hashMap, obj, cls, cls2);
            return hashMap;
        } else if (obj.getClass().equals(cls2)) {
            Field declaredField = cls2.getDeclaredField("values");
            declaredField.setAccessible(true);
            ArrayList arrayList = new ArrayList();
            for (Object obj3 : (List) declaredField.get(obj)) {
                arrayList.add(a(obj3, obj2, cls, cls2));
            }
            return arrayList;
        } else {
            return obj;
        }
    }

    void a(Object obj, Object[] objArr, r rVar) throws Throwable {
        byte[] bArr;
        String[] strArr;
        y yVar;
        String str;
        Method[] declaredMethods;
        Class<?>[] parameterTypes;
        boolean[] zArr;
        boolean[] a4;
        Class<?>[] clsArr;
        int i2 = 0;
        if (obj instanceof Map) {
            Map map = (Map) obj;
            Object obj2 = map.get(this.f52965p);
            if (obj2 != null) {
                if (obj2 instanceof y) {
                    LinkedList<Object> b4 = ((y) obj2).b(objArr);
                    if (b4.size() > 0) {
                        rVar.a(b4.get(0));
                        return;
                    }
                    return;
                } else if (obj2 instanceof Method) {
                    rVar.a((Method) obj2, objArr);
                    return;
                }
            } else if (("proxy".equals(this.f52965p) || "unsafeProxy".equals(this.f52965p)) && objArr.length == 1 && objArr[0] != null) {
                if (objArr[0] instanceof Class) {
                    clsArr = new Class[]{(Class) objArr[0]};
                } else if (objArr[0] instanceof List) {
                    List list = (List) objArr[0];
                    clsArr = (Class[]) list.toArray(new Class[list.size()]);
                } else {
                    throw new NoSuchMethodException("method name: " + this.f52965p + " at line: " + this.f52951b + "(" + this.f52952c + ")");
                }
                rVar.a(rVar.a(obj, "proxy".equals(this.f52965p), clsArr));
                return;
            } else if ("iterator".equals(this.f52965p) && objArr.length == 0) {
                rVar.a(map.entrySet().iterator());
                return;
            } else if ("toJson".equals(this.f52965p) && objArr.length == 0) {
                rVar.a(Class.forName("org.json.JSONObject").getDeclaredConstructor(Map.class).newInstance(obj));
                return;
            }
        } else if (obj instanceof y) {
            y yVar2 = (y) obj;
            if ("test".equals(this.f52965p)) {
                rVar.a(yVar2.a(objArr));
                return;
            } else if ("currying".equals(this.f52965p)) {
                rVar.a(yVar2.a(rVar, this.f52951b, this.f52952c));
                return;
            }
        } else if (obj instanceof Method) {
            if ("test".equals(this.f52965p)) {
                y.a aVar = new y.a();
                r b5 = rVar.b();
                try {
                    b5.a((Method) obj, objArr);
                    aVar.f52985b = b5.a();
                } catch (Throwable th) {
                    aVar.f52984a = th;
                }
                rVar.a(aVar);
                return;
            }
        } else if (obj instanceof Collection) {
            Collection<Object> collection = (Collection) obj;
            int size = collection.size();
            if ("toArray".equals(this.f52965p) && objArr.length == 1 && objArr[0] != null && (objArr[0] instanceof Class)) {
                Object newInstance = Array.newInstance((Class) objArr[0], size);
                for (Object obj3 : collection) {
                    Array.set(newInstance, i2, obj3);
                    i2++;
                }
                rVar.a(newInstance);
                return;
            }
        } else if (obj.getClass().isArray()) {
            if ("iterator".equals(this.f52965p) && objArr.length == 0) {
                ArrayList arrayList = new ArrayList();
                int length = Array.getLength(obj);
                while (i2 < length) {
                    arrayList.add(Array.get(obj, i2));
                    i2++;
                }
                rVar.a(arrayList.iterator());
                return;
            } else if ("toList".equals(this.f52965p) && objArr.length == 0) {
                ArrayList arrayList2 = new ArrayList();
                int length2 = Array.getLength(obj);
                while (i2 < length2) {
                    arrayList2.add(Array.get(obj, i2));
                    i2++;
                }
                rVar.a(arrayList2);
                return;
            } else if (obj.getClass().getComponentType() == Byte.TYPE) {
                if ("md5".equals(this.f52965p) && objArr.length == 0) {
                    byte[] bArr2 = (byte[]) obj;
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr2, 0, bArr2.length);
                    Object a5 = a(byteArrayInputStream);
                    byteArrayInputStream.close();
                    rVar.a(a5);
                    return;
                } else if ("hex".equals(this.f52965p) && objArr.length == 0) {
                    rVar.a(a((byte[]) obj));
                    return;
                } else if (COSHttpResponseKey.Data.SHA.equals(this.f52965p) && objArr.length == 1) {
                    MessageDigest messageDigest = MessageDigest.getInstance((String) objArr[0]);
                    messageDigest.update((byte[]) obj);
                    rVar.a(messageDigest.digest());
                    return;
                }
            }
        } else if (obj instanceof z.a) {
            if ("hasNext".equals(this.f52965p) && objArr.length == 0) {
                rVar.a(Boolean.valueOf(((z.a) obj).a()));
                return;
            } else if ("next".equals(this.f52965p) && objArr.length == 0) {
                rVar.a(((z.a) obj).b());
                return;
            }
        } else if (obj instanceof z) {
            if ("iterator".equals(this.f52965p) && objArr.length == 0) {
                rVar.a(((z) obj).a());
                return;
            } else if ("isInRange".equals(this.f52965p) && objArr.length == 1) {
                rVar.a(Boolean.valueOf(((z) obj).a((Number) objArr[0])));
                return;
            } else if ("contains".equals(this.f52965p) && objArr.length == 1) {
                rVar.a(Boolean.valueOf(((z) obj).b((Number) objArr[0])));
                return;
            } else if (HttpHeaders.Values.BOUNDARY.equals(this.f52965p) && objArr.length == 0) {
                rVar.a(((z) obj).b());
                return;
            }
        } else if (obj instanceof String) {
            if ("getBytes".equals(this.f52965p)) {
                if (objArr.length == 0) {
                    rVar.a(((String) obj).getBytes());
                    return;
                } else if (objArr.length == 1 && (objArr[0] instanceof String)) {
                    rVar.a(((String) obj).getBytes((String) objArr[0]));
                    return;
                }
            } else if ("input".equals(this.f52965p)) {
                if (objArr.length == 0) {
                    rVar.a(new FileInputStream((String) obj));
                    return;
                } else if (objArr.length == 1 && (objArr[0] instanceof y)) {
                    FileInputStream fileInputStream = new FileInputStream((String) obj);
                    ((y) objArr[0]).b(fileInputStream);
                    fileInputStream.close();
                    return;
                }
            } else if ("output".equals(this.f52965p)) {
                if (objArr.length == 0) {
                    rVar.a(new FileOutputStream((String) obj));
                    return;
                } else if (objArr.length == 1 && (objArr[0] instanceof y)) {
                    FileOutputStream fileOutputStream = new FileOutputStream((String) obj);
                    ((y) objArr[0]).b(fileOutputStream);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return;
                }
            } else {
                File file = null;
                String valueOf = null;
                String valueOf2 = null;
                FileInputStream fileInputStream2 = null;
                r4 = null;
                Collection<Object> collection2 = null;
                file = null;
                if ("readFromFile".equals(this.f52965p)) {
                    if (objArr.length == 0) {
                        valueOf = "utf-8";
                    } else if (objArr.length == 1) {
                        valueOf = String.valueOf(objArr[0]);
                    }
                    if (valueOf != null) {
                        FileInputStream fileInputStream3 = new FileInputStream((String) obj);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        byte[] bArr3 = new byte[4096];
                        for (int read = fileInputStream3.read(bArr3); read != -1; read = fileInputStream3.read(bArr3)) {
                            byteArrayOutputStream.write(bArr3, 0, read);
                        }
                        fileInputStream3.close();
                        byteArrayOutputStream.flush();
                        byteArrayOutputStream.close();
                        rVar.a(new String(byteArrayOutputStream.toByteArray(), valueOf));
                        return;
                    }
                } else if ("writeToFile".equals(this.f52965p)) {
                    if (objArr.length == 1) {
                        valueOf2 = String.valueOf(objArr[0]);
                        str = "utf-8";
                    } else if (objArr.length == 2) {
                        valueOf2 = String.valueOf(objArr[0]);
                        str = String.valueOf(objArr[1]);
                    } else {
                        str = null;
                    }
                    if (valueOf2 != null) {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(valueOf2);
                        fileOutputStream2.write(((String) obj).getBytes(str));
                        fileOutputStream2.flush();
                        fileOutputStream2.close();
                        return;
                    }
                } else if ("readLines".equals(this.f52965p)) {
                    String str2 = "utf-8";
                    if (objArr.length == 0) {
                        yVar = null;
                        fileInputStream2 = new FileInputStream((String) obj);
                    } else if (objArr.length == 1) {
                        if (objArr[0] instanceof String) {
                            fileInputStream2 = new FileInputStream((String) obj);
                            str2 = (String) objArr[0];
                            yVar = null;
                        } else {
                            if (objArr[0] instanceof y) {
                                fileInputStream2 = new FileInputStream((String) obj);
                                yVar = (y) objArr[0];
                            }
                            yVar = null;
                        }
                    } else {
                        if (objArr.length == 2 && (objArr[0] instanceof String) && (objArr[1] instanceof y)) {
                            fileInputStream2 = new FileInputStream((String) obj);
                            str2 = (String) objArr[0];
                            yVar = (y) objArr[1];
                        }
                        yVar = null;
                    }
                    if (fileInputStream2 != null) {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream2, str2));
                        String readLine = bufferedReader.readLine();
                        if (yVar == null) {
                            ArrayList arrayList3 = new ArrayList();
                            while (readLine != null) {
                                arrayList3.add(readLine);
                                readLine = bufferedReader.readLine();
                            }
                            rVar.a(arrayList3);
                        } else {
                            while (readLine != null) {
                                yVar.b(readLine);
                                readLine = bufferedReader.readLine();
                            }
                        }
                        bufferedReader.close();
                        return;
                    }
                } else if ("writeLines".equals(this.f52965p)) {
                    String str3 = "utf-8";
                    if (objArr.length >= 1) {
                        if (objArr.length == 2 && (objArr[1] instanceof String)) {
                            str3 = (String) objArr[1];
                        }
                        if (objArr[0] instanceof String) {
                            collection2 = new ArrayList();
                            collection2.add(objArr[0]);
                        } else if (objArr[0] instanceof Collection) {
                            collection2 = (Collection) objArr[0];
                        } else if (objArr[0].getClass().isArray()) {
                            collection2 = new ArrayList();
                            int length3 = Array.getLength(objArr[0]);
                            for (int i4 = 0; i4 < length3; i4++) {
                                collection2.add(Array.get(objArr[0], i4));
                            }
                        }
                    }
                    if (collection2 != null) {
                        FileOutputStream fileOutputStream3 = new FileOutputStream((String) obj);
                        for (Object obj4 : collection2) {
                            fileOutputStream3.write((obj4 + "\r\n").getBytes(str3));
                        }
                        fileOutputStream3.flush();
                        fileOutputStream3.close();
                        return;
                    }
                } else if ("exec".equals(this.f52965p)) {
                    if (objArr.length == 0) {
                        rVar.a(Runtime.getRuntime().exec((String) obj));
                        return;
                    } else if (objArr.length == 1 || objArr.length == 2) {
                        if (objArr[0] instanceof String[]) {
                            strArr = (String[]) objArr[0];
                        } else if (objArr[0] instanceof List) {
                            List list2 = (List) objArr[0];
                            int size2 = list2.size();
                            String[] strArr2 = new String[size2];
                            for (int i5 = 0; i5 < size2; i5++) {
                                Object obj5 = list2.get(i5);
                                strArr2[i5] = obj5 == null ? null : String.valueOf(obj5);
                            }
                            strArr = strArr2;
                        } else {
                            strArr = null;
                        }
                        if (objArr.length == 2 && (objArr[1] instanceof File)) {
                            file = (File) objArr[1];
                        }
                        if (strArr != null) {
                            rVar.a(Runtime.getRuntime().exec((String) obj, strArr, file));
                            return;
                        }
                    }
                } else if ("fromHex".equals(this.f52965p) && objArr.length == 0) {
                    String str4 = (String) obj;
                    int length4 = str4.length();
                    if (length4 % 2 == 1) {
                        length4++;
                        bArr = new byte[length4 / 2];
                        str4 = "0" + str4;
                    } else {
                        bArr = new byte[length4 / 2];
                    }
                    int i6 = 0;
                    while (i2 < length4) {
                        int i7 = i2 + 2;
                        bArr[i6] = (byte) Integer.parseInt(str4.substring(i2, i7), 16);
                        i6++;
                        i2 = i7;
                    }
                    rVar.a(bArr);
                    return;
                }
            }
        } else if (obj instanceof InputStream) {
            if ("toDataInputStream".equals(this.f52965p) && objArr.length == 0) {
                rVar.a(new DataInputStream((InputStream) obj));
                return;
            } else if ("toBufferedInputStream".equals(this.f52965p) && objArr.length == 0) {
                rVar.a(new BufferedInputStream((InputStream) obj));
                return;
            } else if ("toGZIPInputStream".equals(this.f52965p) && objArr.length == 0) {
                rVar.a(new GZIPInputStream((InputStream) obj));
                return;
            } else if ("toObjectInputStream".equals(this.f52965p) && objArr.length == 0) {
                rVar.a(new ObjectInputStream((InputStream) obj));
                return;
            } else if ("md5".equals(this.f52965p) && objArr.length == 0) {
                a((InputStream) obj);
            }
        } else if (obj instanceof OutputStream) {
            if ("toDataOutputStream".equals(this.f52965p) && objArr.length == 0) {
                rVar.a(new DataOutputStream((OutputStream) obj));
                return;
            } else if ("toBufferedOutputStream".equals(this.f52965p) && objArr.length == 0) {
                rVar.a(new BufferedOutputStream((OutputStream) obj));
                return;
            } else if ("toGZIPOutputStream".equals(this.f52965p) && objArr.length == 0) {
                rVar.a(new GZIPOutputStream((OutputStream) obj));
                return;
            } else if ("toObjectOutputStream".equals(this.f52965p) && objArr.length == 0) {
                rVar.a(new ObjectOutputStream((OutputStream) obj));
                return;
            }
        } else if (obj instanceof Class) {
            if ("import".equals(this.f52965p)) {
                if (objArr.length == 0) {
                    Class<?> cls = (Class) obj;
                    rVar.a(cls.getSimpleName(), cls);
                    return;
                } else if (objArr.length == 1 && (objArr[0] instanceof String)) {
                    rVar.a((String) objArr[0], (Class) obj);
                    return;
                }
            }
        } else if ((obj instanceof Throwable) && "throw".equals(this.f52965p) && objArr.length == 0) {
            throw ((Throwable) obj);
        }
        if ("lock".equals(this.f52965p) && objArr.length > 0 && (objArr[0] instanceof y)) {
            synchronized (obj) {
                y yVar3 = (y) objArr[0];
                int length5 = objArr.length - 1;
                Object[] objArr2 = new Object[length5];
                if (objArr.length > 1) {
                    System.arraycopy(objArr, 1, objArr2, 0, length5);
                }
                LinkedList<Object> b6 = yVar3.b(objArr2);
                if (!b6.isEmpty()) {
                    rVar.a(b6.get(0));
                }
            }
            return;
        }
        Class<?> cls2 = obj.getClass();
        if (s.a(obj, cls2, this.f52965p, objArr, rVar)) {
            return;
        }
        for (Class<?> cls3 = cls2; cls3 != null; cls3 = cls3.getSuperclass()) {
            Method method = s.f52930b.get(s.a(cls3, this.f52965p, objArr));
            if (method != null && (a4 = s.a((parameterTypes = method.getParameterTypes()), objArr, (zArr = new boolean[1]))) != null) {
                if (!zArr[0]) {
                    objArr = s.a(rVar, parameterTypes, objArr, a4);
                }
                method.setAccessible(true);
                if (method.getReturnType() == Void.TYPE) {
                    method.invoke(obj, objArr);
                    return;
                } else {
                    rVar.a(method.invoke(obj, objArr));
                    return;
                }
            }
            boolean[][] zArr2 = new boolean[2];
            Method a6 = s.a(cls3, this.f52965p, false, objArr, zArr2);
            if (a6 != null) {
                if (!zArr2[1][0]) {
                    objArr = s.a(rVar, a6.getParameterTypes(), objArr, zArr2[0]);
                }
                a6.setAccessible(true);
                if (a6.getReturnType() == Void.TYPE) {
                    a6.invoke(obj, objArr);
                    return;
                } else {
                    rVar.a(a6.invoke(obj, objArr));
                    return;
                }
            }
        }
        while (cls2 != null) {
            for (Method method2 : cls2.getDeclaredMethods()) {
                if (method2.getName().equals(this.f52965p) && !Modifier.isStatic(method2.getModifiers())) {
                    Class<?>[] parameterTypes2 = method2.getParameterTypes();
                    s.f52930b.put(s.a(cls2, this.f52965p, objArr), method2);
                    boolean[] zArr3 = new boolean[1];
                    boolean[] a7 = s.a(parameterTypes2, objArr, zArr3);
                    if (a7 != null) {
                        if (!zArr3[0]) {
                            objArr = s.a(rVar, parameterTypes2, objArr, a7);
                        }
                        method2.setAccessible(true);
                        if (method2.getReturnType() == Void.TYPE) {
                            method2.invoke(obj, objArr);
                            return;
                        } else {
                            rVar.a(method2.invoke(obj, objArr));
                            return;
                        }
                    }
                }
            }
            cls2 = cls2.getSuperclass();
        }
        throw new NoSuchMethodException("method name: " + this.f52965p + " at line: " + this.f52951b + "(" + this.f52952c + ")");
    }

    private String a(InputStream inputStream) throws Throwable {
        if (inputStream == null) {
            return null;
        }
        byte[] bArr = new byte[1024];
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        int read = inputStream.read(bArr);
        while (read != -1) {
            messageDigest.update(bArr, 0, read);
            read = inputStream.read(bArr);
        }
        return a(messageDigest.digest());
    }

    private String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < length; i2++) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(bArr[i2])));
        }
        return stringBuffer.toString();
    }

    private URLConnection a(URL url) throws Throwable {
        URLConnection openConnection = url.openConnection();
        if (openConnection instanceof HttpsURLConnection) {
            Field field = Class.forName("org.apache.http.conn.ssl.SSLSocketFactory").getField("STRICT_HOSTNAME_VERIFIER");
            field.setAccessible(true);
            HostnameVerifier hostnameVerifier = (HostnameVerifier) field.get(null);
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) openConnection;
            SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
            TrustManager[] trustManagerArr = new TrustManager[0];
            try {
                trustManagerArr = new TrustManager[]{(TrustManager) s.b(httpsURLConnection.getURL().getHost())};
            } catch (Throwable unused) {
            }
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
            httpsURLConnection.setHostnameVerifier(hostnameVerifier);
        }
        return openConnection;
    }
}
