package io.netty.buffer;

import io.netty.util.ByteProcessor;
import io.netty.util.IllegalReferenceCountException;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.internal.EmptyArrays;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.RecyclableArrayList;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.channels.GatheringByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.UShort;
/* loaded from: classes5.dex */
public class CompositeByteBuf extends AbstractReferenceCountedByteBuf implements Iterable<ByteBuf> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final ByteBufAllocator alloc;
    private int componentCount;
    private Component[] components;
    private final boolean direct;
    private boolean freed;
    private Component lastAccessed;
    private final int maxNumComponents;
    private static final ByteBuffer EMPTY_NIO_BUFFER = Unpooled.EMPTY_BUFFER.nioBuffer();
    private static final Iterator<ByteBuf> EMPTY_ITERATOR = Collections.emptyList().iterator();
    static final ByteWrapper<byte[]> BYTE_ARRAY_WRAPPER = new ByteWrapper<byte[]>() { // from class: io.netty.buffer.CompositeByteBuf.1
        @Override // io.netty.buffer.CompositeByteBuf.ByteWrapper
        public boolean isEmpty(byte[] bArr) {
            return bArr.length == 0;
        }

        @Override // io.netty.buffer.CompositeByteBuf.ByteWrapper
        public ByteBuf wrap(byte[] bArr) {
            return Unpooled.wrappedBuffer(bArr);
        }
    };
    static final ByteWrapper<ByteBuffer> BYTE_BUFFER_WRAPPER = new ByteWrapper<ByteBuffer>() { // from class: io.netty.buffer.CompositeByteBuf.2
        @Override // io.netty.buffer.CompositeByteBuf.ByteWrapper
        public boolean isEmpty(ByteBuffer byteBuffer) {
            return !byteBuffer.hasRemaining();
        }

        @Override // io.netty.buffer.CompositeByteBuf.ByteWrapper
        public ByteBuf wrap(ByteBuffer byteBuffer) {
            return Unpooled.wrappedBuffer(byteBuffer);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface ByteWrapper<T> {
        boolean isEmpty(T t3);

        ByteBuf wrap(T t3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class Component {
        int adjustment;
        final ByteBuf buf;
        int endOffset;
        int offset;
        private ByteBuf slice;
        int srcAdjustment;
        final ByteBuf srcBuf;

        Component(ByteBuf byteBuf, int i2, ByteBuf byteBuf2, int i4, int i5, int i6, ByteBuf byteBuf3) {
            this.srcBuf = byteBuf;
            this.srcAdjustment = i2 - i5;
            this.buf = byteBuf2;
            this.adjustment = i4 - i5;
            this.offset = i5;
            this.endOffset = i5 + i6;
            this.slice = byteBuf3;
        }

        ByteBuf duplicate() {
            return this.srcBuf.duplicate();
        }

        void free() {
            this.slice = null;
            this.srcBuf.release();
        }

        int idx(int i2) {
            return i2 + this.adjustment;
        }

        ByteBuffer internalNioBuffer(int i2, int i4) {
            return this.srcBuf.internalNioBuffer(srcIdx(i2), i4);
        }

        int length() {
            return this.endOffset - this.offset;
        }

        void reposition(int i2) {
            int i4 = i2 - this.offset;
            this.endOffset += i4;
            this.srcAdjustment -= i4;
            this.adjustment -= i4;
            this.offset = i2;
        }

        ByteBuf slice() {
            ByteBuf byteBuf = this.slice;
            if (byteBuf == null) {
                ByteBuf slice = this.srcBuf.slice(srcIdx(this.offset), length());
                this.slice = slice;
                return slice;
            }
            return byteBuf;
        }

        int srcIdx(int i2) {
            return i2 + this.srcAdjustment;
        }

        void transferTo(ByteBuf byteBuf) {
            byteBuf.writeBytes(this.buf, idx(this.offset), length());
            free();
        }
    }

    /* loaded from: classes5.dex */
    private final class CompositeByteBufIterator implements Iterator<ByteBuf> {
        private int index;
        private final int size;

        private CompositeByteBufIterator() {
            this.size = CompositeByteBuf.this.numComponents();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.size > this.index;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-Only");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public ByteBuf next() {
            if (this.size == CompositeByteBuf.this.numComponents()) {
                if (hasNext()) {
                    try {
                        Component[] componentArr = CompositeByteBuf.this.components;
                        int i2 = this.index;
                        this.index = i2 + 1;
                        return componentArr[i2].slice();
                    } catch (IndexOutOfBoundsException unused) {
                        throw new ConcurrentModificationException();
                    }
                }
                throw new NoSuchElementException();
            }
            throw new ConcurrentModificationException();
        }
    }

    private CompositeByteBuf(ByteBufAllocator byteBufAllocator, boolean z3, int i2, int i4) {
        super(Integer.MAX_VALUE);
        this.alloc = (ByteBufAllocator) ObjectUtil.checkNotNull(byteBufAllocator, "alloc");
        if (i2 >= 1) {
            this.direct = z3;
            this.maxNumComponents = i2;
            this.components = newCompArray(i4, i2);
            return;
        }
        throw new IllegalArgumentException("maxNumComponents: " + i2 + " (expected: >= 1)");
    }

    private void addComp(int i2, Component component) {
        shiftComps(i2, 1);
        this.components[i2] = component;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0031 A[Catch: all -> 0x001f, TRY_LEAVE, TryCatch #1 {all -> 0x001f, blocks: (B:5:0x0016, B:7:0x001b, B:13:0x0031, B:11:0x0024), top: B:21:0x0016 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int addComponent0(boolean r6, int r7, io.netty.buffer.ByteBuf r8) {
        /*
            r5 = this;
            r0 = 0
            r1 = 1
            r5.checkComponentIndex(r7)     // Catch: java.lang.Throwable -> L37
            io.netty.buffer.ByteBuf r2 = ensureAccessible(r8)     // Catch: java.lang.Throwable -> L37
            io.netty.buffer.CompositeByteBuf$Component r2 = r5.newComponent(r2, r0)     // Catch: java.lang.Throwable -> L37
            int r3 = r2.length()     // Catch: java.lang.Throwable -> L37
            r5.addComp(r7, r2)     // Catch: java.lang.Throwable -> L37
            if (r3 <= 0) goto L22
            int r0 = r5.componentCount     // Catch: java.lang.Throwable -> L1f
            int r0 = r0 - r1
            if (r7 >= r0) goto L22
            r5.updateComponentOffsets(r7)     // Catch: java.lang.Throwable -> L1f
            goto L2f
        L1f:
            r6 = move-exception
            r0 = 1
            goto L38
        L22:
            if (r7 <= 0) goto L2f
            io.netty.buffer.CompositeByteBuf$Component[] r0 = r5.components     // Catch: java.lang.Throwable -> L1f
            int r4 = r7 + (-1)
            r0 = r0[r4]     // Catch: java.lang.Throwable -> L1f
            int r0 = r0.endOffset     // Catch: java.lang.Throwable -> L1f
            r2.reposition(r0)     // Catch: java.lang.Throwable -> L1f
        L2f:
            if (r6 == 0) goto L36
            int r6 = r5.writerIndex     // Catch: java.lang.Throwable -> L1f
            int r6 = r6 + r3
            r5.writerIndex = r6     // Catch: java.lang.Throwable -> L1f
        L36:
            return r7
        L37:
            r6 = move-exception
        L38:
            if (r0 != 0) goto L3d
            r8.release()
        L3d:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.buffer.CompositeByteBuf.addComponent0(boolean, int, io.netty.buffer.ByteBuf):int");
    }

    private CompositeByteBuf addComponents0(boolean z3, int i2, ByteBuf[] byteBufArr, int i4) {
        int length = byteBufArr.length;
        int i5 = length - i4;
        int i6 = Integer.MAX_VALUE;
        try {
            checkComponentIndex(i2);
            shiftComps(i2, i5);
            int i7 = i2 > 0 ? this.components[i2 - 1].endOffset : 0;
            i6 = i2;
            while (i4 < length) {
                ByteBuf byteBuf = byteBufArr[i4];
                if (byteBuf == null) {
                    break;
                }
                Component newComponent = newComponent(ensureAccessible(byteBuf), i7);
                this.components[i6] = newComponent;
                i7 = newComponent.endOffset;
                i4++;
                i6++;
            }
            return this;
        } finally {
            if (i6 < this.componentCount) {
                int i8 = i5 + i2;
                if (i6 < i8) {
                    removeCompRange(i6, i8);
                    while (i4 < length) {
                        ReferenceCountUtil.safeRelease(byteBufArr[i4]);
                        i4++;
                    }
                }
                updateComponentOffsets(i6);
            }
            if (z3 && i6 > i2 && i6 <= this.componentCount) {
                int i9 = this.writerIndex;
                Component[] componentArr = this.components;
                this.writerIndex = i9 + (componentArr[i6 - 1].endOffset - componentArr[i2].offset);
            }
        }
    }

    private ByteBuf allocBuffer(int i2) {
        return this.direct ? alloc().directBuffer(i2) : alloc().heapBuffer(i2);
    }

    private void checkComponentIndex(int i2) {
        ensureAccessible();
        if (i2 < 0 || i2 > this.componentCount) {
            throw new IndexOutOfBoundsException(String.format("cIndex: %d (expected: >= 0 && <= numComponents(%d))", Integer.valueOf(i2), Integer.valueOf(this.componentCount)));
        }
    }

    private void clearComps() {
        removeCompRange(0, this.componentCount);
    }

    private void consolidate0(int i2, int i4) {
        if (i4 <= 1) {
            return;
        }
        int i5 = i2 + i4;
        ByteBuf allocBuffer = allocBuffer(this.components[i5 - 1].endOffset - (i2 != 0 ? this.components[i2].offset : 0));
        for (int i6 = i2; i6 < i5; i6++) {
            this.components[i6].transferTo(allocBuffer);
        }
        this.lastAccessed = null;
        removeCompRange(i2 + 1, i5);
        this.components[i2] = newComponent(allocBuffer, 0);
        if (i2 == 0 && i4 == this.componentCount) {
            return;
        }
        updateComponentOffsets(i2);
    }

    private void consolidateIfNeeded() {
        int i2 = this.componentCount;
        if (i2 > this.maxNumComponents) {
            consolidate0(0, i2);
        }
    }

    private void copyTo(int i2, int i4, int i5, ByteBuf byteBuf) {
        int i6 = 0;
        while (i4 > 0) {
            Component component = this.components[i5];
            int min = Math.min(i4, component.endOffset - i2);
            component.buf.getBytes(component.idx(i2), byteBuf, i6, min);
            i2 += min;
            i6 += min;
            i4 -= min;
            i5++;
        }
        byteBuf.writerIndex(byteBuf.capacity());
    }

    private static ByteBuf ensureAccessible(ByteBuf byteBuf) {
        if (!AbstractByteBuf.checkAccessible || byteBuf.isAccessible()) {
            return byteBuf;
        }
        throw new IllegalReferenceCountException(0);
    }

    private Component findComponent(int i2) {
        Component component = this.lastAccessed;
        if (component != null && i2 >= component.offset && i2 < component.endOffset) {
            ensureAccessible();
            return component;
        }
        checkIndex(i2);
        return findIt(i2);
    }

    private Component findComponent0(int i2) {
        Component component = this.lastAccessed;
        return (component == null || i2 < component.offset || i2 >= component.endOffset) ? findIt(i2) : component;
    }

    private Component findIt(int i2) {
        int i4 = this.componentCount;
        int i5 = 0;
        while (i5 <= i4) {
            int i6 = (i5 + i4) >>> 1;
            Component component = this.components[i6];
            if (i2 >= component.endOffset) {
                i5 = i6 + 1;
            } else if (i2 >= component.offset) {
                this.lastAccessed = component;
                return component;
            } else {
                i4 = i6 - 1;
            }
        }
        throw new Error("should not reach here");
    }

    private static Component[] newCompArray(int i2, int i4) {
        return new Component[Math.max(i2, Math.min(16, i4))];
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private io.netty.buffer.CompositeByteBuf.Component newComponent(io.netty.buffer.ByteBuf r10, int r11) {
        /*
            r9 = this;
            int r2 = r10.readerIndex()
            int r6 = r10.readableBytes()
            r0 = r10
        L9:
            boolean r1 = r0 instanceof io.netty.buffer.WrappedByteBuf
            if (r1 != 0) goto L5e
            boolean r1 = r0 instanceof io.netty.buffer.SwappedByteBuf
            if (r1 == 0) goto L12
            goto L5e
        L12:
            boolean r1 = r0 instanceof io.netty.buffer.AbstractUnpooledSlicedByteBuf
            if (r1 == 0) goto L25
            r1 = r0
            io.netty.buffer.AbstractUnpooledSlicedByteBuf r1 = (io.netty.buffer.AbstractUnpooledSlicedByteBuf) r1
            r3 = 0
            int r1 = r1.idx(r3)
            int r1 = r1 + r2
            io.netty.buffer.ByteBuf r0 = r0.unwrap()
        L23:
            r4 = r1
            goto L41
        L25:
            boolean r1 = r0 instanceof io.netty.buffer.PooledSlicedByteBuf
            if (r1 == 0) goto L34
            r1 = r0
            io.netty.buffer.PooledSlicedByteBuf r1 = (io.netty.buffer.PooledSlicedByteBuf) r1
            int r1 = r1.adjustment
            int r1 = r1 + r2
            io.netty.buffer.ByteBuf r0 = r0.unwrap()
            goto L23
        L34:
            boolean r1 = r0 instanceof io.netty.buffer.DuplicatedByteBuf
            if (r1 != 0) goto L3c
            boolean r1 = r0 instanceof io.netty.buffer.PooledDuplicatedByteBuf
            if (r1 == 0) goto L40
        L3c:
            io.netty.buffer.ByteBuf r0 = r0.unwrap()
        L40:
            r4 = r2
        L41:
            int r1 = r10.capacity()
            if (r1 != r6) goto L49
            r7 = r10
            goto L4b
        L49:
            r1 = 0
            r7 = r1
        L4b:
            io.netty.buffer.CompositeByteBuf$Component r8 = new io.netty.buffer.CompositeByteBuf$Component
            java.nio.ByteOrder r1 = java.nio.ByteOrder.BIG_ENDIAN
            io.netty.buffer.ByteBuf r10 = r10.order(r1)
            io.netty.buffer.ByteBuf r3 = r0.order(r1)
            r0 = r8
            r1 = r10
            r5 = r11
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return r8
        L5e:
            io.netty.buffer.ByteBuf r0 = r0.unwrap()
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.buffer.CompositeByteBuf.newComponent(io.netty.buffer.ByteBuf, int):io.netty.buffer.CompositeByteBuf$Component");
    }

    private void removeComp(int i2) {
        removeCompRange(i2, i2 + 1);
    }

    private void removeCompRange(int i2, int i4) {
        if (i2 >= i4) {
            return;
        }
        int i5 = this.componentCount;
        if (i4 < i5) {
            Component[] componentArr = this.components;
            System.arraycopy(componentArr, i4, componentArr, i2, i5 - i4);
        }
        int i6 = (i5 - i4) + i2;
        for (int i7 = i6; i7 < i5; i7++) {
            this.components[i7] = null;
        }
        this.componentCount = i6;
    }

    private void shiftComps(int i2, int i4) {
        Component[] componentArr;
        int i5 = this.componentCount;
        int i6 = i5 + i4;
        Component[] componentArr2 = this.components;
        if (i6 > componentArr2.length) {
            int max = Math.max((i5 >> 1) + i5, i6);
            if (i2 == i5) {
                componentArr = (Component[]) Arrays.copyOf(this.components, max, Component[].class);
            } else {
                Component[] componentArr3 = new Component[max];
                if (i2 > 0) {
                    System.arraycopy(this.components, 0, componentArr3, 0, i2);
                }
                if (i2 < i5) {
                    System.arraycopy(this.components, i2, componentArr3, i4 + i2, i5 - i2);
                }
                componentArr = componentArr3;
            }
            this.components = componentArr;
        } else if (i2 < i5) {
            System.arraycopy(componentArr2, i2, componentArr2, i4 + i2, i5 - i2);
        }
        this.componentCount = i6;
    }

    private int toComponentIndex0(int i2) {
        int i4 = this.componentCount;
        int i5 = 0;
        if (i2 == 0) {
            for (int i6 = 0; i6 < i4; i6++) {
                if (this.components[i6].endOffset > 0) {
                    return i6;
                }
            }
        }
        if (i4 <= 2) {
            return (i4 == 1 || i2 < this.components[0].endOffset) ? 0 : 1;
        }
        while (i5 <= i4) {
            int i7 = (i5 + i4) >>> 1;
            Component component = this.components[i7];
            if (i2 >= component.endOffset) {
                i5 = i7 + 1;
            } else if (i2 >= component.offset) {
                return i7;
            } else {
                i4 = i7 - 1;
            }
        }
        throw new Error("should not reach here");
    }

    private void updateComponentOffsets(int i2) {
        int i4 = this.componentCount;
        if (i4 <= i2) {
            return;
        }
        int i5 = i2 > 0 ? this.components[i2 - 1].endOffset : 0;
        while (i2 < i4) {
            Component component = this.components[i2];
            component.reposition(i5);
            i5 = component.endOffset;
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public byte _getByte(int i2) {
        Component findComponent0 = findComponent0(i2);
        return findComponent0.buf.getByte(findComponent0.idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getInt(int i2) {
        Component findComponent0 = findComponent0(i2);
        if (i2 + 4 <= findComponent0.endOffset) {
            return findComponent0.buf.getInt(findComponent0.idx(i2));
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return (_getShort(i2 + 2) & UShort.MAX_VALUE) | ((_getShort(i2) & UShort.MAX_VALUE) << 16);
        }
        return ((_getShort(i2 + 2) & UShort.MAX_VALUE) << 16) | (_getShort(i2) & UShort.MAX_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getIntLE(int i2) {
        Component findComponent0 = findComponent0(i2);
        if (i2 + 4 <= findComponent0.endOffset) {
            return findComponent0.buf.getIntLE(findComponent0.idx(i2));
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return ((_getShortLE(i2 + 2) & UShort.MAX_VALUE) << 16) | (_getShortLE(i2) & UShort.MAX_VALUE);
        }
        return (_getShortLE(i2 + 2) & UShort.MAX_VALUE) | ((_getShortLE(i2) & UShort.MAX_VALUE) << 16);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLong(int i2) {
        Component findComponent0 = findComponent0(i2);
        if (i2 + 8 <= findComponent0.endOffset) {
            return findComponent0.buf.getLong(findComponent0.idx(i2));
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return ((_getInt(i2) & 4294967295L) << 32) | (4294967295L & _getInt(i2 + 4));
        }
        return (_getInt(i2) & 4294967295L) | ((4294967295L & _getInt(i2 + 4)) << 32);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLongLE(int i2) {
        Component findComponent0 = findComponent0(i2);
        if (i2 + 8 <= findComponent0.endOffset) {
            return findComponent0.buf.getLongLE(findComponent0.idx(i2));
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return (_getIntLE(i2) & 4294967295L) | ((4294967295L & _getIntLE(i2 + 4)) << 32);
        }
        return ((_getIntLE(i2) & 4294967295L) << 32) | (4294967295L & _getIntLE(i2 + 4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShort(int i2) {
        Component findComponent0 = findComponent0(i2);
        if (i2 + 2 <= findComponent0.endOffset) {
            return findComponent0.buf.getShort(findComponent0.idx(i2));
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return (short) ((_getByte(i2 + 1) & 255) | ((_getByte(i2) & 255) << 8));
        }
        return (short) (((_getByte(i2 + 1) & 255) << 8) | (_getByte(i2) & 255));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShortLE(int i2) {
        Component findComponent0 = findComponent0(i2);
        if (i2 + 2 <= findComponent0.endOffset) {
            return findComponent0.buf.getShortLE(findComponent0.idx(i2));
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return (short) (((_getByte(i2 + 1) & 255) << 8) | (_getByte(i2) & 255));
        }
        return (short) ((_getByte(i2 + 1) & 255) | ((_getByte(i2) & 255) << 8));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMedium(int i2) {
        Component findComponent0 = findComponent0(i2);
        if (i2 + 3 <= findComponent0.endOffset) {
            return findComponent0.buf.getUnsignedMedium(findComponent0.idx(i2));
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return (_getByte(i2 + 2) & 255) | ((_getShort(i2) & UShort.MAX_VALUE) << 8);
        }
        return ((_getByte(i2 + 2) & 255) << 16) | (_getShort(i2) & UShort.MAX_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMediumLE(int i2) {
        Component findComponent0 = findComponent0(i2);
        if (i2 + 3 <= findComponent0.endOffset) {
            return findComponent0.buf.getUnsignedMediumLE(findComponent0.idx(i2));
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return ((_getByte(i2 + 2) & 255) << 16) | (_getShortLE(i2) & UShort.MAX_VALUE);
        }
        return (_getByte(i2 + 2) & 255) | ((_getShortLE(i2) & UShort.MAX_VALUE) << 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setByte(int i2, int i4) {
        Component findComponent0 = findComponent0(i2);
        findComponent0.buf.setByte(findComponent0.idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setInt(int i2, int i4) {
        Component findComponent0 = findComponent0(i2);
        if (i2 + 4 <= findComponent0.endOffset) {
            findComponent0.buf.setInt(findComponent0.idx(i2), i4);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            _setShort(i2, (short) (i4 >>> 16));
            _setShort(i2 + 2, (short) i4);
        } else {
            _setShort(i2, (short) i4);
            _setShort(i2 + 2, (short) (i4 >>> 16));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setIntLE(int i2, int i4) {
        Component findComponent0 = findComponent0(i2);
        if (i2 + 4 <= findComponent0.endOffset) {
            findComponent0.buf.setIntLE(findComponent0.idx(i2), i4);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            _setShortLE(i2, (short) i4);
            _setShortLE(i2 + 2, (short) (i4 >>> 16));
        } else {
            _setShortLE(i2, (short) (i4 >>> 16));
            _setShortLE(i2 + 2, (short) i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setLong(int i2, long j4) {
        Component findComponent0 = findComponent0(i2);
        if (i2 + 8 <= findComponent0.endOffset) {
            findComponent0.buf.setLong(findComponent0.idx(i2), j4);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            _setInt(i2, (int) (j4 >>> 32));
            _setInt(i2 + 4, (int) j4);
        } else {
            _setInt(i2, (int) j4);
            _setInt(i2 + 4, (int) (j4 >>> 32));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setLongLE(int i2, long j4) {
        Component findComponent0 = findComponent0(i2);
        if (i2 + 8 <= findComponent0.endOffset) {
            findComponent0.buf.setLongLE(findComponent0.idx(i2), j4);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            _setIntLE(i2, (int) j4);
            _setIntLE(i2 + 4, (int) (j4 >>> 32));
        } else {
            _setIntLE(i2, (int) (j4 >>> 32));
            _setIntLE(i2 + 4, (int) j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setMedium(int i2, int i4) {
        Component findComponent0 = findComponent0(i2);
        if (i2 + 3 <= findComponent0.endOffset) {
            findComponent0.buf.setMedium(findComponent0.idx(i2), i4);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            _setShort(i2, (short) (i4 >> 8));
            _setByte(i2 + 2, (byte) i4);
        } else {
            _setShort(i2, (short) i4);
            _setByte(i2 + 2, (byte) (i4 >>> 16));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setMediumLE(int i2, int i4) {
        Component findComponent0 = findComponent0(i2);
        if (i2 + 3 <= findComponent0.endOffset) {
            findComponent0.buf.setMediumLE(findComponent0.idx(i2), i4);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            _setShortLE(i2, (short) i4);
            _setByte(i2 + 2, (byte) (i4 >>> 16));
        } else {
            _setShortLE(i2, (short) (i4 >> 8));
            _setByte(i2 + 2, (byte) i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setShort(int i2, int i4) {
        Component findComponent0 = findComponent0(i2);
        if (i2 + 2 <= findComponent0.endOffset) {
            findComponent0.buf.setShort(findComponent0.idx(i2), i4);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            _setByte(i2, (byte) (i4 >>> 8));
            _setByte(i2 + 1, (byte) i4);
        } else {
            _setByte(i2, (byte) i4);
            _setByte(i2 + 1, (byte) (i4 >>> 8));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setShortLE(int i2, int i4) {
        Component findComponent0 = findComponent0(i2);
        if (i2 + 2 <= findComponent0.endOffset) {
            findComponent0.buf.setShortLE(findComponent0.idx(i2), i4);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            _setByte(i2, (byte) i4);
            _setByte(i2 + 1, (byte) (i4 >>> 8));
        } else {
            _setByte(i2, (byte) (i4 >>> 8));
            _setByte(i2 + 1, (byte) i4);
        }
    }

    public CompositeByteBuf addComponent(ByteBuf byteBuf) {
        return addComponent(false, byteBuf);
    }

    public CompositeByteBuf addComponents(ByteBuf... byteBufArr) {
        return addComponents(false, byteBufArr);
    }

    public CompositeByteBuf addFlattenedComponents(boolean z3, ByteBuf byteBuf) {
        int i2;
        Component[] componentArr;
        int i4;
        ObjectUtil.checkNotNull(byteBuf, "buffer");
        int readerIndex = byteBuf.readerIndex();
        int writerIndex = byteBuf.writerIndex();
        if (readerIndex == writerIndex) {
            byteBuf.release();
            return this;
        } else if (!(byteBuf instanceof CompositeByteBuf)) {
            addComponent0(z3, this.componentCount, byteBuf);
            consolidateIfNeeded();
            return this;
        } else {
            CompositeByteBuf compositeByteBuf = (CompositeByteBuf) byteBuf;
            int i5 = writerIndex - readerIndex;
            compositeByteBuf.checkIndex(readerIndex, i5);
            Component[] componentArr2 = compositeByteBuf.components;
            int i6 = this.componentCount;
            int i7 = this.writerIndex;
            try {
                int componentIndex0 = compositeByteBuf.toComponentIndex0(readerIndex);
                int capacity = capacity();
                while (true) {
                    Component component = componentArr2[componentIndex0];
                    int max = Math.max(readerIndex, component.offset);
                    int min = Math.min(writerIndex, component.endOffset);
                    int i8 = min - max;
                    if (i8 > 0) {
                        i2 = readerIndex;
                        componentArr = componentArr2;
                        i4 = min;
                        addComp(this.componentCount, new Component(component.srcBuf.retain(), component.srcIdx(max), component.buf, component.idx(max), capacity, i8, null));
                    } else {
                        i2 = readerIndex;
                        componentArr = componentArr2;
                        i4 = min;
                    }
                    if (writerIndex == i4) {
                        break;
                    }
                    capacity += i8;
                    componentIndex0++;
                    readerIndex = i2;
                    componentArr2 = componentArr;
                }
                if (z3) {
                    this.writerIndex = i5 + i7;
                }
                consolidateIfNeeded();
                byteBuf.release();
                return this;
            } catch (Throwable th) {
                if (z3) {
                    this.writerIndex = i7;
                }
                for (int i9 = this.componentCount - 1; i9 >= i6; i9--) {
                    this.components[i9].free();
                    removeComp(i9);
                }
                throw th;
            }
        }
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBufAllocator alloc() {
        return this.alloc;
    }

    @Override // io.netty.buffer.ByteBuf
    public byte[] array() {
        int i2 = this.componentCount;
        if (i2 != 0) {
            if (i2 == 1) {
                return this.components[0].buf.array();
            }
            throw new UnsupportedOperationException();
        }
        return EmptyArrays.EMPTY_BYTES;
    }

    @Override // io.netty.buffer.ByteBuf
    public int arrayOffset() {
        int i2 = this.componentCount;
        if (i2 != 0) {
            if (i2 == 1) {
                Component component = this.components[0];
                return component.idx(component.buf.arrayOffset());
            }
            throw new UnsupportedOperationException();
        }
        return 0;
    }

    public ByteBuf component(int i2) {
        checkComponentIndex(i2);
        return this.components[i2].duplicate();
    }

    public ByteBuf componentAtOffset(int i2) {
        return findComponent(i2).duplicate();
    }

    public CompositeByteBuf consolidate() {
        ensureAccessible();
        consolidate0(0, this.componentCount);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf copy(int i2, int i4) {
        checkIndex(i2, i4);
        ByteBuf allocBuffer = allocBuffer(i4);
        if (i4 != 0) {
            copyTo(i2, i4, toComponentIndex0(i2), allocBuffer);
        }
        return allocBuffer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractReferenceCountedByteBuf
    public void deallocate() {
        if (this.freed) {
            return;
        }
        this.freed = true;
        int i2 = this.componentCount;
        for (int i4 = 0; i4 < i2; i4++) {
            this.components[i4].free();
        }
    }

    public List<ByteBuf> decompose(int i2, int i4) {
        checkIndex(i2, i4);
        if (i4 == 0) {
            return Collections.emptyList();
        }
        int componentIndex0 = toComponentIndex0(i2);
        Component component = this.components[componentIndex0];
        ByteBuf slice = component.buf.slice(component.idx(i2), Math.min(component.endOffset - i2, i4));
        int readableBytes = i4 - slice.readableBytes();
        if (readableBytes == 0) {
            return Collections.singletonList(slice);
        }
        ArrayList arrayList = new ArrayList(this.componentCount - componentIndex0);
        arrayList.add(slice);
        do {
            componentIndex0++;
            Component component2 = this.components[componentIndex0];
            ByteBuf slice2 = component2.buf.slice(component2.idx(component2.offset), Math.min(component2.length(), readableBytes));
            readableBytes -= slice2.readableBytes();
            arrayList.add(slice2);
        } while (readableBytes > 0);
        return arrayList;
    }

    public CompositeByteBuf discardReadComponents() {
        ensureAccessible();
        int readerIndex = readerIndex();
        if (readerIndex == 0) {
            return this;
        }
        int writerIndex = writerIndex();
        if (readerIndex == writerIndex && writerIndex == capacity()) {
            int i2 = this.componentCount;
            for (int i4 = 0; i4 < i2; i4++) {
                this.components[i4].free();
            }
            this.lastAccessed = null;
            clearComps();
            setIndex(0, 0);
            adjustMarkers(readerIndex);
            return this;
        }
        int i5 = this.componentCount;
        Component component = null;
        int i6 = 0;
        while (i6 < i5) {
            component = this.components[i6];
            if (component.endOffset > readerIndex) {
                break;
            }
            component.free();
            i6++;
        }
        if (i6 == 0) {
            return this;
        }
        Component component2 = this.lastAccessed;
        if (component2 != null && component2.endOffset <= readerIndex) {
            this.lastAccessed = null;
        }
        removeCompRange(0, i6);
        int i7 = component.offset;
        updateComponentOffsets(0);
        setIndex(readerIndex - i7, writerIndex - i7);
        adjustMarkers(i7);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf
    protected int forEachByteAsc0(int i2, int i4, ByteProcessor byteProcessor) throws Exception {
        int forEachByte;
        if (i4 <= i2) {
            return -1;
        }
        int componentIndex0 = toComponentIndex0(i2);
        int i5 = i4 - i2;
        while (i5 > 0) {
            Component component = this.components[componentIndex0];
            if (component.offset != component.endOffset) {
                ByteBuf byteBuf = component.buf;
                int idx = component.idx(i2);
                int min = Math.min(i5, component.endOffset - i2);
                if (byteBuf instanceof AbstractByteBuf) {
                    forEachByte = ((AbstractByteBuf) byteBuf).forEachByteAsc0(idx, idx + min, byteProcessor);
                } else {
                    forEachByte = byteBuf.forEachByte(idx, min, byteProcessor);
                }
                if (forEachByte != -1) {
                    return forEachByte - component.adjustment;
                }
                i2 += min;
                i5 -= min;
            }
            componentIndex0++;
        }
        return -1;
    }

    @Override // io.netty.buffer.AbstractByteBuf
    protected int forEachByteDesc0(int i2, int i4, ByteProcessor byteProcessor) throws Exception {
        int forEachByteDesc;
        if (i4 > i2) {
            return -1;
        }
        int componentIndex0 = toComponentIndex0(i2);
        int i5 = (i2 + 1) - i4;
        while (i5 > 0) {
            Component component = this.components[componentIndex0];
            if (component.offset != component.endOffset) {
                ByteBuf byteBuf = component.buf;
                int idx = component.idx(i5 + i4);
                int min = Math.min(i5, idx);
                int i6 = idx - min;
                if (byteBuf instanceof AbstractByteBuf) {
                    forEachByteDesc = ((AbstractByteBuf) byteBuf).forEachByteDesc0(idx - 1, i6, byteProcessor);
                } else {
                    forEachByteDesc = byteBuf.forEachByteDesc(i6, min, byteProcessor);
                }
                if (forEachByteDesc != -1) {
                    return forEachByteDesc - component.adjustment;
                }
                i5 -= min;
            }
            componentIndex0--;
        }
        return -1;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public byte getByte(int i2) {
        Component findComponent = findComponent(i2);
        return findComponent.buf.getByte(findComponent.idx(i2));
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasArray() {
        int i2 = this.componentCount;
        if (i2 != 0) {
            if (i2 != 1) {
                return false;
            }
            return this.components[0].buf.hasArray();
        }
        return true;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasMemoryAddress() {
        int i2 = this.componentCount;
        if (i2 != 0) {
            if (i2 != 1) {
                return false;
            }
            return this.components[0].buf.hasMemoryAddress();
        }
        return Unpooled.EMPTY_BUFFER.hasMemoryAddress();
    }

    public ByteBuf internalComponent(int i2) {
        checkComponentIndex(i2);
        return this.components[i2].slice();
    }

    public ByteBuf internalComponentAtOffset(int i2) {
        return findComponent(i2).slice();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer internalNioBuffer(int i2, int i4) {
        int i5 = this.componentCount;
        if (i5 != 0) {
            if (i5 == 1) {
                return this.components[0].internalNioBuffer(i2, i4);
            }
            throw new UnsupportedOperationException();
        }
        return EMPTY_NIO_BUFFER;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.buffer.ByteBuf
    public boolean isAccessible() {
        return !this.freed;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isDirect() {
        int i2 = this.componentCount;
        if (i2 == 0) {
            return false;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            if (!this.components[i4].buf.isDirect()) {
                return false;
            }
        }
        return true;
    }

    public Iterator<ByteBuf> iterator() {
        ensureAccessible();
        return this.componentCount == 0 ? EMPTY_ITERATOR : new CompositeByteBufIterator();
    }

    public int maxNumComponents() {
        return this.maxNumComponents;
    }

    @Override // io.netty.buffer.ByteBuf
    public long memoryAddress() {
        int i2 = this.componentCount;
        if (i2 != 0) {
            if (i2 == 1) {
                Component component = this.components[0];
                return component.buf.memoryAddress() + component.adjustment;
            }
            throw new UnsupportedOperationException();
        }
        return Unpooled.EMPTY_BUFFER.memoryAddress();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer(int i2, int i4) {
        checkIndex(i2, i4);
        int i5 = this.componentCount;
        if (i5 != 0) {
            if (i5 == 1) {
                Component component = this.components[0];
                ByteBuf byteBuf = component.buf;
                if (byteBuf.nioBufferCount() == 1) {
                    return byteBuf.nioBuffer(component.idx(i2), i4);
                }
            }
            ByteBuffer[] nioBuffers = nioBuffers(i2, i4);
            if (nioBuffers.length == 1) {
                return nioBuffers[0];
            }
            ByteBuffer order = ByteBuffer.allocate(i4).order(order());
            for (ByteBuffer byteBuffer : nioBuffers) {
                order.put(byteBuffer);
            }
            order.flip();
            return order;
        }
        return EMPTY_NIO_BUFFER;
    }

    @Override // io.netty.buffer.ByteBuf
    public int nioBufferCount() {
        int i2 = this.componentCount;
        if (i2 != 0) {
            if (i2 != 1) {
                int i4 = 0;
                for (int i5 = 0; i5 < i2; i5++) {
                    i4 += this.components[i5].buf.nioBufferCount();
                }
                return i4;
            }
            return this.components[0].buf.nioBufferCount();
        }
        return 1;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers(int i2, int i4) {
        checkIndex(i2, i4);
        if (i4 == 0) {
            return new ByteBuffer[]{EMPTY_NIO_BUFFER};
        }
        RecyclableArrayList newInstance = RecyclableArrayList.newInstance(this.componentCount);
        try {
            int componentIndex0 = toComponentIndex0(i2);
            while (i4 > 0) {
                Component component = this.components[componentIndex0];
                ByteBuf byteBuf = component.buf;
                int min = Math.min(i4, component.endOffset - i2);
                int nioBufferCount = byteBuf.nioBufferCount();
                if (nioBufferCount == 0) {
                    throw new UnsupportedOperationException();
                }
                if (nioBufferCount != 1) {
                    Collections.addAll(newInstance, byteBuf.nioBuffers(component.idx(i2), min));
                } else {
                    newInstance.add(byteBuf.nioBuffer(component.idx(i2), min));
                }
                i2 += min;
                i4 -= min;
                componentIndex0++;
            }
            return (ByteBuffer[]) newInstance.toArray(new ByteBuffer[0]);
        } finally {
            newInstance.recycle();
        }
    }

    public int numComponents() {
        return this.componentCount;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteOrder order() {
        return ByteOrder.BIG_ENDIAN;
    }

    public CompositeByteBuf removeComponent(int i2) {
        checkComponentIndex(i2);
        Component component = this.components[i2];
        if (this.lastAccessed == component) {
            this.lastAccessed = null;
        }
        component.free();
        removeComp(i2);
        if (component.length() > 0) {
            updateComponentOffsets(i2);
        }
        return this;
    }

    public CompositeByteBuf removeComponents(int i2, int i4) {
        checkComponentIndex(i2, i4);
        if (i4 == 0) {
            return this;
        }
        int i5 = i4 + i2;
        boolean z3 = false;
        for (int i6 = i2; i6 < i5; i6++) {
            Component component = this.components[i6];
            if (component.length() > 0) {
                z3 = true;
            }
            if (this.lastAccessed == component) {
                this.lastAccessed = null;
            }
            component.free();
        }
        removeCompRange(i2, i5);
        if (z3) {
            updateComponentOffsets(i2);
        }
        return this;
    }

    public int toByteIndex(int i2) {
        checkComponentIndex(i2);
        return this.components[i2].offset;
    }

    public int toComponentIndex(int i2) {
        checkIndex(i2);
        return toComponentIndex0(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public String toString() {
        String abstractByteBuf = super.toString();
        String substring = abstractByteBuf.substring(0, abstractByteBuf.length() - 1);
        return substring + ", components=" + this.componentCount + ')';
    }

    @Override // io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public CompositeByteBuf touch() {
        return this;
    }

    @Override // io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public CompositeByteBuf touch(Object obj) {
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf unwrap() {
        return null;
    }

    public CompositeByteBuf addComponent(int i2, ByteBuf byteBuf) {
        return addComponent(false, i2, byteBuf);
    }

    public CompositeByteBuf addComponents(Iterable<ByteBuf> iterable) {
        return addComponents(false, iterable);
    }

    @Override // io.netty.buffer.ByteBuf
    public int capacity() {
        int i2 = this.componentCount;
        if (i2 > 0) {
            return this.components[i2 - 1].endOffset;
        }
        return 0;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf clear() {
        super.clear();
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf discardReadBytes() {
        ensureAccessible();
        int readerIndex = readerIndex();
        if (readerIndex == 0) {
            return this;
        }
        int writerIndex = writerIndex();
        if (readerIndex == writerIndex && writerIndex == capacity()) {
            int i2 = this.componentCount;
            for (int i4 = 0; i4 < i2; i4++) {
                this.components[i4].free();
            }
            this.lastAccessed = null;
            clearComps();
            setIndex(0, 0);
            adjustMarkers(readerIndex);
            return this;
        }
        int i5 = this.componentCount;
        Component component = null;
        int i6 = 0;
        while (i6 < i5) {
            component = this.components[i6];
            if (component.endOffset > readerIndex) {
                break;
            }
            component.free();
            i6++;
        }
        int i7 = readerIndex - component.offset;
        component.offset = 0;
        component.endOffset -= readerIndex;
        component.srcAdjustment += readerIndex;
        component.adjustment += readerIndex;
        ByteBuf byteBuf = component.slice;
        if (byteBuf != null) {
            component.slice = byteBuf.slice(i7, component.length());
        }
        Component component2 = this.lastAccessed;
        if (component2 != null && component2.endOffset <= readerIndex) {
            this.lastAccessed = null;
        }
        removeCompRange(0, i6);
        updateComponentOffsets(0);
        setIndex(0, writerIndex - readerIndex);
        adjustMarkers(readerIndex);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf discardSomeReadBytes() {
        return discardReadComponents();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf ensureWritable(int i2) {
        super.ensureWritable(i2);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf markReaderIndex() {
        super.markReaderIndex();
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf markWriterIndex() {
        super.markWriterIndex();
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readerIndex(int i2) {
        super.readerIndex(i2);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf resetReaderIndex() {
        super.resetReaderIndex();
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf resetWriterIndex() {
        super.resetWriterIndex();
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBoolean(int i2, boolean z3) {
        return setByte(i2, z3 ? 1 : 0);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setByte(int i2, int i4) {
        Component findComponent = findComponent(i2);
        findComponent.buf.setByte(findComponent.idx(i2), i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setChar(int i2, int i4) {
        return setShort(i2, i4);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setDouble(int i2, double d4) {
        return setLong(i2, Double.doubleToRawLongBits(d4));
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setFloat(int i2, float f4) {
        return setInt(i2, Float.floatToRawIntBits(f4));
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setIndex(int i2, int i4) {
        super.setIndex(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setInt(int i2, int i4) {
        checkIndex(i2, 4);
        _setInt(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setLong(int i2, long j4) {
        checkIndex(i2, 8);
        _setLong(i2, j4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setMedium(int i2, int i4) {
        checkIndex(i2, 3);
        _setMedium(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setShort(int i2, int i4) {
        checkIndex(i2, 2);
        _setShort(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setZero(int i2, int i4) {
        super.setZero(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf skipBytes(int i2) {
        super.skipBytes(i2);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBoolean(boolean z3) {
        writeByte(z3 ? 1 : 0);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeByte(int i2) {
        ensureWritable0(1);
        int i4 = this.writerIndex;
        this.writerIndex = i4 + 1;
        _setByte(i4, i2);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeChar(int i2) {
        super.writeShort(i2);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeDouble(double d4) {
        super.writeLong(Double.doubleToRawLongBits(d4));
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeFloat(float f4) {
        super.writeInt(Float.floatToRawIntBits(f4));
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeInt(int i2) {
        super.writeInt(i2);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeLong(long j4) {
        super.writeLong(j4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeMedium(int i2) {
        super.writeMedium(i2);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeShort(int i2) {
        super.writeShort(i2);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeZero(int i2) {
        super.writeZero(i2);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writerIndex(int i2) {
        super.writerIndex(i2);
        return this;
    }

    public CompositeByteBuf addComponent(boolean z3, ByteBuf byteBuf) {
        return addComponent(z3, this.componentCount, byteBuf);
    }

    public CompositeByteBuf addComponents(boolean z3, ByteBuf... byteBufArr) {
        ObjectUtil.checkNotNull(byteBufArr, "buffers");
        addComponents0(z3, this.componentCount, byteBufArr, 0);
        consolidateIfNeeded();
        return this;
    }

    public CompositeByteBuf consolidate(int i2, int i4) {
        checkComponentIndex(i2, i4);
        consolidate0(i2, i4);
        return this;
    }

    public CompositeByteBuf addComponent(boolean z3, int i2, ByteBuf byteBuf) {
        ObjectUtil.checkNotNull(byteBuf, "buffer");
        addComponent0(z3, i2, byteBuf);
        consolidateIfNeeded();
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public CompositeByteBuf capacity(int i2) {
        checkNewCapacity(i2);
        int i4 = this.componentCount;
        int capacity = capacity();
        if (i2 > capacity) {
            int i5 = i2 - capacity;
            addComponent0(false, i4, allocBuffer(i5).setIndex(0, i5));
            if (this.componentCount >= this.maxNumComponents) {
                consolidateIfNeeded();
            }
        } else if (i2 < capacity) {
            this.lastAccessed = null;
            int i6 = i4 - 1;
            int i7 = capacity - i2;
            while (true) {
                if (i6 < 0) {
                    break;
                }
                Component component = this.components[i6];
                int length = component.length();
                if (i7 < length) {
                    component.endOffset -= i7;
                    ByteBuf byteBuf = component.slice;
                    if (byteBuf != null) {
                        component.slice = byteBuf.slice(0, component.length());
                    }
                } else {
                    component.free();
                    i7 -= length;
                    i6--;
                }
            }
            removeCompRange(i6 + 1, i4);
            if (readerIndex() > i2) {
                setIndex0(i2, i2);
            } else if (this.writerIndex > i2) {
                this.writerIndex = i2;
            }
        }
        return this;
    }

    @Override // io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public CompositeByteBuf retain(int i2) {
        super.retain(i2);
        return this;
    }

    private void checkComponentIndex(int i2, int i4) {
        ensureAccessible();
        if (i2 < 0 || i2 + i4 > this.componentCount) {
            throw new IndexOutOfBoundsException(String.format("cIndex: %d, numComponents: %d (expected: cIndex >= 0 && cIndex + numComponents <= totalNumComponents(%d))", Integer.valueOf(i2), Integer.valueOf(i4), Integer.valueOf(this.componentCount)));
        }
    }

    public CompositeByteBuf addComponents(boolean z3, Iterable<ByteBuf> iterable) {
        return addComponents(z3, this.componentCount, iterable);
    }

    @Override // io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public CompositeByteBuf retain() {
        super.retain();
        return this;
    }

    public CompositeByteBuf(ByteBufAllocator byteBufAllocator, boolean z3, int i2) {
        this(byteBufAllocator, z3, i2, 0);
    }

    public CompositeByteBuf addComponents(int i2, ByteBuf... byteBufArr) {
        ObjectUtil.checkNotNull(byteBufArr, "buffers");
        addComponents0(false, i2, byteBufArr, 0);
        consolidateIfNeeded();
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, byte[] bArr, int i4, int i5) {
        checkSrcIndex(i2, i5, i4, bArr.length);
        if (i5 == 0) {
            return this;
        }
        int componentIndex0 = toComponentIndex0(i2);
        while (i5 > 0) {
            Component component = this.components[componentIndex0];
            int min = Math.min(i5, component.endOffset - i2);
            component.buf.setBytes(component.idx(i2), bArr, i4, min);
            i2 += min;
            i4 += min;
            i5 -= min;
            componentIndex0++;
        }
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(ByteBuf byteBuf) {
        super.writeBytes(byteBuf, byteBuf.readableBytes());
        return this;
    }

    public CompositeByteBuf(ByteBufAllocator byteBufAllocator, boolean z3, int i2, ByteBuf... byteBufArr) {
        this(byteBufAllocator, z3, i2, byteBufArr, 0);
    }

    @Override // io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, byte[] bArr, int i4, int i5) {
        checkDstIndex(i2, i5, i4, bArr.length);
        if (i5 == 0) {
            return this;
        }
        int componentIndex0 = toComponentIndex0(i2);
        while (i5 > 0) {
            Component component = this.components[componentIndex0];
            int min = Math.min(i5, component.endOffset - i2);
            component.buf.getBytes(component.idx(i2), bArr, i4, min);
            i2 += min;
            i4 += min;
            i5 -= min;
            componentIndex0++;
        }
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(ByteBuf byteBuf) {
        super.readBytes(byteBuf, byteBuf.writableBytes());
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(ByteBuf byteBuf, int i2) {
        super.writeBytes(byteBuf, i2);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompositeByteBuf(ByteBufAllocator byteBufAllocator, boolean z3, int i2, ByteBuf[] byteBufArr, int i4) {
        this(byteBufAllocator, z3, i2, byteBufArr.length - i4);
        addComponents0(false, 0, byteBufArr, i4);
        consolidateIfNeeded();
        setIndex0(0, capacity());
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(ByteBuf byteBuf, int i2) {
        super.readBytes(byteBuf, i2);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(ByteBuf byteBuf, int i2, int i4) {
        super.writeBytes(byteBuf, i2, i4);
        return this;
    }

    public CompositeByteBuf addComponents(int i2, Iterable<ByteBuf> iterable) {
        return addComponents(false, i2, iterable);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(ByteBuf byteBuf, int i2, int i4) {
        super.readBytes(byteBuf, i2, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(byte[] bArr) {
        super.writeBytes(bArr, 0, bArr.length);
        return this;
    }

    private CompositeByteBuf addComponents(boolean z3, int i2, Iterable<ByteBuf> iterable) {
        ByteBuf next;
        if (iterable instanceof ByteBuf) {
            return addComponent(z3, i2, (ByteBuf) iterable);
        }
        ObjectUtil.checkNotNull(iterable, "buffers");
        Iterator<ByteBuf> it2 = iterable.iterator();
        try {
            checkComponentIndex(i2);
            while (it2.hasNext() && (next = it2.next()) != null) {
                i2 = Math.min(addComponent0(z3, i2, next) + 1, this.componentCount);
            }
            consolidateIfNeeded();
            return this;
        } finally {
            while (it2.hasNext()) {
                ReferenceCountUtil.safeRelease(it2.next());
            }
        }
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(byte[] bArr) {
        super.readBytes(bArr, 0, bArr.length);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(byte[] bArr, int i2, int i4) {
        super.writeBytes(bArr, i2, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(byte[] bArr, int i2, int i4) {
        super.readBytes(bArr, i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int remaining = byteBuffer.remaining();
        checkIndex(i2, remaining);
        if (remaining == 0) {
            return this;
        }
        int componentIndex0 = toComponentIndex0(i2);
        while (remaining > 0) {
            try {
                Component component = this.components[componentIndex0];
                int min = Math.min(remaining, component.endOffset - i2);
                byteBuffer.limit(byteBuffer.position() + min);
                component.buf.setBytes(component.idx(i2), byteBuffer);
                i2 += min;
                remaining -= min;
                componentIndex0++;
            } finally {
                byteBuffer.limit(limit);
            }
        }
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(ByteBuffer byteBuffer) {
        super.writeBytes(byteBuffer);
        return this;
    }

    public CompositeByteBuf(ByteBufAllocator byteBufAllocator, boolean z3, int i2, Iterable<ByteBuf> iterable) {
        this(byteBufAllocator, z3, i2, iterable instanceof Collection ? ((Collection) iterable).size() : 0);
        addComponents(false, 0, iterable);
        setIndex(0, capacity());
    }

    @Override // io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int remaining = byteBuffer.remaining();
        checkIndex(i2, remaining);
        if (remaining == 0) {
            return this;
        }
        int componentIndex0 = toComponentIndex0(i2);
        while (remaining > 0) {
            try {
                Component component = this.components[componentIndex0];
                int min = Math.min(remaining, component.endOffset - i2);
                byteBuffer.limit(byteBuffer.position() + min);
                component.buf.getBytes(component.idx(i2), byteBuffer);
                i2 += min;
                remaining -= min;
                componentIndex0++;
            } finally {
                byteBuffer.limit(limit);
            }
        }
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(ByteBuffer byteBuffer) {
        super.readBytes(byteBuffer);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(OutputStream outputStream, int i2) throws IOException {
        super.readBytes(outputStream, i2);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers() {
        return nioBuffers(readerIndex(), readableBytes());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> CompositeByteBuf(ByteBufAllocator byteBufAllocator, boolean z3, int i2, ByteWrapper<T> byteWrapper, T[] tArr, int i4) {
        this(byteBufAllocator, z3, i2, tArr.length - i4);
        addComponents0(false, 0, byteWrapper, tArr, i4);
        consolidateIfNeeded();
        setIndex(0, capacity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompositeByteBuf(ByteBufAllocator byteBufAllocator) {
        super(Integer.MAX_VALUE);
        this.alloc = byteBufAllocator;
        this.direct = false;
        this.maxNumComponents = 0;
        this.components = null;
    }

    private <T> int addComponents0(boolean z3, int i2, ByteWrapper<T> byteWrapper, T[] tArr, int i4) {
        int i5;
        checkComponentIndex(i2);
        int length = tArr.length;
        while (i4 < length) {
            T t3 = tArr[i4];
            if (t3 == null) {
                break;
            }
            if (!byteWrapper.isEmpty(t3) && (i2 = addComponent0(z3, i2, byteWrapper.wrap(t3)) + 1) > (i5 = this.componentCount)) {
                i2 = i5;
            }
            i4++;
        }
        return i2;
    }

    @Override // io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        checkSrcIndex(i2, i5, i4, byteBuf.capacity());
        if (i5 == 0) {
            return this;
        }
        int componentIndex0 = toComponentIndex0(i2);
        while (i5 > 0) {
            Component component = this.components[componentIndex0];
            int min = Math.min(i5, component.endOffset - i2);
            component.buf.setBytes(component.idx(i2), byteBuf, i4, min);
            i2 += min;
            i4 += min;
            i5 -= min;
            componentIndex0++;
        }
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        checkDstIndex(i2, i5, i4, byteBuf.capacity());
        if (i5 == 0) {
            return this;
        }
        int componentIndex0 = toComponentIndex0(i2);
        while (i5 > 0) {
            Component component = this.components[componentIndex0];
            int min = Math.min(i5, component.endOffset - i2);
            component.buf.getBytes(component.idx(i2), byteBuf, i4, min);
            i2 += min;
            i4 += min;
            i5 -= min;
            componentIndex0++;
        }
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0039 A[EDGE_INSN: B:20:0x0039->B:19:0x0039 ?: BREAK  , SYNTHETIC] */
    @Override // io.netty.buffer.ByteBuf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int setBytes(int r6, java.io.InputStream r7, int r8) throws java.io.IOException {
        /*
            r5 = this;
            r5.checkIndex(r6, r8)
            if (r8 != 0) goto Lc
            byte[] r6 = io.netty.util.internal.EmptyArrays.EMPTY_BYTES
            int r6 = r7.read(r6)
            return r6
        Lc:
            int r0 = r5.toComponentIndex0(r6)
            r1 = 0
        L11:
            io.netty.buffer.CompositeByteBuf$Component[] r2 = r5.components
            r2 = r2[r0]
            int r3 = r2.endOffset
            int r3 = r3 - r6
            int r3 = java.lang.Math.min(r8, r3)
            if (r3 != 0) goto L21
        L1e:
            int r0 = r0 + 1
            goto L37
        L21:
            io.netty.buffer.ByteBuf r4 = r2.buf
            int r2 = r2.idx(r6)
            int r2 = r4.setBytes(r2, r7, r3)
            if (r2 >= 0) goto L31
            if (r1 != 0) goto L39
            r6 = -1
            return r6
        L31:
            int r6 = r6 + r2
            int r8 = r8 - r2
            int r1 = r1 + r2
            if (r2 != r3) goto L37
            goto L1e
        L37:
            if (r8 > 0) goto L11
        L39:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.buffer.CompositeByteBuf.setBytes(int, java.io.InputStream, int):int");
    }

    @Override // io.netty.buffer.ByteBuf
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        if (nioBufferCount() == 1) {
            return gatheringByteChannel.write(internalNioBuffer(i2, i4));
        }
        long write = gatheringByteChannel.write(nioBuffers(i2, i4));
        if (write > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) write;
    }

    @Override // io.netty.buffer.ByteBuf
    public int getBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        if (nioBufferCount() == 1) {
            return fileChannel.write(internalNioBuffer(i2, i4), j4);
        }
        long j5 = 0;
        for (ByteBuffer byteBuffer : nioBuffers(i2, i4)) {
            j5 += fileChannel.write(byteBuffer, j4 + j5);
        }
        if (j5 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j5;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x003c A[EDGE_INSN: B:22:0x003c->B:21:0x003c ?: BREAK  , SYNTHETIC] */
    @Override // io.netty.buffer.ByteBuf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int setBytes(int r6, java.nio.channels.ScatteringByteChannel r7, int r8) throws java.io.IOException {
        /*
            r5 = this;
            r5.checkIndex(r6, r8)
            if (r8 != 0) goto Lc
            java.nio.ByteBuffer r6 = io.netty.buffer.CompositeByteBuf.EMPTY_NIO_BUFFER
            int r6 = r7.read(r6)
            return r6
        Lc:
            int r0 = r5.toComponentIndex0(r6)
            r1 = 0
        L11:
            io.netty.buffer.CompositeByteBuf$Component[] r2 = r5.components
            r2 = r2[r0]
            int r3 = r2.endOffset
            int r3 = r3 - r6
            int r3 = java.lang.Math.min(r8, r3)
            if (r3 != 0) goto L21
        L1e:
            int r0 = r0 + 1
            goto L3a
        L21:
            io.netty.buffer.ByteBuf r4 = r2.buf
            int r2 = r2.idx(r6)
            int r2 = r4.setBytes(r2, r7, r3)
            if (r2 != 0) goto L2e
            goto L3c
        L2e:
            if (r2 >= 0) goto L34
            if (r1 != 0) goto L3c
            r6 = -1
            return r6
        L34:
            int r6 = r6 + r2
            int r8 = r8 - r2
            int r1 = r1 + r2
            if (r2 != r3) goto L3a
            goto L1e
        L3a:
            if (r8 > 0) goto L11
        L3c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.buffer.CompositeByteBuf.setBytes(int, java.nio.channels.ScatteringByteChannel, int):int");
    }

    @Override // io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, OutputStream outputStream, int i4) throws IOException {
        checkIndex(i2, i4);
        if (i4 == 0) {
            return this;
        }
        int componentIndex0 = toComponentIndex0(i2);
        while (i4 > 0) {
            Component component = this.components[componentIndex0];
            int min = Math.min(i4, component.endOffset - i2);
            component.buf.getBytes(component.idx(i2), outputStream, min);
            i2 += min;
            i4 -= min;
            componentIndex0++;
        }
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0042 A[EDGE_INSN: B:22:0x0042->B:21:0x0042 ?: BREAK  , SYNTHETIC] */
    @Override // io.netty.buffer.ByteBuf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int setBytes(int r11, java.nio.channels.FileChannel r12, long r13, int r15) throws java.io.IOException {
        /*
            r10 = this;
            r10.checkIndex(r11, r15)
            if (r15 != 0) goto Lc
            java.nio.ByteBuffer r11 = io.netty.buffer.CompositeByteBuf.EMPTY_NIO_BUFFER
            int r11 = r12.read(r11, r13)
            return r11
        Lc:
            int r0 = r10.toComponentIndex0(r11)
            r1 = 0
        L11:
            io.netty.buffer.CompositeByteBuf$Component[] r2 = r10.components
            r2 = r2[r0]
            int r3 = r2.endOffset
            int r3 = r3 - r11
            int r3 = java.lang.Math.min(r15, r3)
            if (r3 != 0) goto L21
        L1e:
            int r0 = r0 + 1
            goto L40
        L21:
            io.netty.buffer.ByteBuf r4 = r2.buf
            int r5 = r2.idx(r11)
            long r6 = (long) r1
            long r8 = r13 + r6
            r6 = r12
            r7 = r8
            r9 = r3
            int r2 = r4.setBytes(r5, r6, r7, r9)
            if (r2 != 0) goto L34
            goto L42
        L34:
            if (r2 >= 0) goto L3a
            if (r1 != 0) goto L42
            r11 = -1
            return r11
        L3a:
            int r11 = r11 + r2
            int r15 = r15 - r2
            int r1 = r1 + r2
            if (r2 != r3) goto L40
            goto L1e
        L40:
            if (r15 > 0) goto L11
        L42:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.buffer.CompositeByteBuf.setBytes(int, java.nio.channels.FileChannel, long, int):int");
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, ByteBuf byteBuf) {
        return getBytes(i2, byteBuf, byteBuf.writableBytes());
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, ByteBuf byteBuf, int i4) {
        getBytes(i2, byteBuf, byteBuf.writerIndex(), i4);
        byteBuf.writerIndex(byteBuf.writerIndex() + i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, byte[] bArr) {
        return getBytes(i2, bArr, 0, bArr.length);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, ByteBuf byteBuf) {
        super.setBytes(i2, byteBuf, byteBuf.readableBytes());
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, ByteBuf byteBuf, int i4) {
        super.setBytes(i2, byteBuf, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, byte[] bArr) {
        return setBytes(i2, bArr, 0, bArr.length);
    }
}
