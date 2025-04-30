package kotlin.collections.unsigned;

import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysKt;
/* compiled from: _UArraysJvm.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\r*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u001b\u0010\n\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ\u001e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0096\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0011R\u0016\u0010\u0017\u001a\u00020\u000b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0018"}, d2 = {"kotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2", "Lkotlin/collections/AbstractList;", "Lkotlin/ULong;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "isEmpty", "element", "contains-VKZWuLQ", "(J)Z", "contains", "", "index", "get-s-VKNKU", "(I)J", "get", "indexOf-VKZWuLQ", "(J)I", "indexOf", "lastIndexOf-VKZWuLQ", "lastIndexOf", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class UArraysKt___UArraysJvmKt$asList$2 extends AbstractList<ULong> implements RandomAccess {
    final /* synthetic */ long[] $this_asList;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UArraysKt___UArraysJvmKt$asList$2(long[] jArr) {
        this.$this_asList = jArr;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ULong) {
            return m515containsVKZWuLQ(((ULong) obj).m247unboximpl());
        }
        return false;
    }

    /* renamed from: contains-VKZWuLQ  reason: not valid java name */
    public boolean m515containsVKZWuLQ(long j4) {
        return ULongArray.m251containsVKZWuLQ(this.$this_asList, j4);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public /* bridge */ /* synthetic */ Object get(int i2) {
        return ULong.m190boximpl(m516getsVKNKU(i2));
    }

    /* renamed from: get-s-VKNKU  reason: not valid java name */
    public long m516getsVKNKU(int i2) {
        return ULongArray.m255getsVKNKU(this.$this_asList, i2);
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    public int getSize() {
        return ULongArray.m256getSizeimpl(this.$this_asList);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ULong) {
            return m517indexOfVKZWuLQ(((ULong) obj).m247unboximpl());
        }
        return -1;
    }

    /* renamed from: indexOf-VKZWuLQ  reason: not valid java name */
    public int m517indexOfVKZWuLQ(long j4) {
        int indexOf;
        indexOf = ArraysKt___ArraysKt.indexOf(this.$this_asList, j4);
        return indexOf;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return ULongArray.m258isEmptyimpl(this.$this_asList);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ULong) {
            return m518lastIndexOfVKZWuLQ(((ULong) obj).m247unboximpl());
        }
        return -1;
    }

    /* renamed from: lastIndexOf-VKZWuLQ  reason: not valid java name */
    public int m518lastIndexOfVKZWuLQ(long j4) {
        int lastIndexOf;
        lastIndexOf = ArraysKt___ArraysKt.lastIndexOf(this.$this_asList, j4);
        return lastIndexOf;
    }
}
