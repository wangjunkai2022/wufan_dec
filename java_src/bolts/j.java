package bolts;

import bolts.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnobservedErrorNotifier.java */
/* loaded from: classes2.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private h<?> f8294a;

    public j(h<?> hVar) {
        this.f8294a = hVar;
    }

    public void a() {
        this.f8294a = null;
    }

    protected void finalize() throws Throwable {
        h.q C;
        try {
            h<?> hVar = this.f8294a;
            if (hVar != null && (C = h.C()) != null) {
                C.a(hVar, new UnobservedTaskException(hVar.A()));
            }
        } finally {
            super.finalize();
        }
    }
}
