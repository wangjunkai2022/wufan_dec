package com.umeng.analytics.pro;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.umeng.analytics.pro.ay;
import com.umeng.analytics.pro.bb;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: TUnion.java */
/* loaded from: classes4.dex */
public abstract class bb<T extends bb<?, ?>, F extends ay> implements ar<T, F> {

    /* renamed from: c  reason: collision with root package name */
    private static final Map<Class<? extends by>, bz> f60517c;

    /* renamed from: a  reason: collision with root package name */
    protected Object f60518a;

    /* renamed from: b  reason: collision with root package name */
    protected F f60519b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TUnion.java */
    /* loaded from: classes4.dex */
    public static class a extends ca<bb> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a */
        public void b(bq bqVar, bb bbVar) throws ax {
            bbVar.f60519b = null;
            bbVar.f60518a = null;
            bqVar.j();
            bl l4 = bqVar.l();
            Object a4 = bbVar.a(bqVar, l4);
            bbVar.f60518a = a4;
            if (a4 != null) {
                bbVar.f60519b = (F) bbVar.a(l4.f60584c);
            }
            bqVar.m();
            bqVar.l();
            bqVar.k();
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: b */
        public void a(bq bqVar, bb bbVar) throws ax {
            if (bbVar.a() != null && bbVar.b() != null) {
                bqVar.a(bbVar.d());
                bqVar.a(bbVar.c(bbVar.f60519b));
                bbVar.a(bqVar);
                bqVar.c();
                bqVar.d();
                bqVar.b();
                return;
            }
            throw new br("Cannot write a TUnion with no set value!");
        }
    }

    /* compiled from: TUnion.java */
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
    /* compiled from: TUnion.java */
    /* loaded from: classes4.dex */
    public static class c extends cb<bb> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a */
        public void b(bq bqVar, bb bbVar) throws ax {
            bbVar.f60519b = null;
            bbVar.f60518a = null;
            short v3 = bqVar.v();
            Object a4 = bbVar.a(bqVar, v3);
            bbVar.f60518a = a4;
            if (a4 != null) {
                bbVar.f60519b = (F) bbVar.a(v3);
            }
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: b */
        public void a(bq bqVar, bb bbVar) throws ax {
            if (bbVar.a() != null && bbVar.b() != null) {
                bqVar.a(bbVar.f60519b.a());
                bbVar.b(bqVar);
                return;
            }
            throw new br("Cannot write a TUnion with no set value!");
        }
    }

    /* compiled from: TUnion.java */
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
        f60517c = hashMap;
        hashMap.put(ca.class, new b());
        hashMap.put(cb.class, new d());
    }

    protected bb() {
        this.f60519b = null;
        this.f60518a = null;
    }

    private static Object a(Object obj) {
        if (obj instanceof ar) {
            return ((ar) obj).deepCopy();
        }
        if (obj instanceof ByteBuffer) {
            return as.d((ByteBuffer) obj);
        }
        if (obj instanceof List) {
            return a((List) obj);
        }
        if (obj instanceof Set) {
            return a((Set) obj);
        }
        return obj instanceof Map ? a((Map<Object, Object>) obj) : obj;
    }

    protected abstract F a(short s3);

    protected abstract Object a(bq bqVar, bl blVar) throws ax;

    protected abstract Object a(bq bqVar, short s3) throws ax;

    protected abstract void a(bq bqVar) throws ax;

    public Object b() {
        return this.f60518a;
    }

    protected abstract void b(F f4, Object obj) throws ClassCastException;

    protected abstract void b(bq bqVar) throws ax;

    protected abstract bl c(F f4);

    public boolean c() {
        return this.f60519b != null;
    }

    @Override // com.umeng.analytics.pro.ar
    public final void clear() {
        this.f60519b = null;
        this.f60518a = null;
    }

    protected abstract bv d();

    @Override // com.umeng.analytics.pro.ar
    public void read(bq bqVar) throws ax {
        f60517c.get(bqVar.D()).b().b(bqVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(SimpleComparison.LESS_THAN_OPERATION);
        sb.append(getClass().getSimpleName());
        sb.append(" ");
        if (a() != null) {
            Object b4 = b();
            sb.append(c(a()).f60582a);
            sb.append(":");
            if (b4 instanceof ByteBuffer) {
                as.a((ByteBuffer) b4, sb);
            } else {
                sb.append(b4.toString());
            }
        }
        sb.append(SimpleComparison.GREATER_THAN_OPERATION);
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.ar
    public void write(bq bqVar) throws ax {
        f60517c.get(bqVar.D()).b().a(bqVar, this);
    }

    public boolean b(F f4) {
        return this.f60519b == f4;
    }

    public boolean b(int i2) {
        return b((bb<T, F>) a((short) i2));
    }

    protected bb(F f4, Object obj) {
        a((bb<T, F>) f4, obj);
    }

    protected bb(bb<T, F> bbVar) {
        if (bbVar.getClass().equals(getClass())) {
            this.f60519b = bbVar.f60519b;
            this.f60518a = a(bbVar.f60518a);
            return;
        }
        throw new ClassCastException();
    }

    private static Map a(Map<Object, Object> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            hashMap.put(a(entry.getKey()), a(entry.getValue()));
        }
        return hashMap;
    }

    private static Set a(Set set) {
        HashSet hashSet = new HashSet();
        for (Object obj : set) {
            hashSet.add(a(obj));
        }
        return hashSet;
    }

    private static List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Object obj : list) {
            arrayList.add(a(obj));
        }
        return arrayList;
    }

    public F a() {
        return this.f60519b;
    }

    public Object a(F f4) {
        if (f4 == this.f60519b) {
            return b();
        }
        throw new IllegalArgumentException("Cannot get the value of field " + f4 + " because union's set field is " + this.f60519b);
    }

    public Object a(int i2) {
        return a((bb<T, F>) a((short) i2));
    }

    public void a(F f4, Object obj) {
        b(f4, obj);
        this.f60519b = f4;
        this.f60518a = obj;
    }

    public void a(int i2, Object obj) {
        a((bb<T, F>) a((short) i2), obj);
    }
}
