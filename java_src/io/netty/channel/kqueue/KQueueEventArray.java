package io.netty.channel.kqueue;

import io.netty.channel.unix.Buffer;
import io.netty.util.internal.PlatformDependent;
import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
final class KQueueEventArray {
    private int capacity;
    private ByteBuffer memory;
    private long memoryAddress;
    private int size;
    private static final int KQUEUE_EVENT_SIZE = Native.sizeofKEvent();
    private static final int KQUEUE_IDENT_OFFSET = Native.offsetofKEventIdent();
    private static final int KQUEUE_FILTER_OFFSET = Native.offsetofKEventFilter();
    private static final int KQUEUE_FFLAGS_OFFSET = Native.offsetofKEventFFlags();
    private static final int KQUEUE_FLAGS_OFFSET = Native.offsetofKEventFlags();
    private static final int KQUEUE_DATA_OFFSET = Native.offsetofKeventData();

    /* JADX INFO: Access modifiers changed from: package-private */
    public KQueueEventArray(int i2) {
        if (i2 >= 1) {
            ByteBuffer allocateDirectWithNativeOrder = Buffer.allocateDirectWithNativeOrder(calculateBufferCapacity(i2));
            this.memory = allocateDirectWithNativeOrder;
            this.memoryAddress = Buffer.memoryAddress(allocateDirectWithNativeOrder);
            this.capacity = i2;
            return;
        }
        throw new IllegalArgumentException("capacity must be >= 1 but was " + i2);
    }

    private static int calculateBufferCapacity(int i2) {
        return i2 * KQUEUE_EVENT_SIZE;
    }

    private static native void evSet(long j4, int i2, short s3, short s4, int i4);

    private static int getKEventOffset(int i2) {
        return i2 * KQUEUE_EVENT_SIZE;
    }

    private long getKEventOffsetAddress(int i2) {
        return getKEventOffset(i2) + this.memoryAddress;
    }

    private short getShort(int i2, int i4) {
        if (PlatformDependent.hasUnsafe()) {
            return PlatformDependent.getShort(getKEventOffsetAddress(i2) + i4);
        }
        return this.memory.getShort(getKEventOffset(i2) + i4);
    }

    private void reallocIfNeeded() {
        if (this.size == this.capacity) {
            realloc(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int capacity() {
        return this.capacity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clear() {
        this.size = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long data(int i2) {
        if (PlatformDependent.hasUnsafe()) {
            return PlatformDependent.getLong(getKEventOffsetAddress(i2) + KQUEUE_DATA_OFFSET);
        }
        return this.memory.getLong(getKEventOffset(i2) + KQUEUE_DATA_OFFSET);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void evSet(AbstractKQueueChannel abstractKQueueChannel, short s3, short s4, int i2) {
        reallocIfNeeded();
        int i4 = this.size;
        this.size = i4 + 1;
        evSet(getKEventOffset(i4) + this.memoryAddress, abstractKQueueChannel.socket.intValue(), s3, s4, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int fd(int i2) {
        if (PlatformDependent.hasUnsafe()) {
            return PlatformDependent.getInt(getKEventOffsetAddress(i2) + KQUEUE_IDENT_OFFSET);
        }
        return this.memory.getInt(getKEventOffset(i2) + KQUEUE_IDENT_OFFSET);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public short fflags(int i2) {
        return getShort(i2, KQUEUE_FFLAGS_OFFSET);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public short filter(int i2) {
        return getShort(i2, KQUEUE_FILTER_OFFSET);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public short flags(int i2) {
        return getShort(i2, KQUEUE_FLAGS_OFFSET);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void free() {
        Buffer.free(this.memory);
        this.capacity = 0;
        this.size = 0;
        this.memoryAddress = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long memoryAddress() {
        return this.memoryAddress;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void realloc(boolean z3) {
        int i2 = this.capacity;
        int i4 = i2 <= 65536 ? i2 << 1 : (i2 + i2) >> 1;
        try {
            ByteBuffer allocateDirectWithNativeOrder = Buffer.allocateDirectWithNativeOrder(calculateBufferCapacity(i4));
            this.memory.position(0).limit(this.size);
            allocateDirectWithNativeOrder.put(this.memory);
            allocateDirectWithNativeOrder.position(0);
            Buffer.free(this.memory);
            this.memory = allocateDirectWithNativeOrder;
            this.memoryAddress = Buffer.memoryAddress(allocateDirectWithNativeOrder);
        } catch (OutOfMemoryError e4) {
            if (z3) {
                OutOfMemoryError outOfMemoryError = new OutOfMemoryError("unable to allocate " + i4 + " new bytes! Existing capacity is: " + this.capacity);
                outOfMemoryError.initCause(e4);
                throw outOfMemoryError;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int size() {
        return this.size;
    }
}
