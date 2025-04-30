package com.facebook.imagepipeline.memory;

import android.util.SparseArray;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.infer.annotation.ThreadSafe;
import java.util.LinkedList;
import javax.annotation.Nullable;
/* compiled from: BucketMap.java */
@ThreadSafe
/* loaded from: classes.dex */
public class g<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final SparseArray<b<T>> f12873a = new SparseArray<>();
    @VisibleForTesting
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    b<T> f12874b;
    @VisibleForTesting
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    b<T> f12875c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BucketMap.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class b<I> {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        b<I> f12876a;

        /* renamed from: b  reason: collision with root package name */
        int f12877b;

        /* renamed from: c  reason: collision with root package name */
        LinkedList<I> f12878c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        b<I> f12879d;

        public String toString() {
            return "LinkedEntry(key: " + this.f12877b + ")";
        }

        private b(@Nullable b<I> bVar, int i2, LinkedList<I> linkedList, @Nullable b<I> bVar2) {
            this.f12876a = bVar;
            this.f12877b = i2;
            this.f12878c = linkedList;
            this.f12879d = bVar2;
        }
    }

    private void b(b<T> bVar) {
        if (bVar == null || !bVar.f12878c.isEmpty()) {
            return;
        }
        d(bVar);
        this.f12873a.remove(bVar.f12877b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void c(b<T> bVar) {
        if (this.f12874b == bVar) {
            return;
        }
        d(bVar);
        b bVar2 = (b<T>) this.f12874b;
        if (bVar2 == null) {
            this.f12874b = bVar;
            this.f12875c = bVar;
            return;
        }
        bVar.f12879d = bVar2;
        bVar2.f12876a = bVar;
        this.f12874b = bVar;
    }

    private synchronized void d(b<T> bVar) {
        b bVar2 = (b<T>) bVar.f12876a;
        b bVar3 = (b<T>) bVar.f12879d;
        if (bVar2 != null) {
            bVar2.f12879d = bVar3;
        }
        if (bVar3 != null) {
            bVar3.f12876a = bVar2;
        }
        bVar.f12876a = null;
        bVar.f12879d = null;
        if (bVar == this.f12874b) {
            this.f12874b = bVar3;
        }
        if (bVar == this.f12875c) {
            this.f12875c = bVar2;
        }
    }

    @Nullable
    public synchronized T a(int i2) {
        b<T> bVar = this.f12873a.get(i2);
        if (bVar == null) {
            return null;
        }
        T pollFirst = bVar.f12878c.pollFirst();
        c(bVar);
        return pollFirst;
    }

    public synchronized void e(int i2, T t3) {
        b<T> bVar = this.f12873a.get(i2);
        if (bVar == null) {
            bVar = new b<>(null, i2, new LinkedList(), null);
            this.f12873a.put(i2, bVar);
        }
        bVar.f12878c.addLast(t3);
        c(bVar);
    }

    @Nullable
    public synchronized T f() {
        b<T> bVar = this.f12875c;
        if (bVar == null) {
            return null;
        }
        T pollLast = bVar.f12878c.pollLast();
        b(bVar);
        return pollLast;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public synchronized int g() {
        int i2;
        i2 = 0;
        for (b bVar = this.f12874b; bVar != null; bVar = bVar.f12879d) {
            LinkedList<I> linkedList = bVar.f12878c;
            if (linkedList != 0) {
                i2 += linkedList.size();
            }
        }
        return i2;
    }
}
