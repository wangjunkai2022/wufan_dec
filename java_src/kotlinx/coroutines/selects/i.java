package kotlinx.coroutines.selects;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Select.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/selects/i;", "", "", "a", "()J", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f72435a = AtomicLongFieldUpdater.newUpdater(i.class, "number");
    @NotNull
    private volatile /* synthetic */ long number = 1;

    public final long a() {
        return f72435a.incrementAndGet(this);
    }
}
