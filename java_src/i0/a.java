package i0;

import android.graphics.drawable.Animatable;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.drawee.backends.pipeline.info.d;
import com.facebook.imagepipeline.image.f;
import javax.annotation.Nullable;
/* compiled from: ImagePerfControllerListener.java */
/* loaded from: classes.dex */
public class a extends com.facebook.drawee.controller.b<f> {

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.common.time.c f65694b;

    /* renamed from: c  reason: collision with root package name */
    private final d f65695c;

    /* renamed from: d  reason: collision with root package name */
    private final com.facebook.drawee.backends.pipeline.info.c f65696d;

    public a(com.facebook.common.time.c cVar, d dVar, com.facebook.drawee.backends.pipeline.info.c cVar2) {
        this.f65694b = cVar;
        this.f65695c = dVar;
        this.f65696d = cVar2;
    }

    @VisibleForTesting
    private void j(long j4) {
        this.f65695c.w(false);
        this.f65695c.q(j4);
        this.f65696d.d(this.f65695c, 2);
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    public void b(String str, Throwable th) {
        long now = this.f65694b.now();
        this.f65695c.f(now);
        this.f65695c.h(str);
        this.f65696d.e(this.f65695c, 5);
        j(now);
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    public void c(String str) {
        super.c(str);
        long now = this.f65694b.now();
        int a4 = this.f65695c.a();
        if (a4 != 3 && a4 != 5) {
            this.f65695c.e(now);
            this.f65695c.h(str);
            this.f65696d.e(this.f65695c, 4);
        }
        j(now);
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    public void e(String str, Object obj) {
        long now = this.f65694b.now();
        this.f65695c.j(now);
        this.f65695c.h(str);
        this.f65695c.c(obj);
        this.f65696d.e(this.f65695c, 0);
        k(now);
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    /* renamed from: h */
    public void d(String str, @Nullable f fVar, @Nullable Animatable animatable) {
        long now = this.f65694b.now();
        this.f65695c.g(now);
        this.f65695c.o(now);
        this.f65695c.h(str);
        this.f65695c.k(fVar);
        this.f65696d.e(this.f65695c, 3);
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    /* renamed from: i */
    public void a(String str, @Nullable f fVar) {
        this.f65695c.i(this.f65694b.now());
        this.f65695c.h(str);
        this.f65695c.k(fVar);
        this.f65696d.e(this.f65695c, 2);
    }

    @VisibleForTesting
    public void k(long j4) {
        this.f65695c.w(true);
        this.f65695c.v(j4);
        this.f65696d.d(this.f65695c, 1);
    }
}
