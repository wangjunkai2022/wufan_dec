package kotlin.collections;

import java.util.RandomAccess;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: _ArraysJvm.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\b\u0010\u0005\u001a\u00020\u0002H\u0016J\u0011\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0096\u0002J\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u0002H\u0016R\u0016\u0010\u0010\u001a\u00020\b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"kotlin/collections/ArraysKt___ArraysJvmKt$asList$7", "Lkotlin/collections/AbstractList;", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "isEmpty", "element", "contains", "", "index", "get", "(I)Ljava/lang/Boolean;", "indexOf", "lastIndexOf", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class ArraysKt___ArraysJvmKt$asList$7 extends AbstractList<Boolean> implements RandomAccess {
    final /* synthetic */ boolean[] $this_asList;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArraysKt___ArraysJvmKt$asList$7(boolean[] zArr) {
        this.$this_asList = zArr;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Boolean) {
            return contains(((Boolean) obj).booleanValue());
        }
        return false;
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    public int getSize() {
        return this.$this_asList.length;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Boolean) {
            return indexOf(((Boolean) obj).booleanValue());
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.$this_asList.length == 0;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Boolean) {
            return lastIndexOf(((Boolean) obj).booleanValue());
        }
        return -1;
    }

    public boolean contains(boolean z3) {
        return ArraysKt___ArraysKt.contains(this.$this_asList, z3);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    @NotNull
    public Boolean get(int i2) {
        return Boolean.valueOf(this.$this_asList[i2]);
    }

    public int indexOf(boolean z3) {
        return ArraysKt___ArraysKt.indexOf(this.$this_asList, z3);
    }

    public int lastIndexOf(boolean z3) {
        return ArraysKt___ArraysKt.lastIndexOf(this.$this_asList, z3);
    }
}
