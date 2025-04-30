package kotlin.collections;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.umeng.analytics.pro.ai;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractSet.kt */
@SinceKotlin(version = "1.1")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b'\u0018\u0000 \f*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\fB\t\b\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0096\u0002J\b\u0010\t\u001a\u00020\bH\u0016¨\u0006\r"}, d2 = {"Lkotlin/collections/AbstractSet;", "E", "Lkotlin/collections/AbstractCollection;", "", "", "other", "", "equals", "", TTDownloadField.TT_HASHCODE, "<init>", "()V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class AbstractSet<E> extends AbstractCollection<E> implements Set<E>, KMappedMarker {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: AbstractSet.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0007\u001a\u00020\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0000¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\r\u001a\u00020\n2\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\b2\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\bH\u0000¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lkotlin/collections/AbstractSet$Companion;", "", "", ai.aD, "", "unorderedHashCode$kotlin_stdlib", "(Ljava/util/Collection;)I", "unorderedHashCode", "", "other", "", "setEquals$kotlin_stdlib", "(Ljava/util/Set;Ljava/util/Set;)Z", "setEquals", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        public final boolean setEquals$kotlin_stdlib(@NotNull Set<?> c4, @NotNull Set<?> other) {
            Intrinsics.checkNotNullParameter(c4, "c");
            Intrinsics.checkNotNullParameter(other, "other");
            if (c4.size() != other.size()) {
                return false;
            }
            return c4.containsAll(other);
        }

        public final int unorderedHashCode$kotlin_stdlib(@NotNull Collection<?> c4) {
            Intrinsics.checkNotNullParameter(c4, "c");
            Iterator<?> it2 = c4.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                Object next = it2.next();
                i2 += next != null ? next.hashCode() : 0;
            }
            return i2;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            return Companion.setEquals$kotlin_stdlib(this, (Set) obj);
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Companion.unorderedHashCode$kotlin_stdlib(this);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
