package kotlin.collections;

import com.join.mgps.activity.MyAccountLoginActivity_;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SlidingWindow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\n\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u0004B\u0015\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r¢\u0006\u0004\b\u0015\u0010\u0016J\u0016\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005J\u0018\u0010\u000b\u001a\u00028\u00002\u0006\u0010\n\u001a\u00020\u0005H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fR\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"Lkotlin/collections/MovingSubList;", "E", "Lkotlin/collections/AbstractList;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", MyAccountLoginActivity_.J, "toIndex", "", "move", "index", "get", "(I)Ljava/lang/Object;", "", "list", "Ljava/util/List;", "_size", "I", "getSize", "()I", "size", "<init>", "(Ljava/util/List;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class MovingSubList<E> extends AbstractList<E> implements RandomAccess {
    private int _size;
    private int fromIndex;
    private final List<E> list;

    /* JADX WARN: Multi-variable type inference failed */
    public MovingSubList(@NotNull List<? extends E> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public E get(int i2) {
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i2, this._size);
        return this.list.get(this.fromIndex + i2);
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    public int getSize() {
        return this._size;
    }

    public final void move(int i2, int i4) {
        AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i2, i4, this.list.size());
        this.fromIndex = i2;
        this._size = i4 - i2;
    }
}
