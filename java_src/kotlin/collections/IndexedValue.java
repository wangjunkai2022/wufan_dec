package kotlin.collections;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IndexedValue.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00028\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010\u0004\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0005\u001a\u00028\u0000HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J*\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00028\u0000HÆ\u0001¢\u0006\u0004\b\t\u0010\nJ\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\t\u0010\r\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002HÖ\u0003R\u0019\u0010\u0007\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0019\u0010\b\u001a\u00028\u00008\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0006¨\u0006\u0018"}, d2 = {"Lkotlin/collections/IndexedValue;", "T", "", "", "component1", "component2", "()Ljava/lang/Object;", "index", "value", "copy", "(ILjava/lang/Object;)Lkotlin/collections/IndexedValue;", "", "toString", TTDownloadField.TT_HASHCODE, "other", "", "equals", "I", "getIndex", "()I", "Ljava/lang/Object;", "getValue", "<init>", "(ILjava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class IndexedValue<T> {
    private final int index;
    private final T value;

    public IndexedValue(int i2, T t3) {
        this.index = i2;
        this.value = t3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ IndexedValue copy$default(IndexedValue indexedValue, int i2, Object obj, int i4, Object obj2) {
        if ((i4 & 1) != 0) {
            i2 = indexedValue.index;
        }
        if ((i4 & 2) != 0) {
            obj = indexedValue.value;
        }
        return indexedValue.copy(i2, obj);
    }

    public final int component1() {
        return this.index;
    }

    public final T component2() {
        return this.value;
    }

    @NotNull
    public final IndexedValue<T> copy(int i2, T t3) {
        return new IndexedValue<>(i2, t3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof IndexedValue) {
                IndexedValue indexedValue = (IndexedValue) obj;
                return this.index == indexedValue.index && Intrinsics.areEqual(this.value, indexedValue.value);
            }
            return false;
        }
        return true;
    }

    public final int getIndex() {
        return this.index;
    }

    public final T getValue() {
        return this.value;
    }

    public int hashCode() {
        int i2 = this.index * 31;
        T t3 = this.value;
        return i2 + (t3 != null ? t3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "IndexedValue(index=" + this.index + ", value=" + this.value + ")";
    }
}
