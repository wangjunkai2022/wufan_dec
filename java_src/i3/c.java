package i3;

import java.util.LinkedHashSet;
import java.util.Set;
/* compiled from: OnViewChangedNotifier.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    private static c f65707b;

    /* renamed from: a  reason: collision with root package name */
    private final Set<b> f65708a = new LinkedHashSet();

    public static void b(b bVar) {
        c cVar = f65707b;
        if (cVar != null) {
            cVar.f65708a.add(bVar);
        }
    }

    public static c c(c cVar) {
        c cVar2 = f65707b;
        f65707b = cVar;
        return cVar2;
    }

    public void a(a aVar) {
        for (b bVar : this.f65708a) {
            bVar.onViewChanged(aVar);
        }
    }
}
