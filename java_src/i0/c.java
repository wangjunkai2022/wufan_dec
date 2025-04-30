package i0;

import com.facebook.drawee.backends.pipeline.info.d;
import com.facebook.imagepipeline.request.ImageRequest;
/* compiled from: ImagePerfRequestListener.java */
/* loaded from: classes2.dex */
public class c extends r0.a {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.common.time.c f65699a;

    /* renamed from: b  reason: collision with root package name */
    private final d f65700b;

    public c(com.facebook.common.time.c cVar, d dVar) {
        this.f65699a = cVar;
        this.f65700b = dVar;
    }

    @Override // r0.a, r0.c
    public void a(ImageRequest imageRequest, Object obj, String str, boolean z3) {
        this.f65700b.p(this.f65699a.now());
        this.f65700b.n(imageRequest);
        this.f65700b.c(obj);
        this.f65700b.u(str);
        this.f65700b.t(z3);
    }

    @Override // r0.a, r0.c
    public void c(ImageRequest imageRequest, String str, boolean z3) {
        this.f65700b.o(this.f65699a.now());
        this.f65700b.n(imageRequest);
        this.f65700b.u(str);
        this.f65700b.t(z3);
    }

    @Override // r0.a, r0.c
    public void i(ImageRequest imageRequest, String str, Throwable th, boolean z3) {
        this.f65700b.o(this.f65699a.now());
        this.f65700b.n(imageRequest);
        this.f65700b.u(str);
        this.f65700b.t(z3);
    }

    @Override // r0.a, r0.c
    public void k(String str) {
        this.f65700b.o(this.f65699a.now());
        this.f65700b.u(str);
    }
}
