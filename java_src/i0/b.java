package i0;

import com.facebook.drawee.backends.pipeline.info.d;
/* compiled from: ImagePerfImageOriginListener.java */
/* loaded from: classes2.dex */
public class b implements h0.b {

    /* renamed from: a  reason: collision with root package name */
    private final d f65697a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.drawee.backends.pipeline.info.c f65698b;

    public b(d dVar, com.facebook.drawee.backends.pipeline.info.c cVar) {
        this.f65697a = dVar;
        this.f65698b = cVar;
    }

    @Override // h0.b
    public void a(String str, int i2, boolean z3) {
        this.f65697a.m(i2);
        this.f65698b.e(this.f65697a, 1);
    }
}
