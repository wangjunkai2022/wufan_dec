package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ArrayDeque.kt */
@SinceKotlin(version = "1.4")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b!\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0007\u0018\u0000 S*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001SB\u0011\b\u0016\u0012\u0006\u0010N\u001a\u00020\u0003¢\u0006\u0004\bO\u0010PB\t\b\u0016¢\u0006\u0004\bO\u0010QB\u0017\b\u0016\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011¢\u0006\u0004\bO\u0010RJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003H\u0002J\u0018\u0010\n\u001a\u00028\u00002\u0006\u0010\t\u001a\u00020\u0003H\u0083\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003H\u0002J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003H\u0002J\u0011\u0010\t\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003H\u0083\bJ\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003H\u0002J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003H\u0002J\u001e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00032\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0002J\u001d\u0010\u0017\u001a\u00020\u00152\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00150\u0014H\u0082\bJ\b\u0010\u0018\u001a\u00020\u0015H\u0016J\r\u0010\u0019\u001a\u00028\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u001b\u0010\u001aJ\r\u0010\u001c\u001a\u00028\u0000¢\u0006\u0004\b\u001c\u0010\u001aJ\u000f\u0010\u001d\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u001d\u0010\u001aJ\u0015\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00028\u0000¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010!\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00028\u0000¢\u0006\u0004\b!\u0010 J\r\u0010\"\u001a\u00028\u0000¢\u0006\u0004\b\"\u0010\u001aJ\u000f\u0010#\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b#\u0010\u001aJ\r\u0010$\u001a\u00028\u0000¢\u0006\u0004\b$\u0010\u001aJ\u000f\u0010%\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b%\u0010\u001aJ\u0017\u0010&\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00028\u0000H\u0016¢\u0006\u0004\b&\u0010'J\u001f\u0010&\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00028\u0000H\u0016¢\u0006\u0004\b&\u0010(J\u0016\u0010)\u001a\u00020\u00152\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0016J\u001e\u0010)\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\u00032\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0016J\u0018\u0010*\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b*\u0010\u000bJ \u0010+\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b+\u0010,J\u0018\u0010-\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b-\u0010'J\u0017\u0010.\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00028\u0000H\u0016¢\u0006\u0004\b.\u0010/J\u0017\u00100\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00028\u0000H\u0016¢\u0006\u0004\b0\u0010/J\u0017\u00101\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00028\u0000H\u0016¢\u0006\u0004\b1\u0010'J\u0017\u00102\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u0003H\u0016¢\u0006\u0004\b2\u0010\u000bJ\u0016\u00103\u001a\u00020\u00152\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0016J\u0016\u00104\u001a\u00020\u00152\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0016J\b\u00105\u001a\u00020\u0005H\u0016J)\u00109\u001a\b\u0012\u0004\u0012\u00028\u000107\"\u0004\b\u0001\u001062\f\u00108\u001a\b\u0012\u0004\u0012\u00028\u000107H\u0016¢\u0006\u0004\b9\u0010:J\u0017\u00109\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010;07H\u0016¢\u0006\u0004\b9\u0010<J)\u0010>\u001a\b\u0012\u0004\u0012\u00028\u000107\"\u0004\b\u0001\u001062\f\u00108\u001a\b\u0012\u0004\u0012\u00028\u000107H\u0000¢\u0006\u0004\b=\u0010:J\u0017\u0010>\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010;07H\u0000¢\u0006\u0004\b=\u0010<JO\u0010F\u001a\u00020\u00052>\u0010C\u001a:\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b@\u0012\b\bA\u0012\u0004\b\b(B\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010;07¢\u0006\f\b@\u0012\b\bA\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u00050?H\u0000¢\u0006\u0004\bD\u0010ER\u0016\u0010B\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010GR$\u0010I\u001a\u00020\u00032\u0006\u0010H\u001a\u00020\u00038\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\bI\u0010G\u001a\u0004\bJ\u0010KR\u001e\u0010L\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010;078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010M¨\u0006T"}, d2 = {"Lkotlin/collections/ArrayDeque;", "E", "Lkotlin/collections/AbstractMutableList;", "", "minCapacity", "", "ensureCapacity", "newCapacity", "copyElements", "internalIndex", "internalGet", "(I)Ljava/lang/Object;", "index", "positiveMod", "negativeMod", "incremented", "decremented", "", "elements", "copyCollectionElements", "Lkotlin/Function1;", "", "predicate", "filterInPlace", "isEmpty", "first", "()Ljava/lang/Object;", "firstOrNull", "last", "lastOrNull", "element", "addFirst", "(Ljava/lang/Object;)V", "addLast", "removeFirst", "removeFirstOrNull", "removeLast", "removeLastOrNull", "add", "(Ljava/lang/Object;)Z", "(ILjava/lang/Object;)V", "addAll", "get", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "contains", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "remove", "removeAt", "removeAll", "retainAll", "clear", "T", "", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "", "()[Ljava/lang/Object;", "testToArray$kotlin_stdlib", "testToArray", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "head", "structure", "internalStructure$kotlin_stdlib", "(Lkotlin/jvm/functions/Function2;)V", "internalStructure", "I", "<set-?>", "size", "getSize", "()I", "elementData", "[Ljava/lang/Object;", "initialCapacity", "<init>", "(I)V", "()V", "(Ljava/util/Collection;)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@WasExperimental(markerClass = {ExperimentalStdlibApi.class})
/* loaded from: classes5.dex */
public final class ArrayDeque<E> extends AbstractMutableList<E> {
    private static final int defaultMinCapacity = 10;
    private static final int maxArraySize = 2147483639;
    private Object[] elementData;
    private int head;
    private int size;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final Object[] emptyElementData = new Object[0];

    /* compiled from: ArrayDeque.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\t¨\u0006\u0010"}, d2 = {"Lkotlin/collections/ArrayDeque$Companion;", "", "", "oldCapacity", "minCapacity", "newCapacity$kotlin_stdlib", "(II)I", "newCapacity", "defaultMinCapacity", "I", "", "emptyElementData", "[Ljava/lang/Object;", "maxArraySize", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        public final int newCapacity$kotlin_stdlib(int i2, int i4) {
            int i5 = i2 + (i2 >> 1);
            if (i5 - i4 < 0) {
                i5 = i4;
            }
            if (i5 - ArrayDeque.maxArraySize > 0) {
                if (i4 > ArrayDeque.maxArraySize) {
                    return Integer.MAX_VALUE;
                }
                return ArrayDeque.maxArraySize;
            }
            return i5;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public ArrayDeque(int i2) {
        Object[] objArr;
        if (i2 == 0) {
            objArr = emptyElementData;
        } else if (i2 > 0) {
            objArr = new Object[i2];
        } else {
            throw new IllegalArgumentException("Illegal Capacity: " + i2);
        }
        this.elementData = objArr;
    }

    private final void copyCollectionElements(int i2, Collection<? extends E> collection) {
        Iterator<? extends E> it2 = collection.iterator();
        int length = this.elementData.length;
        while (i2 < length && it2.hasNext()) {
            this.elementData[i2] = it2.next();
            i2++;
        }
        int i4 = this.head;
        for (int i5 = 0; i5 < i4 && it2.hasNext(); i5++) {
            this.elementData[i5] = it2.next();
        }
        this.size = size() + collection.size();
    }

    private final void copyElements(int i2) {
        Object[] objArr = new Object[i2];
        Object[] objArr2 = this.elementData;
        ArraysKt.copyInto(objArr2, objArr, 0, this.head, objArr2.length);
        Object[] objArr3 = this.elementData;
        int length = objArr3.length;
        int i4 = this.head;
        ArraysKt.copyInto(objArr3, objArr, length - i4, 0, i4);
        this.head = 0;
        this.elementData = objArr;
    }

    private final int decremented(int i2) {
        return i2 == 0 ? ArraysKt___ArraysKt.getLastIndex(this.elementData) : i2 - 1;
    }

    private final void ensureCapacity(int i2) {
        int coerceAtLeast;
        if (i2 >= 0) {
            Object[] objArr = this.elementData;
            if (i2 <= objArr.length) {
                return;
            }
            if (objArr == emptyElementData) {
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i2, 10);
                this.elementData = new Object[coerceAtLeast];
                return;
            }
            copyElements(Companion.newCapacity$kotlin_stdlib(objArr.length, i2));
            return;
        }
        throw new IllegalStateException("Deque is too big.");
    }

    private final boolean filterInPlace(Function1<? super E, Boolean> function1) {
        boolean z3 = false;
        z3 = false;
        z3 = false;
        if (!isEmpty()) {
            if (!(this.elementData.length == 0)) {
                int positiveMod = positiveMod(this.head + size());
                int i2 = this.head;
                if (this.head < positiveMod) {
                    for (int i4 = this.head; i4 < positiveMod; i4++) {
                        Object obj = this.elementData[i4];
                        if (function1.invoke(obj).booleanValue()) {
                            this.elementData[i2] = obj;
                            i2++;
                        } else {
                            z3 = true;
                        }
                    }
                    ArraysKt___ArraysJvmKt.fill(this.elementData, (Object) null, i2, positiveMod);
                } else {
                    int length = this.elementData.length;
                    boolean z4 = false;
                    for (int i5 = this.head; i5 < length; i5++) {
                        Object obj2 = this.elementData[i5];
                        this.elementData[i5] = null;
                        if (function1.invoke(obj2).booleanValue()) {
                            this.elementData[i2] = obj2;
                            i2++;
                        } else {
                            z4 = true;
                        }
                    }
                    i2 = positiveMod(i2);
                    for (int i6 = 0; i6 < positiveMod; i6++) {
                        Object obj3 = this.elementData[i6];
                        this.elementData[i6] = null;
                        if (function1.invoke(obj3).booleanValue()) {
                            this.elementData[i2] = obj3;
                            i2 = incremented(i2);
                        } else {
                            z4 = true;
                        }
                    }
                    z3 = z4;
                }
                if (z3) {
                    this.size = negativeMod(i2 - this.head);
                }
            }
        }
        return z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int incremented(int i2) {
        if (i2 == ArraysKt___ArraysKt.getLastIndex(this.elementData)) {
            return 0;
        }
        return i2 + 1;
    }

    @InlineOnly
    private final E internalGet(int i2) {
        return (E) this.elementData[i2];
    }

    @InlineOnly
    private final int internalIndex(int i2) {
        return positiveMod(this.head + i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int negativeMod(int i2) {
        return i2 < 0 ? i2 + this.elementData.length : i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int positiveMod(int i2) {
        Object[] objArr = this.elementData;
        return i2 >= objArr.length ? i2 - objArr.length : i2;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e4) {
        addLast(e4);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        ensureCapacity(size() + elements.size());
        copyCollectionElements(positiveMod(this.head + size()), elements);
        return true;
    }

    public final void addFirst(E e4) {
        ensureCapacity(size() + 1);
        int decremented = decremented(this.head);
        this.head = decremented;
        this.elementData[decremented] = e4;
        this.size = size() + 1;
    }

    public final void addLast(E e4) {
        ensureCapacity(size() + 1);
        this.elementData[positiveMod(this.head + size())] = e4;
        this.size = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        int positiveMod = positiveMod(this.head + size());
        int i2 = this.head;
        if (i2 < positiveMod) {
            ArraysKt___ArraysJvmKt.fill(this.elementData, (Object) null, i2, positiveMod);
        } else if (!isEmpty()) {
            Object[] objArr = this.elementData;
            ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, this.head, objArr.length);
            ArraysKt___ArraysJvmKt.fill(this.elementData, (Object) null, 0, positiveMod);
        }
        this.head = 0;
        this.size = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final E first() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        return (E) this.elementData[this.head];
    }

    @Nullable
    public final E firstOrNull() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.elementData[this.head];
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i2) {
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i2, size());
        return (E) this.elementData[positiveMod(this.head + i2)];
    }

    @Override // kotlin.collections.AbstractMutableList
    public int getSize() {
        return this.size;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        int i2;
        int positiveMod = positiveMod(this.head + size());
        int i4 = this.head;
        if (i4 < positiveMod) {
            while (i4 < positiveMod) {
                if (Intrinsics.areEqual(obj, this.elementData[i4])) {
                    i2 = this.head;
                } else {
                    i4++;
                }
            }
            return -1;
        } else if (i4 < positiveMod) {
            return -1;
        } else {
            int length = this.elementData.length;
            while (true) {
                if (i4 >= length) {
                    for (int i5 = 0; i5 < positiveMod; i5++) {
                        if (Intrinsics.areEqual(obj, this.elementData[i5])) {
                            i4 = i5 + this.elementData.length;
                            i2 = this.head;
                        }
                    }
                    return -1;
                } else if (Intrinsics.areEqual(obj, this.elementData[i4])) {
                    i2 = this.head;
                    break;
                } else {
                    i4++;
                }
            }
        }
        return i4 - i2;
    }

    public final void internalStructure$kotlin_stdlib(@NotNull Function2<? super Integer, ? super Object[], Unit> structure) {
        int i2;
        Intrinsics.checkNotNullParameter(structure, "structure");
        structure.invoke(Integer.valueOf((isEmpty() || (i2 = this.head) < positiveMod(this.head + size())) ? this.head : i2 - this.elementData.length), toArray());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return size() == 0;
    }

    public final E last() {
        int lastIndex;
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(this);
        return (E) this.elementData[positiveMod(this.head + lastIndex)];
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        int lastIndex;
        int i2;
        int positiveMod = positiveMod(this.head + size());
        int i4 = this.head;
        if (i4 < positiveMod) {
            lastIndex = positiveMod - 1;
            if (lastIndex < i4) {
                return -1;
            }
            while (!Intrinsics.areEqual(obj, this.elementData[lastIndex])) {
                if (lastIndex == i4) {
                    return -1;
                }
                lastIndex--;
            }
            i2 = this.head;
        } else if (i4 <= positiveMod) {
            return -1;
        } else {
            int i5 = positiveMod - 1;
            while (true) {
                if (i5 >= 0) {
                    if (Intrinsics.areEqual(obj, this.elementData[i5])) {
                        lastIndex = i5 + this.elementData.length;
                        i2 = this.head;
                        break;
                    }
                    i5--;
                } else {
                    lastIndex = ArraysKt___ArraysKt.getLastIndex(this.elementData);
                    int i6 = this.head;
                    if (lastIndex < i6) {
                        return -1;
                    }
                    while (!Intrinsics.areEqual(obj, this.elementData[lastIndex])) {
                        if (lastIndex == i6) {
                            return -1;
                        }
                        lastIndex--;
                    }
                    i2 = this.head;
                }
            }
        }
        return lastIndex - i2;
    }

    @Nullable
    public final E lastOrNull() {
        int lastIndex;
        if (isEmpty()) {
            return null;
        }
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(this);
        return (E) this.elementData[positiveMod(this.head + lastIndex)];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z3 = false;
        z3 = false;
        z3 = false;
        if (!isEmpty()) {
            if (!(this.elementData.length == 0)) {
                int positiveMod = positiveMod(this.head + size());
                int i2 = this.head;
                if (this.head < positiveMod) {
                    for (int i4 = this.head; i4 < positiveMod; i4++) {
                        Object obj = this.elementData[i4];
                        if (!elements.contains(obj)) {
                            this.elementData[i2] = obj;
                            i2++;
                        } else {
                            z3 = true;
                        }
                    }
                    ArraysKt___ArraysJvmKt.fill(this.elementData, (Object) null, i2, positiveMod);
                } else {
                    int length = this.elementData.length;
                    boolean z4 = false;
                    for (int i5 = this.head; i5 < length; i5++) {
                        Object obj2 = this.elementData[i5];
                        this.elementData[i5] = null;
                        if (!elements.contains(obj2)) {
                            this.elementData[i2] = obj2;
                            i2++;
                        } else {
                            z4 = true;
                        }
                    }
                    i2 = positiveMod(i2);
                    for (int i6 = 0; i6 < positiveMod; i6++) {
                        Object obj3 = this.elementData[i6];
                        this.elementData[i6] = null;
                        if (!elements.contains(obj3)) {
                            this.elementData[i2] = obj3;
                            i2 = incremented(i2);
                        } else {
                            z4 = true;
                        }
                    }
                    z3 = z4;
                }
                if (z3) {
                    this.size = negativeMod(i2 - this.head);
                }
            }
        }
        return z3;
    }

    @Override // kotlin.collections.AbstractMutableList
    public E removeAt(int i2) {
        int lastIndex;
        int lastIndex2;
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i2, size());
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(this);
        if (i2 == lastIndex) {
            return removeLast();
        }
        if (i2 != 0) {
            int positiveMod = positiveMod(this.head + i2);
            E e4 = (E) this.elementData[positiveMod];
            if (i2 < (size() >> 1)) {
                int i4 = this.head;
                if (positiveMod >= i4) {
                    Object[] objArr = this.elementData;
                    ArraysKt.copyInto(objArr, objArr, i4 + 1, i4, positiveMod);
                } else {
                    Object[] objArr2 = this.elementData;
                    ArraysKt.copyInto(objArr2, objArr2, 1, 0, positiveMod);
                    Object[] objArr3 = this.elementData;
                    objArr3[0] = objArr3[objArr3.length - 1];
                    int i5 = this.head;
                    ArraysKt.copyInto(objArr3, objArr3, i5 + 1, i5, objArr3.length - 1);
                }
                Object[] objArr4 = this.elementData;
                int i6 = this.head;
                objArr4[i6] = null;
                this.head = incremented(i6);
            } else {
                lastIndex2 = CollectionsKt__CollectionsKt.getLastIndex(this);
                int positiveMod2 = positiveMod(this.head + lastIndex2);
                if (positiveMod <= positiveMod2) {
                    Object[] objArr5 = this.elementData;
                    ArraysKt.copyInto(objArr5, objArr5, positiveMod, positiveMod + 1, positiveMod2 + 1);
                } else {
                    Object[] objArr6 = this.elementData;
                    ArraysKt.copyInto(objArr6, objArr6, positiveMod, positiveMod + 1, objArr6.length);
                    Object[] objArr7 = this.elementData;
                    objArr7[objArr7.length - 1] = objArr7[0];
                    ArraysKt.copyInto(objArr7, objArr7, 0, 1, positiveMod2 + 1);
                }
                this.elementData[positiveMod2] = null;
            }
            this.size = size() - 1;
            return e4;
        }
        return removeFirst();
    }

    public final E removeFirst() {
        if (!isEmpty()) {
            E e4 = (E) this.elementData[this.head];
            Object[] objArr = this.elementData;
            int i2 = this.head;
            objArr[i2] = null;
            this.head = incremented(i2);
            this.size = size() - 1;
            return e4;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @Nullable
    public final E removeFirstOrNull() {
        if (isEmpty()) {
            return null;
        }
        return removeFirst();
    }

    public final E removeLast() {
        int lastIndex;
        if (!isEmpty()) {
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(this);
            int positiveMod = positiveMod(this.head + lastIndex);
            E e4 = (E) this.elementData[positiveMod];
            this.elementData[positiveMod] = null;
            this.size = size() - 1;
            return e4;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @Nullable
    public final E removeLastOrNull() {
        if (isEmpty()) {
            return null;
        }
        return removeLast();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z3 = false;
        z3 = false;
        z3 = false;
        if (!isEmpty()) {
            if (!(this.elementData.length == 0)) {
                int positiveMod = positiveMod(this.head + size());
                int i2 = this.head;
                if (this.head < positiveMod) {
                    for (int i4 = this.head; i4 < positiveMod; i4++) {
                        Object obj = this.elementData[i4];
                        if (elements.contains(obj)) {
                            this.elementData[i2] = obj;
                            i2++;
                        } else {
                            z3 = true;
                        }
                    }
                    ArraysKt___ArraysJvmKt.fill(this.elementData, (Object) null, i2, positiveMod);
                } else {
                    int length = this.elementData.length;
                    boolean z4 = false;
                    for (int i5 = this.head; i5 < length; i5++) {
                        Object obj2 = this.elementData[i5];
                        this.elementData[i5] = null;
                        if (elements.contains(obj2)) {
                            this.elementData[i2] = obj2;
                            i2++;
                        } else {
                            z4 = true;
                        }
                    }
                    i2 = positiveMod(i2);
                    for (int i6 = 0; i6 < positiveMod; i6++) {
                        Object obj3 = this.elementData[i6];
                        this.elementData[i6] = null;
                        if (elements.contains(obj3)) {
                            this.elementData[i2] = obj3;
                            i2 = incremented(i2);
                        } else {
                            z4 = true;
                        }
                    }
                    z3 = z4;
                }
                if (z3) {
                    this.size = negativeMod(i2 - this.head);
                }
            }
        }
        return z3;
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public E set(int i2, E e4) {
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i2, size());
        int positiveMod = positiveMod(this.head + i2);
        E e5 = (E) this.elementData[positiveMod];
        this.elementData[positiveMod] = e4;
        return e5;
    }

    @NotNull
    public final <T> T[] testToArray$kotlin_stdlib(@NotNull T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) toArray(array);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (array.length < size()) {
            array = (T[]) ArraysKt__ArraysJVMKt.arrayOfNulls(array, size());
        }
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        int positiveMod = positiveMod(this.head + size());
        int i2 = this.head;
        if (i2 < positiveMod) {
            ArraysKt___ArraysJvmKt.copyInto$default(this.elementData, array, 0, i2, positiveMod, 2, (Object) null);
        } else if (!isEmpty()) {
            Object[] objArr = this.elementData;
            ArraysKt.copyInto(objArr, array, 0, this.head, objArr.length);
            Object[] objArr2 = this.elementData;
            ArraysKt.copyInto(objArr2, array, objArr2.length - this.head, 0, positiveMod);
        }
        if (array.length > size()) {
            array[size()] = null;
        }
        return array;
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public void add(int i2, E e4) {
        AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i2, size());
        if (i2 == size()) {
            addLast(e4);
        } else if (i2 == 0) {
            addFirst(e4);
        } else {
            ensureCapacity(size() + 1);
            int positiveMod = positiveMod(this.head + i2);
            if (i2 < ((size() + 1) >> 1)) {
                int decremented = decremented(positiveMod);
                int decremented2 = decremented(this.head);
                int i4 = this.head;
                if (decremented >= i4) {
                    Object[] objArr = this.elementData;
                    objArr[decremented2] = objArr[i4];
                    ArraysKt.copyInto(objArr, objArr, i4, i4 + 1, decremented + 1);
                } else {
                    Object[] objArr2 = this.elementData;
                    ArraysKt.copyInto(objArr2, objArr2, i4 - 1, i4, objArr2.length);
                    Object[] objArr3 = this.elementData;
                    objArr3[objArr3.length - 1] = objArr3[0];
                    ArraysKt.copyInto(objArr3, objArr3, 0, 1, decremented + 1);
                }
                this.elementData[decremented] = e4;
                this.head = decremented2;
            } else {
                int positiveMod2 = positiveMod(this.head + size());
                if (positiveMod < positiveMod2) {
                    Object[] objArr4 = this.elementData;
                    ArraysKt.copyInto(objArr4, objArr4, positiveMod + 1, positiveMod, positiveMod2);
                } else {
                    Object[] objArr5 = this.elementData;
                    ArraysKt.copyInto(objArr5, objArr5, 1, 0, positiveMod2);
                    Object[] objArr6 = this.elementData;
                    objArr6[0] = objArr6[objArr6.length - 1];
                    ArraysKt.copyInto(objArr6, objArr6, positiveMod + 1, positiveMod, objArr6.length - 1);
                }
                this.elementData[positiveMod] = e4;
            }
            this.size = size() + 1;
        }
    }

    @NotNull
    public final Object[] testToArray$kotlin_stdlib() {
        return toArray();
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i2, @NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i2, size());
        if (elements.isEmpty()) {
            return false;
        }
        if (i2 == size()) {
            return addAll(elements);
        }
        ensureCapacity(size() + elements.size());
        int positiveMod = positiveMod(this.head + size());
        int positiveMod2 = positiveMod(this.head + i2);
        int size = elements.size();
        if (i2 < ((size() + 1) >> 1)) {
            int i4 = this.head;
            int i5 = i4 - size;
            if (positiveMod2 < i4) {
                Object[] objArr = this.elementData;
                ArraysKt.copyInto(objArr, objArr, i5, i4, objArr.length);
                if (size >= positiveMod2) {
                    Object[] objArr2 = this.elementData;
                    ArraysKt.copyInto(objArr2, objArr2, objArr2.length - size, 0, positiveMod2);
                } else {
                    Object[] objArr3 = this.elementData;
                    ArraysKt.copyInto(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.elementData;
                    ArraysKt.copyInto(objArr4, objArr4, 0, size, positiveMod2);
                }
            } else if (i5 >= 0) {
                Object[] objArr5 = this.elementData;
                ArraysKt.copyInto(objArr5, objArr5, i5, i4, positiveMod2);
            } else {
                Object[] objArr6 = this.elementData;
                i5 += objArr6.length;
                int i6 = positiveMod2 - i4;
                int length = objArr6.length - i5;
                if (length >= i6) {
                    ArraysKt.copyInto(objArr6, objArr6, i5, i4, positiveMod2);
                } else {
                    ArraysKt.copyInto(objArr6, objArr6, i5, i4, i4 + length);
                    Object[] objArr7 = this.elementData;
                    ArraysKt.copyInto(objArr7, objArr7, 0, this.head + length, positiveMod2);
                }
            }
            this.head = i5;
            copyCollectionElements(negativeMod(positiveMod2 - size), elements);
        } else {
            int i7 = positiveMod2 + size;
            if (positiveMod2 < positiveMod) {
                int i8 = size + positiveMod;
                Object[] objArr8 = this.elementData;
                if (i8 <= objArr8.length) {
                    ArraysKt.copyInto(objArr8, objArr8, i7, positiveMod2, positiveMod);
                } else if (i7 >= objArr8.length) {
                    ArraysKt.copyInto(objArr8, objArr8, i7 - objArr8.length, positiveMod2, positiveMod);
                } else {
                    int length2 = positiveMod - (i8 - objArr8.length);
                    ArraysKt.copyInto(objArr8, objArr8, 0, length2, positiveMod);
                    Object[] objArr9 = this.elementData;
                    ArraysKt.copyInto(objArr9, objArr9, i7, positiveMod2, length2);
                }
            } else {
                Object[] objArr10 = this.elementData;
                ArraysKt.copyInto(objArr10, objArr10, size, 0, positiveMod);
                Object[] objArr11 = this.elementData;
                if (i7 >= objArr11.length) {
                    ArraysKt.copyInto(objArr11, objArr11, i7 - objArr11.length, positiveMod2, objArr11.length);
                } else {
                    ArraysKt.copyInto(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.elementData;
                    ArraysKt.copyInto(objArr12, objArr12, i7, positiveMod2, objArr12.length - size);
                }
            }
            copyCollectionElements(positiveMod2, elements);
        }
        return true;
    }

    public ArrayDeque() {
        this.elementData = emptyElementData;
    }

    public ArrayDeque(@NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Object[] array = elements.toArray(new Object[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        this.elementData = array;
        this.size = array.length;
        if (array.length == 0) {
            this.elementData = emptyElementData;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
