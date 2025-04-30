package kotlin.collections.unsigned;

import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysKt;
/* compiled from: _UArraysJvm.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\f*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u001b\u0010\n\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ\u001e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0096\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u000eJ\u001a\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u000eR\u0016\u0010\u0016\u001a\u00020\u000b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0017"}, d2 = {"kotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$1", "Lkotlin/collections/AbstractList;", "Lkotlin/UInt;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "isEmpty", "element", "contains-WZ4Q5Ns", "(I)Z", "contains", "", "index", "get-pVg5ArA", "(I)I", "get", "indexOf-WZ4Q5Ns", "indexOf", "lastIndexOf-WZ4Q5Ns", "lastIndexOf", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class UArraysKt___UArraysJvmKt$asList$1 extends AbstractList<UInt> implements RandomAccess {
    final /* synthetic */ int[] $this_asList;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UArraysKt___UArraysJvmKt$asList$1(int[] iArr) {
        this.$this_asList = iArr;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof UInt) {
            return m511containsWZ4Q5Ns(((UInt) obj).m169unboximpl());
        }
        return false;
    }

    /* renamed from: contains-WZ4Q5Ns  reason: not valid java name */
    public boolean m511containsWZ4Q5Ns(int i2) {
        return UIntArray.m173containsWZ4Q5Ns(this.$this_asList, i2);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public /* bridge */ /* synthetic */ Object get(int i2) {
        return UInt.m112boximpl(m512getpVg5ArA(i2));
    }

    /* renamed from: get-pVg5ArA  reason: not valid java name */
    public int m512getpVg5ArA(int i2) {
        return UIntArray.m177getpVg5ArA(this.$this_asList, i2);
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    public int getSize() {
        return UIntArray.m178getSizeimpl(this.$this_asList);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof UInt) {
            return m513indexOfWZ4Q5Ns(((UInt) obj).m169unboximpl());
        }
        return -1;
    }

    /* renamed from: indexOf-WZ4Q5Ns  reason: not valid java name */
    public int m513indexOfWZ4Q5Ns(int i2) {
        int indexOf;
        indexOf = ArraysKt___ArraysKt.indexOf(this.$this_asList, i2);
        return indexOf;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return UIntArray.m180isEmptyimpl(this.$this_asList);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof UInt) {
            return m514lastIndexOfWZ4Q5Ns(((UInt) obj).m169unboximpl());
        }
        return -1;
    }

    /* renamed from: lastIndexOf-WZ4Q5Ns  reason: not valid java name */
    public int m514lastIndexOfWZ4Q5Ns(int i2) {
        int lastIndexOf;
        lastIndexOf = ArraysKt___ArraysKt.lastIndexOf(this.$this_asList, i2);
        return lastIndexOf;
    }
}
