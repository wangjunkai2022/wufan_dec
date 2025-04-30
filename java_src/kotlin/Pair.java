package kotlin;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Tuples.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u0001*\u0006\b\u0001\u0010\u0002 \u00012\u00060\u0003j\u0002`\u0004B\u0017\u0012\u0006\u0010\n\u001a\u00028\u0000\u0012\u0006\u0010\u000b\u001a\u00028\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00028\u0000HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00028\u0001HÆ\u0003¢\u0006\u0004\b\t\u0010\bJ0\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0002\u0010\n\u001a\u00028\u00002\b\b\u0002\u0010\u000b\u001a\u00028\u0001HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÖ\u0003R\u0019\u0010\u000b\u001a\u00028\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0014\u001a\u0004\b\u0015\u0010\bR\u0019\u0010\n\u001a\u00028\u00008\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0014\u001a\u0004\b\u0016\u0010\b¨\u0006\u0019"}, d2 = {"Lkotlin/Pair;", "A", "B", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "toString", "component1", "()Ljava/lang/Object;", "component2", "first", "second", "copy", "(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;", "", TTDownloadField.TT_HASHCODE, "", "other", "", "equals", "Ljava/lang/Object;", "getSecond", "getFirst", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class Pair<A, B> implements Serializable {
    private final A first;
    private final B second;

    public Pair(A a4, B b4) {
        this.first = a4;
        this.second = b4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Pair copy$default(Pair pair, Object obj, Object obj2, int i2, Object obj3) {
        if ((i2 & 1) != 0) {
            obj = pair.first;
        }
        if ((i2 & 2) != 0) {
            obj2 = pair.second;
        }
        return pair.copy(obj, obj2);
    }

    public final A component1() {
        return this.first;
    }

    public final B component2() {
        return this.second;
    }

    @NotNull
    public final Pair<A, B> copy(A a4, B b4) {
        return new Pair<>(a4, b4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof Pair) {
                Pair pair = (Pair) obj;
                return Intrinsics.areEqual(this.first, pair.first) && Intrinsics.areEqual(this.second, pair.second);
            }
            return false;
        }
        return true;
    }

    public final A getFirst() {
        return this.first;
    }

    public final B getSecond() {
        return this.second;
    }

    public int hashCode() {
        A a4 = this.first;
        int hashCode = (a4 != null ? a4.hashCode() : 0) * 31;
        B b4 = this.second;
        return hashCode + (b4 != null ? b4.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return '(' + this.first + ", " + this.second + ')';
    }
}
