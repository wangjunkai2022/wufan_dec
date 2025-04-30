package com.squareup.wire.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImmutableList.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00022\u00060\u0003j\u0002`\u00042\u00060\u0005j\u0002`\u0006B\u0015\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019¢\u0006\u0004\b\u001a\u0010\u001bJ\b\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u000b\u001a\u00028\u00002\u0006\u0010\n\u001a\u00020\tH\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\rH\u0014¢\u0006\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\t8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R6\u0010\u0018\u001a\"\u0012\f\u0012\n \u0014*\u0004\u0018\u00018\u00008\u00000\u0013j\u0010\u0012\f\u0012\n \u0014*\u0004\u0018\u00018\u00008\u0000`\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001c"}, d2 = {"Lcom/squareup/wire/internal/ImmutableList;", "T", "Lkotlin/collections/AbstractList;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Ljava/io/Serializable;", "Lcom/squareup/wire/internal/Serializable;", "", "writeReplace", "", "index", "get", "(I)Ljava/lang/Object;", "", "toArray", "()[Ljava/lang/Object;", "getSize", "()I", "size", "Ljava/util/ArrayList;", "kotlin.jvm.PlatformType", "Lkotlin/collections/ArrayList;", "a", "Ljava/util/ArrayList;", "list", "", "<init>", "(Ljava/util/List;)V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class ImmutableList<T> extends AbstractList<T> implements RandomAccess, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<T> f56799a;

    public ImmutableList(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.f56799a = new ArrayList<>(list);
    }

    private final Object writeReplace() throws ObjectStreamException {
        List unmodifiableList = Collections.unmodifiableList(this.f56799a);
        Intrinsics.checkNotNullExpressionValue(unmodifiableList, "Collections.unmodifiableList(this)");
        return unmodifiableList;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public T get(int i2) {
        return this.f56799a.get(i2);
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    public int getSize() {
        return this.f56799a.size();
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public Object[] toArray() {
        Object[] array = this.f56799a.toArray(new Object[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return array;
    }
}
