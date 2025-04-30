package com.umeng.commonsdk.statistics.proto;

import com.umeng.analytics.pro.ar;
import com.umeng.analytics.pro.ax;
import com.umeng.analytics.pro.ay;
import com.umeng.analytics.pro.bd;
import com.umeng.analytics.pro.be;
import com.umeng.analytics.pro.bf;
import com.umeng.analytics.pro.bg;
import com.umeng.analytics.pro.bi;
import com.umeng.analytics.pro.bk;
import com.umeng.analytics.pro.bl;
import com.umeng.analytics.pro.bm;
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
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* compiled from: IdTracking.java */
/* loaded from: classes4.dex */
public class c implements ar<c, e>, Serializable, Cloneable {

    /* renamed from: d  reason: collision with root package name */
    public static final Map<e, bd> f61448d;

    /* renamed from: e  reason: collision with root package name */
    private static final long f61449e = -5764118265293965743L;

    /* renamed from: f  reason: collision with root package name */
    private static final bv f61450f = new bv("IdTracking");

    /* renamed from: g  reason: collision with root package name */
    private static final bl f61451g = new bl("snapshots", (byte) 13, 1);

    /* renamed from: h  reason: collision with root package name */
    private static final bl f61452h = new bl("journals", (byte) 15, 2);

    /* renamed from: i  reason: collision with root package name */
    private static final bl f61453i = new bl("checksum", (byte) 11, 3);

    /* renamed from: j  reason: collision with root package name */
    private static final Map<Class<? extends by>, bz> f61454j;

    /* renamed from: a  reason: collision with root package name */
    public Map<String, com.umeng.commonsdk.statistics.proto.b> f61455a;

    /* renamed from: b  reason: collision with root package name */
    public List<com.umeng.commonsdk.statistics.proto.a> f61456b;

    /* renamed from: c  reason: collision with root package name */
    public String f61457c;

    /* renamed from: k  reason: collision with root package name */
    private e[] f61458k;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IdTracking.java */
    /* loaded from: classes4.dex */
    public static class a extends ca<c> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a */
        public void b(bq bqVar, c cVar) throws ax {
            bqVar.j();
            while (true) {
                bl l4 = bqVar.l();
                byte b4 = l4.f60583b;
                if (b4 == 0) {
                    bqVar.k();
                    cVar.n();
                    return;
                }
                short s3 = l4.f60584c;
                int i2 = 0;
                if (s3 != 1) {
                    if (s3 != 2) {
                        if (s3 != 3) {
                            bt.a(bqVar, b4);
                        } else if (b4 == 11) {
                            cVar.f61457c = bqVar.z();
                            cVar.c(true);
                        } else {
                            bt.a(bqVar, b4);
                        }
                    } else if (b4 == 15) {
                        bm p3 = bqVar.p();
                        cVar.f61456b = new ArrayList(p3.f60586b);
                        while (i2 < p3.f60586b) {
                            com.umeng.commonsdk.statistics.proto.a aVar = new com.umeng.commonsdk.statistics.proto.a();
                            aVar.read(bqVar);
                            cVar.f61456b.add(aVar);
                            i2++;
                        }
                        bqVar.q();
                        cVar.b(true);
                    } else {
                        bt.a(bqVar, b4);
                    }
                } else if (b4 == 13) {
                    bn n4 = bqVar.n();
                    cVar.f61455a = new HashMap(n4.f60589c * 2);
                    while (i2 < n4.f60589c) {
                        String z3 = bqVar.z();
                        com.umeng.commonsdk.statistics.proto.b bVar = new com.umeng.commonsdk.statistics.proto.b();
                        bVar.read(bqVar);
                        cVar.f61455a.put(z3, bVar);
                        i2++;
                    }
                    bqVar.o();
                    cVar.a(true);
                } else {
                    bt.a(bqVar, b4);
                }
                bqVar.m();
            }
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: b */
        public void a(bq bqVar, c cVar) throws ax {
            cVar.n();
            bqVar.a(c.f61450f);
            if (cVar.f61455a != null) {
                bqVar.a(c.f61451g);
                bqVar.a(new bn((byte) 11, (byte) 12, cVar.f61455a.size()));
                for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.b> entry : cVar.f61455a.entrySet()) {
                    bqVar.a(entry.getKey());
                    entry.getValue().write(bqVar);
                }
                bqVar.e();
                bqVar.c();
            }
            if (cVar.f61456b != null && cVar.j()) {
                bqVar.a(c.f61452h);
                bqVar.a(new bm((byte) 12, cVar.f61456b.size()));
                for (com.umeng.commonsdk.statistics.proto.a aVar : cVar.f61456b) {
                    aVar.write(bqVar);
                }
                bqVar.f();
                bqVar.c();
            }
            if (cVar.f61457c != null && cVar.m()) {
                bqVar.a(c.f61453i);
                bqVar.a(cVar.f61457c);
                bqVar.c();
            }
            bqVar.d();
            bqVar.b();
        }
    }

    /* compiled from: IdTracking.java */
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
    /* compiled from: IdTracking.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0360c extends cb<c> {
        private C0360c() {
        }

        @Override // com.umeng.analytics.pro.by
        public void a(bq bqVar, c cVar) throws ax {
            bw bwVar = (bw) bqVar;
            bwVar.a(cVar.f61455a.size());
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.b> entry : cVar.f61455a.entrySet()) {
                bwVar.a(entry.getKey());
                entry.getValue().write(bwVar);
            }
            BitSet bitSet = new BitSet();
            if (cVar.j()) {
                bitSet.set(0);
            }
            if (cVar.m()) {
                bitSet.set(1);
            }
            bwVar.a(bitSet, 2);
            if (cVar.j()) {
                bwVar.a(cVar.f61456b.size());
                for (com.umeng.commonsdk.statistics.proto.a aVar : cVar.f61456b) {
                    aVar.write(bwVar);
                }
            }
            if (cVar.m()) {
                bwVar.a(cVar.f61457c);
            }
        }

        @Override // com.umeng.analytics.pro.by
        public void b(bq bqVar, c cVar) throws ax {
            bw bwVar = (bw) bqVar;
            bn bnVar = new bn((byte) 11, (byte) 12, bwVar.w());
            cVar.f61455a = new HashMap(bnVar.f60589c * 2);
            for (int i2 = 0; i2 < bnVar.f60589c; i2++) {
                String z3 = bwVar.z();
                com.umeng.commonsdk.statistics.proto.b bVar = new com.umeng.commonsdk.statistics.proto.b();
                bVar.read(bwVar);
                cVar.f61455a.put(z3, bVar);
            }
            cVar.a(true);
            BitSet b4 = bwVar.b(2);
            if (b4.get(0)) {
                bm bmVar = new bm((byte) 12, bwVar.w());
                cVar.f61456b = new ArrayList(bmVar.f60586b);
                for (int i4 = 0; i4 < bmVar.f60586b; i4++) {
                    com.umeng.commonsdk.statistics.proto.a aVar = new com.umeng.commonsdk.statistics.proto.a();
                    aVar.read(bwVar);
                    cVar.f61456b.add(aVar);
                }
                cVar.b(true);
            }
            if (b4.get(1)) {
                cVar.f61457c = bwVar.z();
                cVar.c(true);
            }
        }
    }

    /* compiled from: IdTracking.java */
    /* loaded from: classes4.dex */
    private static class d implements bz {
        private d() {
        }

        @Override // com.umeng.analytics.pro.bz
        /* renamed from: a */
        public C0360c b() {
            return new C0360c();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f61454j = hashMap;
        hashMap.put(ca.class, new b());
        hashMap.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.SNAPSHOTS, (e) new bd("snapshots", (byte) 1, new bg((byte) 13, new be((byte) 11), new bi((byte) 12, com.umeng.commonsdk.statistics.proto.b.class))));
        enumMap.put((EnumMap) e.JOURNALS, (e) new bd("journals", (byte) 2, new bf((byte) 15, new bi((byte) 12, com.umeng.commonsdk.statistics.proto.a.class))));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new bd("checksum", (byte) 2, new be((byte) 11)));
        Map<e, bd> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        f61448d = unmodifiableMap;
        bd.a(c.class, unmodifiableMap);
    }

    public c() {
        this.f61458k = new e[]{e.JOURNALS, e.CHECKSUM};
    }

    @Override // com.umeng.analytics.pro.ar
    /* renamed from: a */
    public c deepCopy() {
        return new c(this);
    }

    public int b() {
        Map<String, com.umeng.commonsdk.statistics.proto.b> map = this.f61455a;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public Map<String, com.umeng.commonsdk.statistics.proto.b> c() {
        return this.f61455a;
    }

    @Override // com.umeng.analytics.pro.ar
    public void clear() {
        this.f61455a = null;
        this.f61456b = null;
        this.f61457c = null;
    }

    public void d() {
        this.f61455a = null;
    }

    public boolean e() {
        return this.f61455a != null;
    }

    public int f() {
        List<com.umeng.commonsdk.statistics.proto.a> list = this.f61456b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public Iterator<com.umeng.commonsdk.statistics.proto.a> g() {
        List<com.umeng.commonsdk.statistics.proto.a> list = this.f61456b;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public List<com.umeng.commonsdk.statistics.proto.a> h() {
        return this.f61456b;
    }

    public void i() {
        this.f61456b = null;
    }

    public boolean j() {
        return this.f61456b != null;
    }

    public String k() {
        return this.f61457c;
    }

    public void l() {
        this.f61457c = null;
    }

    public boolean m() {
        return this.f61457c != null;
    }

    public void n() throws ax {
        if (this.f61455a != null) {
            return;
        }
        throw new br("Required field 'snapshots' was not present! Struct: " + toString());
    }

    @Override // com.umeng.analytics.pro.ar
    public void read(bq bqVar) throws ax {
        f61454j.get(bqVar.D()).b().b(bqVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdTracking(");
        sb.append("snapshots:");
        Map<String, com.umeng.commonsdk.statistics.proto.b> map = this.f61455a;
        if (map == null) {
            sb.append("null");
        } else {
            sb.append(map);
        }
        if (j()) {
            sb.append(", ");
            sb.append("journals:");
            List<com.umeng.commonsdk.statistics.proto.a> list = this.f61456b;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
        }
        if (m()) {
            sb.append(", ");
            sb.append("checksum:");
            String str = this.f61457c;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.ar
    public void write(bq bqVar) throws ax {
        f61454j.get(bqVar.D()).b().a(bqVar, this);
    }

    /* compiled from: IdTracking.java */
    /* loaded from: classes4.dex */
    public enum e implements ay {
        SNAPSHOTS(1, "snapshots"),
        JOURNALS(2, "journals"),
        CHECKSUM(3, "checksum");
        

        /* renamed from: d  reason: collision with root package name */
        private static final Map<String, e> f61462d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        private final short f61464e;

        /* renamed from: f  reason: collision with root package name */
        private final String f61465f;

        static {
            Iterator it2 = EnumSet.allOf(e.class).iterator();
            while (it2.hasNext()) {
                e eVar = (e) it2.next();
                f61462d.put(eVar.b(), eVar);
            }
        }

        e(short s3, String str) {
            this.f61464e = s3;
            this.f61465f = str;
        }

        public static e a(int i2) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        return null;
                    }
                    return CHECKSUM;
                }
                return JOURNALS;
            }
            return SNAPSHOTS;
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
            return this.f61465f;
        }

        public static e a(String str) {
            return f61462d.get(str);
        }

        @Override // com.umeng.analytics.pro.ay
        public short a() {
            return this.f61464e;
        }
    }

    public void a(String str, com.umeng.commonsdk.statistics.proto.b bVar) {
        if (this.f61455a == null) {
            this.f61455a = new HashMap();
        }
        this.f61455a.put(str, bVar);
    }

    public void b(boolean z3) {
        if (z3) {
            return;
        }
        this.f61456b = null;
    }

    public void c(boolean z3) {
        if (z3) {
            return;
        }
        this.f61457c = null;
    }

    public c(Map<String, com.umeng.commonsdk.statistics.proto.b> map) {
        this();
        this.f61455a = map;
    }

    public c(c cVar) {
        this.f61458k = new e[]{e.JOURNALS, e.CHECKSUM};
        if (cVar.e()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.b> entry : cVar.f61455a.entrySet()) {
                hashMap.put(entry.getKey(), new com.umeng.commonsdk.statistics.proto.b(entry.getValue()));
            }
            this.f61455a = hashMap;
        }
        if (cVar.j()) {
            ArrayList arrayList = new ArrayList();
            for (com.umeng.commonsdk.statistics.proto.a aVar : cVar.f61456b) {
                arrayList.add(new com.umeng.commonsdk.statistics.proto.a(aVar));
            }
            this.f61456b = arrayList;
        }
        if (cVar.m()) {
            this.f61457c = cVar.f61457c;
        }
    }

    public c a(Map<String, com.umeng.commonsdk.statistics.proto.b> map) {
        this.f61455a = map;
        return this;
    }

    public void a(boolean z3) {
        if (z3) {
            return;
        }
        this.f61455a = null;
    }

    public void a(com.umeng.commonsdk.statistics.proto.a aVar) {
        if (this.f61456b == null) {
            this.f61456b = new ArrayList();
        }
        this.f61456b.add(aVar);
    }

    public c a(List<com.umeng.commonsdk.statistics.proto.a> list) {
        this.f61456b = list;
        return this;
    }

    public c a(String str) {
        this.f61457c = str;
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

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            read(new bk(new cc(objectInputStream)));
        } catch (ax e4) {
            throw new IOException(e4.getMessage());
        }
    }
}
