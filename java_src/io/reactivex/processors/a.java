package io.reactivex.processors;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.j;
import io.reactivex.o;
/* compiled from: FlowableProcessor.java */
/* loaded from: classes5.dex */
public abstract class a<T> extends j<T> implements l3.a<T, T>, o<T> {
    @Nullable
    public abstract Throwable J8();

    public abstract boolean K8();

    public abstract boolean L8();

    public abstract boolean M8();

    @CheckReturnValue
    @NonNull
    public final a<T> N8() {
        return this instanceof b ? this : new b(this);
    }
}
