package kotlin;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.Arrays;
import java.util.Collection;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.ULongIterator;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: ULongArray.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0016\n\u0002\b\u000b\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00013B\u0014\b\u0001\u0012\u0006\u0010*\u001a\u00020)ø\u0001\u0000¢\u0006\u0004\b0\u00101B\u0014\b\u0016\u0012\u0006\u0010/\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b0\u00102J\u001e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\f\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\rH\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J \u0010\u0019\u001a\u00020\u00122\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001c\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010 \u001a\u00020\u001dHÖ\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010#\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b!\u0010\"J\u001a\u0010(\u001a\u00020\u00122\b\u0010%\u001a\u0004\u0018\u00010$HÖ\u0003¢\u0006\u0004\b&\u0010'R\u001c\u0010*\u001a\u00020)8\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b*\u0010+\u0012\u0004\b,\u0010-R\u0016\u0010/\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010\"ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u00064"}, d2 = {"Lkotlin/ULongArray;", "", "Lkotlin/ULong;", "", "index", "get-s-VKNKU", "([JI)J", "get", "value", "", "set-k8EXiF4", "([JIJ)V", "set", "", "iterator-impl", "([J)Ljava/util/Iterator;", "iterator", "element", "", "contains-VKZWuLQ", "([JJ)Z", "contains", "elements", "containsAll-impl", "([JLjava/util/Collection;)Z", "containsAll", "isEmpty-impl", "([J)Z", "isEmpty", "", "toString-impl", "([J)Ljava/lang/String;", "toString", "hashCode-impl", "([J)I", TTDownloadField.TT_HASHCODE, "", "other", "equals-impl", "([JLjava/lang/Object;)Z", "equals", "", "storage", "[J", "getStorage$annotations", "()V", "getSize-impl", "size", "constructor-impl", "([J)[J", "(I)[J", "Iterator", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@ExperimentalUnsignedTypes
@JvmInline
/* loaded from: classes.dex */
public final class ULongArray implements Collection<ULong>, KMappedMarker {
    @NotNull
    private final long[] storage;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ULongArray.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0016\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\u0015\u0010\u0007\u001a\u00020\u0004H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0010"}, d2 = {"Lkotlin/ULongArray$Iterator;", "Lkotlin/collections/ULongIterator;", "", "hasNext", "Lkotlin/ULong;", "nextULong-s-VKNKU", "()J", "nextULong", "", "index", "I", "", "array", "[J", "<init>", "([J)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Iterator extends ULongIterator {
        private final long[] array;
        private int index;

        public Iterator(@NotNull long[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            this.array = array;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.array.length;
        }

        @Override // kotlin.collections.ULongIterator
        /* renamed from: nextULong-s-VKNKU  reason: not valid java name */
        public long mo265nextULongsVKNKU() {
            int i2 = this.index;
            long[] jArr = this.array;
            if (i2 < jArr.length) {
                this.index = i2 + 1;
                return ULong.m196constructorimpl(jArr[i2]);
            }
            throw new NoSuchElementException(String.valueOf(this.index));
        }
    }

    @PublishedApi
    private /* synthetic */ ULongArray(long[] storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        this.storage = storage;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ULongArray m248boximpl(long[] v3) {
        Intrinsics.checkNotNullParameter(v3, "v");
        return new ULongArray(v3);
    }

    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static long[] m249constructorimpl(int i2) {
        return m250constructorimpl(new long[i2]);
    }

    @PublishedApi
    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static long[] m250constructorimpl(@NotNull long[] storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return storage;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0032 A[SYNTHETIC] */
    /* renamed from: containsAll-impl  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m252containsAllimpl(long[] r5, @org.jetbrains.annotations.NotNull java.util.Collection<kotlin.ULong> r6) {
        /*
            java.lang.String r0 = "elements"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            boolean r0 = r6.isEmpty()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto Lf
        Ld:
            r1 = 1
            goto L32
        Lf:
            java.util.Iterator r6 = r6.iterator()
        L13:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto Ld
            java.lang.Object r0 = r6.next()
            boolean r3 = r0 instanceof kotlin.ULong
            if (r3 == 0) goto L2f
            kotlin.ULong r0 = (kotlin.ULong) r0
            long r3 = r0.m247unboximpl()
            boolean r0 = kotlin.collections.ArraysKt.contains(r5, r3)
            if (r0 == 0) goto L2f
            r0 = 1
            goto L30
        L2f:
            r0 = 0
        L30:
            if (r0 != 0) goto L13
        L32:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ULongArray.m252containsAllimpl(long[], java.util.Collection):boolean");
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m253equalsimpl(long[] jArr, Object obj) {
        return (obj instanceof ULongArray) && Intrinsics.areEqual(jArr, ((ULongArray) obj).m264unboximpl());
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m254equalsimpl0(long[] jArr, long[] jArr2) {
        return Intrinsics.areEqual(jArr, jArr2);
    }

    /* renamed from: get-s-VKNKU  reason: not valid java name */
    public static final long m255getsVKNKU(long[] jArr, int i2) {
        return ULong.m196constructorimpl(jArr[i2]);
    }

    /* renamed from: getSize-impl  reason: not valid java name */
    public static int m256getSizeimpl(long[] jArr) {
        return jArr.length;
    }

    @PublishedApi
    public static /* synthetic */ void getStorage$annotations() {
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m257hashCodeimpl(long[] jArr) {
        if (jArr != null) {
            return Arrays.hashCode(jArr);
        }
        return 0;
    }

    /* renamed from: isEmpty-impl  reason: not valid java name */
    public static boolean m258isEmptyimpl(long[] jArr) {
        return jArr.length == 0;
    }

    @NotNull
    /* renamed from: iterator-impl  reason: not valid java name */
    public static java.util.Iterator<ULong> m259iteratorimpl(long[] jArr) {
        return new Iterator(jArr);
    }

    /* renamed from: set-k8EXiF4  reason: not valid java name */
    public static final void m260setk8EXiF4(long[] jArr, int i2, long j4) {
        jArr[i2] = j4;
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m261toStringimpl(long[] jArr) {
        return "ULongArray(storage=" + Arrays.toString(jArr) + ")";
    }

    @Override // java.util.Collection
    public /* synthetic */ boolean add(ULong uLong) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: add-VKZWuLQ  reason: not valid java name */
    public boolean m262addVKZWuLQ(long j4) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends ULong> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ULong) {
            return m263containsVKZWuLQ(((ULong) obj).m247unboximpl());
        }
        return false;
    }

    /* renamed from: contains-VKZWuLQ  reason: not valid java name */
    public boolean m263containsVKZWuLQ(long j4) {
        return m251containsVKZWuLQ(this.storage, j4);
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> collection) {
        return m252containsAllimpl(this.storage, collection);
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return m253equalsimpl(this.storage, obj);
    }

    public int getSize() {
        return m256getSizeimpl(this.storage);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return m257hashCodeimpl(this.storage);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m258isEmptyimpl(this.storage);
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public java.util.Iterator<ULong> iterator() {
        return m259iteratorimpl(this.storage);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) CollectionToArray.toArray(this, tArr);
    }

    public String toString() {
        return m261toStringimpl(this.storage);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long[] m264unboximpl() {
        return this.storage;
    }

    /* renamed from: contains-VKZWuLQ  reason: not valid java name */
    public static boolean m251containsVKZWuLQ(long[] jArr, long j4) {
        boolean contains;
        contains = ArraysKt___ArraysKt.contains(jArr, j4);
        return contains;
    }
}
