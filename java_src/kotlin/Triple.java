package kotlin;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Tuples.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u0001*\u0006\b\u0001\u0010\u0002 \u0001*\u0006\b\u0002\u0010\u0003 \u00012\u00060\u0004j\u0002`\u0005B\u001f\u0012\u0006\u0010\f\u001a\u00028\u0000\u0012\u0006\u0010\r\u001a\u00028\u0001\u0012\u0006\u0010\u000e\u001a\u00028\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\b\u001a\u00028\u0000HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00028\u0001HÆ\u0003¢\u0006\u0004\b\n\u0010\tJ\u0010\u0010\u000b\u001a\u00028\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\tJ@\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002\b\b\u0002\u0010\f\u001a\u00028\u00002\b\b\u0002\u0010\r\u001a\u00028\u00012\b\b\u0002\u0010\u000e\u001a\u00028\u0002HÆ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u0012\u001a\u00020\u0011HÖ\u0001J\u0013\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013HÖ\u0003R\u0019\u0010\r\u001a\u00028\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0017\u001a\u0004\b\u0018\u0010\tR\u0019\u0010\u000e\u001a\u00028\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0017\u001a\u0004\b\u0019\u0010\tR\u0019\u0010\f\u001a\u00028\u00008\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0017\u001a\u0004\b\u001a\u0010\t¨\u0006\u001d"}, d2 = {"Lkotlin/Triple;", "A", "B", "C", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "toString", "component1", "()Ljava/lang/Object;", "component2", "component3", "first", "second", "third", "copy", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Triple;", "", TTDownloadField.TT_HASHCODE, "", "other", "", "equals", "Ljava/lang/Object;", "getSecond", "getThird", "getFirst", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class Triple<A, B, C> implements Serializable {
    private final A first;
    private final B second;
    private final C third;

    public Triple(A a4, B b4, C c4) {
        this.first = a4;
        this.second = b4;
        this.third = c4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Triple copy$default(Triple triple, Object obj, Object obj2, Object obj3, int i2, Object obj4) {
        if ((i2 & 1) != 0) {
            obj = triple.first;
        }
        if ((i2 & 2) != 0) {
            obj2 = triple.second;
        }
        if ((i2 & 4) != 0) {
            obj3 = triple.third;
        }
        return triple.copy(obj, obj2, obj3);
    }

    public final A component1() {
        return this.first;
    }

    public final B component2() {
        return this.second;
    }

    public final C component3() {
        return this.third;
    }

    @NotNull
    public final Triple<A, B, C> copy(A a4, B b4, C c4) {
        return new Triple<>(a4, b4, c4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof Triple) {
                Triple triple = (Triple) obj;
                return Intrinsics.areEqual(this.first, triple.first) && Intrinsics.areEqual(this.second, triple.second) && Intrinsics.areEqual(this.third, triple.third);
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

    public final C getThird() {
        return this.third;
    }

    public int hashCode() {
        A a4 = this.first;
        int hashCode = (a4 != null ? a4.hashCode() : 0) * 31;
        B b4 = this.second;
        int hashCode2 = (hashCode + (b4 != null ? b4.hashCode() : 0)) * 31;
        C c4 = this.third;
        return hashCode2 + (c4 != null ? c4.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return '(' + this.first + ", " + this.second + ", " + this.third + ')';
    }
}
