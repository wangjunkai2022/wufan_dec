package com.umeng.commonsdk.statistics.proto;

import com.umeng.analytics.pro.ao;
import com.umeng.analytics.pro.ar;
import com.umeng.analytics.pro.ax;
import com.umeng.analytics.pro.ay;
import com.umeng.analytics.pro.bd;
import com.umeng.analytics.pro.be;
import com.umeng.analytics.pro.bk;
import com.umeng.analytics.pro.bl;
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
/* compiled from: IdSnapshot.java */
/* loaded from: classes4.dex */
public class b implements ar<b, e>, Serializable, Cloneable {

    /* renamed from: d  reason: collision with root package name */
    public static final Map<e, bd> f61428d;

    /* renamed from: e  reason: collision with root package name */
    private static final long f61429e = -6496538196005191531L;

    /* renamed from: f  reason: collision with root package name */
    private static final bv f61430f = new bv("IdSnapshot");

    /* renamed from: g  reason: collision with root package name */
    private static final bl f61431g = new bl("identity", (byte) 11, 1);

    /* renamed from: h  reason: collision with root package name */
    private static final bl f61432h = new bl("ts", (byte) 10, 2);

    /* renamed from: i  reason: collision with root package name */
    private static final bl f61433i = new bl("version", (byte) 8, 3);

    /* renamed from: j  reason: collision with root package name */
    private static final Map<Class<? extends by>, bz> f61434j;

    /* renamed from: k  reason: collision with root package name */
    private static final int f61435k = 0;

    /* renamed from: l  reason: collision with root package name */
    private static final int f61436l = 1;

    /* renamed from: a  reason: collision with root package name */
    public String f61437a;

    /* renamed from: b  reason: collision with root package name */
    public long f61438b;

    /* renamed from: c  reason: collision with root package name */
    public int f61439c;

    /* renamed from: m  reason: collision with root package name */
    private byte f61440m;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IdSnapshot.java */
    /* loaded from: classes4.dex */
    public static class a extends ca<b> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a */
        public void b(bq bqVar, b bVar) throws ax {
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
                        } else if (b4 == 8) {
                            bVar.f61439c = bqVar.w();
                            bVar.c(true);
                        } else {
                            bt.a(bqVar, b4);
                        }
                    } else if (b4 == 10) {
                        bVar.f61438b = bqVar.x();
                        bVar.b(true);
                    } else {
                        bt.a(bqVar, b4);
                    }
                } else if (b4 == 11) {
                    bVar.f61437a = bqVar.z();
                    bVar.a(true);
                } else {
                    bt.a(bqVar, b4);
                }
                bqVar.m();
            }
            bqVar.k();
            if (bVar.g()) {
                if (bVar.j()) {
                    bVar.k();
                    return;
                }
                throw new br("Required field 'version' was not found in serialized data! Struct: " + toString());
            }
            throw new br("Required field 'ts' was not found in serialized data! Struct: " + toString());
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: b */
        public void a(bq bqVar, b bVar) throws ax {
            bVar.k();
            bqVar.a(b.f61430f);
            if (bVar.f61437a != null) {
                bqVar.a(b.f61431g);
                bqVar.a(bVar.f61437a);
                bqVar.c();
            }
            bqVar.a(b.f61432h);
            bqVar.a(bVar.f61438b);
            bqVar.c();
            bqVar.a(b.f61433i);
            bqVar.a(bVar.f61439c);
            bqVar.c();
            bqVar.d();
            bqVar.b();
        }
    }

    /* compiled from: IdSnapshot.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private static class C0359b implements bz {
        private C0359b() {
        }

        @Override // com.umeng.analytics.pro.bz
        /* renamed from: a */
        public a b() {
            return new a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IdSnapshot.java */
    /* loaded from: classes4.dex */
    public static class c extends cb<b> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.by
        public void a(bq bqVar, b bVar) throws ax {
            bw bwVar = (bw) bqVar;
            bwVar.a(bVar.f61437a);
            bwVar.a(bVar.f61438b);
            bwVar.a(bVar.f61439c);
        }

        @Override // com.umeng.analytics.pro.by
        public void b(bq bqVar, b bVar) throws ax {
            bw bwVar = (bw) bqVar;
            bVar.f61437a = bwVar.z();
            bVar.a(true);
            bVar.f61438b = bwVar.x();
            bVar.b(true);
            bVar.f61439c = bwVar.w();
            bVar.c(true);
        }
    }

    /* compiled from: IdSnapshot.java */
    /* loaded from: classes4.dex */
    private static class d implements bz {
        private d() {
        }

        @Override // com.umeng.analytics.pro.bz
        /* renamed from: a */
        public c b() {
            return new c();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f61434j = hashMap;
        hashMap.put(ca.class, new C0359b());
        hashMap.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.IDENTITY, (e) new bd("identity", (byte) 1, new be((byte) 11)));
        enumMap.put((EnumMap) e.TS, (e) new bd("ts", (byte) 1, new be((byte) 10)));
        enumMap.put((EnumMap) e.VERSION, (e) new bd("version", (byte) 1, new be((byte) 8)));
        Map<e, bd> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        f61428d = unmodifiableMap;
        bd.a(b.class, unmodifiableMap);
    }

    public b() {
        this.f61440m = (byte) 0;
    }

    @Override // com.umeng.analytics.pro.ar
    /* renamed from: a */
    public b deepCopy() {
        return new b(this);
    }

    public String b() {
        return this.f61437a;
    }

    public void c() {
        this.f61437a = null;
    }

    @Override // com.umeng.analytics.pro.ar
    public void clear() {
        this.f61437a = null;
        b(false);
        this.f61438b = 0L;
        c(false);
        this.f61439c = 0;
    }

    public boolean d() {
        return this.f61437a != null;
    }

    public long e() {
        return this.f61438b;
    }

    public void f() {
        this.f61440m = ao.b(this.f61440m, 0);
    }

    public boolean g() {
        return ao.a(this.f61440m, 0);
    }

    public int h() {
        return this.f61439c;
    }

    public void i() {
        this.f61440m = ao.b(this.f61440m, 1);
    }

    public boolean j() {
        return ao.a(this.f61440m, 1);
    }

    public void k() throws ax {
        if (this.f61437a != null) {
            return;
        }
        throw new br("Required field 'identity' was not present! Struct: " + toString());
    }

    @Override // com.umeng.analytics.pro.ar
    public void read(bq bqVar) throws ax {
        f61434j.get(bqVar.D()).b().b(bqVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdSnapshot(");
        sb.append("identity:");
        String str = this.f61437a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.f61438b);
        sb.append(", ");
        sb.append("version:");
        sb.append(this.f61439c);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.ar
    public void write(bq bqVar) throws ax {
        f61434j.get(bqVar.D()).b().a(bqVar, this);
    }

    /* compiled from: IdSnapshot.java */
    /* loaded from: classes4.dex */
    public enum e implements ay {
        IDENTITY(1, "identity"),
        TS(2, "ts"),
        VERSION(3, "version");
        

        /* renamed from: d  reason: collision with root package name */
        private static final Map<String, e> f61444d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        private final short f61446e;

        /* renamed from: f  reason: collision with root package name */
        private final String f61447f;

        static {
            Iterator it2 = EnumSet.allOf(e.class).iterator();
            while (it2.hasNext()) {
                e eVar = (e) it2.next();
                f61444d.put(eVar.b(), eVar);
            }
        }

        e(short s3, String str) {
            this.f61446e = s3;
            this.f61447f = str;
        }

        public static e a(int i2) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        return null;
                    }
                    return VERSION;
                }
                return TS;
            }
            return IDENTITY;
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
            return this.f61447f;
        }

        public static e a(String str) {
            return f61444d.get(str);
        }

        @Override // com.umeng.analytics.pro.ay
        public short a() {
            return this.f61446e;
        }
    }

    public b a(String str) {
        this.f61437a = str;
        return this;
    }

    public void b(boolean z3) {
        this.f61440m = ao.a(this.f61440m, 0, z3);
    }

    public void c(boolean z3) {
        this.f61440m = ao.a(this.f61440m, 1, z3);
    }

    public b(String str, long j4, int i2) {
        this();
        this.f61437a = str;
        this.f61438b = j4;
        b(true);
        this.f61439c = i2;
        c(true);
    }

    public void a(boolean z3) {
        if (z3) {
            return;
        }
        this.f61437a = null;
    }

    @Override // com.umeng.analytics.pro.ar
    /* renamed from: b */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    public b a(long j4) {
        this.f61438b = j4;
        b(true);
        return this;
    }

    public b a(int i2) {
        this.f61439c = i2;
        c(true);
        return this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new bk(new cc(objectOutputStream)));
        } catch (ax e4) {
            throw new IOException(e4.getMessage());
        }
    }

    public b(b bVar) {
        this.f61440m = (byte) 0;
        this.f61440m = bVar.f61440m;
        if (bVar.d()) {
            this.f61437a = bVar.f61437a;
        }
        this.f61438b = bVar.f61438b;
        this.f61439c = bVar.f61439c;
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f61440m = (byte) 0;
            read(new bk(new cc(objectInputStream)));
        } catch (ax e4) {
            throw new IOException(e4.getMessage());
        }
    }
}
