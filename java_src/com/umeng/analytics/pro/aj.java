package com.umeng.analytics.pro;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* compiled from: UMEnvelope.java */
/* loaded from: classes4.dex */
public class aj implements ar<aj, e>, Serializable, Cloneable {
    private static final int A = 2;
    private static final int B = 3;

    /* renamed from: k  reason: collision with root package name */
    public static final Map<e, bd> f60427k;

    /* renamed from: l  reason: collision with root package name */
    private static final long f60428l = 420342210744516016L;

    /* renamed from: m  reason: collision with root package name */
    private static final bv f60429m = new bv("UMEnvelope");

    /* renamed from: n  reason: collision with root package name */
    private static final bl f60430n = new bl("version", (byte) 11, 1);

    /* renamed from: o  reason: collision with root package name */
    private static final bl f60431o = new bl("address", (byte) 11, 2);

    /* renamed from: p  reason: collision with root package name */
    private static final bl f60432p = new bl("signature", (byte) 11, 3);

    /* renamed from: q  reason: collision with root package name */
    private static final bl f60433q = new bl("serial_num", (byte) 8, 4);

    /* renamed from: r  reason: collision with root package name */
    private static final bl f60434r = new bl("ts_secs", (byte) 8, 5);

    /* renamed from: s  reason: collision with root package name */
    private static final bl f60435s = new bl("length", (byte) 8, 6);

    /* renamed from: t  reason: collision with root package name */
    private static final bl f60436t = new bl("entity", (byte) 11, 7);

    /* renamed from: u  reason: collision with root package name */
    private static final bl f60437u = new bl("guid", (byte) 11, 8);

    /* renamed from: v  reason: collision with root package name */
    private static final bl f60438v = new bl("checksum", (byte) 11, 9);

    /* renamed from: w  reason: collision with root package name */
    private static final bl f60439w = new bl("codex", (byte) 8, 10);

    /* renamed from: x  reason: collision with root package name */
    private static final Map<Class<? extends by>, bz> f60440x;

    /* renamed from: y  reason: collision with root package name */
    private static final int f60441y = 0;

    /* renamed from: z  reason: collision with root package name */
    private static final int f60442z = 1;
    private byte C;
    private e[] D;

    /* renamed from: a  reason: collision with root package name */
    public String f60443a;

    /* renamed from: b  reason: collision with root package name */
    public String f60444b;

    /* renamed from: c  reason: collision with root package name */
    public String f60445c;

    /* renamed from: d  reason: collision with root package name */
    public int f60446d;

    /* renamed from: e  reason: collision with root package name */
    public int f60447e;

    /* renamed from: f  reason: collision with root package name */
    public int f60448f;

    /* renamed from: g  reason: collision with root package name */
    public ByteBuffer f60449g;

    /* renamed from: h  reason: collision with root package name */
    public String f60450h;

    /* renamed from: i  reason: collision with root package name */
    public String f60451i;

    /* renamed from: j  reason: collision with root package name */
    public int f60452j;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UMEnvelope.java */
    /* loaded from: classes4.dex */
    public static class a extends ca<aj> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a */
        public void b(bq bqVar, aj ajVar) throws ax {
            bqVar.j();
            while (true) {
                bl l4 = bqVar.l();
                byte b4 = l4.f60583b;
                if (b4 == 0) {
                    bqVar.k();
                    if (ajVar.m()) {
                        if (ajVar.p()) {
                            if (ajVar.s()) {
                                ajVar.G();
                                return;
                            }
                            throw new br("Required field 'length' was not found in serialized data! Struct: " + toString());
                        }
                        throw new br("Required field 'ts_secs' was not found in serialized data! Struct: " + toString());
                    }
                    throw new br("Required field 'serial_num' was not found in serialized data! Struct: " + toString());
                }
                switch (l4.f60584c) {
                    case 1:
                        if (b4 == 11) {
                            ajVar.f60443a = bqVar.z();
                            ajVar.a(true);
                            break;
                        } else {
                            bt.a(bqVar, b4);
                            break;
                        }
                    case 2:
                        if (b4 == 11) {
                            ajVar.f60444b = bqVar.z();
                            ajVar.b(true);
                            break;
                        } else {
                            bt.a(bqVar, b4);
                            break;
                        }
                    case 3:
                        if (b4 == 11) {
                            ajVar.f60445c = bqVar.z();
                            ajVar.c(true);
                            break;
                        } else {
                            bt.a(bqVar, b4);
                            break;
                        }
                    case 4:
                        if (b4 == 8) {
                            ajVar.f60446d = bqVar.w();
                            ajVar.d(true);
                            break;
                        } else {
                            bt.a(bqVar, b4);
                            break;
                        }
                    case 5:
                        if (b4 == 8) {
                            ajVar.f60447e = bqVar.w();
                            ajVar.e(true);
                            break;
                        } else {
                            bt.a(bqVar, b4);
                            break;
                        }
                    case 6:
                        if (b4 == 8) {
                            ajVar.f60448f = bqVar.w();
                            ajVar.f(true);
                            break;
                        } else {
                            bt.a(bqVar, b4);
                            break;
                        }
                    case 7:
                        if (b4 == 11) {
                            ajVar.f60449g = bqVar.A();
                            ajVar.g(true);
                            break;
                        } else {
                            bt.a(bqVar, b4);
                            break;
                        }
                    case 8:
                        if (b4 == 11) {
                            ajVar.f60450h = bqVar.z();
                            ajVar.h(true);
                            break;
                        } else {
                            bt.a(bqVar, b4);
                            break;
                        }
                    case 9:
                        if (b4 == 11) {
                            ajVar.f60451i = bqVar.z();
                            ajVar.i(true);
                            break;
                        } else {
                            bt.a(bqVar, b4);
                            break;
                        }
                    case 10:
                        if (b4 == 8) {
                            ajVar.f60452j = bqVar.w();
                            ajVar.j(true);
                            break;
                        } else {
                            bt.a(bqVar, b4);
                            break;
                        }
                    default:
                        bt.a(bqVar, b4);
                        break;
                }
                bqVar.m();
            }
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: b */
        public void a(bq bqVar, aj ajVar) throws ax {
            ajVar.G();
            bqVar.a(aj.f60429m);
            if (ajVar.f60443a != null) {
                bqVar.a(aj.f60430n);
                bqVar.a(ajVar.f60443a);
                bqVar.c();
            }
            if (ajVar.f60444b != null) {
                bqVar.a(aj.f60431o);
                bqVar.a(ajVar.f60444b);
                bqVar.c();
            }
            if (ajVar.f60445c != null) {
                bqVar.a(aj.f60432p);
                bqVar.a(ajVar.f60445c);
                bqVar.c();
            }
            bqVar.a(aj.f60433q);
            bqVar.a(ajVar.f60446d);
            bqVar.c();
            bqVar.a(aj.f60434r);
            bqVar.a(ajVar.f60447e);
            bqVar.c();
            bqVar.a(aj.f60435s);
            bqVar.a(ajVar.f60448f);
            bqVar.c();
            if (ajVar.f60449g != null) {
                bqVar.a(aj.f60436t);
                bqVar.a(ajVar.f60449g);
                bqVar.c();
            }
            if (ajVar.f60450h != null) {
                bqVar.a(aj.f60437u);
                bqVar.a(ajVar.f60450h);
                bqVar.c();
            }
            if (ajVar.f60451i != null) {
                bqVar.a(aj.f60438v);
                bqVar.a(ajVar.f60451i);
                bqVar.c();
            }
            if (ajVar.F()) {
                bqVar.a(aj.f60439w);
                bqVar.a(ajVar.f60452j);
                bqVar.c();
            }
            bqVar.d();
            bqVar.b();
        }
    }

    /* compiled from: UMEnvelope.java */
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
    /* compiled from: UMEnvelope.java */
    /* loaded from: classes4.dex */
    public static class c extends cb<aj> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.by
        public void a(bq bqVar, aj ajVar) throws ax {
            bw bwVar = (bw) bqVar;
            bwVar.a(ajVar.f60443a);
            bwVar.a(ajVar.f60444b);
            bwVar.a(ajVar.f60445c);
            bwVar.a(ajVar.f60446d);
            bwVar.a(ajVar.f60447e);
            bwVar.a(ajVar.f60448f);
            bwVar.a(ajVar.f60449g);
            bwVar.a(ajVar.f60450h);
            bwVar.a(ajVar.f60451i);
            BitSet bitSet = new BitSet();
            if (ajVar.F()) {
                bitSet.set(0);
            }
            bwVar.a(bitSet, 1);
            if (ajVar.F()) {
                bwVar.a(ajVar.f60452j);
            }
        }

        @Override // com.umeng.analytics.pro.by
        public void b(bq bqVar, aj ajVar) throws ax {
            bw bwVar = (bw) bqVar;
            ajVar.f60443a = bwVar.z();
            ajVar.a(true);
            ajVar.f60444b = bwVar.z();
            ajVar.b(true);
            ajVar.f60445c = bwVar.z();
            ajVar.c(true);
            ajVar.f60446d = bwVar.w();
            ajVar.d(true);
            ajVar.f60447e = bwVar.w();
            ajVar.e(true);
            ajVar.f60448f = bwVar.w();
            ajVar.f(true);
            ajVar.f60449g = bwVar.A();
            ajVar.g(true);
            ajVar.f60450h = bwVar.z();
            ajVar.h(true);
            ajVar.f60451i = bwVar.z();
            ajVar.i(true);
            if (bwVar.b(1).get(0)) {
                ajVar.f60452j = bwVar.w();
                ajVar.j(true);
            }
        }
    }

    /* compiled from: UMEnvelope.java */
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
        f60440x = hashMap;
        hashMap.put(ca.class, new b());
        hashMap.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.VERSION, (e) new bd("version", (byte) 1, new be((byte) 11)));
        enumMap.put((EnumMap) e.ADDRESS, (e) new bd("address", (byte) 1, new be((byte) 11)));
        enumMap.put((EnumMap) e.SIGNATURE, (e) new bd("signature", (byte) 1, new be((byte) 11)));
        enumMap.put((EnumMap) e.SERIAL_NUM, (e) new bd("serial_num", (byte) 1, new be((byte) 8)));
        enumMap.put((EnumMap) e.TS_SECS, (e) new bd("ts_secs", (byte) 1, new be((byte) 8)));
        enumMap.put((EnumMap) e.LENGTH, (e) new bd("length", (byte) 1, new be((byte) 8)));
        enumMap.put((EnumMap) e.ENTITY, (e) new bd("entity", (byte) 1, new be((byte) 11, true)));
        enumMap.put((EnumMap) e.GUID, (e) new bd("guid", (byte) 1, new be((byte) 11)));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new bd("checksum", (byte) 1, new be((byte) 11)));
        enumMap.put((EnumMap) e.CODEX, (e) new bd("codex", (byte) 2, new be((byte) 8)));
        Map<e, bd> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        f60427k = unmodifiableMap;
        bd.a(aj.class, unmodifiableMap);
    }

    public aj() {
        this.C = (byte) 0;
        this.D = new e[]{e.CODEX};
    }

    public String A() {
        return this.f60451i;
    }

    public void B() {
        this.f60451i = null;
    }

    public boolean C() {
        return this.f60451i != null;
    }

    public int D() {
        return this.f60452j;
    }

    public void E() {
        this.C = ao.b(this.C, 3);
    }

    public boolean F() {
        return ao.a(this.C, 3);
    }

    public void G() throws ax {
        if (this.f60443a != null) {
            if (this.f60444b != null) {
                if (this.f60445c != null) {
                    if (this.f60449g != null) {
                        if (this.f60450h != null) {
                            if (this.f60451i != null) {
                                return;
                            }
                            throw new br("Required field 'checksum' was not present! Struct: " + toString());
                        }
                        throw new br("Required field 'guid' was not present! Struct: " + toString());
                    }
                    throw new br("Required field 'entity' was not present! Struct: " + toString());
                }
                throw new br("Required field 'signature' was not present! Struct: " + toString());
            }
            throw new br("Required field 'address' was not present! Struct: " + toString());
        }
        throw new br("Required field 'version' was not present! Struct: " + toString());
    }

    @Override // com.umeng.analytics.pro.ar
    /* renamed from: a */
    public aj deepCopy() {
        return new aj(this);
    }

    public String b() {
        return this.f60443a;
    }

    public void c() {
        this.f60443a = null;
    }

    @Override // com.umeng.analytics.pro.ar
    public void clear() {
        this.f60443a = null;
        this.f60444b = null;
        this.f60445c = null;
        d(false);
        this.f60446d = 0;
        e(false);
        this.f60447e = 0;
        f(false);
        this.f60448f = 0;
        this.f60449g = null;
        this.f60450h = null;
        this.f60451i = null;
        j(false);
        this.f60452j = 0;
    }

    public boolean d() {
        return this.f60443a != null;
    }

    public String e() {
        return this.f60444b;
    }

    public void f() {
        this.f60444b = null;
    }

    public boolean g() {
        return this.f60444b != null;
    }

    public String h() {
        return this.f60445c;
    }

    public void i() {
        this.f60445c = null;
    }

    public boolean j() {
        return this.f60445c != null;
    }

    public int k() {
        return this.f60446d;
    }

    public void l() {
        this.C = ao.b(this.C, 0);
    }

    public boolean m() {
        return ao.a(this.C, 0);
    }

    public int n() {
        return this.f60447e;
    }

    public void o() {
        this.C = ao.b(this.C, 1);
    }

    public boolean p() {
        return ao.a(this.C, 1);
    }

    public int q() {
        return this.f60448f;
    }

    public void r() {
        this.C = ao.b(this.C, 2);
    }

    @Override // com.umeng.analytics.pro.ar
    public void read(bq bqVar) throws ax {
        f60440x.get(bqVar.D()).b().b(bqVar, this);
    }

    public boolean s() {
        return ao.a(this.C, 2);
    }

    public byte[] t() {
        a(as.c(this.f60449g));
        ByteBuffer byteBuffer = this.f60449g;
        if (byteBuffer == null) {
            return null;
        }
        return byteBuffer.array();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UMEnvelope(");
        sb.append("version:");
        String str = this.f60443a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("address:");
        String str2 = this.f60444b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("signature:");
        String str3 = this.f60445c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("serial_num:");
        sb.append(this.f60446d);
        sb.append(", ");
        sb.append("ts_secs:");
        sb.append(this.f60447e);
        sb.append(", ");
        sb.append("length:");
        sb.append(this.f60448f);
        sb.append(", ");
        sb.append("entity:");
        ByteBuffer byteBuffer = this.f60449g;
        if (byteBuffer == null) {
            sb.append("null");
        } else {
            as.a(byteBuffer, sb);
        }
        sb.append(", ");
        sb.append("guid:");
        String str4 = this.f60450h;
        if (str4 == null) {
            sb.append("null");
        } else {
            sb.append(str4);
        }
        sb.append(", ");
        sb.append("checksum:");
        String str5 = this.f60451i;
        if (str5 == null) {
            sb.append("null");
        } else {
            sb.append(str5);
        }
        if (F()) {
            sb.append(", ");
            sb.append("codex:");
            sb.append(this.f60452j);
        }
        sb.append(")");
        return sb.toString();
    }

    public ByteBuffer u() {
        return this.f60449g;
    }

    public void v() {
        this.f60449g = null;
    }

    public boolean w() {
        return this.f60449g != null;
    }

    @Override // com.umeng.analytics.pro.ar
    public void write(bq bqVar) throws ax {
        f60440x.get(bqVar.D()).b().a(bqVar, this);
    }

    public String x() {
        return this.f60450h;
    }

    public void y() {
        this.f60450h = null;
    }

    public boolean z() {
        return this.f60450h != null;
    }

    /* compiled from: UMEnvelope.java */
    /* loaded from: classes4.dex */
    public enum e implements ay {
        VERSION(1, "version"),
        ADDRESS(2, "address"),
        SIGNATURE(3, "signature"),
        SERIAL_NUM(4, "serial_num"),
        TS_SECS(5, "ts_secs"),
        LENGTH(6, "length"),
        ENTITY(7, "entity"),
        GUID(8, "guid"),
        CHECKSUM(9, "checksum"),
        CODEX(10, "codex");
        

        /* renamed from: k  reason: collision with root package name */
        private static final Map<String, e> f60463k = new HashMap();

        /* renamed from: l  reason: collision with root package name */
        private final short f60465l;

        /* renamed from: m  reason: collision with root package name */
        private final String f60466m;

        static {
            Iterator it2 = EnumSet.allOf(e.class).iterator();
            while (it2.hasNext()) {
                e eVar = (e) it2.next();
                f60463k.put(eVar.b(), eVar);
            }
        }

        e(short s3, String str) {
            this.f60465l = s3;
            this.f60466m = str;
        }

        public static e a(int i2) {
            switch (i2) {
                case 1:
                    return VERSION;
                case 2:
                    return ADDRESS;
                case 3:
                    return SIGNATURE;
                case 4:
                    return SERIAL_NUM;
                case 5:
                    return TS_SECS;
                case 6:
                    return LENGTH;
                case 7:
                    return ENTITY;
                case 8:
                    return GUID;
                case 9:
                    return CHECKSUM;
                case 10:
                    return CODEX;
                default:
                    return null;
            }
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
            return this.f60466m;
        }

        public static e a(String str) {
            return f60463k.get(str);
        }

        @Override // com.umeng.analytics.pro.ay
        public short a() {
            return this.f60465l;
        }
    }

    public aj a(String str) {
        this.f60443a = str;
        return this;
    }

    public aj b(String str) {
        this.f60444b = str;
        return this;
    }

    public aj c(String str) {
        this.f60445c = str;
        return this;
    }

    public void d(boolean z3) {
        this.C = ao.a(this.C, 0, z3);
    }

    public void e(boolean z3) {
        this.C = ao.a(this.C, 1, z3);
    }

    public void f(boolean z3) {
        this.C = ao.a(this.C, 2, z3);
    }

    public void g(boolean z3) {
        if (z3) {
            return;
        }
        this.f60449g = null;
    }

    public void h(boolean z3) {
        if (z3) {
            return;
        }
        this.f60450h = null;
    }

    public void i(boolean z3) {
        if (z3) {
            return;
        }
        this.f60451i = null;
    }

    public void j(boolean z3) {
        this.C = ao.a(this.C, 3, z3);
    }

    public void a(boolean z3) {
        if (z3) {
            return;
        }
        this.f60443a = null;
    }

    public void b(boolean z3) {
        if (z3) {
            return;
        }
        this.f60444b = null;
    }

    public void c(boolean z3) {
        if (z3) {
            return;
        }
        this.f60445c = null;
    }

    public aj d(String str) {
        this.f60450h = str;
        return this;
    }

    public aj e(String str) {
        this.f60451i = str;
        return this;
    }

    public aj(String str, String str2, String str3, int i2, int i4, int i5, ByteBuffer byteBuffer, String str4, String str5) {
        this();
        this.f60443a = str;
        this.f60444b = str2;
        this.f60445c = str3;
        this.f60446d = i2;
        d(true);
        this.f60447e = i4;
        e(true);
        this.f60448f = i5;
        f(true);
        this.f60449g = byteBuffer;
        this.f60450h = str4;
        this.f60451i = str5;
    }

    public aj a(int i2) {
        this.f60446d = i2;
        d(true);
        return this;
    }

    public aj b(int i2) {
        this.f60447e = i2;
        e(true);
        return this;
    }

    public aj c(int i2) {
        this.f60448f = i2;
        f(true);
        return this;
    }

    public aj d(int i2) {
        this.f60452j = i2;
        j(true);
        return this;
    }

    @Override // com.umeng.analytics.pro.ar
    /* renamed from: e */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    public aj a(byte[] bArr) {
        a(bArr == null ? null : ByteBuffer.wrap(bArr));
        return this;
    }

    public aj a(ByteBuffer byteBuffer) {
        this.f60449g = byteBuffer;
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
            this.C = (byte) 0;
            read(new bk(new cc(objectInputStream)));
        } catch (ax e4) {
            throw new IOException(e4.getMessage());
        }
    }

    public aj(aj ajVar) {
        this.C = (byte) 0;
        this.D = new e[]{e.CODEX};
        this.C = ajVar.C;
        if (ajVar.d()) {
            this.f60443a = ajVar.f60443a;
        }
        if (ajVar.g()) {
            this.f60444b = ajVar.f60444b;
        }
        if (ajVar.j()) {
            this.f60445c = ajVar.f60445c;
        }
        this.f60446d = ajVar.f60446d;
        this.f60447e = ajVar.f60447e;
        this.f60448f = ajVar.f60448f;
        if (ajVar.w()) {
            this.f60449g = as.d(ajVar.f60449g);
        }
        if (ajVar.z()) {
            this.f60450h = ajVar.f60450h;
        }
        if (ajVar.C()) {
            this.f60451i = ajVar.f60451i;
        }
        this.f60452j = ajVar.f60452j;
    }
}
