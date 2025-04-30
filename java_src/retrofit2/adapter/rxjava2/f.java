package retrofit2.adapter.rxjava2;

import io.reactivex.h0;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import retrofit2.CallAdapter;
/* compiled from: RxJava2CallAdapter.java */
/* loaded from: classes.dex */
final class f<R> implements CallAdapter<R, Object> {

    /* renamed from: a  reason: collision with root package name */
    private final Type f74070a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final h0 f74071b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f74072c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f74073d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f74074e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f74075f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f74076g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f74077h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f74078i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Type type, @Nullable h0 h0Var, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9) {
        this.f74070a = type;
        this.f74071b = h0Var;
        this.f74072c = z3;
        this.f74073d = z4;
        this.f74074e = z5;
        this.f74075f = z6;
        this.f74076g = z7;
        this.f74077h = z8;
        this.f74078i = z9;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    @Override // retrofit2.CallAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object adapt(retrofit2.Call<R> r2) {
        /*
            r1 = this;
            boolean r0 = r1.f74072c
            if (r0 == 0) goto La
            retrofit2.adapter.rxjava2.b r0 = new retrofit2.adapter.rxjava2.b
            r0.<init>(r2)
            goto Lf
        La:
            retrofit2.adapter.rxjava2.c r0 = new retrofit2.adapter.rxjava2.c
            r0.<init>(r2)
        Lf:
            boolean r2 = r1.f74073d
            if (r2 == 0) goto L1a
            retrofit2.adapter.rxjava2.e r2 = new retrofit2.adapter.rxjava2.e
            r2.<init>(r0)
        L18:
            r0 = r2
            goto L24
        L1a:
            boolean r2 = r1.f74074e
            if (r2 == 0) goto L24
            retrofit2.adapter.rxjava2.a r2 = new retrofit2.adapter.rxjava2.a
            r2.<init>(r0)
            goto L18
        L24:
            io.reactivex.h0 r2 = r1.f74071b
            if (r2 == 0) goto L2c
            io.reactivex.z r0 = r0.G5(r2)
        L2c:
            boolean r2 = r1.f74075f
            if (r2 == 0) goto L37
            io.reactivex.BackpressureStrategy r2 = io.reactivex.BackpressureStrategy.LATEST
            io.reactivex.j r2 = r0.T6(r2)
            return r2
        L37:
            boolean r2 = r1.f74076g
            if (r2 == 0) goto L40
            io.reactivex.i0 r2 = r0.i5()
            return r2
        L40:
            boolean r2 = r1.f74077h
            if (r2 == 0) goto L49
            io.reactivex.q r2 = r0.h5()
            return r2
        L49:
            boolean r2 = r1.f74078i
            if (r2 == 0) goto L52
            io.reactivex.a r2 = r0.a3()
            return r2
        L52:
            io.reactivex.z r2 = io.reactivex.plugins.a.R(r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.adapter.rxjava2.f.adapt(retrofit2.Call):java.lang.Object");
    }

    @Override // retrofit2.CallAdapter
    public Type responseType() {
        return this.f74070a;
    }
}
