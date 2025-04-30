package io.netty.channel.unix;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelOutboundBuffer;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
public final class IovArray implements ChannelOutboundBuffer.MessageProcessor {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ADDRESS_SIZE;
    private static final int CAPACITY;
    private static final int IOV_SIZE;
    private int count;
    private long maxBytes = Limits.SSIZE_MAX;
    private final ByteBuffer memory;
    private final long memoryAddress;
    private long size;

    static {
        int addressSize = Buffer.addressSize();
        ADDRESS_SIZE = addressSize;
        int i2 = addressSize * 2;
        IOV_SIZE = i2;
        CAPACITY = Limits.IOV_MAX * i2;
    }

    public IovArray() {
        ByteBuffer allocateDirectWithNativeOrder = Buffer.allocateDirectWithNativeOrder(CAPACITY);
        this.memory = allocateDirectWithNativeOrder;
        this.memoryAddress = Buffer.memoryAddress(allocateDirectWithNativeOrder);
    }

    private static int idx(int i2) {
        return IOV_SIZE * i2;
    }

    @Deprecated
    public boolean add(ByteBuf byteBuf) {
        return add(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes());
    }

    public void clear() {
        this.count = 0;
        this.size = 0L;
    }

    public int count() {
        return this.count;
    }

    public void maxBytes(long j4) {
        this.maxBytes = Math.min(Limits.SSIZE_MAX, ObjectUtil.checkPositive(j4, "maxBytes"));
    }

    public long memoryAddress(int i2) {
        return this.memoryAddress + idx(i2);
    }

    @Override // io.netty.channel.ChannelOutboundBuffer.MessageProcessor
    public boolean processMessage(Object obj) throws Exception {
        if (obj instanceof ByteBuf) {
            ByteBuf byteBuf = (ByteBuf) obj;
            return add(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes());
        }
        return false;
    }

    public void release() {
        Buffer.free(this.memory);
    }

    public long size() {
        return this.size;
    }

    public boolean add(ByteBuf byteBuf, int i2, int i4) {
        ByteBuffer internalNioBuffer;
        if (this.count == Limits.IOV_MAX) {
            return false;
        }
        if (byteBuf.nioBufferCount() == 1) {
            if (i4 == 0) {
                return true;
            }
            if (byteBuf.hasMemoryAddress()) {
                return add(byteBuf.memoryAddress() + i2, i4);
            }
            return add(Buffer.memoryAddress(byteBuf.internalNioBuffer(i2, i4)) + internalNioBuffer.position(), i4);
        }
        ByteBuffer[] nioBuffers = byteBuf.nioBuffers(i2, i4);
        for (ByteBuffer byteBuffer : nioBuffers) {
            int remaining = byteBuffer.remaining();
            if (remaining != 0 && (!add(Buffer.memoryAddress(byteBuffer) + byteBuffer.position(), remaining) || this.count == Limits.IOV_MAX)) {
                return false;
            }
        }
        return true;
    }

    public long maxBytes() {
        return this.maxBytes;
    }

    private boolean add(long j4, int i2) {
        long j5 = i2;
        if (this.maxBytes - j5 >= this.size || this.count <= 0) {
            int idx = idx(this.count);
            int i4 = ADDRESS_SIZE;
            int i5 = idx + i4;
            this.size += j5;
            this.count++;
            if (i4 == 8) {
                if (PlatformDependent.hasUnsafe()) {
                    PlatformDependent.putLong(idx + this.memoryAddress, j4);
                    PlatformDependent.putLong(i5 + this.memoryAddress, j5);
                } else {
                    this.memory.putLong(idx, j4);
                    this.memory.putLong(i5, j5);
                }
            } else if (PlatformDependent.hasUnsafe()) {
                PlatformDependent.putInt(idx + this.memoryAddress, (int) j4);
                PlatformDependent.putInt(i5 + this.memoryAddress, i2);
            } else {
                this.memory.putInt(idx, (int) j4);
                this.memory.putInt(i5, i2);
            }
            return true;
        }
        return false;
    }
}
