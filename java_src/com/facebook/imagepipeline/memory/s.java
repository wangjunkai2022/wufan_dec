package com.facebook.imagepipeline.memory;

import androidx.annotation.Nullable;
import com.facebook.common.internal.VisibleForTesting;
import java.util.HashSet;
import java.util.Set;
/* compiled from: LruBucketsPoolBackend.java */
/* loaded from: classes2.dex */
public abstract class s<T> implements b0<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Set<T> f12910a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private final g<T> f12911b = new g<>();

    private T b(@Nullable T t3) {
        if (t3 != null) {
            synchronized (this) {
                this.f12910a.remove(t3);
            }
        }
        return t3;
    }

    @VisibleForTesting
    int c() {
        return this.f12911b.g();
    }

    @Override // com.facebook.imagepipeline.memory.b0
    @Nullable
    public T get(int i2) {
        return b(this.f12911b.a(i2));
    }

    @Override // com.facebook.imagepipeline.memory.b0
    @Nullable
    public T pop() {
        return b(this.f12911b.f());
    }

    @Override // com.facebook.imagepipeline.memory.b0
    public void put(T t3) {
        boolean add;
        synchronized (this) {
            add = this.f12910a.add(t3);
        }
        if (add) {
            this.f12911b.e(a(t3), t3);
        }
    }
}
