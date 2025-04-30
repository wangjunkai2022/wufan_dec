package kotlin;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Tuples.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\u001a4\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00028\u00002\u0006\u0010\u0002\u001a\u00028\u0001H\u0086\u0004¢\u0006\u0004\b\u0004\u0010\u0005\u001a\"\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0006*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u0003\u001a(\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0006*\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\t¨\u0006\n"}, d2 = {"A", "B", "that", "Lkotlin/Pair;", TypedValues.TransitionType.S_TO, "(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;", "T", "", "toList", "Lkotlin/Triple;", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
@JvmName(name = "TuplesKt")
/* loaded from: classes.dex */
public final class TuplesKt {
    @NotNull
    public static final <A, B> Pair<A, B> to(A a4, B b4) {
        return new Pair<>(a4, b4);
    }

    @NotNull
    public static final <T> List<T> toList(@NotNull Pair<? extends T, ? extends T> toList) {
        List<T> listOf;
        Intrinsics.checkNotNullParameter(toList, "$this$toList");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Object[]{toList.getFirst(), toList.getSecond()});
        return listOf;
    }

    @NotNull
    public static final <T> List<T> toList(@NotNull Triple<? extends T, ? extends T, ? extends T> toList) {
        List<T> listOf;
        Intrinsics.checkNotNullParameter(toList, "$this$toList");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Object[]{toList.getFirst(), toList.getSecond(), toList.getThird()});
        return listOf;
    }
}
