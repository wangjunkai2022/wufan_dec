package io.netty.util.concurrent;

import java.util.Arrays;
/* loaded from: classes5.dex */
final class DefaultFutureListeners {
    private GenericFutureListener<? extends Future<?>>[] listeners;
    private int progressiveSize;
    private int size = 2;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultFutureListeners(GenericFutureListener<? extends Future<?>> genericFutureListener, GenericFutureListener<? extends Future<?>> genericFutureListener2) {
        this.listeners = r1;
        GenericFutureListener<? extends Future<?>>[] genericFutureListenerArr = {genericFutureListener, genericFutureListener2};
        if (genericFutureListener instanceof GenericProgressiveFutureListener) {
            this.progressiveSize++;
        }
        if (genericFutureListener2 instanceof GenericProgressiveFutureListener) {
            this.progressiveSize++;
        }
    }

    public void add(GenericFutureListener<? extends Future<?>> genericFutureListener) {
        GenericFutureListener<? extends Future<?>>[] genericFutureListenerArr = this.listeners;
        int i2 = this.size;
        if (i2 == genericFutureListenerArr.length) {
            genericFutureListenerArr = (GenericFutureListener[]) Arrays.copyOf(genericFutureListenerArr, i2 << 1);
            this.listeners = genericFutureListenerArr;
        }
        genericFutureListenerArr[i2] = genericFutureListener;
        this.size = i2 + 1;
        if (genericFutureListener instanceof GenericProgressiveFutureListener) {
            this.progressiveSize++;
        }
    }

    public GenericFutureListener<? extends Future<?>>[] listeners() {
        return this.listeners;
    }

    public int progressiveSize() {
        return this.progressiveSize;
    }

    public void remove(GenericFutureListener<? extends Future<?>> genericFutureListener) {
        GenericFutureListener<? extends Future<?>>[] genericFutureListenerArr = this.listeners;
        int i2 = this.size;
        for (int i4 = 0; i4 < i2; i4++) {
            if (genericFutureListenerArr[i4] == genericFutureListener) {
                int i5 = (i2 - i4) - 1;
                if (i5 > 0) {
                    System.arraycopy(genericFutureListenerArr, i4 + 1, genericFutureListenerArr, i4, i5);
                }
                int i6 = i2 - 1;
                genericFutureListenerArr[i6] = null;
                this.size = i6;
                if (genericFutureListener instanceof GenericProgressiveFutureListener) {
                    this.progressiveSize--;
                    return;
                }
                return;
            }
        }
    }

    public int size() {
        return this.size;
    }
}
