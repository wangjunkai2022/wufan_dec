package h0;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
/* compiled from: ForwardingImageOriginListener.java */
/* loaded from: classes2.dex */
public class a implements b {

    /* renamed from: b  reason: collision with root package name */
    private static final String f65685b = "ForwardingImageOriginListener";

    /* renamed from: a  reason: collision with root package name */
    private final List<b> f65686a;

    public a(Set<b> set) {
        this.f65686a = new ArrayList(set);
    }

    @Override // h0.b
    public synchronized void a(String str, int i2, boolean z3) {
        int size = this.f65686a.size();
        for (int i4 = 0; i4 < size; i4++) {
            b bVar = this.f65686a.get(i4);
            if (bVar != null) {
                try {
                    bVar.a(str, i2, z3);
                } catch (Exception e4) {
                    com.facebook.common.logging.a.v(f65685b, "InternalListener exception in onImageLoaded", e4);
                }
            }
        }
    }

    public synchronized void b(b bVar) {
        this.f65686a.add(bVar);
    }

    public synchronized void c(b bVar) {
        this.f65686a.remove(bVar);
    }

    public a(b... bVarArr) {
        ArrayList arrayList = new ArrayList(bVarArr.length);
        this.f65686a = arrayList;
        Collections.addAll(arrayList, bVarArr);
    }
}
