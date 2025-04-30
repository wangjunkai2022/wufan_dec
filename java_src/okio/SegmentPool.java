package okio;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SegmentPool.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\b\u0006\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0007J\u0010\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0007H\u0002R\u001c\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086D¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0013\u0010\u000f\u001a\u00020\t8F@\u0006¢\u0006\u0006\u001a\u0004\b\u000e\u0010\rR\u0016\u0010\u0010\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00070\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u000b¨\u0006\u0018"}, d2 = {"Lokio/SegmentPool;", "", "Lokio/Segment;", "take", "segment", "", "recycle", "Ljava/util/concurrent/atomic/AtomicReference;", "firstRef", "", "MAX_SIZE", "I", "getMAX_SIZE", "()I", "getByteCount", "byteCount", "LOCK", "Lokio/Segment;", "", "hashBuckets", "[Ljava/util/concurrent/atomic/AtomicReference;", "HASH_BUCKET_COUNT", "<init>", "()V", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5.dex */
public final class SegmentPool {
    private static final int HASH_BUCKET_COUNT;
    private static final AtomicReference<Segment>[] hashBuckets;
    public static final SegmentPool INSTANCE = new SegmentPool();
    private static final int MAX_SIZE = 65536;
    private static final Segment LOCK = new Segment(new byte[0], 0, 0, false, false);

    static {
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        HASH_BUCKET_COUNT = highestOneBit;
        AtomicReference<Segment>[] atomicReferenceArr = new AtomicReference[highestOneBit];
        for (int i2 = 0; i2 < highestOneBit; i2++) {
            atomicReferenceArr[i2] = new AtomicReference<>();
        }
        hashBuckets = atomicReferenceArr;
    }

    private SegmentPool() {
    }

    private final AtomicReference<Segment> firstRef() {
        Thread currentThread = Thread.currentThread();
        Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
        return hashBuckets[(int) (currentThread.getId() & (HASH_BUCKET_COUNT - 1))];
    }

    @JvmStatic
    public static final void recycle(@NotNull Segment segment) {
        AtomicReference<Segment> firstRef;
        Segment segment2;
        Intrinsics.checkNotNullParameter(segment, "segment");
        if (segment.next == null && segment.prev == null) {
            if (segment.shared || (segment2 = (firstRef = INSTANCE.firstRef()).get()) == LOCK) {
                return;
            }
            int i2 = segment2 != null ? segment2.limit : 0;
            if (i2 >= MAX_SIZE) {
                return;
            }
            segment.next = segment2;
            segment.pos = 0;
            segment.limit = i2 + 8192;
            if (firstRef.compareAndSet(segment2, segment)) {
                return;
            }
            segment.next = null;
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @JvmStatic
    @NotNull
    public static final Segment take() {
        AtomicReference<Segment> firstRef = INSTANCE.firstRef();
        Segment segment = LOCK;
        Segment andSet = firstRef.getAndSet(segment);
        if (andSet == segment) {
            return new Segment();
        }
        if (andSet == null) {
            firstRef.set(null);
            return new Segment();
        }
        firstRef.set(andSet.next);
        andSet.next = null;
        andSet.limit = 0;
        return andSet;
    }

    public final int getByteCount() {
        Segment segment = firstRef().get();
        if (segment != null) {
            return segment.limit;
        }
        return 0;
    }

    public final int getMAX_SIZE() {
        return MAX_SIZE;
    }
}
