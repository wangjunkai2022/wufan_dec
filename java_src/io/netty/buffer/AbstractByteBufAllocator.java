package io.netty.buffer;

import io.netty.util.ResourceLeakDetector;
import io.netty.util.ResourceLeakTracker;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
/* loaded from: classes5.dex */
public abstract class AbstractByteBufAllocator implements ByteBufAllocator {
    static final int CALCULATE_THRESHOLD = 4194304;
    static final int DEFAULT_INITIAL_CAPACITY = 256;
    static final int DEFAULT_MAX_CAPACITY = Integer.MAX_VALUE;
    static final int DEFAULT_MAX_COMPONENTS = 16;
    private final boolean directByDefault;
    private final ByteBuf emptyBuf;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.netty.buffer.AbstractByteBufAllocator$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$util$ResourceLeakDetector$Level;

        static {
            int[] iArr = new int[ResourceLeakDetector.Level.values().length];
            $SwitchMap$io$netty$util$ResourceLeakDetector$Level = iArr;
            try {
                iArr[ResourceLeakDetector.Level.SIMPLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$util$ResourceLeakDetector$Level[ResourceLeakDetector.Level.ADVANCED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$util$ResourceLeakDetector$Level[ResourceLeakDetector.Level.PARANOID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        ResourceLeakDetector.addExclusions(AbstractByteBufAllocator.class, "toLeakAwareBuffer");
    }

    protected AbstractByteBufAllocator() {
        this(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static ByteBuf toLeakAwareBuffer(ByteBuf byteBuf) {
        ByteBuf simpleLeakAwareByteBuf;
        ResourceLeakTracker<ByteBuf> track;
        int i2 = AnonymousClass1.$SwitchMap$io$netty$util$ResourceLeakDetector$Level[ResourceLeakDetector.getLevel().ordinal()];
        if (i2 == 1) {
            ResourceLeakTracker<ByteBuf> track2 = AbstractByteBuf.leakDetector.track(byteBuf);
            if (track2 == null) {
                return byteBuf;
            }
            simpleLeakAwareByteBuf = new SimpleLeakAwareByteBuf(byteBuf, track2);
        } else if ((i2 != 2 && i2 != 3) || (track = AbstractByteBuf.leakDetector.track(byteBuf)) == null) {
            return byteBuf;
        } else {
            simpleLeakAwareByteBuf = new AdvancedLeakAwareByteBuf(byteBuf, track);
        }
        return simpleLeakAwareByteBuf;
    }

    private static void validate(int i2, int i4) {
        ObjectUtil.checkPositiveOrZero(i2, "initialCapacity");
        if (i2 > i4) {
            throw new IllegalArgumentException(String.format("initialCapacity: %d (expected: not greater than maxCapacity(%d)", Integer.valueOf(i2), Integer.valueOf(i4)));
        }
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf buffer() {
        if (this.directByDefault) {
            return directBuffer();
        }
        return heapBuffer();
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public int calculateNewCapacity(int i2, int i4) {
        ObjectUtil.checkPositiveOrZero(i2, "minNewCapacity");
        if (i2 <= i4) {
            if (i2 == 4194304) {
                return 4194304;
            }
            if (i2 > 4194304) {
                int i5 = (i2 / 4194304) * 4194304;
                return i5 > i4 - 4194304 ? i4 : i5 + 4194304;
            }
            int i6 = 64;
            while (i6 < i2) {
                i6 <<= 1;
            }
            return Math.min(i6, i4);
        }
        throw new IllegalArgumentException(String.format("minNewCapacity: %d (expected: not greater than maxCapacity(%d)", Integer.valueOf(i2), Integer.valueOf(i4)));
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeBuffer() {
        if (this.directByDefault) {
            return compositeDirectBuffer();
        }
        return compositeHeapBuffer();
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeDirectBuffer() {
        return compositeDirectBuffer(16);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeHeapBuffer() {
        return compositeHeapBuffer(16);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf directBuffer() {
        return directBuffer(256, Integer.MAX_VALUE);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf heapBuffer() {
        return heapBuffer(256, Integer.MAX_VALUE);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf ioBuffer() {
        if (!PlatformDependent.hasUnsafe() && !isDirectBufferPooled()) {
            return heapBuffer(256);
        }
        return directBuffer(256);
    }

    protected abstract ByteBuf newDirectBuffer(int i2, int i4);

    protected abstract ByteBuf newHeapBuffer(int i2, int i4);

    public String toString() {
        return StringUtil.simpleClassName(this) + "(directByDefault: " + this.directByDefault + ')';
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractByteBufAllocator(boolean z3) {
        this.directByDefault = z3 && PlatformDependent.hasUnsafe();
        this.emptyBuf = new EmptyByteBuf(this);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeDirectBuffer(int i2) {
        return toLeakAwareBuffer(new CompositeByteBuf(this, true, i2));
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeHeapBuffer(int i2) {
        return toLeakAwareBuffer(new CompositeByteBuf(this, false, i2));
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf directBuffer(int i2) {
        return directBuffer(i2, Integer.MAX_VALUE);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf heapBuffer(int i2) {
        return heapBuffer(i2, Integer.MAX_VALUE);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf directBuffer(int i2, int i4) {
        if (i2 == 0 && i4 == 0) {
            return this.emptyBuf;
        }
        validate(i2, i4);
        return newDirectBuffer(i2, i4);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf heapBuffer(int i2, int i4) {
        if (i2 == 0 && i4 == 0) {
            return this.emptyBuf;
        }
        validate(i2, i4);
        return newHeapBuffer(i2, i4);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf buffer(int i2) {
        if (this.directByDefault) {
            return directBuffer(i2);
        }
        return heapBuffer(i2);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeBuffer(int i2) {
        if (this.directByDefault) {
            return compositeDirectBuffer(i2);
        }
        return compositeHeapBuffer(i2);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf ioBuffer(int i2) {
        if (!PlatformDependent.hasUnsafe() && !isDirectBufferPooled()) {
            return heapBuffer(i2);
        }
        return directBuffer(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static CompositeByteBuf toLeakAwareBuffer(CompositeByteBuf compositeByteBuf) {
        CompositeByteBuf simpleLeakAwareCompositeByteBuf;
        ResourceLeakTracker<ByteBuf> track;
        int i2 = AnonymousClass1.$SwitchMap$io$netty$util$ResourceLeakDetector$Level[ResourceLeakDetector.getLevel().ordinal()];
        if (i2 == 1) {
            ResourceLeakTracker<ByteBuf> track2 = AbstractByteBuf.leakDetector.track(compositeByteBuf);
            if (track2 == null) {
                return compositeByteBuf;
            }
            simpleLeakAwareCompositeByteBuf = new SimpleLeakAwareCompositeByteBuf(compositeByteBuf, track2);
        } else if ((i2 != 2 && i2 != 3) || (track = AbstractByteBuf.leakDetector.track(compositeByteBuf)) == null) {
            return compositeByteBuf;
        } else {
            simpleLeakAwareCompositeByteBuf = new AdvancedLeakAwareCompositeByteBuf(compositeByteBuf, track);
        }
        return simpleLeakAwareCompositeByteBuf;
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf buffer(int i2, int i4) {
        if (this.directByDefault) {
            return directBuffer(i2, i4);
        }
        return heapBuffer(i2, i4);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf ioBuffer(int i2, int i4) {
        if (!PlatformDependent.hasUnsafe() && !isDirectBufferPooled()) {
            return heapBuffer(i2, i4);
        }
        return directBuffer(i2, i4);
    }
}
