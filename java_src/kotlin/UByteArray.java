package kotlin;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.Arrays;
import java.util.Collection;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.UByteIterator;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: UByteArray.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u000b\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00013B\u0014\b\u0001\u0012\u0006\u0010*\u001a\u00020)ø\u0001\u0000¢\u0006\u0004\b0\u00101B\u0014\b\u0016\u0012\u0006\u0010/\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b0\u00102J\u001e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\f\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\rH\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J \u0010\u0019\u001a\u00020\u00122\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001c\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010 \u001a\u00020\u001dHÖ\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010#\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b!\u0010\"J\u001a\u0010(\u001a\u00020\u00122\b\u0010%\u001a\u0004\u0018\u00010$HÖ\u0003¢\u0006\u0004\b&\u0010'R\u001c\u0010*\u001a\u00020)8\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b*\u0010+\u0012\u0004\b,\u0010-R\u0016\u0010/\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010\"ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u00064"}, d2 = {"Lkotlin/UByteArray;", "", "Lkotlin/UByte;", "", "index", "get-w2LRezQ", "([BI)B", "get", "value", "", "set-VurrAj0", "([BIB)V", "set", "", "iterator-impl", "([B)Ljava/util/Iterator;", "iterator", "element", "", "contains-7apg3OU", "([BB)Z", "contains", "elements", "containsAll-impl", "([BLjava/util/Collection;)Z", "containsAll", "isEmpty-impl", "([B)Z", "isEmpty", "", "toString-impl", "([B)Ljava/lang/String;", "toString", "hashCode-impl", "([B)I", TTDownloadField.TT_HASHCODE, "", "other", "equals-impl", "([BLjava/lang/Object;)Z", "equals", "", "storage", "[B", "getStorage$annotations", "()V", "getSize-impl", "size", "constructor-impl", "([B)[B", "(I)[B", "Iterator", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@ExperimentalUnsignedTypes
@JvmInline
/* loaded from: classes.dex */
public final class UByteArray implements Collection<UByte>, KMappedMarker {
    @NotNull
    private final byte[] storage;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UByteArray.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\u0015\u0010\u0007\u001a\u00020\u0004H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0010"}, d2 = {"Lkotlin/UByteArray$Iterator;", "Lkotlin/collections/UByteIterator;", "", "hasNext", "Lkotlin/UByte;", "nextUByte-w2LRezQ", "()B", "nextUByte", "", "index", "I", "", "array", "[B", "<init>", "([B)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Iterator extends UByteIterator {
        private final byte[] array;
        private int index;

        public Iterator(@NotNull byte[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            this.array = array;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.array.length;
        }

        @Override // kotlin.collections.UByteIterator
        /* renamed from: nextUByte-w2LRezQ  reason: not valid java name */
        public byte mo109nextUBytew2LRezQ() {
            int i2 = this.index;
            byte[] bArr = this.array;
            if (i2 < bArr.length) {
                this.index = i2 + 1;
                return UByte.m42constructorimpl(bArr[i2]);
            }
            throw new NoSuchElementException(String.valueOf(this.index));
        }
    }

    @PublishedApi
    private /* synthetic */ UByteArray(byte[] storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        this.storage = storage;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ UByteArray m92boximpl(byte[] v3) {
        Intrinsics.checkNotNullParameter(v3, "v");
        return new UByteArray(v3);
    }

    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static byte[] m93constructorimpl(int i2) {
        return m94constructorimpl(new byte[i2]);
    }

    @PublishedApi
    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static byte[] m94constructorimpl(@NotNull byte[] storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return storage;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0032 A[SYNTHETIC] */
    /* renamed from: containsAll-impl  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m96containsAllimpl(byte[] r4, @org.jetbrains.annotations.NotNull java.util.Collection<kotlin.UByte> r5) {
        /*
            java.lang.String r0 = "elements"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            boolean r0 = r5.isEmpty()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto Lf
        Ld:
            r1 = 1
            goto L32
        Lf:
            java.util.Iterator r5 = r5.iterator()
        L13:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto Ld
            java.lang.Object r0 = r5.next()
            boolean r3 = r0 instanceof kotlin.UByte
            if (r3 == 0) goto L2f
            kotlin.UByte r0 = (kotlin.UByte) r0
            byte r0 = r0.m91unboximpl()
            boolean r0 = kotlin.collections.ArraysKt.contains(r4, r0)
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
        throw new UnsupportedOperationException("Method not decompiled: kotlin.UByteArray.m96containsAllimpl(byte[], java.util.Collection):boolean");
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m97equalsimpl(byte[] bArr, Object obj) {
        return (obj instanceof UByteArray) && Intrinsics.areEqual(bArr, ((UByteArray) obj).m108unboximpl());
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m98equalsimpl0(byte[] bArr, byte[] bArr2) {
        return Intrinsics.areEqual(bArr, bArr2);
    }

    /* renamed from: get-w2LRezQ  reason: not valid java name */
    public static final byte m99getw2LRezQ(byte[] bArr, int i2) {
        return UByte.m42constructorimpl(bArr[i2]);
    }

    /* renamed from: getSize-impl  reason: not valid java name */
    public static int m100getSizeimpl(byte[] bArr) {
        return bArr.length;
    }

    @PublishedApi
    public static /* synthetic */ void getStorage$annotations() {
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m101hashCodeimpl(byte[] bArr) {
        if (bArr != null) {
            return Arrays.hashCode(bArr);
        }
        return 0;
    }

    /* renamed from: isEmpty-impl  reason: not valid java name */
    public static boolean m102isEmptyimpl(byte[] bArr) {
        return bArr.length == 0;
    }

    @NotNull
    /* renamed from: iterator-impl  reason: not valid java name */
    public static java.util.Iterator<UByte> m103iteratorimpl(byte[] bArr) {
        return new Iterator(bArr);
    }

    /* renamed from: set-VurrAj0  reason: not valid java name */
    public static final void m104setVurrAj0(byte[] bArr, int i2, byte b4) {
        bArr[i2] = b4;
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m105toStringimpl(byte[] bArr) {
        return "UByteArray(storage=" + Arrays.toString(bArr) + ")";
    }

    @Override // java.util.Collection
    public /* synthetic */ boolean add(UByte uByte) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: add-7apg3OU  reason: not valid java name */
    public boolean m106add7apg3OU(byte b4) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends UByte> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof UByte) {
            return m107contains7apg3OU(((UByte) obj).m91unboximpl());
        }
        return false;
    }

    /* renamed from: contains-7apg3OU  reason: not valid java name */
    public boolean m107contains7apg3OU(byte b4) {
        return m95contains7apg3OU(this.storage, b4);
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> collection) {
        return m96containsAllimpl(this.storage, collection);
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return m97equalsimpl(this.storage, obj);
    }

    public int getSize() {
        return m100getSizeimpl(this.storage);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return m101hashCodeimpl(this.storage);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m102isEmptyimpl(this.storage);
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public java.util.Iterator<UByte> iterator() {
        return m103iteratorimpl(this.storage);
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
        return m105toStringimpl(this.storage);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ byte[] m108unboximpl() {
        return this.storage;
    }

    /* renamed from: contains-7apg3OU  reason: not valid java name */
    public static boolean m95contains7apg3OU(byte[] bArr, byte b4) {
        boolean contains;
        contains = ArraysKt___ArraysKt.contains(bArr, b4);
        return contains;
    }
}
