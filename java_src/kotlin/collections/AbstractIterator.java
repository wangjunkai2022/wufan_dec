package kotlin.collections;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
/* compiled from: AbstractIterator.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\t\u0010\u0005\u001a\u00020\u0003H\u0096\u0002J\u0010\u0010\u0006\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\t\u001a\u00020\bH$J\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\n\u001a\u00028\u0000H\u0004¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\r\u001a\u00020\bH\u0004R\u0018\u0010\u000e\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lkotlin/collections/AbstractIterator;", "T", "", "", "tryToComputeNext", "hasNext", "next", "()Ljava/lang/Object;", "", "computeNext", "value", "setNext", "(Ljava/lang/Object;)V", "done", "nextValue", "Ljava/lang/Object;", "Lkotlin/collections/State;", NoticeTopAnimActivityDialog_.f34402n, "Lkotlin/collections/State;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class AbstractIterator<T> implements Iterator<T>, KMappedMarker {
    private T nextValue;
    private State state = State.NotReady;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[State.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[State.Done.ordinal()] = 1;
            iArr[State.Ready.ordinal()] = 2;
        }
    }

    private final boolean tryToComputeNext() {
        this.state = State.Failed;
        computeNext();
        return this.state == State.Ready;
    }

    protected abstract void computeNext();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void done() {
        this.state = State.Done;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        State state = this.state;
        if (state != State.Failed) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    return tryToComputeNext();
                }
                return true;
            }
            return false;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @Override // java.util.Iterator
    public T next() {
        if (hasNext()) {
            this.state = State.NotReady;
            return this.nextValue;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setNext(T t3) {
        this.nextValue = t3;
        this.state = State.Ready;
    }
}
