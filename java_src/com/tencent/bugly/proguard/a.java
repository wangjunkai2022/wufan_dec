package com.tencent.bugly.proguard;

import android.content.Context;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.swift.sandhook.annotation.MethodReflectParams;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.lang.reflect.Array;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    private static Proxy f59601e;

    /* renamed from: a  reason: collision with root package name */
    protected HashMap<String, HashMap<String, byte[]>> f59602a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    protected String f59603b;

    /* renamed from: c  reason: collision with root package name */
    i f59604c;

    /* renamed from: d  reason: collision with root package name */
    private HashMap<String, Object> f59605d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a() {
        new HashMap();
        this.f59605d = new HashMap<>();
        this.f59603b = "GBK";
        this.f59604c = new i();
    }

    public static void a(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            f59601e = null;
        } else {
            f59601e = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(str, i2));
        }
    }

    public static Proxy b() {
        return f59601e;
    }

    public static an b(byte[] bArr) {
        if (bArr != null) {
            try {
                d dVar = new d();
                dVar.c();
                dVar.a("utf-8");
                dVar.a(bArr);
                Object b4 = dVar.b("detail", new an());
                if (an.class.isInstance(b4)) {
                    return (an) an.class.cast(b4);
                }
                return null;
            } catch (Throwable th) {
                if (!x.b(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static void a(InetAddress inetAddress, int i2) {
        if (inetAddress == null) {
            f59601e = null;
        } else {
            f59601e = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(inetAddress, i2));
        }
    }

    public void a(String str) {
        this.f59603b = str;
    }

    public static aq a(UserInfoBean userInfoBean) {
        if (userInfoBean == null) {
            return null;
        }
        aq aqVar = new aq();
        aqVar.f59711a = userInfoBean.f59314e;
        aqVar.f59715e = userInfoBean.f59319j;
        aqVar.f59714d = userInfoBean.f59312c;
        aqVar.f59713c = userInfoBean.f59313d;
        aqVar.f59717g = userInfoBean.f59324o == 1;
        int i2 = userInfoBean.f59311b;
        if (i2 == 1) {
            aqVar.f59712b = (byte) 1;
        } else if (i2 == 2) {
            aqVar.f59712b = (byte) 4;
        } else if (i2 == 3) {
            aqVar.f59712b = (byte) 2;
        } else if (i2 == 4) {
            aqVar.f59712b = (byte) 3;
        } else if (i2 < 10 || i2 >= 20) {
            x.e("unknown uinfo type %d ", Integer.valueOf(i2));
            return null;
        } else {
            aqVar.f59712b = (byte) i2;
        }
        HashMap hashMap = new HashMap();
        aqVar.f59716f = hashMap;
        if (userInfoBean.f59325p >= 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(userInfoBean.f59325p);
            hashMap.put("C01", sb.toString());
        }
        if (userInfoBean.f59326q >= 0) {
            Map<String, String> map = aqVar.f59716f;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(userInfoBean.f59326q);
            map.put("C02", sb2.toString());
        }
        Map<String, String> map2 = userInfoBean.f59327r;
        if (map2 != null && map2.size() > 0) {
            for (Map.Entry<String, String> entry : userInfoBean.f59327r.entrySet()) {
                Map<String, String> map3 = aqVar.f59716f;
                map3.put("C03_" + entry.getKey(), entry.getValue());
            }
        }
        Map<String, String> map4 = userInfoBean.f59328s;
        if (map4 != null && map4.size() > 0) {
            for (Map.Entry<String, String> entry2 : userInfoBean.f59328s.entrySet()) {
                Map<String, String> map5 = aqVar.f59716f;
                map5.put("C04_" + entry2.getKey(), entry2.getValue());
            }
        }
        Map<String, String> map6 = aqVar.f59716f;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(!userInfoBean.f59321l);
        map6.put("A36", sb3.toString());
        Map<String, String> map7 = aqVar.f59716f;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(userInfoBean.f59316g);
        map7.put("F02", sb4.toString());
        Map<String, String> map8 = aqVar.f59716f;
        StringBuilder sb5 = new StringBuilder();
        sb5.append(userInfoBean.f59317h);
        map8.put("F03", sb5.toString());
        Map<String, String> map9 = aqVar.f59716f;
        map9.put("F04", userInfoBean.f59319j);
        Map<String, String> map10 = aqVar.f59716f;
        StringBuilder sb6 = new StringBuilder();
        sb6.append(userInfoBean.f59318i);
        map10.put("F05", sb6.toString());
        Map<String, String> map11 = aqVar.f59716f;
        map11.put("F06", userInfoBean.f59322m);
        Map<String, String> map12 = aqVar.f59716f;
        StringBuilder sb7 = new StringBuilder();
        sb7.append(userInfoBean.f59320k);
        map12.put("F10", sb7.toString());
        x.c("summary type %d vm:%d", Byte.valueOf(aqVar.f59712b), Integer.valueOf(aqVar.f59716f.size()));
        return aqVar;
    }

    public static String a(ArrayList<String> arrayList) {
        int i2;
        int i4;
        int i5;
        StringBuffer stringBuffer = new StringBuffer();
        int i6 = 0;
        while (true) {
            String str = "map";
            if (i6 < arrayList.size()) {
                String str2 = arrayList.get(i6);
                if (str2.equals("java.lang.Integer") || str2.equals(MethodReflectParams.INT)) {
                    str = "int32";
                } else if (str2.equals("java.lang.Boolean") || str2.equals("boolean")) {
                    str = "bool";
                } else if (str2.equals("java.lang.Byte") || str2.equals(MethodReflectParams.BYTE)) {
                    str = MethodReflectParams.CHAR;
                } else if (str2.equals("java.lang.Double") || str2.equals(MethodReflectParams.DOUBLE)) {
                    str = MethodReflectParams.DOUBLE;
                } else if (str2.equals("java.lang.Float") || str2.equals("float")) {
                    str = "float";
                } else if (str2.equals("java.lang.Long") || str2.equals(MethodReflectParams.LONG)) {
                    str = "int64";
                } else if (str2.equals("java.lang.Short") || str2.equals(MethodReflectParams.SHORT)) {
                    str = MethodReflectParams.SHORT;
                } else if (str2.equals("java.lang.Character")) {
                    throw new IllegalArgumentException("can not support java.lang.Character");
                } else {
                    if (str2.equals("java.lang.String")) {
                        str = TypedValues.Custom.S_STRING;
                    } else if (str2.equals("java.util.List")) {
                        str = "list";
                    } else if (!str2.equals("java.util.Map")) {
                        str = str2;
                    }
                }
                arrayList.set(i6, str);
                i6++;
            } else {
                Collections.reverse(arrayList);
                for (int i7 = 0; i7 < arrayList.size(); i7++) {
                    String str3 = arrayList.get(i7);
                    if (str3.equals("list")) {
                        arrayList.set(i7 - 1, SimpleComparison.LESS_THAN_OPERATION + arrayList.get(i5));
                        arrayList.set(0, arrayList.get(0) + SimpleComparison.GREATER_THAN_OPERATION);
                    } else if (str3.equals("map")) {
                        arrayList.set(i7 - 1, SimpleComparison.LESS_THAN_OPERATION + arrayList.get(i4) + ",");
                        arrayList.set(0, arrayList.get(0) + SimpleComparison.GREATER_THAN_OPERATION);
                    } else if (str3.equals("Array")) {
                        arrayList.set(i7 - 1, SimpleComparison.LESS_THAN_OPERATION + arrayList.get(i2));
                        arrayList.set(0, arrayList.get(0) + SimpleComparison.GREATER_THAN_OPERATION);
                    }
                }
                Collections.reverse(arrayList);
                Iterator<String> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    stringBuffer.append(it2.next());
                }
                return stringBuffer.toString();
            }
        }
    }

    public <T> void a(String str, T t3) {
        if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        }
        if (t3 != null) {
            if (!(t3 instanceof Set)) {
                j jVar = new j();
                jVar.a(this.f59603b);
                jVar.a(t3, 0);
                byte[] a4 = l.a(jVar.a());
                HashMap<String, byte[]> hashMap = new HashMap<>(1);
                ArrayList<String> arrayList = new ArrayList<>(1);
                a(arrayList, t3);
                hashMap.put(a(arrayList), a4);
                this.f59605d.remove(str);
                this.f59602a.put(str, hashMap);
                return;
            }
            throw new IllegalArgumentException("can not support Set");
        }
        throw new IllegalArgumentException("put value can not is null");
    }

    public static ar a(List<UserInfoBean> list, int i2) {
        com.tencent.bugly.crashreport.common.info.a b4;
        if (list == null || list.size() == 0 || (b4 = com.tencent.bugly.crashreport.common.info.a.b()) == null) {
            return null;
        }
        b4.p();
        ar arVar = new ar();
        arVar.f59722b = b4.f59364d;
        arVar.f59723c = b4.h();
        ArrayList<aq> arrayList = new ArrayList<>();
        for (UserInfoBean userInfoBean : list) {
            aq a4 = a(userInfoBean);
            if (a4 != null) {
                arrayList.add(a4);
            }
        }
        arVar.f59724d = arrayList;
        HashMap hashMap = new HashMap();
        arVar.f59725e = hashMap;
        hashMap.put("A7", b4.f59367g);
        Map<String, String> map = arVar.f59725e;
        map.put("A6", b4.o());
        Map<String, String> map2 = arVar.f59725e;
        map2.put("A5", b4.n());
        Map<String, String> map3 = arVar.f59725e;
        StringBuilder sb = new StringBuilder();
        sb.append(b4.l());
        map3.put("A2", sb.toString());
        Map<String, String> map4 = arVar.f59725e;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(b4.l());
        map4.put("A1", sb2.toString());
        Map<String, String> map5 = arVar.f59725e;
        map5.put("A24", b4.f59368h);
        Map<String, String> map6 = arVar.f59725e;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(b4.m());
        map6.put("A17", sb3.toString());
        Map<String, String> map7 = arVar.f59725e;
        map7.put("A15", b4.r());
        Map<String, String> map8 = arVar.f59725e;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(b4.s());
        map8.put("A13", sb4.toString());
        Map<String, String> map9 = arVar.f59725e;
        map9.put("F08", b4.f59382v);
        Map<String, String> map10 = arVar.f59725e;
        map10.put("F09", b4.f59383w);
        Map<String, String> z3 = b4.z();
        if (z3 != null && z3.size() > 0) {
            for (Map.Entry<String, String> entry : z3.entrySet()) {
                Map<String, String> map11 = arVar.f59725e;
                map11.put("C04_" + entry.getKey(), entry.getValue());
            }
        }
        if (i2 == 1) {
            arVar.f59721a = (byte) 1;
        } else if (i2 != 2) {
            x.e("unknown up type %d ", Integer.valueOf(i2));
            return null;
        } else {
            arVar.f59721a = (byte) 2;
        }
        return arVar;
    }

    public static <T extends k> T a(byte[] bArr, Class<T> cls) {
        if (bArr != null && bArr.length > 0) {
            try {
                T newInstance = cls.newInstance();
                i iVar = new i(bArr);
                iVar.a("utf-8");
                newInstance.a(iVar);
                return newInstance;
            } catch (Throwable th) {
                if (!x.b(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static am a(Context context, int i2, byte[] bArr) {
        String str;
        com.tencent.bugly.crashreport.common.info.a b4 = com.tencent.bugly.crashreport.common.info.a.b();
        StrategyBean c4 = com.tencent.bugly.crashreport.common.strategy.a.a().c();
        if (b4 != null && c4 != null) {
            try {
                am amVar = new am();
                synchronized (b4) {
                    amVar.f59659a = 1;
                    amVar.f59660b = b4.f();
                    amVar.f59661c = b4.f59363c;
                    amVar.f59662d = b4.f59370j;
                    amVar.f59663e = b4.f59372l;
                    amVar.f59664f = b4.f59366f;
                    amVar.f59665g = i2;
                    if (bArr == null) {
                        bArr = "".getBytes();
                    }
                    amVar.f59666h = bArr;
                    amVar.f59667i = b4.i();
                    amVar.f59668j = b4.f59368h;
                    amVar.f59669k = new HashMap();
                    amVar.f59670l = b4.e();
                    amVar.f59671m = c4.f59403n;
                    amVar.f59673o = b4.h();
                    amVar.f59674p = com.tencent.bugly.crashreport.common.info.b.b(context);
                    amVar.f59675q = System.currentTimeMillis();
                    amVar.f59676r = b4.j();
                    amVar.f59677s = b4.h();
                    amVar.f59678t = amVar.f59674p;
                    amVar.f59672n = "com.tencent.bugly";
                    Map<String, String> map = amVar.f59669k;
                    map.put("A26", b4.t());
                    Map<String, String> map2 = amVar.f59669k;
                    StringBuilder sb = new StringBuilder();
                    sb.append(b4.E());
                    map2.put("A62", sb.toString());
                    Map<String, String> map3 = amVar.f59669k;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(b4.F());
                    map3.put("A63", sb2.toString());
                    Map<String, String> map4 = amVar.f59669k;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(b4.A);
                    map4.put("F11", sb3.toString());
                    Map<String, String> map5 = amVar.f59669k;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(b4.f59386z);
                    map5.put("F12", sb4.toString());
                    Map<String, String> map6 = amVar.f59669k;
                    map6.put("D3", b4.f59371k);
                    List<com.tencent.bugly.a> list = com.tencent.bugly.b.f59303b;
                    if (list != null) {
                        for (com.tencent.bugly.a aVar : list) {
                            String str2 = aVar.versionKey;
                            if (str2 != null && (str = aVar.version) != null) {
                                amVar.f59669k.put(str2, str);
                            }
                        }
                    }
                    amVar.f59669k.put("G15", z.c("G15", ""));
                    amVar.f59669k.put("G10", z.c("G10", ""));
                    amVar.f59669k.put("D4", z.c("D4", "0"));
                }
                Map<String, String> y3 = b4.y();
                if (y3 != null) {
                    for (Map.Entry<String, String> entry : y3.entrySet()) {
                        amVar.f59669k.put(entry.getKey(), entry.getValue());
                    }
                }
                return amVar;
            } catch (Throwable th) {
                if (!x.b(th)) {
                    th.printStackTrace();
                }
                return null;
            }
        }
        x.e("Can not create request pkg for parameters is invalid.", new Object[0]);
        return null;
    }

    private void a(ArrayList<String> arrayList, Object obj) {
        if (obj.getClass().isArray()) {
            if (obj.getClass().getComponentType().toString().equals(MethodReflectParams.BYTE)) {
                if (Array.getLength(obj) > 0) {
                    arrayList.add("java.util.List");
                    a(arrayList, Array.get(obj, 0));
                    return;
                }
                arrayList.add("Array");
                arrayList.add("?");
                return;
            }
            throw new IllegalArgumentException("only byte[] is supported");
        } else if (!(obj instanceof Array)) {
            if (obj instanceof List) {
                arrayList.add("java.util.List");
                List list = (List) obj;
                if (list.size() > 0) {
                    a(arrayList, list.get(0));
                } else {
                    arrayList.add("?");
                }
            } else if (obj instanceof Map) {
                arrayList.add("java.util.Map");
                Map map = (Map) obj;
                if (map.size() > 0) {
                    Object next = map.keySet().iterator().next();
                    Object obj2 = map.get(next);
                    arrayList.add(next.getClass().getName());
                    a(arrayList, obj2);
                    return;
                }
                arrayList.add("?");
                arrayList.add("?");
            } else {
                arrayList.add(obj.getClass().getName());
            }
        } else {
            throw new IllegalArgumentException("can not support Array, please use List");
        }
    }

    public byte[] a() {
        j jVar = new j(0);
        jVar.a(this.f59603b);
        jVar.a((Map) this.f59602a, 0);
        return l.a(jVar.a());
    }

    public static byte[] a(Object obj) {
        try {
            d dVar = new d();
            dVar.c();
            dVar.a("utf-8");
            dVar.a(1);
            dVar.b("RqdServer");
            dVar.c("sync");
            dVar.a("detail", (String) obj);
            return dVar.a();
        } catch (Throwable th) {
            if (x.b(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    public void a(byte[] bArr) {
        this.f59604c.a(bArr);
        this.f59604c.a(this.f59603b);
        HashMap hashMap = new HashMap(1);
        HashMap hashMap2 = new HashMap(1);
        hashMap2.put("", new byte[0]);
        hashMap.put("", hashMap2);
        this.f59602a = this.f59604c.a((Map) hashMap, 0, false);
    }

    public static byte[] a(k kVar) {
        try {
            j jVar = new j();
            jVar.a("utf-8");
            kVar.a(jVar);
            return jVar.b();
        } catch (Throwable th) {
            if (x.b(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }
}
