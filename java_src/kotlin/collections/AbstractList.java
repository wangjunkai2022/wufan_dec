package kotlin.collections;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.activity.MyAccountLoginActivity_;
import com.umeng.analytics.pro.ai;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractList.kt */
@SinceKotlin(version = "1.1")
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0005\n\u0002\u0010*\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\b'\u0018\u0000 \u001d*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0004\u001d\u001e\u001f B\t\b\u0004¢\u0006\u0004\b\u001b\u0010\u001cJ\u0018\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u0004H¦\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0096\u0002J\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\r\u0010\fJ\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0016J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u001e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004H\u0016J\u0013\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0016R\u0016\u0010\u001a\u001a\u00020\u00048&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006!"}, d2 = {"Lkotlin/collections/AbstractList;", "E", "Lkotlin/collections/AbstractCollection;", "", "", "index", "get", "(I)Ljava/lang/Object;", "", "iterator", "element", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "", "listIterator", MyAccountLoginActivity_.J, "toIndex", "subList", "", "other", "", "equals", TTDownloadField.TT_HASHCODE, "getSize", "()I", "size", "<init>", "()V", "Companion", "IteratorImpl", "ListIteratorImpl", "SubList", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public abstract class AbstractList<E> extends AbstractCollection<E> implements List<E>, KMappedMarker {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: AbstractList.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010\b\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\n\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\t\u0010\u0007J'\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0012\u0010\u000eJ\u001b\u0010\u0018\u001a\u00020\u00022\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u0014H\u0000¢\u0006\u0004\b\u0016\u0010\u0017J'\u0010\u001d\u001a\u00020\u001a2\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u00142\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u0014H\u0000¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006 "}, d2 = {"Lkotlin/collections/AbstractList$Companion;", "", "", "index", "size", "", "checkElementIndex$kotlin_stdlib", "(II)V", "checkElementIndex", "checkPositionIndex$kotlin_stdlib", "checkPositionIndex", MyAccountLoginActivity_.J, "toIndex", "checkRangeIndexes$kotlin_stdlib", "(III)V", "checkRangeIndexes", "startIndex", "endIndex", "checkBoundsIndexes$kotlin_stdlib", "checkBoundsIndexes", "", ai.aD, "orderedHashCode$kotlin_stdlib", "(Ljava/util/Collection;)I", "orderedHashCode", "other", "", "orderedEquals$kotlin_stdlib", "(Ljava/util/Collection;Ljava/util/Collection;)Z", "orderedEquals", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public final void checkBoundsIndexes$kotlin_stdlib(int i2, int i4, int i5) {
            if (i2 < 0 || i4 > i5) {
                throw new IndexOutOfBoundsException("startIndex: " + i2 + ", endIndex: " + i4 + ", size: " + i5);
            } else if (i2 <= i4) {
            } else {
                throw new IllegalArgumentException("startIndex: " + i2 + " > endIndex: " + i4);
            }
        }

        public final void checkElementIndex$kotlin_stdlib(int i2, int i4) {
            if (i2 < 0 || i2 >= i4) {
                throw new IndexOutOfBoundsException("index: " + i2 + ", size: " + i4);
            }
        }

        public final void checkPositionIndex$kotlin_stdlib(int i2, int i4) {
            if (i2 < 0 || i2 > i4) {
                throw new IndexOutOfBoundsException("index: " + i2 + ", size: " + i4);
            }
        }

        public final void checkRangeIndexes$kotlin_stdlib(int i2, int i4, int i5) {
            if (i2 < 0 || i4 > i5) {
                throw new IndexOutOfBoundsException("fromIndex: " + i2 + ", toIndex: " + i4 + ", size: " + i5);
            } else if (i2 <= i4) {
            } else {
                throw new IllegalArgumentException("fromIndex: " + i2 + " > toIndex: " + i4);
            }
        }

        public final boolean orderedEquals$kotlin_stdlib(@NotNull Collection<?> c4, @NotNull Collection<?> other) {
            Intrinsics.checkNotNullParameter(c4, "c");
            Intrinsics.checkNotNullParameter(other, "other");
            if (c4.size() != other.size()) {
                return false;
            }
            Iterator<?> it2 = other.iterator();
            Iterator<?> it3 = c4.iterator();
            while (it3.hasNext()) {
                if (!Intrinsics.areEqual(it3.next(), it2.next())) {
                    return false;
                }
            }
            return true;
        }

        public final int orderedHashCode$kotlin_stdlib(@NotNull Collection<?> c4) {
            Intrinsics.checkNotNullParameter(c4, "c");
            Iterator<?> it2 = c4.iterator();
            int i2 = 1;
            while (it2.hasNext()) {
                Object next = it2.next();
                i2 = (i2 * 31) + (next != null ? next.hashCode() : 0);
            }
            return i2;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractList.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\b\u0092\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\u0010\u0010\u0004\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\"\u0010\u0007\u001a\u00020\u00068\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lkotlin/collections/AbstractList$IteratorImpl;", "", "", "hasNext", "next", "()Ljava/lang/Object;", "", "index", "I", "getIndex", "()I", "setIndex", "(I)V", "<init>", "(Lkotlin/collections/AbstractList;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public class IteratorImpl implements Iterator<E>, KMappedMarker {
        private int index;

        public IteratorImpl() {
        }

        protected final int getIndex() {
            return this.index;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < AbstractList.this.size();
        }

        @Override // java.util.Iterator
        public E next() {
            if (hasNext()) {
                AbstractList abstractList = AbstractList.this;
                int i2 = this.index;
                this.index = i2 + 1;
                return (E) abstractList.get(i2);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        protected final void setIndex(int i2) {
            this.index = i2;
        }
    }

    /* compiled from: AbstractList.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010*\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0092\u0004\u0018\u00002\f0\u0001R\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u000f\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\b\u0010\tJ\b\u0010\n\u001a\u00020\u0006H\u0016¨\u0006\u000e"}, d2 = {"Lkotlin/collections/AbstractList$ListIteratorImpl;", "Lkotlin/collections/AbstractList$IteratorImpl;", "Lkotlin/collections/AbstractList;", "", "", "hasPrevious", "", "nextIndex", "previous", "()Ljava/lang/Object;", "previousIndex", "index", "<init>", "(Lkotlin/collections/AbstractList;I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    private class ListIteratorImpl extends AbstractList<E>.IteratorImpl implements ListIterator<E>, KMappedMarker {
        public ListIteratorImpl(int i2) {
            super();
            AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i2, AbstractList.this.size());
            setIndex(i2);
        }

        @Override // java.util.ListIterator
        public void add(E e4) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return getIndex() > 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return getIndex();
        }

        @Override // java.util.ListIterator
        public E previous() {
            if (hasPrevious()) {
                AbstractList abstractList = AbstractList.this;
                setIndex(getIndex() - 1);
                return (E) abstractList.get(getIndex());
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return getIndex() - 1;
        }

        @Override // java.util.ListIterator
        public void set(E e4) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* compiled from: AbstractList.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u000f\b\u0002\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\u00060\u0003j\u0002`\u0004B%\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0005¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\u0007\u001a\u00028\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u000b\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u000f\u001a\u00020\u00058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\f¨\u0006\u0014"}, d2 = {"Lkotlin/collections/AbstractList$SubList;", "E", "Lkotlin/collections/AbstractList;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "index", "get", "(I)Ljava/lang/Object;", "list", "Lkotlin/collections/AbstractList;", "_size", "I", "getSize", "()I", "size", MyAccountLoginActivity_.J, "toIndex", "<init>", "(Lkotlin/collections/AbstractList;II)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    private static final class SubList<E> extends AbstractList<E> implements RandomAccess {
        private int _size;
        private final int fromIndex;
        private final AbstractList<E> list;

        /* JADX WARN: Multi-variable type inference failed */
        public SubList(@NotNull AbstractList<? extends E> list, int i2, int i4) {
            Intrinsics.checkNotNullParameter(list, "list");
            this.list = list;
            this.fromIndex = i2;
            AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i2, i4, list.size());
            this._size = i4 - i2;
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
    }

    @Override // java.util.List
    public void add(int i2, E e4) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i2, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            return Companion.orderedEquals$kotlin_stdlib(this, (Collection) obj);
        }
        return false;
    }

    public abstract E get(int i2);

    @Override // kotlin.collections.AbstractCollection
    public abstract int getSize();

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return Companion.orderedHashCode$kotlin_stdlib(this);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        int i2 = 0;
        for (E e4 : this) {
            if (Intrinsics.areEqual(e4, obj)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<E> iterator() {
        return new IteratorImpl();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        ListIterator<E> listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (Intrinsics.areEqual(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<E> listIterator() {
        return new ListIteratorImpl(0);
    }

    @Override // java.util.List
    public E remove(int i2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public E set(int i2, E e4) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    @NotNull
    public List<E> subList(int i2, int i4) {
        return new SubList(this, i2, i4);
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<E> listIterator(int i2) {
        return new ListIteratorImpl(i2);
    }
}
