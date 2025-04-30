package kotlinx.coroutines.internal;

import com.umeng.analytics.pro.ai;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlinx.coroutines.m2;
import org.jetbrains.annotations.NotNull;
/* compiled from: MainDispatchers.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0003\u001a\u00020\u0002H\u0002R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/internal/x;", "", "Lkotlinx/coroutines/m2;", "a", ai.aD, "Lkotlinx/coroutines/m2;", "dispatcher", "", "b", "Z", "FAST_SERVICE_LOADER_ENABLED", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class x {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final x f72249a;

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f72250b;
    @JvmField
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final m2 f72251c;

    static {
        x xVar = new x();
        f72249a = xVar;
        f72250b = k0.e("kotlinx.coroutines.fast.service.loader", true);
        f72251c = xVar.a();
    }

    private x() {
    }

    private final m2 a() {
        Sequence asSequence;
        List<MainDispatcherFactory> list;
        Object next;
        try {
            if (f72250b) {
                list = l.f72188a.d();
            } else {
                asSequence = SequencesKt__SequencesKt.asSequence(ServiceLoader.load(MainDispatcherFactory.class, MainDispatcherFactory.class.getClassLoader()).iterator());
                list = SequencesKt___SequencesKt.toList(asSequence);
            }
            Iterator<T> it2 = list.iterator();
            if (it2.hasNext()) {
                next = it2.next();
                if (it2.hasNext()) {
                    int loadPriority = ((MainDispatcherFactory) next).getLoadPriority();
                    do {
                        Object next2 = it2.next();
                        int loadPriority2 = ((MainDispatcherFactory) next2).getLoadPriority();
                        if (loadPriority < loadPriority2) {
                            next = next2;
                            loadPriority = loadPriority2;
                        }
                    } while (it2.hasNext());
                }
            } else {
                next = null;
            }
            MainDispatcherFactory mainDispatcherFactory = (MainDispatcherFactory) next;
            if (mainDispatcherFactory == null) {
                return y.b(null, null, 3, null);
            }
            return y.f(mainDispatcherFactory, list);
        } catch (Throwable th) {
            return y.b(th, null, 2, null);
        }
    }
}
