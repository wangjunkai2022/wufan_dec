package io.reactivex.subjects;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.g0;
import io.reactivex.z;
/* compiled from: Subject.java */
/* loaded from: classes5.dex */
public abstract class c<T> extends z<T> implements g0<T> {
    @Nullable
    public abstract Throwable f8();

    public abstract boolean g8();

    public abstract boolean h8();

    public abstract boolean i8();

    @NonNull
    public final c<T> j8() {
        return this instanceof b ? this : new b(this);
    }
}
