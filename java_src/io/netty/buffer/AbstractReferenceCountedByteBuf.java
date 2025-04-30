package io.netty.buffer;

import io.netty.util.internal.ReferenceCountUpdater;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* loaded from: classes5.dex */
public abstract class AbstractReferenceCountedByteBuf extends AbstractByteBuf {
    private volatile int refCnt;
    private static final long REFCNT_FIELD_OFFSET = ReferenceCountUpdater.getUnsafeOffset(AbstractReferenceCountedByteBuf.class, "refCnt");
    private static final AtomicIntegerFieldUpdater<AbstractReferenceCountedByteBuf> AIF_UPDATER = AtomicIntegerFieldUpdater.newUpdater(AbstractReferenceCountedByteBuf.class, "refCnt");
    private static final ReferenceCountUpdater<AbstractReferenceCountedByteBuf> updater = new ReferenceCountUpdater<AbstractReferenceCountedByteBuf>() { // from class: io.netty.buffer.AbstractReferenceCountedByteBuf.1
        @Override // io.netty.util.internal.ReferenceCountUpdater
        protected long unsafeOffset() {
            return AbstractReferenceCountedByteBuf.REFCNT_FIELD_OFFSET;
        }

        @Override // io.netty.util.internal.ReferenceCountUpdater
        protected AtomicIntegerFieldUpdater<AbstractReferenceCountedByteBuf> updater() {
            return AbstractReferenceCountedByteBuf.AIF_UPDATER;
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractReferenceCountedByteBuf(int i2) {
        super(i2);
        this.refCnt = updater.initialValue();
    }

    private boolean handleRelease(boolean z3) {
        if (z3) {
            deallocate();
        }
        return z3;
    }

    protected abstract void deallocate();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.netty.buffer.ByteBuf
    public boolean isAccessible() {
        return updater.isLiveNonVolatile(this);
    }

    @Override // io.netty.util.ReferenceCounted
    public int refCnt() {
        return updater.refCnt(this);
    }

    @Override // io.netty.util.ReferenceCounted
    public boolean release() {
        return handleRelease(updater.release(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void resetRefCnt() {
        updater.resetRefCnt(this);
    }

    protected final void setRefCnt(int i2) {
        updater.setRefCnt(this, i2);
    }

    @Override // io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public ByteBuf touch() {
        return this;
    }

    @Override // io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public ByteBuf touch(Object obj) {
        return this;
    }

    @Override // io.netty.util.ReferenceCounted
    public boolean release(int i2) {
        return handleRelease(updater.release(this, i2));
    }

    @Override // io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public ByteBuf retain() {
        return updater.retain(this);
    }

    @Override // io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public ByteBuf retain(int i2) {
        return updater.retain(this, i2);
    }
}
