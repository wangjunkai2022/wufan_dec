package kotlin.collections.builders;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.join.mgps.activity.MyAccountLoginActivity_;
import com.umeng.analytics.pro.ai;
import io.netty.handler.codec.rtsp.RtspHeaders;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ListBuilder.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u001e\n\u0002\b\u0012\n\u0002\u0010)\n\u0000\n\u0002\u0010+\n\u0002\b\r\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0015\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00000\u0005:\u0001UBO\b\u0002\u0012\f\u0010C\u001a\b\u0012\u0004\u0012\u00028\u000009\u0012\u0006\u0010H\u001a\u00020\u0006\u0012\u0006\u0010J\u001a\u00020\u0006\u0012\u0006\u0010M\u001a\u00020\u000f\u0012\u000e\u0010K\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000\u0012\u000e\u0010O\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000¢\u0006\u0004\bP\u0010QB\t\b\u0016¢\u0006\u0004\bP\u0010RB\u0011\b\u0016\u0012\u0006\u0010S\u001a\u00020\u0006¢\u0006\u0004\bP\u0010TJ\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\n\u001a\u00020\bH\u0002J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J\u0014\u0010\u0010\u001a\u00020\u000f2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\rH\u0002J\u0018\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J\u001f\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J&\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00162\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J\u0017\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006H\u0002J.\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00162\u0006\u0010\u001e\u001a\u00020\u000fH\u0002J\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\rJ\b\u0010!\u001a\u00020\u000fH\u0016J\u0018\u0010#\u001a\u00028\u00002\u0006\u0010\"\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0004\b#\u0010\u001aJ \u0010$\u001a\u00028\u00002\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b(\u0010'J\u000f\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00000)H\u0096\u0002J\u000e\u0010,\u001a\b\u0012\u0004\u0012\u00028\u00000+H\u0016J\u0016\u0010,\u001a\b\u0012\u0004\u0012\u00028\u00000+2\u0006\u0010\"\u001a\u00020\u0006H\u0016J\u0017\u0010-\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b-\u0010.J\u001f\u0010-\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b-\u0010\u0015J\u0016\u0010/\u001a\u00020\u000f2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0016J\u001e\u0010/\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0016J\b\u00100\u001a\u00020\bH\u0016J\u0017\u00101\u001a\u00028\u00002\u0006\u0010\"\u001a\u00020\u0006H\u0016¢\u0006\u0004\b1\u0010\u001aJ\u0017\u00102\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b2\u0010.J\u0016\u00103\u001a\u00020\u000f2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0016J\u0016\u00104\u001a\u00020\u000f2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0016J\u001e\u00107\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u00020\u0006H\u0016J)\u0010;\u001a\b\u0012\u0004\u0012\u00028\u000109\"\u0004\b\u0001\u001082\f\u0010:\u001a\b\u0012\u0004\u0012\u00028\u000109H\u0016¢\u0006\u0004\b;\u0010<J\u0017\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010=09H\u0016¢\u0006\u0004\b;\u0010>J\u0013\u0010?\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010=H\u0096\u0002J\b\u0010@\u001a\u00020\u0006H\u0016J\b\u0010B\u001a\u00020AH\u0016R\u001c\u0010C\u001a\b\u0012\u0004\u0012\u00028\u0000098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010G\u001a\u00020\u00068V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bE\u0010FR\u0016\u0010H\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010J\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010IR\u001e\u0010K\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00008\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010LR\u0016\u0010M\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u001e\u0010O\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00008\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010L¨\u0006V"}, d2 = {"Lkotlin/collections/builders/ListBuilder;", "E", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lkotlin/collections/AbstractMutableList;", "", "minCapacity", "", "ensureCapacity", "checkIsMutable", "n", "ensureExtraCapacity", "", "other", "", "contentEquals", ai.aA, "insertAtInternal", "element", "addAtInternal", "(ILjava/lang/Object;)V", "", "elements", "addAllInternal", "removeAtInternal", "(I)Ljava/lang/Object;", "rangeOffset", "rangeLength", "removeRangeInternal", "retain", "retainOrRemoveAllInternal", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "isEmpty", "index", "get", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "", "iterator", "", "listIterator", "add", "(Ljava/lang/Object;)Z", "addAll", "clear", "removeAt", "remove", "removeAll", "retainAll", MyAccountLoginActivity_.J, "toIndex", "subList", "T", "", RtspHeaders.Values.DESTINATION, "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "", "()[Ljava/lang/Object;", "equals", TTDownloadField.TT_HASHCODE, "", "toString", "array", "[Ljava/lang/Object;", "getSize", "()I", "size", "offset", "I", "length", "backing", "Lkotlin/collections/builders/ListBuilder;", "isReadOnly", "Z", "root", "<init>", "([Ljava/lang/Object;IIZLkotlin/collections/builders/ListBuilder;Lkotlin/collections/builders/ListBuilder;)V", "()V", "initialCapacity", "(I)V", "Itr", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class ListBuilder<E> extends AbstractMutableList<E> implements List<E>, RandomAccess, KMutableList {
    private E[] array;
    private final ListBuilder<E> backing;
    private boolean isReadOnly;
    private int length;
    private int offset;
    private final ListBuilder<E> root;

    /* compiled from: ListBuilder.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u001f\b\u0016\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00010\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0006¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\t\u0010\u0005\u001a\u00020\u0003H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\u0006H\u0016J\u000f\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\r2\u0006\u0010\f\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\b\u0010\u0011\u001a\u00020\rH\u0016R\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00010\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0016¨\u0006\u001a"}, d2 = {"Lkotlin/collections/builders/ListBuilder$Itr;", "E", "", "", "hasPrevious", "hasNext", "", "previousIndex", "nextIndex", "previous", "()Ljava/lang/Object;", "next", "element", "", "set", "(Ljava/lang/Object;)V", "add", "remove", "Lkotlin/collections/builders/ListBuilder;", "list", "Lkotlin/collections/builders/ListBuilder;", "index", "I", "lastIndex", "<init>", "(Lkotlin/collections/builders/ListBuilder;I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    private static final class Itr<E> implements ListIterator<E>, KMutableListIterator {
        private int index;
        private int lastIndex;
        private final ListBuilder<E> list;

        public Itr(@NotNull ListBuilder<E> list, int i2) {
            Intrinsics.checkNotNullParameter(list, "list");
            this.list = list;
            this.index = i2;
            this.lastIndex = -1;
        }

        @Override // java.util.ListIterator
        public void add(E e4) {
            ListBuilder<E> listBuilder = this.list;
            int i2 = this.index;
            this.index = i2 + 1;
            listBuilder.add(i2, e4);
            this.lastIndex = -1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.index < ((ListBuilder) this.list).length;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.index > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public E next() {
            if (this.index < ((ListBuilder) this.list).length) {
                int i2 = this.index;
                this.index = i2 + 1;
                this.lastIndex = i2;
                return (E) ((ListBuilder) this.list).array[((ListBuilder) this.list).offset + this.lastIndex];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.index;
        }

        @Override // java.util.ListIterator
        public E previous() {
            int i2 = this.index;
            if (i2 > 0) {
                int i4 = i2 - 1;
                this.index = i4;
                this.lastIndex = i4;
                return (E) ((ListBuilder) this.list).array[((ListBuilder) this.list).offset + this.lastIndex];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.index - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            int i2 = this.lastIndex;
            if (i2 != -1) {
                this.list.remove(i2);
                this.index = this.lastIndex;
                this.lastIndex = -1;
                return;
            }
            throw new IllegalStateException("Call next() or previous() before removing element from the iterator.".toString());
        }

        @Override // java.util.ListIterator
        public void set(E e4) {
            int i2 = this.lastIndex;
            if (i2 != -1) {
                this.list.set(i2, e4);
                return;
            }
            throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.".toString());
        }
    }

    private ListBuilder(E[] eArr, int i2, int i4, boolean z3, ListBuilder<E> listBuilder, ListBuilder<E> listBuilder2) {
        this.array = eArr;
        this.offset = i2;
        this.length = i4;
        this.isReadOnly = z3;
        this.backing = listBuilder;
        this.root = listBuilder2;
    }

    private final void addAllInternal(int i2, Collection<? extends E> collection, int i4) {
        ListBuilder<E> listBuilder = this.backing;
        if (listBuilder != null) {
            listBuilder.addAllInternal(i2, collection, i4);
            this.array = this.backing.array;
            this.length += i4;
            return;
        }
        insertAtInternal(i2, i4);
        Iterator<? extends E> it2 = collection.iterator();
        for (int i5 = 0; i5 < i4; i5++) {
            this.array[i2 + i5] = it2.next();
        }
    }

    private final void addAtInternal(int i2, E e4) {
        ListBuilder<E> listBuilder = this.backing;
        if (listBuilder != null) {
            listBuilder.addAtInternal(i2, e4);
            this.array = this.backing.array;
            this.length++;
            return;
        }
        insertAtInternal(i2, 1);
        this.array[i2] = e4;
    }

    private final void checkIsMutable() {
        ListBuilder<E> listBuilder;
        if (this.isReadOnly || ((listBuilder = this.root) != null && listBuilder.isReadOnly)) {
            throw new UnsupportedOperationException();
        }
    }

    private final boolean contentEquals(List<?> list) {
        boolean subarrayContentEquals;
        subarrayContentEquals = ListBuilderKt.subarrayContentEquals(this.array, this.offset, this.length, list);
        return subarrayContentEquals;
    }

    private final void ensureCapacity(int i2) {
        if (this.backing == null) {
            E[] eArr = this.array;
            if (i2 > eArr.length) {
                this.array = (E[]) ListBuilderKt.copyOfUninitializedElements(this.array, ArrayDeque.Companion.newCapacity$kotlin_stdlib(eArr.length, i2));
                return;
            }
            return;
        }
        throw new IllegalStateException();
    }

    private final void ensureExtraCapacity(int i2) {
        ensureCapacity(this.length + i2);
    }

    private final void insertAtInternal(int i2, int i4) {
        ensureExtraCapacity(i4);
        E[] eArr = this.array;
        ArraysKt.copyInto(eArr, eArr, i2 + i4, i2, this.offset + this.length);
        this.length += i4;
    }

    private final E removeAtInternal(int i2) {
        ListBuilder<E> listBuilder = this.backing;
        if (listBuilder != null) {
            this.length--;
            return listBuilder.removeAtInternal(i2);
        }
        E[] eArr = this.array;
        E e4 = eArr[i2];
        ArraysKt.copyInto(eArr, eArr, i2, i2 + 1, this.offset + this.length);
        ListBuilderKt.resetAt(this.array, (this.offset + this.length) - 1);
        this.length--;
        return e4;
    }

    private final void removeRangeInternal(int i2, int i4) {
        ListBuilder<E> listBuilder = this.backing;
        if (listBuilder != null) {
            listBuilder.removeRangeInternal(i2, i4);
        } else {
            E[] eArr = this.array;
            ArraysKt.copyInto(eArr, eArr, i2, i2 + i4, this.length);
            E[] eArr2 = this.array;
            int i5 = this.length;
            ListBuilderKt.resetRange(eArr2, i5 - i4, i5);
        }
        this.length -= i4;
    }

    private final int retainOrRemoveAllInternal(int i2, int i4, Collection<? extends E> collection, boolean z3) {
        ListBuilder<E> listBuilder = this.backing;
        if (listBuilder != null) {
            int retainOrRemoveAllInternal = listBuilder.retainOrRemoveAllInternal(i2, i4, collection, z3);
            this.length -= retainOrRemoveAllInternal;
            return retainOrRemoveAllInternal;
        }
        int i5 = 0;
        int i6 = 0;
        while (i5 < i4) {
            int i7 = i2 + i5;
            if (collection.contains(this.array[i7]) == z3) {
                E[] eArr = this.array;
                i5++;
                eArr[i6 + i2] = eArr[i7];
                i6++;
            } else {
                i5++;
            }
        }
        int i8 = i4 - i6;
        E[] eArr2 = this.array;
        ArraysKt.copyInto(eArr2, eArr2, i2 + i6, i4 + i2, this.length);
        E[] eArr3 = this.array;
        int i9 = this.length;
        ListBuilderKt.resetRange(eArr3, i9 - i8, i9);
        this.length -= i8;
        return i8;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e4) {
        checkIsMutable();
        addAtInternal(this.offset + this.length, e4);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        checkIsMutable();
        int size = elements.size();
        addAllInternal(this.offset + this.length, elements, size);
        return size > 0;
    }

    @NotNull
    public final List<E> build() {
        if (this.backing == null) {
            checkIsMutable();
            this.isReadOnly = true;
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        checkIsMutable();
        removeRangeInternal(this.offset, this.length);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(@Nullable Object obj) {
        return obj == this || ((obj instanceof List) && contentEquals((List) obj));
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i2) {
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i2, this.length);
        return this.array[this.offset + i2];
    }

    @Override // kotlin.collections.AbstractMutableList
    public int getSize() {
        return this.length;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int subarrayContentHashCode;
        subarrayContentHashCode = ListBuilderKt.subarrayContentHashCode(this.array, this.offset, this.length);
        return subarrayContentHashCode;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        for (int i2 = 0; i2 < this.length; i2++) {
            if (Intrinsics.areEqual(this.array[this.offset + i2], obj)) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.length == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<E> iterator() {
        return new Itr(this, 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        for (int i2 = this.length - 1; i2 >= 0; i2--) {
            if (Intrinsics.areEqual(this.array[this.offset + i2], obj)) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public ListIterator<E> listIterator() {
        return new Itr(this, 0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        checkIsMutable();
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            remove(indexOf);
        }
        return indexOf >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        checkIsMutable();
        return retainOrRemoveAllInternal(this.offset, this.length, elements, false) > 0;
    }

    @Override // kotlin.collections.AbstractMutableList
    public E removeAt(int i2) {
        checkIsMutable();
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i2, this.length);
        return removeAtInternal(this.offset + i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        checkIsMutable();
        return retainOrRemoveAllInternal(this.offset, this.length, elements, true) > 0;
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public E set(int i2, E e4) {
        checkIsMutable();
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i2, this.length);
        E[] eArr = this.array;
        int i4 = this.offset;
        E e5 = eArr[i4 + i2];
        eArr[i4 + i2] = e4;
        return e5;
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public List<E> subList(int i2, int i4) {
        AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i2, i4, this.length);
        E[] eArr = this.array;
        int i5 = this.offset + i2;
        int i6 = i4 - i2;
        boolean z3 = this.isReadOnly;
        ListBuilder<E> listBuilder = this.root;
        return new ListBuilder(eArr, i5, i6, z3, this, listBuilder != null ? listBuilder : this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public <T> T[] toArray(@NotNull T[] destination) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        int length = destination.length;
        int i2 = this.length;
        if (length < i2) {
            E[] eArr = this.array;
            int i4 = this.offset;
            T[] tArr = (T[]) Arrays.copyOfRange(eArr, i4, i2 + i4, destination.getClass());
            Intrinsics.checkNotNullExpressionValue(tArr, "java.util.Arrays.copyOfR…h, destination.javaClass)");
            return tArr;
        }
        E[] eArr2 = this.array;
        Objects.requireNonNull(eArr2, "null cannot be cast to non-null type kotlin.Array<T>");
        int i5 = this.offset;
        ArraysKt.copyInto(eArr2, destination, 0, i5, i2 + i5);
        int length2 = destination.length;
        int i6 = this.length;
        if (length2 > i6) {
            destination[i6] = null;
        }
        return destination;
    }

    @Override // java.util.AbstractCollection
    @NotNull
    public String toString() {
        String subarrayContentToString;
        subarrayContentToString = ListBuilderKt.subarrayContentToString(this.array, this.offset, this.length);
        return subarrayContentToString;
    }

    public ListBuilder() {
        this(10);
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public ListIterator<E> listIterator(int i2) {
        AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i2, this.length);
        return new Itr(this, i2);
    }

    public ListBuilder(int i2) {
        this(ListBuilderKt.arrayOfUninitializedElements(i2), 0, 0, false, null, null);
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public void add(int i2, E e4) {
        checkIsMutable();
        AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i2, this.length);
        addAtInternal(this.offset + i2, e4);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i2, @NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        checkIsMutable();
        AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i2, this.length);
        int size = elements.size();
        addAllInternal(this.offset + i2, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public Object[] toArray() {
        E[] eArr = this.array;
        int i2 = this.offset;
        Object[] copyOfRange = ArraysKt.copyOfRange(eArr, i2, this.length + i2);
        Objects.requireNonNull(copyOfRange, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        return copyOfRange;
    }
}
