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
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* compiled from: IdJournal.java */
/* loaded from: classes4.dex */
public class a implements ar<a, e>, Serializable, Cloneable {

    /* renamed from: e  reason: collision with root package name */
    public static final Map<e, bd> f61405e;

    /* renamed from: f  reason: collision with root package name */
    private static final long f61406f = 9132678615281394583L;

    /* renamed from: g  reason: collision with root package name */
    private static final bv f61407g = new bv("IdJournal");

    /* renamed from: h  reason: collision with root package name */
    private static final bl f61408h = new bl("domain", (byte) 11, 1);

    /* renamed from: i  reason: collision with root package name */
    private static final bl f61409i = new bl("old_id", (byte) 11, 2);

    /* renamed from: j  reason: collision with root package name */
    private static final bl f61410j = new bl("new_id", (byte) 11, 3);

    /* renamed from: k  reason: collision with root package name */
    private static final bl f61411k = new bl("ts", (byte) 10, 4);

    /* renamed from: l  reason: collision with root package name */
    private static final Map<Class<? extends by>, bz> f61412l;

    /* renamed from: m  reason: collision with root package name */
    private static final int f61413m = 0;

    /* renamed from: a  reason: collision with root package name */
    public String f61414a;

    /* renamed from: b  reason: collision with root package name */
    public String f61415b;

    /* renamed from: c  reason: collision with root package name */
    public String f61416c;

    /* renamed from: d  reason: collision with root package name */
    public long f61417d;

    /* renamed from: n  reason: collision with root package name */
    private byte f61418n;

    /* renamed from: o  reason: collision with root package name */
    private e[] f61419o;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IdJournal.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0358a extends ca<a> {
        private C0358a() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a */
        public void b(bq bqVar, a aVar) throws ax {
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
                            if (s3 != 4) {
                                bt.a(bqVar, b4);
                            } else if (b4 == 10) {
                                aVar.f61417d = bqVar.x();
                                aVar.d(true);
                            } else {
                                bt.a(bqVar, b4);
                            }
                        } else if (b4 == 11) {
                            aVar.f61416c = bqVar.z();
                            aVar.c(true);
                        } else {
                            bt.a(bqVar, b4);
                        }
                    } else if (b4 == 11) {
                        aVar.f61415b = bqVar.z();
                        aVar.b(true);
                    } else {
                        bt.a(bqVar, b4);
                    }
                } else if (b4 == 11) {
                    aVar.f61414a = bqVar.z();
                    aVar.a(true);
                } else {
                    bt.a(bqVar, b4);
                }
                bqVar.m();
            }
            bqVar.k();
            if (aVar.m()) {
                aVar.n();
                return;
            }
            throw new br("Required field 'ts' was not found in serialized data! Struct: " + toString());
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: b */
        public void a(bq bqVar, a aVar) throws ax {
            aVar.n();
            bqVar.a(a.f61407g);
            if (aVar.f61414a != null) {
                bqVar.a(a.f61408h);
                bqVar.a(aVar.f61414a);
                bqVar.c();
            }
            if (aVar.f61415b != null && aVar.g()) {
                bqVar.a(a.f61409i);
                bqVar.a(aVar.f61415b);
                bqVar.c();
            }
            if (aVar.f61416c != null) {
                bqVar.a(a.f61410j);
                bqVar.a(aVar.f61416c);
                bqVar.c();
            }
            bqVar.a(a.f61411k);
            bqVar.a(aVar.f61417d);
            bqVar.c();
            bqVar.d();
            bqVar.b();
        }
    }

    /* compiled from: IdJournal.java */
    /* loaded from: classes4.dex */
    private static class b implements bz {
        private b() {
        }

        @Override // com.umeng.analytics.pro.bz
        /* renamed from: a */
        public C0358a b() {
            return new C0358a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IdJournal.java */
    /* loaded from: classes4.dex */
    public static class c extends cb<a> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.by
        public void a(bq bqVar, a aVar) throws ax {
            bw bwVar = (bw) bqVar;
            bwVar.a(aVar.f61414a);
            bwVar.a(aVar.f61416c);
            bwVar.a(aVar.f61417d);
            BitSet bitSet = new BitSet();
            if (aVar.g()) {
                bitSet.set(0);
            }
            bwVar.a(bitSet, 1);
            if (aVar.g()) {
                bwVar.a(aVar.f61415b);
            }
        }

        @Override // com.umeng.analytics.pro.by
        public void b(bq bqVar, a aVar) throws ax {
            bw bwVar = (bw) bqVar;
            aVar.f61414a = bwVar.z();
            aVar.a(true);
            aVar.f61416c = bwVar.z();
            aVar.c(true);
            aVar.f61417d = bwVar.x();
            aVar.d(true);
            if (bwVar.b(1).get(0)) {
                aVar.f61415b = bwVar.z();
                aVar.b(true);
            }
        }
    }

    /* compiled from: IdJournal.java */
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
        f61412l = hashMap;
        hashMap.put(ca.class, new b());
        hashMap.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.DOMAIN, (e) new bd("domain", (byte) 1, new be((byte) 11)));
        enumMap.put((EnumMap) e.OLD_ID, (e) new bd("old_id", (byte) 2, new be((byte) 11)));
        enumMap.put((EnumMap) e.NEW_ID, (e) new bd("new_id", (byte) 1, new be((byte) 11)));
        enumMap.put((EnumMap) e.TS, (e) new bd("ts", (byte) 1, new be((byte) 10)));
        Map<e, bd> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        f61405e = unmodifiableMap;
        bd.a(a.class, unmodifiableMap);
    }

    public a() {
        this.f61418n = (byte) 0;
        this.f61419o = new e[]{e.OLD_ID};
    }

    @Override // com.umeng.analytics.pro.ar
    /* renamed from: a */
    public a deepCopy() {
        return new a(this);
    }

    public String b() {
        return this.f61414a;
    }

    public void c() {
        this.f61414a = null;
    }

    @Override // com.umeng.analytics.pro.ar
    public void clear() {
        this.f61414a = null;
        this.f61415b = null;
        this.f61416c = null;
        d(false);
        this.f61417d = 0L;
    }

    public boolean d() {
        return this.f61414a != null;
    }

    public String e() {
        return this.f61415b;
    }

    public void f() {
        this.f61415b = null;
    }

    public boolean g() {
        return this.f61415b != null;
    }

    public String h() {
        return this.f61416c;
    }

    public void i() {
        this.f61416c = null;
    }

    public boolean j() {
        return this.f61416c != null;
    }

    public long k() {
        return this.f61417d;
    }

    public void l() {
        this.f61418n = ao.b(this.f61418n, 0);
    }

    public boolean m() {
        return ao.a(this.f61418n, 0);
    }

    public void n() throws ax {
        if (this.f61414a != null) {
            if (this.f61416c != null) {
                return;
            }
            throw new br("Required field 'new_id' was not present! Struct: " + toString());
        }
        throw new br("Required field 'domain' was not present! Struct: " + toString());
    }

    @Override // com.umeng.analytics.pro.ar
    public void read(bq bqVar) throws ax {
        f61412l.get(bqVar.D()).b().b(bqVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdJournal(");
        sb.append("domain:");
        String str = this.f61414a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        if (g()) {
            sb.append(", ");
            sb.append("old_id:");
            String str2 = this.f61415b;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        sb.append(", ");
        sb.append("new_id:");
        String str3 = this.f61416c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.f61417d);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.ar
    public void write(bq bqVar) throws ax {
        f61412l.get(bqVar.D()).b().a(bqVar, this);
    }

    /* compiled from: IdJournal.java */
    /* loaded from: classes4.dex */
    public enum e implements ay {
        DOMAIN(1, "domain"),
        OLD_ID(2, "old_id"),
        NEW_ID(3, "new_id"),
        TS(4, "ts");
        

        /* renamed from: e  reason: collision with root package name */
        private static final Map<String, e> f61424e = new HashMap();

        /* renamed from: f  reason: collision with root package name */
        private final short f61426f;

        /* renamed from: g  reason: collision with root package name */
        private final String f61427g;

        static {
            Iterator it2 = EnumSet.allOf(e.class).iterator();
            while (it2.hasNext()) {
                e eVar = (e) it2.next();
                f61424e.put(eVar.b(), eVar);
            }
        }

        e(short s3, String str) {
            this.f61426f = s3;
            this.f61427g = str;
        }

        public static e a(int i2) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            return null;
                        }
                        return TS;
                    }
                    return NEW_ID;
                }
                return OLD_ID;
            }
            return DOMAIN;
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
            return this.f61427g;
        }

        public static e a(String str) {
            return f61424e.get(str);
        }

        @Override // com.umeng.analytics.pro.ay
        public short a() {
            return this.f61426f;
        }
    }

    public a a(String str) {
        this.f61414a = str;
        return this;
    }

    public a b(String str) {
        this.f61415b = str;
        return this;
    }

    public a c(String str) {
        this.f61416c = str;
        return this;
    }

    public void d(boolean z3) {
        this.f61418n = ao.a(this.f61418n, 0, z3);
    }

    public void a(boolean z3) {
        if (z3) {
            return;
        }
        this.f61414a = null;
    }

    public void b(boolean z3) {
        if (z3) {
            return;
        }
        this.f61415b = null;
    }

    public void c(boolean z3) {
        if (z3) {
            return;
        }
        this.f61416c = null;
    }

    public a(String str, String str2, long j4) {
        this();
        this.f61414a = str;
        this.f61416c = str2;
        this.f61417d = j4;
        d(true);
    }

    public a a(long j4) {
        this.f61417d = j4;
        d(true);
        return this;
    }

    @Override // com.umeng.analytics.pro.ar
    /* renamed from: a */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new bk(new cc(objectOutputStream)));
        } catch (ax e4) {
            throw new IOException(e4.getMessage());
        }
    }

    public a(a aVar) {
        this.f61418n = (byte) 0;
        this.f61419o = new e[]{e.OLD_ID};
        this.f61418n = aVar.f61418n;
        if (aVar.d()) {
            this.f61414a = aVar.f61414a;
        }
        if (aVar.g()) {
            this.f61415b = aVar.f61415b;
        }
        if (aVar.j()) {
            this.f61416c = aVar.f61416c;
        }
        this.f61417d = aVar.f61417d;
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f61418n = (byte) 0;
            read(new bk(new cc(objectInputStream)));
        } catch (ax e4) {
            throw new IOException(e4.getMessage());
        }
    }
}
