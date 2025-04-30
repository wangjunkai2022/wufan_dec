package kotlinx.coroutines.internal;

import androidx.core.internal.view.SupportMenu;
import com.umeng.analytics.pro.ai;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.internal.f0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConcurrentLinkedList.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\b \u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B!\u0012\u0006\u0010\u0011\u001a\u00020\f\u0012\b\u0010\u0016\u001a\u0004\u0018\u00018\u0000\u0012\u0006\u0010\u0017\u001a\u00020\u0012¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u0004\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\u0006\u0010\u0005J\r\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tR\u0016\u0010\u000b\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u0005R\u0019\u0010\u0011\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/internal/f0;", "S", "Lkotlinx/coroutines/internal/g;", "", net.lingala.zip4j.util.e.f73017f0, "()Z", "n", "", "q", "()V", com.sdk.a.g.f56552a, "removed", "", ai.aD, "J", "o", "()J", "id", "", ai.av, "()I", "maxSlots", "prev", "pointers", "<init>", "(JLkotlinx/coroutines/internal/f0;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class f0<S extends f0<S>> extends g<S> {

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f72170d = AtomicIntegerFieldUpdater.newUpdater(f0.class, "cleanedAndPointers");

    /* renamed from: c  reason: collision with root package name */
    private final long f72171c;
    @NotNull
    private volatile /* synthetic */ int cleanedAndPointers;

    public f0(long j4, @Nullable S s3, int i2) {
        super(s3);
        this.f72171c = j4;
        this.cleanedAndPointers = i2 << 16;
    }

    @Override // kotlinx.coroutines.internal.g
    public boolean g() {
        return this.cleanedAndPointers == p() && !i();
    }

    public final boolean n() {
        return f72170d.addAndGet(this, SupportMenu.CATEGORY_MASK) == p() && !i();
    }

    public final long o() {
        return this.f72171c;
    }

    public abstract int p();

    public final void q() {
        if (f72170d.incrementAndGet(this) != p() || i()) {
            return;
        }
        l();
    }

    public final boolean r() {
        int i2;
        do {
            i2 = this.cleanedAndPointers;
            if (!(i2 != p() || i())) {
                return false;
            }
        } while (!f72170d.compareAndSet(this, i2, 65536 + i2));
        return true;
    }
}
