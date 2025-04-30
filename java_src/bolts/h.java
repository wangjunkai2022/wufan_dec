package bolts;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Task.java */
/* loaded from: classes2.dex */
public class h<TResult> {

    /* renamed from: l  reason: collision with root package name */
    private static volatile q f8231l;

    /* renamed from: b  reason: collision with root package name */
    private boolean f8237b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f8238c;

    /* renamed from: d  reason: collision with root package name */
    private TResult f8239d;

    /* renamed from: e  reason: collision with root package name */
    private Exception f8240e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f8241f;

    /* renamed from: g  reason: collision with root package name */
    private bolts.j f8242g;

    /* renamed from: i  reason: collision with root package name */
    public static final ExecutorService f8228i = bolts.b.a();

    /* renamed from: j  reason: collision with root package name */
    private static final Executor f8229j = bolts.b.b();

    /* renamed from: k  reason: collision with root package name */
    public static final Executor f8230k = bolts.a.d();

    /* renamed from: m  reason: collision with root package name */
    private static h<?> f8232m = new h<>((Object) null);

    /* renamed from: n  reason: collision with root package name */
    private static h<Boolean> f8233n = new h<>(Boolean.TRUE);

    /* renamed from: o  reason: collision with root package name */
    private static h<Boolean> f8234o = new h<>(Boolean.FALSE);

    /* renamed from: p  reason: collision with root package name */
    private static h<?> f8235p = new h<>(true);

    /* renamed from: a  reason: collision with root package name */
    private final Object f8236a = new Object();

    /* renamed from: h  reason: collision with root package name */
    private List<bolts.g<TResult, Void>> f8243h = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    public class a implements bolts.g<TResult, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.i f8244a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.g f8245b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Executor f8246c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ bolts.c f8247d;

        a(bolts.i iVar, bolts.g gVar, Executor executor, bolts.c cVar) {
            this.f8244a = iVar;
            this.f8245b = gVar;
            this.f8246c = executor;
            this.f8247d = cVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public Void a(h<TResult> hVar) {
            h.h(this.f8244a, this.f8245b, hVar, this.f8246c, this.f8247d);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    public class b implements bolts.g<TResult, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.i f8249a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.g f8250b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Executor f8251c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ bolts.c f8252d;

        b(bolts.i iVar, bolts.g gVar, Executor executor, bolts.c cVar) {
            this.f8249a = iVar;
            this.f8250b = gVar;
            this.f8251c = executor;
            this.f8252d = cVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public Void a(h<TResult> hVar) {
            h.g(this.f8249a, this.f8250b, hVar, this.f8251c, this.f8252d);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [TContinuationResult] */
    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    public class c<TContinuationResult> implements bolts.g<TResult, h<TContinuationResult>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.c f8254a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.g f8255b;

        c(bolts.c cVar, bolts.g gVar) {
            this.f8254a = cVar;
            this.f8255b = gVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public h<TContinuationResult> a(h<TResult> hVar) {
            bolts.c cVar = this.f8254a;
            if (cVar != null && cVar.a()) {
                return h.e();
            }
            if (hVar.F()) {
                return h.y(hVar.A());
            }
            if (hVar.D()) {
                return h.e();
            }
            return hVar.m(this.f8255b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [TContinuationResult] */
    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    public class d<TContinuationResult> implements bolts.g<TResult, h<TContinuationResult>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.c f8257a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.g f8258b;

        d(bolts.c cVar, bolts.g gVar) {
            this.f8257a = cVar;
            this.f8258b = gVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public h<TContinuationResult> a(h<TResult> hVar) {
            bolts.c cVar = this.f8257a;
            if (cVar != null && cVar.a()) {
                return h.e();
            }
            if (hVar.F()) {
                return h.y(hVar.A());
            }
            if (hVar.D()) {
                return h.e();
            }
            return hVar.q(this.f8258b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    public static class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.c f8260a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.i f8261b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ bolts.g f8262c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ h f8263d;

        e(bolts.c cVar, bolts.i iVar, bolts.g gVar, h hVar) {
            this.f8260a = cVar;
            this.f8261b = iVar;
            this.f8262c = gVar;
            this.f8263d = hVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            bolts.c cVar = this.f8260a;
            if (cVar != null && cVar.a()) {
                this.f8261b.b();
                return;
            }
            try {
                this.f8261b.setResult(this.f8262c.a(this.f8263d));
            } catch (CancellationException unused) {
                this.f8261b.b();
            } catch (Exception e4) {
                this.f8261b.c(e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    public static class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.c f8264a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.i f8265b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ bolts.g f8266c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ h f8267d;

        /* JADX INFO: Add missing generic type declarations: [TContinuationResult] */
        /* compiled from: Task.java */
        /* loaded from: classes2.dex */
        class a<TContinuationResult> implements bolts.g<TContinuationResult, Void> {
            a() {
            }

            @Override // bolts.g
            /* renamed from: b */
            public Void a(h<TContinuationResult> hVar) {
                bolts.c cVar = f.this.f8264a;
                if (cVar != null && cVar.a()) {
                    f.this.f8265b.b();
                    return null;
                }
                if (hVar.D()) {
                    f.this.f8265b.b();
                } else if (hVar.F()) {
                    f.this.f8265b.c(hVar.A());
                } else {
                    f.this.f8265b.setResult(hVar.B());
                }
                return null;
            }
        }

        f(bolts.c cVar, bolts.i iVar, bolts.g gVar, h hVar) {
            this.f8264a = cVar;
            this.f8265b = iVar;
            this.f8266c = gVar;
            this.f8267d = hVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            bolts.c cVar = this.f8264a;
            if (cVar != null && cVar.a()) {
                this.f8265b.b();
                return;
            }
            try {
                h hVar = (h) this.f8266c.a(this.f8267d);
                if (hVar == null) {
                    this.f8265b.setResult(null);
                } else {
                    hVar.m(new a());
                }
            } catch (CancellationException unused) {
                this.f8265b.b();
            } catch (Exception e4) {
                this.f8265b.c(e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    public static class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.i f8269a;

        g(bolts.i iVar) {
            this.f8269a = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8269a.f(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* renamed from: bolts.h$h  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class RunnableC0013h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ScheduledFuture f8270a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.i f8271b;

        RunnableC0013h(ScheduledFuture scheduledFuture, bolts.i iVar) {
            this.f8270a = scheduledFuture;
            this.f8271b = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8270a.cancel(true);
            this.f8271b.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    public class i implements bolts.g<TResult, h<Void>> {
        i() {
        }

        @Override // bolts.g
        /* renamed from: b */
        public h<Void> a(h<TResult> hVar) throws Exception {
            if (hVar.D()) {
                return h.e();
            }
            if (hVar.F()) {
                return h.y(hVar.A());
            }
            return h.z(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    public static class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.c f8273a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.i f8274b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Callable f8275c;

        j(bolts.c cVar, bolts.i iVar, Callable callable) {
            this.f8273a = cVar;
            this.f8274b = iVar;
            this.f8275c = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            bolts.c cVar = this.f8273a;
            if (cVar != null && cVar.a()) {
                this.f8274b.b();
                return;
            }
            try {
                this.f8274b.setResult(this.f8275c.call());
            } catch (CancellationException unused) {
                this.f8274b.b();
            } catch (Exception e4) {
                this.f8274b.c(e4);
            }
        }
    }

    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    static class k implements bolts.g<TResult, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f8276a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.i f8277b;

        k(AtomicBoolean atomicBoolean, bolts.i iVar) {
            this.f8276a = atomicBoolean;
            this.f8277b = iVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public Void a(h<TResult> hVar) {
            if (this.f8276a.compareAndSet(false, true)) {
                this.f8277b.setResult(hVar);
                return null;
            }
            hVar.A();
            return null;
        }
    }

    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    static class l implements bolts.g<Object, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f8278a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ bolts.i f8279b;

        l(AtomicBoolean atomicBoolean, bolts.i iVar) {
            this.f8278a = atomicBoolean;
            this.f8279b = iVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public Void a(h<Object> hVar) {
            if (this.f8278a.compareAndSet(false, true)) {
                this.f8279b.setResult(hVar);
                return null;
            }
            hVar.A();
            return null;
        }
    }

    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    static class m implements bolts.g<Void, List<TResult>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Collection f8280a;

        m(Collection collection) {
            this.f8280a = collection;
        }

        @Override // bolts.g
        /* renamed from: b */
        public List<TResult> a(h<Void> hVar) throws Exception {
            if (this.f8280a.size() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (h hVar2 : this.f8280a) {
                arrayList.add(hVar2.B());
            }
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    public static class n implements bolts.g<Object, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f8281a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ArrayList f8282b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f8283c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ AtomicInteger f8284d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ bolts.i f8285e;

        n(Object obj, ArrayList arrayList, AtomicBoolean atomicBoolean, AtomicInteger atomicInteger, bolts.i iVar) {
            this.f8281a = obj;
            this.f8282b = arrayList;
            this.f8283c = atomicBoolean;
            this.f8284d = atomicInteger;
            this.f8285e = iVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public Void a(h<Object> hVar) {
            if (hVar.F()) {
                synchronized (this.f8281a) {
                    this.f8282b.add(hVar.A());
                }
            }
            if (hVar.D()) {
                this.f8283c.set(true);
            }
            if (this.f8284d.decrementAndGet() == 0) {
                if (this.f8282b.size() != 0) {
                    if (this.f8282b.size() == 1) {
                        this.f8285e.c((Exception) this.f8282b.get(0));
                    } else {
                        this.f8285e.c(new AggregateException(String.format("There were %d exceptions.", Integer.valueOf(this.f8282b.size())), this.f8282b));
                    }
                } else if (this.f8283c.get()) {
                    this.f8285e.b();
                } else {
                    this.f8285e.setResult(null);
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    public class o implements bolts.g<Void, h<Void>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bolts.c f8286a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Callable f8287b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ bolts.g f8288c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Executor f8289d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ bolts.f f8290e;

        o(bolts.c cVar, Callable callable, bolts.g gVar, Executor executor, bolts.f fVar) {
            this.f8286a = cVar;
            this.f8287b = callable;
            this.f8288c = gVar;
            this.f8289d = executor;
            this.f8290e = fVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public h<Void> a(h<Void> hVar) throws Exception {
            bolts.c cVar = this.f8286a;
            if (cVar != null && cVar.a()) {
                return h.e();
            }
            if (((Boolean) this.f8287b.call()).booleanValue()) {
                return h.z(null).N(this.f8288c, this.f8289d).N((bolts.g) this.f8290e.a(), this.f8289d);
            }
            return h.z(null);
        }
    }

    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    public class p extends bolts.i<TResult> {
        p() {
        }
    }

    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    public interface q {
        void a(h<?> hVar, UnobservedTaskException unobservedTaskException);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h() {
    }

    public static q C() {
        return f8231l;
    }

    private void P() {
        synchronized (this.f8236a) {
            for (bolts.g<TResult, Void> gVar : this.f8243h) {
                try {
                    gVar.a(this);
                } catch (RuntimeException e4) {
                    throw e4;
                } catch (Exception e5) {
                    throw new RuntimeException(e5);
                }
            }
            this.f8243h = null;
        }
    }

    public static void Q(q qVar) {
        f8231l = qVar;
    }

    public static h<Void> W(Collection<? extends h<?>> collection) {
        if (collection.size() == 0) {
            return z(null);
        }
        bolts.i iVar = new bolts.i();
        ArrayList arrayList = new ArrayList();
        Object obj = new Object();
        AtomicInteger atomicInteger = new AtomicInteger(collection.size());
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        for (h<?> hVar : collection) {
            hVar.m(new n(obj, arrayList, atomicBoolean, atomicInteger, iVar));
        }
        return iVar.a();
    }

    public static <TResult> h<List<TResult>> X(Collection<? extends h<TResult>> collection) {
        return (h<List<TResult>>) W(collection).H(new m(collection));
    }

    public static h<h<?>> Y(Collection<? extends h<?>> collection) {
        if (collection.size() == 0) {
            return z(null);
        }
        bolts.i iVar = new bolts.i();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        for (h<?> hVar : collection) {
            hVar.m(new l(atomicBoolean, iVar));
        }
        return iVar.a();
    }

    public static <TResult> h<h<TResult>> Z(Collection<? extends h<TResult>> collection) {
        if (collection.size() == 0) {
            return z(null);
        }
        bolts.i iVar = new bolts.i();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        for (h<TResult> hVar : collection) {
            hVar.m(new k(atomicBoolean, iVar));
        }
        return iVar.a();
    }

    public static <TResult> h<TResult> c(Callable<TResult> callable) {
        return call(callable, f8228i, null);
    }

    public static <TResult> h<TResult> call(Callable<TResult> callable, Executor executor) {
        return call(callable, executor, null);
    }

    public static <TResult> h<TResult> d(Callable<TResult> callable, bolts.c cVar) {
        return call(callable, f8228i, cVar);
    }

    public static <TResult> h<TResult> e() {
        return (h<TResult>) f8235p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <TContinuationResult, TResult> void g(bolts.i<TContinuationResult> iVar, bolts.g<TResult, h<TContinuationResult>> gVar, h<TResult> hVar, Executor executor, bolts.c cVar) {
        try {
            executor.execute(new f(cVar, iVar, gVar, hVar));
        } catch (Exception e4) {
            iVar.c(new ExecutorException(e4));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <TContinuationResult, TResult> void h(bolts.i<TContinuationResult> iVar, bolts.g<TResult, TContinuationResult> gVar, h<TResult> hVar, Executor executor, bolts.c cVar) {
        try {
            executor.execute(new e(cVar, iVar, gVar, hVar));
        } catch (Exception e4) {
            iVar.c(new ExecutorException(e4));
        }
    }

    public static <TResult> h<TResult>.p u() {
        return new p();
    }

    public static h<Void> v(long j4) {
        return x(j4, bolts.b.d(), null);
    }

    public static h<Void> w(long j4, bolts.c cVar) {
        return x(j4, bolts.b.d(), cVar);
    }

    static h<Void> x(long j4, ScheduledExecutorService scheduledExecutorService, bolts.c cVar) {
        if (cVar == null || !cVar.a()) {
            if (j4 <= 0) {
                return z(null);
            }
            bolts.i iVar = new bolts.i();
            ScheduledFuture<?> schedule = scheduledExecutorService.schedule(new g(iVar), j4, TimeUnit.MILLISECONDS);
            if (cVar != null) {
                cVar.b(new RunnableC0013h(schedule, iVar));
            }
            return iVar.a();
        }
        return e();
    }

    public static <TResult> h<TResult> y(Exception exc) {
        bolts.i iVar = new bolts.i();
        iVar.c(exc);
        return iVar.a();
    }

    public static <TResult> h<TResult> z(TResult tresult) {
        if (tresult == null) {
            return (h<TResult>) f8232m;
        }
        if (tresult instanceof Boolean) {
            return ((Boolean) tresult).booleanValue() ? (h<TResult>) f8233n : (h<TResult>) f8234o;
        }
        bolts.i iVar = new bolts.i();
        iVar.setResult(tresult);
        return iVar.a();
    }

    public Exception A() {
        Exception exc;
        synchronized (this.f8236a) {
            if (this.f8240e != null) {
                this.f8241f = true;
                bolts.j jVar = this.f8242g;
                if (jVar != null) {
                    jVar.a();
                    this.f8242g = null;
                }
            }
            exc = this.f8240e;
        }
        return exc;
    }

    public TResult B() {
        TResult tresult;
        synchronized (this.f8236a) {
            tresult = this.f8239d;
        }
        return tresult;
    }

    public boolean D() {
        boolean z3;
        synchronized (this.f8236a) {
            z3 = this.f8238c;
        }
        return z3;
    }

    public boolean E() {
        boolean z3;
        synchronized (this.f8236a) {
            z3 = this.f8237b;
        }
        return z3;
    }

    public boolean F() {
        boolean z3;
        synchronized (this.f8236a) {
            z3 = A() != null;
        }
        return z3;
    }

    public h<Void> G() {
        return q(new i());
    }

    public <TContinuationResult> h<TContinuationResult> H(bolts.g<TResult, TContinuationResult> gVar) {
        return K(gVar, f8229j, null);
    }

    public <TContinuationResult> h<TContinuationResult> I(bolts.g<TResult, TContinuationResult> gVar, bolts.c cVar) {
        return K(gVar, f8229j, cVar);
    }

    public <TContinuationResult> h<TContinuationResult> J(bolts.g<TResult, TContinuationResult> gVar, Executor executor) {
        return K(gVar, executor, null);
    }

    public <TContinuationResult> h<TContinuationResult> K(bolts.g<TResult, TContinuationResult> gVar, Executor executor, bolts.c cVar) {
        return s(new c(cVar, gVar), executor);
    }

    public <TContinuationResult> h<TContinuationResult> L(bolts.g<TResult, h<TContinuationResult>> gVar) {
        return N(gVar, f8229j);
    }

    public <TContinuationResult> h<TContinuationResult> M(bolts.g<TResult, h<TContinuationResult>> gVar, bolts.c cVar) {
        return O(gVar, f8229j, cVar);
    }

    public <TContinuationResult> h<TContinuationResult> N(bolts.g<TResult, h<TContinuationResult>> gVar, Executor executor) {
        return O(gVar, executor, null);
    }

    public <TContinuationResult> h<TContinuationResult> O(bolts.g<TResult, h<TContinuationResult>> gVar, Executor executor, bolts.c cVar) {
        return s(new d(cVar, gVar), executor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean R() {
        synchronized (this.f8236a) {
            if (this.f8237b) {
                return false;
            }
            this.f8237b = true;
            this.f8238c = true;
            this.f8236a.notifyAll();
            P();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean S(Exception exc) {
        synchronized (this.f8236a) {
            if (this.f8237b) {
                return false;
            }
            this.f8237b = true;
            this.f8240e = exc;
            this.f8241f = false;
            this.f8236a.notifyAll();
            P();
            if (!this.f8241f && C() != null) {
                this.f8242g = new bolts.j(this);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean T(TResult tresult) {
        synchronized (this.f8236a) {
            if (this.f8237b) {
                return false;
            }
            this.f8237b = true;
            this.f8239d = tresult;
            this.f8236a.notifyAll();
            P();
            return true;
        }
    }

    public void U() throws InterruptedException {
        synchronized (this.f8236a) {
            if (!E()) {
                this.f8236a.wait();
            }
        }
    }

    public boolean V(long j4, TimeUnit timeUnit) throws InterruptedException {
        boolean E;
        synchronized (this.f8236a) {
            if (!E()) {
                this.f8236a.wait(timeUnit.toMillis(j4));
            }
            E = E();
        }
        return E;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <TOut> h<TOut> f() {
        return this;
    }

    public h<Void> i(Callable<Boolean> callable, bolts.g<Void, h<Void>> gVar) {
        return l(callable, gVar, f8229j, null);
    }

    public h<Void> j(Callable<Boolean> callable, bolts.g<Void, h<Void>> gVar, bolts.c cVar) {
        return l(callable, gVar, f8229j, cVar);
    }

    public h<Void> k(Callable<Boolean> callable, bolts.g<Void, h<Void>> gVar, Executor executor) {
        return l(callable, gVar, executor, null);
    }

    public h<Void> l(Callable<Boolean> callable, bolts.g<Void, h<Void>> gVar, Executor executor, bolts.c cVar) {
        bolts.f fVar = new bolts.f();
        fVar.b(new o(cVar, callable, gVar, executor, fVar));
        return G().s((bolts.g) fVar.a(), executor);
    }

    public <TContinuationResult> h<TContinuationResult> m(bolts.g<TResult, TContinuationResult> gVar) {
        return p(gVar, f8229j, null);
    }

    public <TContinuationResult> h<TContinuationResult> n(bolts.g<TResult, TContinuationResult> gVar, bolts.c cVar) {
        return p(gVar, f8229j, cVar);
    }

    public <TContinuationResult> h<TContinuationResult> o(bolts.g<TResult, TContinuationResult> gVar, Executor executor) {
        return p(gVar, executor, null);
    }

    public <TContinuationResult> h<TContinuationResult> p(bolts.g<TResult, TContinuationResult> gVar, Executor executor, bolts.c cVar) {
        boolean E;
        bolts.i iVar = new bolts.i();
        synchronized (this.f8236a) {
            E = E();
            if (!E) {
                this.f8243h.add(new a(iVar, gVar, executor, cVar));
            }
        }
        if (E) {
            h(iVar, gVar, this, executor, cVar);
        }
        return iVar.a();
    }

    public <TContinuationResult> h<TContinuationResult> q(bolts.g<TResult, h<TContinuationResult>> gVar) {
        return t(gVar, f8229j, null);
    }

    public <TContinuationResult> h<TContinuationResult> r(bolts.g<TResult, h<TContinuationResult>> gVar, bolts.c cVar) {
        return t(gVar, f8229j, cVar);
    }

    public <TContinuationResult> h<TContinuationResult> s(bolts.g<TResult, h<TContinuationResult>> gVar, Executor executor) {
        return t(gVar, executor, null);
    }

    public <TContinuationResult> h<TContinuationResult> t(bolts.g<TResult, h<TContinuationResult>> gVar, Executor executor, bolts.c cVar) {
        boolean E;
        bolts.i iVar = new bolts.i();
        synchronized (this.f8236a) {
            E = E();
            if (!E) {
                this.f8243h.add(new b(iVar, gVar, executor, cVar));
            }
        }
        if (E) {
            g(iVar, gVar, this, executor, cVar);
        }
        return iVar.a();
    }

    public static <TResult> h<TResult> call(Callable<TResult> callable, Executor executor, bolts.c cVar) {
        bolts.i iVar = new bolts.i();
        try {
            executor.execute(new j(cVar, iVar, callable));
        } catch (Exception e4) {
            iVar.c(new ExecutorException(e4));
        }
        return iVar.a();
    }

    private h(TResult tresult) {
        T(tresult);
    }

    public static <TResult> h<TResult> call(Callable<TResult> callable) {
        return call(callable, f8229j, null);
    }

    public static <TResult> h<TResult> call(Callable<TResult> callable, bolts.c cVar) {
        return call(callable, f8229j, cVar);
    }

    private h(boolean z3) {
        if (z3) {
            R();
        } else {
            T(null);
        }
    }
}
