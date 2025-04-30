package com.umeng.commonsdk.statistics.proto;

import com.umeng.analytics.pro.ao;
import com.umeng.analytics.pro.ar;
import com.umeng.analytics.pro.ax;
import com.umeng.analytics.pro.ay;
import com.umeng.analytics.pro.bd;
import com.umeng.analytics.pro.be;
import com.umeng.analytics.pro.bg;
import com.umeng.analytics.pro.bi;
import com.umeng.analytics.pro.bk;
import com.umeng.analytics.pro.bl;
import com.umeng.analytics.pro.bn;
import com.umeng.analytics.pro.bq;
import com.umeng.analytics.pro.br;
import com.umeng.analytics.pro.bt;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.bw;
import com.umeng.analytics.pro.by;
import com.umeng.analytics.pro.bz;
import com.umeng.analytics.pro.ca;
import com.umeng.analytics.pro.cb;
import com.umeng.analytics.pro.cc;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* compiled from: Imprint.java */
/* loaded from: classes4.dex */
public class d implements ar<d, e>, Serializable, Cloneable {

    /* renamed from: d  reason: collision with root package name */
    public static final Map<e, bd> f61466d;

    /* renamed from: e  reason: collision with root package name */
    private static final long f61467e = 2846460275012375038L;

    /* renamed from: f  reason: collision with root package name */
    private static final bv f61468f = new bv("Imprint");

    /* renamed from: g  reason: collision with root package name */
    private static final bl f61469g = new bl("property", (byte) 13, 1);

    /* renamed from: h  reason: collision with root package name */
    private static final bl f61470h = new bl("version", (byte) 8, 2);

    /* renamed from: i  reason: collision with root package name */
    private static final bl f61471i = new bl("checksum", (byte) 11, 3);

    /* renamed from: j  reason: collision with root package name */
    private static final Map<Class<? extends by>, bz> f61472j;

    /* renamed from: k  reason: collision with root package name */
    private static final int f61473k = 0;

    /* renamed from: a  reason: collision with root package name */
    public Map<String, com.umeng.commonsdk.statistics.proto.e> f61474a;

    /* renamed from: b  reason: collision with root package name */
    public int f61475b;

    /* renamed from: c  reason: collision with root package name */
    public String f61476c;

    /* renamed from: l  reason: collision with root package name */
    private byte f61477l;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Imprint.java */
    /* loaded from: classes4.dex */
    public static class a extends ca<d> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a */
        public void b(bq bqVar, d dVar) throws ax {
            bqVar.j();
            while (true) {
                bl l4 = bqVar.l();
                byte b4 = l4.f60583b;
                if (b4 == 0) {
                    break;
                }
                short s3 = l4.f60584c;
                if (s3 != 1) {
                    if (s3 != 2) {
                        if (s3 != 3) {
                            bt.a(bqVar, b4);
                        } else if (b4 == 11) {
                            dVar.f61476c = bqVar.z();
                            dVar.c(true);
                        } else {
                            bt.a(bqVar, b4);
                        }
                    } else if (b4 == 8) {
                        dVar.f61475b = bqVar.w();
                        dVar.b(true);
                    } else {
                        bt.a(bqVar, b4);
                    }
                } else if (b4 == 13) {
                    bn n4 = bqVar.n();
                    dVar.f61474a = new HashMap(n4.f60589c * 2);
                    for (int i2 = 0; i2 < n4.f60589c; i2++) {
                        String z3 = bqVar.z();
                        com.umeng.commonsdk.statistics.proto.e eVar = new com.umeng.commonsdk.statistics.proto.e();
                        eVar.read(bqVar);
                        dVar.f61474a.put(z3, eVar);
                    }
                    bqVar.o();
                    dVar.a(true);
                } else {
                    bt.a(bqVar, b4);
                }
                bqVar.m();
            }
            bqVar.k();
            if (dVar.h()) {
                dVar.l();
                return;
            }
            throw new br("Required field 'version' was not found in serialized data! Struct: " + toString());
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: b */
        public void a(bq bqVar, d dVar) throws ax {
            dVar.l();
            bqVar.a(d.f61468f);
            if (dVar.f61474a != null) {
                bqVar.a(d.f61469g);
                bqVar.a(new bn((byte) 11, (byte) 12, dVar.f61474a.size()));
                for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.f61474a.entrySet()) {
                    bqVar.a(entry.getKey());
                    entry.getValue().write(bqVar);
                }
                bqVar.e();
                bqVar.c();
            }
            bqVar.a(d.f61470h);
            bqVar.a(dVar.f61475b);
            bqVar.c();
            if (dVar.f61476c != null) {
                bqVar.a(d.f61471i);
                bqVar.a(dVar.f61476c);
                bqVar.c();
            }
            bqVar.d();
            bqVar.b();
        }
    }

    /* compiled from: Imprint.java */
    /* loaded from: classes4.dex */
    private static class b implements bz {
        private b() {
        }

        @Override // com.umeng.analytics.pro.bz
        /* renamed from: a */
        public a b() {
            return new a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Imprint.java */
    /* loaded from: classes4.dex */
    public static class c extends cb<d> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.by
        public void a(bq bqVar, d dVar) throws ax {
            bw bwVar = (bw) bqVar;
            bwVar.a(dVar.f61474a.size());
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.f61474a.entrySet()) {
                bwVar.a(entry.getKey());
                entry.getValue().write(bwVar);
            }
            bwVar.a(dVar.f61475b);
            bwVar.a(dVar.f61476c);
        }

        @Override // com.umeng.analytics.pro.by
        public void b(bq bqVar, d dVar) throws ax {
            bw bwVar = (bw) bqVar;
            bn bnVar = new bn((byte) 11, (byte) 12, bwVar.w());
            dVar.f61474a = new HashMap(bnVar.f60589c * 2);
            for (int i2 = 0; i2 < bnVar.f60589c; i2++) {
                String z3 = bwVar.z();
                com.umeng.commonsdk.statistics.proto.e eVar = new com.umeng.commonsdk.statistics.proto.e();
                eVar.read(bwVar);
                dVar.f61474a.put(z3, eVar);
            }
            dVar.a(true);
            dVar.f61475b = bwVar.w();
            dVar.b(true);
            dVar.f61476c = bwVar.z();
            dVar.c(true);
        }
    }

    /* compiled from: Imprint.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.d$d  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private static class C0361d implements bz {
        private C0361d() {
        }

        @Override // com.umeng.analytics.pro.bz
        /* renamed from: a */
        public c b() {
            return new c();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f61472j = hashMap;
        hashMap.put(ca.class, new b());
        hashMap.put(cb.class, new C0361d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.PROPERTY, (e) new bd("property", (byte) 1, new bg((byte) 13, new be((byte) 11), new bi((byte) 12, com.umeng.commonsdk.statistics.proto.e.class))));
        enumMap.put((EnumMap) e.VERSION, (e) new bd("version", (byte) 1, new be((byte) 8)));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new bd("checksum", (byte) 1, new be((byte) 11)));
        Map<e, bd> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        f61466d = unmodifiableMap;
        bd.a(d.class, unmodifiableMap);
    }

    public d() {
        this.f61477l = (byte) 0;
    }

    @Override // com.umeng.analytics.pro.ar
    /* renamed from: a */
    public d deepCopy() {
        return new d(this);
    }

    public int b() {
        Map<String, com.umeng.commonsdk.statistics.proto.e> map = this.f61474a;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public Map<String, com.umeng.commonsdk.statistics.proto.e> c() {
        return this.f61474a;
    }

    @Override // com.umeng.analytics.pro.ar
    public void clear() {
        this.f61474a = null;
        b(false);
        this.f61475b = 0;
        this.f61476c = null;
    }

    public void d() {
        this.f61474a = null;
    }

    public boolean e() {
        return this.f61474a != null;
    }

    public int f() {
        return this.f61475b;
    }

    public void g() {
        this.f61477l = ao.b(this.f61477l, 0);
    }

    public boolean h() {
        return ao.a(this.f61477l, 0);
    }

    public String i() {
        return this.f61476c;
    }

    public void j() {
        this.f61476c = null;
    }

    public boolean k() {
        return this.f61476c != null;
    }

    public void l() throws ax {
        if (this.f61474a != null) {
            if (this.f61476c != null) {
                return;
            }
            throw new br("Required field 'checksum' was not present! Struct: " + toString());
        }
        throw new br("Required field 'property' was not present! Struct: " + toString());
    }

    @Override // com.umeng.analytics.pro.ar
    public void read(bq bqVar) throws ax {
        f61472j.get(bqVar.D()).b().b(bqVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Imprint(");
        sb.append("property:");
        Map<String, com.umeng.commonsdk.statistics.proto.e> map = this.f61474a;
        if (map == null) {
            sb.append("null");
        } else {
            sb.append(map);
        }
        sb.append(", ");
        sb.append("version:");
        sb.append(this.f61475b);
        sb.append(", ");
        sb.append("checksum:");
        String str = this.f61476c;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.ar
    public void write(bq bqVar) throws ax {
        f61472j.get(bqVar.D()).b().a(bqVar, this);
    }

    /* compiled from: Imprint.java */
    /* loaded from: classes4.dex */
    public enum e implements ay {
        PROPERTY(1, "property"),
        VERSION(2, "version"),
        CHECKSUM(3, "checksum");
        

        /* renamed from: d  reason: collision with root package name */
        private static final Map<String, e> f61481d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        private final short f61483e;

        /* renamed from: f  reason: collision with root package name */
        private final String f61484f;

        static {
            Iterator it2 = EnumSet.allOf(e.class).iterator();
            while (it2.hasNext()) {
                e eVar = (e) it2.next();
                f61481d.put(eVar.b(), eVar);
            }
        }

        e(short s3, String str) {
            this.f61483e = s3;
            this.f61484f = str;
        }

        public static e a(int i2) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        return null;
                    }
                    return CHECKSUM;
                }
                return VERSION;
            }
            return PROPERTY;
        }

        public static e b(int i2) {
            e a4 = a(i2);
            if (a4 != null) {
                return a4;
            }
            throw new IllegalArgumentException("Field " + i2 + " doesn't exist!");
        }

        @Override // com.umeng.analytics.pro.ay
        public String b() {
            return this.f61484f;
        }

        public static e a(String str) {
            return f61481d.get(str);
        }

        @Override // com.umeng.analytics.pro.ay
        public short a() {
            return this.f61483e;
        }
    }

    public void a(String str, com.umeng.commonsdk.statistics.proto.e eVar) {
        if (this.f61474a == null) {
            this.f61474a = new HashMap();
        }
        this.f61474a.put(str, eVar);
    }

    public void b(boolean z3) {
        this.f61477l = ao.a(this.f61477l, 0, z3);
    }

    public void c(boolean z3) {
        if (z3) {
            return;
        }
        this.f61476c = null;
    }

    public d(Map<String, com.umeng.commonsdk.statistics.proto.e> map, int i2, String str) {
        this();
        this.f61474a = map;
        this.f61475b = i2;
        b(true);
        this.f61476c = str;
    }

    @Override // com.umeng.analytics.pro.ar
    /* renamed from: b */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    public d a(Map<String, com.umeng.commonsdk.statistics.proto.e> map) {
        this.f61474a = map;
        return this;
    }

    public void a(boolean z3) {
        if (z3) {
            return;
        }
        this.f61474a = null;
    }

    public d a(int i2) {
        this.f61475b = i2;
        b(true);
        return this;
    }

    public d(d dVar) {
        this.f61477l = (byte) 0;
        this.f61477l = dVar.f61477l;
        if (dVar.e()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.f61474a.entrySet()) {
                hashMap.put(entry.getKey(), new com.umeng.commonsdk.statistics.proto.e(entry.getValue()));
            }
            this.f61474a = hashMap;
        }
        this.f61475b = dVar.f61475b;
        if (dVar.k()) {
            this.f61476c = dVar.f61476c;
        }
    }

    public d a(String str) {
        this.f61476c = str;
        return this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new bk(new cc(objectOutputStream)));
        } catch (ax e4) {
            throw new IOException(e4.getMessage());
        }
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f61477l = (byte) 0;
            read(new bk(new cc(objectInputStream)));
        } catch (ax e4) {
            throw new IOException(e4.getMessage());
        }
    }
}
