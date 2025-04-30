package io.reactivex.internal.functions;

import io.reactivex.exceptions.OnErrorNotImplementedException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public final class Functions {

    /* renamed from: a  reason: collision with root package name */
    static final w2.o<Object, Object> f65822a = new w();

    /* renamed from: b  reason: collision with root package name */
    public static final Runnable f65823b = new r();

    /* renamed from: c  reason: collision with root package name */
    public static final w2.a f65824c = new o();

    /* renamed from: d  reason: collision with root package name */
    static final w2.g<Object> f65825d = new p();

    /* renamed from: e  reason: collision with root package name */
    public static final w2.g<Throwable> f65826e = new t();

    /* renamed from: f  reason: collision with root package name */
    public static final w2.g<Throwable> f65827f = new f0();

    /* renamed from: g  reason: collision with root package name */
    public static final w2.q f65828g = new q();

    /* renamed from: h  reason: collision with root package name */
    static final w2.r<Object> f65829h = new k0();

    /* renamed from: i  reason: collision with root package name */
    static final w2.r<Object> f65830i = new u();

    /* renamed from: j  reason: collision with root package name */
    static final Callable<Object> f65831j = new e0();

    /* renamed from: k  reason: collision with root package name */
    static final Comparator<Object> f65832k = new a0();

    /* renamed from: l  reason: collision with root package name */
    public static final w2.g<l3.d> f65833l = new z();

    /* loaded from: classes5.dex */
    enum HashSetCallable implements Callable<Set<Object>> {
        INSTANCE;

        @Override // java.util.concurrent.Callable
        public Set<Object> call() throws Exception {
            return new HashSet();
        }
    }

    /* loaded from: classes5.dex */
    enum NaturalComparator implements Comparator<Object> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    /* loaded from: classes5.dex */
    static final class a<T> implements w2.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final w2.a f65834a;

        a(w2.a aVar) {
            this.f65834a = aVar;
        }

        @Override // w2.g
        public void accept(T t3) throws Exception {
            this.f65834a.run();
        }
    }

    /* loaded from: classes5.dex */
    static final class a0 implements Comparator<Object> {
        a0() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    /* loaded from: classes5.dex */
    static final class b<T1, T2, R> implements w2.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final w2.c<? super T1, ? super T2, ? extends R> f65835a;

        b(w2.c<? super T1, ? super T2, ? extends R> cVar) {
            this.f65835a = cVar;
        }

        @Override // w2.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 2) {
                return this.f65835a.apply(objArr[0], objArr[1]);
            }
            throw new IllegalArgumentException("Array of size 2 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes5.dex */
    static final class b0<T> implements w2.a {

        /* renamed from: a  reason: collision with root package name */
        final w2.g<? super io.reactivex.y<T>> f65836a;

        b0(w2.g<? super io.reactivex.y<T>> gVar) {
            this.f65836a = gVar;
        }

        @Override // w2.a
        public void run() throws Exception {
            this.f65836a.accept(io.reactivex.y.a());
        }
    }

    /* loaded from: classes5.dex */
    static final class c<T1, T2, T3, R> implements w2.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final w2.h<T1, T2, T3, R> f65837a;

        c(w2.h<T1, T2, T3, R> hVar) {
            this.f65837a = hVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // w2.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 3) {
                return (R) this.f65837a.a(objArr[0], objArr[1], objArr[2]);
            }
            throw new IllegalArgumentException("Array of size 3 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes5.dex */
    static final class c0<T> implements w2.g<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final w2.g<? super io.reactivex.y<T>> f65838a;

        c0(w2.g<? super io.reactivex.y<T>> gVar) {
            this.f65838a = gVar;
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(Throwable th) throws Exception {
            this.f65838a.accept(io.reactivex.y.b(th));
        }
    }

    /* loaded from: classes5.dex */
    static final class d<T1, T2, T3, T4, R> implements w2.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final w2.i<T1, T2, T3, T4, R> f65839a;

        d(w2.i<T1, T2, T3, T4, R> iVar) {
            this.f65839a = iVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // w2.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 4) {
                return (R) this.f65839a.a(objArr[0], objArr[1], objArr[2], objArr[3]);
            }
            throw new IllegalArgumentException("Array of size 4 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes5.dex */
    static final class d0<T> implements w2.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final w2.g<? super io.reactivex.y<T>> f65840a;

        d0(w2.g<? super io.reactivex.y<T>> gVar) {
            this.f65840a = gVar;
        }

        @Override // w2.g
        public void accept(T t3) throws Exception {
            this.f65840a.accept(io.reactivex.y.c(t3));
        }
    }

    /* loaded from: classes5.dex */
    static final class e<T1, T2, T3, T4, T5, R> implements w2.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        private final w2.j<T1, T2, T3, T4, T5, R> f65841a;

        e(w2.j<T1, T2, T3, T4, T5, R> jVar) {
            this.f65841a = jVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // w2.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 5) {
                return (R) this.f65841a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            }
            throw new IllegalArgumentException("Array of size 5 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes5.dex */
    static final class e0 implements Callable<Object> {
        e0() {
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            return null;
        }
    }

    /* loaded from: classes5.dex */
    static final class f<T1, T2, T3, T4, T5, T6, R> implements w2.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final w2.k<T1, T2, T3, T4, T5, T6, R> f65842a;

        f(w2.k<T1, T2, T3, T4, T5, T6, R> kVar) {
            this.f65842a = kVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // w2.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 6) {
                return (R) this.f65842a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            }
            throw new IllegalArgumentException("Array of size 6 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes5.dex */
    static final class f0 implements w2.g<Throwable> {
        f0() {
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(Throwable th) {
            io.reactivex.plugins.a.Y(new OnErrorNotImplementedException(th));
        }
    }

    /* loaded from: classes5.dex */
    static final class g<T1, T2, T3, T4, T5, T6, T7, R> implements w2.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final w2.l<T1, T2, T3, T4, T5, T6, T7, R> f65843a;

        g(w2.l<T1, T2, T3, T4, T5, T6, T7, R> lVar) {
            this.f65843a = lVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // w2.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 7) {
                return (R) this.f65843a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6]);
            }
            throw new IllegalArgumentException("Array of size 7 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes5.dex */
    static final class g0<T> implements w2.o<T, io.reactivex.schedulers.d<T>> {

        /* renamed from: a  reason: collision with root package name */
        final TimeUnit f65844a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.h0 f65845b;

        g0(TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f65844a = timeUnit;
            this.f65845b = h0Var;
        }

        @Override // w2.o
        /* renamed from: a */
        public io.reactivex.schedulers.d<T> apply(T t3) throws Exception {
            return new io.reactivex.schedulers.d<>(t3, this.f65845b.d(this.f65844a), this.f65844a);
        }
    }

    /* loaded from: classes5.dex */
    static final class h<T1, T2, T3, T4, T5, T6, T7, T8, R> implements w2.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final w2.m<T1, T2, T3, T4, T5, T6, T7, T8, R> f65846a;

        h(w2.m<T1, T2, T3, T4, T5, T6, T7, T8, R> mVar) {
            this.f65846a = mVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // w2.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 8) {
                return (R) this.f65846a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7]);
            }
            throw new IllegalArgumentException("Array of size 8 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes5.dex */
    static final class h0<K, T> implements w2.b<Map<K, T>, T> {

        /* renamed from: a  reason: collision with root package name */
        private final w2.o<? super T, ? extends K> f65847a;

        h0(w2.o<? super T, ? extends K> oVar) {
            this.f65847a = oVar;
        }

        @Override // w2.b
        /* renamed from: b */
        public void a(Map<K, T> map, T t3) throws Exception {
            map.put(this.f65847a.apply(t3), t3);
        }
    }

    /* loaded from: classes5.dex */
    static final class i<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> implements w2.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final w2.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> f65848a;

        i(w2.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> nVar) {
            this.f65848a = nVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // w2.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 9) {
                return (R) this.f65848a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7], objArr[8]);
            }
            throw new IllegalArgumentException("Array of size 9 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes5.dex */
    static final class i0<K, V, T> implements w2.b<Map<K, V>, T> {

        /* renamed from: a  reason: collision with root package name */
        private final w2.o<? super T, ? extends V> f65849a;

        /* renamed from: b  reason: collision with root package name */
        private final w2.o<? super T, ? extends K> f65850b;

        i0(w2.o<? super T, ? extends V> oVar, w2.o<? super T, ? extends K> oVar2) {
            this.f65849a = oVar;
            this.f65850b = oVar2;
        }

        @Override // w2.b
        /* renamed from: b */
        public void a(Map<K, V> map, T t3) throws Exception {
            map.put(this.f65850b.apply(t3), this.f65849a.apply(t3));
        }
    }

    /* loaded from: classes5.dex */
    static final class j<T> implements Callable<List<T>> {

        /* renamed from: a  reason: collision with root package name */
        final int f65851a;

        j(int i2) {
            this.f65851a = i2;
        }

        @Override // java.util.concurrent.Callable
        public List<T> call() throws Exception {
            return new ArrayList(this.f65851a);
        }
    }

    /* loaded from: classes5.dex */
    static final class j0<K, V, T> implements w2.b<Map<K, Collection<V>>, T> {

        /* renamed from: a  reason: collision with root package name */
        private final w2.o<? super K, ? extends Collection<? super V>> f65852a;

        /* renamed from: b  reason: collision with root package name */
        private final w2.o<? super T, ? extends V> f65853b;

        /* renamed from: c  reason: collision with root package name */
        private final w2.o<? super T, ? extends K> f65854c;

        j0(w2.o<? super K, ? extends Collection<? super V>> oVar, w2.o<? super T, ? extends V> oVar2, w2.o<? super T, ? extends K> oVar3) {
            this.f65852a = oVar;
            this.f65853b = oVar2;
            this.f65854c = oVar3;
        }

        @Override // w2.b
        /* renamed from: b */
        public void a(Map<K, Collection<V>> map, T t3) throws Exception {
            K apply = this.f65854c.apply(t3);
            Collection<? super V> collection = map.get(apply);
            if (collection == null) {
                collection = this.f65852a.apply(apply);
                map.put(apply, collection);
            }
            collection.add(this.f65853b.apply(t3));
        }
    }

    /* loaded from: classes5.dex */
    static final class k<T> implements w2.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final w2.e f65855a;

        k(w2.e eVar) {
            this.f65855a = eVar;
        }

        @Override // w2.r
        public boolean test(T t3) throws Exception {
            return !this.f65855a.a();
        }
    }

    /* loaded from: classes5.dex */
    static final class k0 implements w2.r<Object> {
        k0() {
        }

        @Override // w2.r
        public boolean test(Object obj) {
            return true;
        }
    }

    /* loaded from: classes5.dex */
    public static class l implements w2.g<l3.d> {

        /* renamed from: a  reason: collision with root package name */
        final int f65856a;

        l(int i2) {
            this.f65856a = i2;
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(l3.d dVar) throws Exception {
            dVar.request(this.f65856a);
        }
    }

    /* loaded from: classes5.dex */
    static final class m<T, U> implements w2.o<T, U> {

        /* renamed from: a  reason: collision with root package name */
        final Class<U> f65857a;

        m(Class<U> cls) {
            this.f65857a = cls;
        }

        @Override // w2.o
        public U apply(T t3) throws Exception {
            return this.f65857a.cast(t3);
        }
    }

    /* loaded from: classes5.dex */
    static final class n<T, U> implements w2.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final Class<U> f65858a;

        n(Class<U> cls) {
            this.f65858a = cls;
        }

        @Override // w2.r
        public boolean test(T t3) throws Exception {
            return this.f65858a.isInstance(t3);
        }
    }

    /* loaded from: classes5.dex */
    static final class o implements w2.a {
        o() {
        }

        @Override // w2.a
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    /* loaded from: classes5.dex */
    static final class p implements w2.g<Object> {
        p() {
        }

        @Override // w2.g
        public void accept(Object obj) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    /* loaded from: classes5.dex */
    static final class q implements w2.q {
        q() {
        }

        @Override // w2.q
        public void a(long j4) {
        }
    }

    /* loaded from: classes5.dex */
    static final class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    /* loaded from: classes5.dex */
    static final class s<T> implements w2.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final T f65859a;

        s(T t3) {
            this.f65859a = t3;
        }

        @Override // w2.r
        public boolean test(T t3) throws Exception {
            return io.reactivex.internal.functions.a.c(t3, this.f65859a);
        }
    }

    /* loaded from: classes5.dex */
    static final class t implements w2.g<Throwable> {
        t() {
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(Throwable th) {
            io.reactivex.plugins.a.Y(th);
        }
    }

    /* loaded from: classes5.dex */
    static final class u implements w2.r<Object> {
        u() {
        }

        @Override // w2.r
        public boolean test(Object obj) {
            return false;
        }
    }

    /* loaded from: classes5.dex */
    static final class v implements w2.a {

        /* renamed from: a  reason: collision with root package name */
        final Future<?> f65860a;

        v(Future<?> future) {
            this.f65860a = future;
        }

        @Override // w2.a
        public void run() throws Exception {
            this.f65860a.get();
        }
    }

    /* loaded from: classes5.dex */
    static final class w implements w2.o<Object, Object> {
        w() {
        }

        @Override // w2.o
        public Object apply(Object obj) {
            return obj;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    /* loaded from: classes5.dex */
    static final class x<T, U> implements Callable<U>, w2.o<T, U> {

        /* renamed from: a  reason: collision with root package name */
        final U f65861a;

        x(U u3) {
            this.f65861a = u3;
        }

        @Override // w2.o
        public U apply(T t3) throws Exception {
            return this.f65861a;
        }

        @Override // java.util.concurrent.Callable
        public U call() throws Exception {
            return this.f65861a;
        }
    }

    /* loaded from: classes5.dex */
    static final class y<T> implements w2.o<List<T>, List<T>> {

        /* renamed from: a  reason: collision with root package name */
        final Comparator<? super T> f65862a;

        y(Comparator<? super T> comparator) {
            this.f65862a = comparator;
        }

        @Override // w2.o
        /* renamed from: a */
        public List<T> apply(List<T> list) {
            Collections.sort(list, this.f65862a);
            return list;
        }
    }

    /* loaded from: classes5.dex */
    static final class z implements w2.g<l3.d> {
        z() {
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(l3.d dVar) throws Exception {
            dVar.request(Long.MAX_VALUE);
        }
    }

    private Functions() {
        throw new IllegalStateException("No instances!");
    }

    public static <T1, T2, T3, T4, T5, R> w2.o<Object[], R> A(w2.j<T1, T2, T3, T4, T5, R> jVar) {
        io.reactivex.internal.functions.a.g(jVar, "f is null");
        return new e(jVar);
    }

    public static <T1, T2, T3, T4, T5, T6, R> w2.o<Object[], R> B(w2.k<T1, T2, T3, T4, T5, T6, R> kVar) {
        io.reactivex.internal.functions.a.g(kVar, "f is null");
        return new f(kVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> w2.o<Object[], R> C(w2.l<T1, T2, T3, T4, T5, T6, T7, R> lVar) {
        io.reactivex.internal.functions.a.g(lVar, "f is null");
        return new g(lVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> w2.o<Object[], R> D(w2.m<T1, T2, T3, T4, T5, T6, T7, T8, R> mVar) {
        io.reactivex.internal.functions.a.g(mVar, "f is null");
        return new h(mVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> w2.o<Object[], R> E(w2.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> nVar) {
        io.reactivex.internal.functions.a.g(nVar, "f is null");
        return new i(nVar);
    }

    public static <T, K> w2.b<Map<K, T>, T> F(w2.o<? super T, ? extends K> oVar) {
        return new h0(oVar);
    }

    public static <T, K, V> w2.b<Map<K, V>, T> G(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2) {
        return new i0(oVar2, oVar);
    }

    public static <T, K, V> w2.b<Map<K, Collection<V>>, T> H(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2, w2.o<? super K, ? extends Collection<? super V>> oVar3) {
        return new j0(oVar3, oVar2, oVar);
    }

    public static <T> w2.g<T> a(w2.a aVar) {
        return new a(aVar);
    }

    public static <T> w2.r<T> b() {
        return (w2.r<T>) f65830i;
    }

    public static <T> w2.r<T> c() {
        return (w2.r<T>) f65829h;
    }

    public static <T> w2.g<T> d(int i2) {
        return new l(i2);
    }

    public static <T, U> w2.o<T, U> e(Class<U> cls) {
        return new m(cls);
    }

    public static <T> Callable<List<T>> f(int i2) {
        return new j(i2);
    }

    public static <T> Callable<Set<T>> g() {
        return HashSetCallable.INSTANCE;
    }

    public static <T> w2.g<T> h() {
        return (w2.g<T>) f65825d;
    }

    public static <T> w2.r<T> i(T t3) {
        return new s(t3);
    }

    public static w2.a j(Future<?> future) {
        return new v(future);
    }

    public static <T> w2.o<T, T> k() {
        return (w2.o<T, T>) f65822a;
    }

    public static <T, U> w2.r<T> l(Class<U> cls) {
        return new n(cls);
    }

    public static <T> Callable<T> m(T t3) {
        return new x(t3);
    }

    public static <T, U> w2.o<T, U> n(U u3) {
        return new x(u3);
    }

    public static <T> w2.o<List<T>, List<T>> o(Comparator<? super T> comparator) {
        return new y(comparator);
    }

    public static <T> Comparator<T> p() {
        return NaturalComparator.INSTANCE;
    }

    public static <T> Comparator<T> q() {
        return (Comparator<T>) f65832k;
    }

    public static <T> w2.a r(w2.g<? super io.reactivex.y<T>> gVar) {
        return new b0(gVar);
    }

    public static <T> w2.g<Throwable> s(w2.g<? super io.reactivex.y<T>> gVar) {
        return new c0(gVar);
    }

    public static <T> w2.g<T> t(w2.g<? super io.reactivex.y<T>> gVar) {
        return new d0(gVar);
    }

    public static <T> Callable<T> u() {
        return (Callable<T>) f65831j;
    }

    public static <T> w2.r<T> v(w2.e eVar) {
        return new k(eVar);
    }

    public static <T> w2.o<T, io.reactivex.schedulers.d<T>> w(TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        return new g0(timeUnit, h0Var);
    }

    public static <T1, T2, R> w2.o<Object[], R> x(w2.c<? super T1, ? super T2, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(cVar, "f is null");
        return new b(cVar);
    }

    public static <T1, T2, T3, R> w2.o<Object[], R> y(w2.h<T1, T2, T3, R> hVar) {
        io.reactivex.internal.functions.a.g(hVar, "f is null");
        return new c(hVar);
    }

    public static <T1, T2, T3, T4, R> w2.o<Object[], R> z(w2.i<T1, T2, T3, T4, R> iVar) {
        io.reactivex.internal.functions.a.g(iVar, "f is null");
        return new d(iVar);
    }
}
