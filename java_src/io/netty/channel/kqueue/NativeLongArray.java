package io.netty.channel.kqueue;

import io.netty.channel.unix.Buffer;
import io.netty.channel.unix.Limits;
import io.netty.util.internal.PlatformDependent;
import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
final class NativeLongArray {
    private int capacity;
    private ByteBuffer memory;
    private long memoryAddress;
    private int size;

    NativeLongArray(int i2) {
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
        return i2 * Limits.SIZEOF_JLONG;
    }

    private static int idx(int i2) {
        return i2 * Limits.SIZEOF_JLONG;
    }

    private long memoryOffset(int i2) {
        return this.memoryAddress + idx(i2);
    }

    private void reallocIfNeeded() {
        int i2 = this.size;
        int i4 = this.capacity;
        if (i2 == i4) {
            int i5 = i4 <= 65536 ? i4 << 1 : (i4 + i4) >> 1;
            ByteBuffer allocateDirectWithNativeOrder = Buffer.allocateDirectWithNativeOrder(calculateBufferCapacity(i5));
            this.memory.position(0).limit(this.size);
            allocateDirectWithNativeOrder.put(this.memory);
            allocateDirectWithNativeOrder.position(0);
            Buffer.free(this.memory);
            this.memory = allocateDirectWithNativeOrder;
            this.memoryAddress = Buffer.memoryAddress(allocateDirectWithNativeOrder);
            this.capacity = i5;
        }
    }

    void add(long j4) {
        reallocIfNeeded();
        if (PlatformDependent.hasUnsafe()) {
            PlatformDependent.putLong(memoryOffset(this.size), j4);
        } else {
            this.memory.putLong(idx(this.size), j4);
        }
        this.size++;
    }

    void clear() {
        this.size = 0;
    }

    void free() {
        Buffer.free(this.memory);
        this.memoryAddress = 0L;
    }

    boolean isEmpty() {
        return this.size == 0;
    }

    long memoryAddress() {
        return this.memoryAddress;
    }

    long memoryAddressEnd() {
        return memoryOffset(this.size);
    }

    int size() {
        return this.size;
    }

    public String toString() {
        return "memoryAddress: " + this.memoryAddress + " capacity: " + this.capacity + " size: " + this.size;
    }
}
