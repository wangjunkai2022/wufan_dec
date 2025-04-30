package io.netty.channel.epoll;

import io.netty.channel.unix.Buffer;
import io.netty.util.internal.PlatformDependent;
import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
final class EpollEventArray {
    private int length;
    private ByteBuffer memory;
    private long memoryAddress;
    private static final int EPOLL_EVENT_SIZE = Native.sizeofEpollEvent();
    private static final int EPOLL_DATA_OFFSET = Native.offsetofEpollData();

    /* JADX INFO: Access modifiers changed from: package-private */
    public EpollEventArray(int i2) {
        if (i2 >= 1) {
            this.length = i2;
            ByteBuffer allocateDirectWithNativeOrder = Buffer.allocateDirectWithNativeOrder(calculateBufferCapacity(i2));
            this.memory = allocateDirectWithNativeOrder;
            this.memoryAddress = Buffer.memoryAddress(allocateDirectWithNativeOrder);
            return;
        }
        throw new IllegalArgumentException("length must be >= 1 but was " + i2);
    }

    private static int calculateBufferCapacity(int i2) {
        return i2 * EPOLL_EVENT_SIZE;
    }

    private int getInt(int i2, int i4) {
        if (PlatformDependent.hasUnsafe()) {
            return PlatformDependent.getInt(this.memoryAddress + (i2 * EPOLL_EVENT_SIZE) + i4);
        }
        return this.memory.getInt((i2 * EPOLL_EVENT_SIZE) + i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int events(int i2) {
        return getInt(i2, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int fd(int i2) {
        return getInt(i2, EPOLL_DATA_OFFSET);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void free() {
        Buffer.free(this.memory);
        this.memoryAddress = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void increase() {
        int i2 = this.length << 1;
        this.length = i2;
        ByteBuffer allocateDirectWithNativeOrder = Buffer.allocateDirectWithNativeOrder(calculateBufferCapacity(i2));
        Buffer.free(this.memory);
        this.memory = allocateDirectWithNativeOrder;
        this.memoryAddress = Buffer.memoryAddress(allocateDirectWithNativeOrder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int length() {
        return this.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long memoryAddress() {
        return this.memoryAddress;
    }
}
