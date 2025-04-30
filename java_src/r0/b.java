package r0;

import com.facebook.imagepipeline.request.ImageRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;
/* compiled from: ForwardingRequestListener.java */
/* loaded from: classes.dex */
public class b implements c {

    /* renamed from: b  reason: collision with root package name */
    private static final String f74015b = "ForwardingRequestListener";

    /* renamed from: a  reason: collision with root package name */
    private final List<c> f74016a;

    public b(Set<c> set) {
        this.f74016a = new ArrayList(set.size());
        for (c cVar : set) {
            if (cVar != null) {
                this.f74016a.add(cVar);
            }
        }
    }

    private void m(String str, Throwable th) {
        com.facebook.common.logging.a.v(f74015b, str, th);
    }

    @Override // r0.c
    public void a(ImageRequest imageRequest, Object obj, String str, boolean z3) {
        int size = this.f74016a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f74016a.get(i2).a(imageRequest, obj, str, z3);
            } catch (Exception e4) {
                m("InternalListener exception in onRequestStart", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.m0
    public void b(String str, String str2) {
        int size = this.f74016a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f74016a.get(i2).b(str, str2);
            } catch (Exception e4) {
                m("InternalListener exception in onProducerStart", e4);
            }
        }
    }

    @Override // r0.c
    public void c(ImageRequest imageRequest, String str, boolean z3) {
        int size = this.f74016a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f74016a.get(i2).c(imageRequest, str, z3);
            } catch (Exception e4) {
                m("InternalListener exception in onRequestSuccess", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.m0
    public boolean d(String str) {
        int size = this.f74016a.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f74016a.get(i2).d(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.imagepipeline.producers.m0
    public void e(String str, String str2, @Nullable Map<String, String> map) {
        int size = this.f74016a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f74016a.get(i2).e(str, str2, map);
            } catch (Exception e4) {
                m("InternalListener exception in onProducerFinishWithSuccess", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.m0
    public void f(String str, String str2, Throwable th, @Nullable Map<String, String> map) {
        int size = this.f74016a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f74016a.get(i2).f(str, str2, th, map);
            } catch (Exception e4) {
                m("InternalListener exception in onProducerFinishWithFailure", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.m0
    public void g(String str, String str2, @Nullable Map<String, String> map) {
        int size = this.f74016a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f74016a.get(i2).g(str, str2, map);
            } catch (Exception e4) {
                m("InternalListener exception in onProducerFinishWithCancellation", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.m0
    public void h(String str, String str2, boolean z3) {
        int size = this.f74016a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f74016a.get(i2).h(str, str2, z3);
            } catch (Exception e4) {
                m("InternalListener exception in onProducerFinishWithSuccess", e4);
            }
        }
    }

    @Override // r0.c
    public void i(ImageRequest imageRequest, String str, Throwable th, boolean z3) {
        int size = this.f74016a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f74016a.get(i2).i(imageRequest, str, th, z3);
            } catch (Exception e4) {
                m("InternalListener exception in onRequestFailure", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.m0
    public void j(String str, String str2, String str3) {
        int size = this.f74016a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f74016a.get(i2).j(str, str2, str3);
            } catch (Exception e4) {
                m("InternalListener exception in onIntermediateChunkStart", e4);
            }
        }
    }

    @Override // r0.c
    public void k(String str) {
        int size = this.f74016a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f74016a.get(i2).k(str);
            } catch (Exception e4) {
                m("InternalListener exception in onRequestCancellation", e4);
            }
        }
    }

    public void l(c cVar) {
        this.f74016a.add(cVar);
    }

    public b(c... cVarArr) {
        this.f74016a = new ArrayList(cVarArr.length);
        for (c cVar : cVarArr) {
            if (cVar != null) {
                this.f74016a.add(cVar);
            }
        }
    }
}
