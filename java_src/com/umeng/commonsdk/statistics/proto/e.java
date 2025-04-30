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
/* compiled from: ImprintValue.java */
/* loaded from: classes4.dex */
public class e implements ar<e, EnumC0362e>, Serializable, Cloneable {

    /* renamed from: d  reason: collision with root package name */
    public static final Map<EnumC0362e, bd> f61485d;

    /* renamed from: e  reason: collision with root package name */
    private static final long f61486e = 7501688097813630241L;

    /* renamed from: f  reason: collision with root package name */
    private static final bv f61487f = new bv("ImprintValue");

    /* renamed from: g  reason: collision with root package name */
    private static final bl f61488g = new bl("value", (byte) 11, 1);

    /* renamed from: h  reason: collision with root package name */
    private static final bl f61489h = new bl("ts", (byte) 10, 2);

    /* renamed from: i  reason: collision with root package name */
    private static final bl f61490i = new bl("guid", (byte) 11, 3);

    /* renamed from: j  reason: collision with root package name */
    private static final Map<Class<? extends by>, bz> f61491j;

    /* renamed from: k  reason: collision with root package name */
    private static final int f61492k = 0;

    /* renamed from: a  reason: collision with root package name */
    public String f61493a;

    /* renamed from: b  reason: collision with root package name */
    public long f61494b;

    /* renamed from: c  reason: collision with root package name */
    public String f61495c;

    /* renamed from: l  reason: collision with root package name */
    private byte f61496l;

    /* renamed from: m  reason: collision with root package name */
    private EnumC0362e[] f61497m;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImprintValue.java */
    /* loaded from: classes4.dex */
    public static class a extends ca<e> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a */
        public void b(bq bqVar, e eVar) throws ax {
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
                            eVar.f61495c = bqVar.z();
                            eVar.c(true);
                        } else {
                            bt.a(bqVar, b4);
                        }
                    } else if (b4 == 10) {
                        eVar.f61494b = bqVar.x();
                        eVar.b(true);
                    } else {
                        bt.a(bqVar, b4);
                    }
                } else if (b4 == 11) {
                    eVar.f61493a = bqVar.z();
                    eVar.a(true);
                } else {
                    bt.a(bqVar, b4);
                }
                bqVar.m();
            }
            bqVar.k();
            if (eVar.g()) {
                eVar.k();
                return;
            }
            throw new br("Required field 'ts' was not found in serialized data! Struct: " + toString());
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: b */
        public void a(bq bqVar, e eVar) throws ax {
            eVar.k();
            bqVar.a(e.f61487f);
            if (eVar.f61493a != null && eVar.d()) {
                bqVar.a(e.f61488g);
                bqVar.a(eVar.f61493a);
                bqVar.c();
            }
            bqVar.a(e.f61489h);
            bqVar.a(eVar.f61494b);
            bqVar.c();
            if (eVar.f61495c != null) {
                bqVar.a(e.f61490i);
                bqVar.a(eVar.f61495c);
                bqVar.c();
            }
            bqVar.d();
            bqVar.b();
        }
    }

    /* compiled from: ImprintValue.java */
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
    /* compiled from: ImprintValue.java */
    /* loaded from: classes4.dex */
    public static class c extends cb<e> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.by
        public void a(bq bqVar, e eVar) throws ax {
            bw bwVar = (bw) bqVar;
            bwVar.a(eVar.f61494b);
            bwVar.a(eVar.f61495c);
            BitSet bitSet = new BitSet();
            if (eVar.d()) {
                bitSet.set(0);
            }
            bwVar.a(bitSet, 1);
            if (eVar.d()) {
                bwVar.a(eVar.f61493a);
            }
        }

        @Override // com.umeng.analytics.pro.by
        public void b(bq bqVar, e eVar) throws ax {
            bw bwVar = (bw) bqVar;
            eVar.f61494b = bwVar.x();
            eVar.b(true);
            eVar.f61495c = bwVar.z();
            eVar.c(true);
            if (bwVar.b(1).get(0)) {
                eVar.f61493a = bwVar.z();
                eVar.a(true);
            }
        }
    }

    /* compiled from: ImprintValue.java */
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
        f61491j = hashMap;
        hashMap.put(ca.class, new b());
        hashMap.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(EnumC0362e.class);
        enumMap.put((EnumMap) EnumC0362e.VALUE, (EnumC0362e) new bd("value", (byte) 2, new be((byte) 11)));
        enumMap.put((EnumMap) EnumC0362e.TS, (EnumC0362e) new bd("ts", (byte) 1, new be((byte) 10)));
        enumMap.put((EnumMap) EnumC0362e.GUID, (EnumC0362e) new bd("guid", (byte) 1, new be((byte) 11)));
        Map<EnumC0362e, bd> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        f61485d = unmodifiableMap;
        bd.a(e.class, unmodifiableMap);
    }

    public e() {
        this.f61496l = (byte) 0;
        this.f61497m = new EnumC0362e[]{EnumC0362e.VALUE};
    }

    @Override // com.umeng.analytics.pro.ar
    /* renamed from: a */
    public e deepCopy() {
        return new e(this);
    }

    public String b() {
        return this.f61493a;
    }

    public void c() {
        this.f61493a = null;
    }

    @Override // com.umeng.analytics.pro.ar
    public void clear() {
        this.f61493a = null;
        b(false);
        this.f61494b = 0L;
        this.f61495c = null;
    }

    public boolean d() {
        return this.f61493a != null;
    }

    public long e() {
        return this.f61494b;
    }

    public void f() {
        this.f61496l = ao.b(this.f61496l, 0);
    }

    public boolean g() {
        return ao.a(this.f61496l, 0);
    }

    public String h() {
        return this.f61495c;
    }

    public void i() {
        this.f61495c = null;
    }

    public boolean j() {
        return this.f61495c != null;
    }

    public void k() throws ax {
        if (this.f61495c != null) {
            return;
        }
        throw new br("Required field 'guid' was not present! Struct: " + toString());
    }

    @Override // com.umeng.analytics.pro.ar
    public void read(bq bqVar) throws ax {
        f61491j.get(bqVar.D()).b().b(bqVar, this);
    }

    public String toString() {
        boolean z3;
        StringBuilder sb = new StringBuilder("ImprintValue(");
        if (d()) {
            sb.append("value:");
            String str = this.f61493a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z3 = false;
        } else {
            z3 = true;
        }
        if (!z3) {
            sb.append(", ");
        }
        sb.append("ts:");
        sb.append(this.f61494b);
        sb.append(", ");
        sb.append("guid:");
        String str2 = this.f61495c;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.ar
    public void write(bq bqVar) throws ax {
        f61491j.get(bqVar.D()).b().a(bqVar, this);
    }

    /* compiled from: ImprintValue.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.e$e  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public enum EnumC0362e implements ay {
        VALUE(1, "value"),
        TS(2, "ts"),
        GUID(3, "guid");
        

        /* renamed from: d  reason: collision with root package name */
        private static final Map<String, EnumC0362e> f61501d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        private final short f61503e;

        /* renamed from: f  reason: collision with root package name */
        private final String f61504f;

        static {
            Iterator it2 = EnumSet.allOf(EnumC0362e.class).iterator();
            while (it2.hasNext()) {
                EnumC0362e enumC0362e = (EnumC0362e) it2.next();
                f61501d.put(enumC0362e.b(), enumC0362e);
            }
        }

        EnumC0362e(short s3, String str) {
            this.f61503e = s3;
            this.f61504f = str;
        }

        public static EnumC0362e a(int i2) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        return null;
                    }
                    return GUID;
                }
                return TS;
            }
            return VALUE;
        }

        public static EnumC0362e b(int i2) {
            EnumC0362e a4 = a(i2);
            if (a4 != null) {
                return a4;
            }
            throw new IllegalArgumentException("Field " + i2 + " doesn't exist!");
        }

        @Override // com.umeng.analytics.pro.ay
        public String b() {
            return this.f61504f;
        }

        public static EnumC0362e a(String str) {
            return f61501d.get(str);
        }

        @Override // com.umeng.analytics.pro.ay
        public short a() {
            return this.f61503e;
        }
    }

    public e a(String str) {
        this.f61493a = str;
        return this;
    }

    public void b(boolean z3) {
        this.f61496l = ao.a(this.f61496l, 0, z3);
    }

    public void c(boolean z3) {
        if (z3) {
            return;
        }
        this.f61495c = null;
    }

    public void a(boolean z3) {
        if (z3) {
            return;
        }
        this.f61493a = null;
    }

    public e b(String str) {
        this.f61495c = str;
        return this;
    }

    public e(long j4, String str) {
        this();
        this.f61494b = j4;
        b(true);
        this.f61495c = str;
    }

    public e a(long j4) {
        this.f61494b = j4;
        b(true);
        return this;
    }

    @Override // com.umeng.analytics.pro.ar
    /* renamed from: a */
    public EnumC0362e fieldForId(int i2) {
        return EnumC0362e.a(i2);
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new bk(new cc(objectOutputStream)));
        } catch (ax e4) {
            throw new IOException(e4.getMessage());
        }
    }

    public e(e eVar) {
        this.f61496l = (byte) 0;
        this.f61497m = new EnumC0362e[]{EnumC0362e.VALUE};
        this.f61496l = eVar.f61496l;
        if (eVar.d()) {
            this.f61493a = eVar.f61493a;
        }
        this.f61494b = eVar.f61494b;
        if (eVar.j()) {
            this.f61495c = eVar.f61495c;
        }
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f61496l = (byte) 0;
            read(new bk(new cc(objectInputStream)));
        } catch (ax e4) {
            throw new IOException(e4.getMessage());
        }
    }
}
