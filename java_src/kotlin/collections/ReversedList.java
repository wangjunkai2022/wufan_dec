package kotlin.collections;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ReversedViews.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010!\n\u0002\b\u0005\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0017\u0010\t\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\t\u0010\u0006J \u0010\u000b\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\r\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0011\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lkotlin/collections/ReversedList;", "T", "Lkotlin/collections/AbstractMutableList;", "", "index", "get", "(I)Ljava/lang/Object;", "", "clear", "removeAt", "element", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "add", "(ILjava/lang/Object;)V", "getSize", "()I", "size", "", "delegate", "Ljava/util/List;", "<init>", "(Ljava/util/List;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
final class ReversedList<T> extends AbstractMutableList<T> {
    private final List<T> delegate;

    public ReversedList(@NotNull List<T> delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public void add(int i2, T t3) {
        int reversePositionIndex$CollectionsKt__ReversedViewsKt;
        List<T> list = this.delegate;
        reversePositionIndex$CollectionsKt__ReversedViewsKt = CollectionsKt__ReversedViewsKt.reversePositionIndex$CollectionsKt__ReversedViewsKt(this, i2);
        list.add(reversePositionIndex$CollectionsKt__ReversedViewsKt, t3);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.delegate.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i2) {
        int reverseElementIndex$CollectionsKt__ReversedViewsKt;
        List<T> list = this.delegate;
        reverseElementIndex$CollectionsKt__ReversedViewsKt = CollectionsKt__ReversedViewsKt.reverseElementIndex$CollectionsKt__ReversedViewsKt(this, i2);
        return list.get(reverseElementIndex$CollectionsKt__ReversedViewsKt);
    }

    @Override // kotlin.collections.AbstractMutableList
    public int getSize() {
        return this.delegate.size();
    }

    @Override // kotlin.collections.AbstractMutableList
    public T removeAt(int i2) {
        int reverseElementIndex$CollectionsKt__ReversedViewsKt;
        List<T> list = this.delegate;
        reverseElementIndex$CollectionsKt__ReversedViewsKt = CollectionsKt__ReversedViewsKt.reverseElementIndex$CollectionsKt__ReversedViewsKt(this, i2);
        return list.remove(reverseElementIndex$CollectionsKt__ReversedViewsKt);
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public T set(int i2, T t3) {
        int reverseElementIndex$CollectionsKt__ReversedViewsKt;
        List<T> list = this.delegate;
        reverseElementIndex$CollectionsKt__ReversedViewsKt = CollectionsKt__ReversedViewsKt.reverseElementIndex$CollectionsKt__ReversedViewsKt(this, i2);
        return list.set(reverseElementIndex$CollectionsKt__ReversedViewsKt, t3);
    }
}
