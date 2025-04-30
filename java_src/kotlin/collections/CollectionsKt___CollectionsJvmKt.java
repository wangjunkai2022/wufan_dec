package kotlin.collections;

import io.netty.handler.codec.rtsp.RtspHeaders;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.OverloadResolutionByLambdaReturnType;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _CollectionsJvm.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u001f\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a(\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\u0006\u0012\u0002\b\u00030\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u001aC\u0010\t\u001a\u00028\u0000\"\u0010\b\u0000\u0010\u0007*\n\u0012\u0006\b\u0000\u0012\u00028\u00010\u0006\"\u0004\b\u0001\u0010\u0000*\u0006\u0012\u0002\b\u00030\u00012\u0006\u0010\b\u001a\u00028\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002¢\u0006\u0004\b\t\u0010\n\u001a\u0016\u0010\u000e\u001a\u00020\r\"\u0004\b\u0000\u0010\u000b*\b\u0012\u0004\u0012\u00028\u00000\f\u001a&\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\"\u000e\b\u0000\u0010\u000b*\b\u0012\u0004\u0012\u00028\u00000\u000f*\b\u0012\u0004\u0012\u00028\u00000\u0001\u001a8\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\"\u0004\b\u0000\u0010\u000b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u001a\u0010\u0014\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u0012j\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0013\u001a7\u0010\u001a\u001a\u00020\u0016\"\u0004\b\u0000\u0010\u000b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00160\u0015H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a7\u0010\u001a\u001a\u00020\u001b\"\u0004\b\u0000\u0010\u000b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001b0\u0015H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001e"}, d2 = {"R", "", "Ljava/lang/Class;", "klass", "", "filterIsInstance", "", "C", RtspHeaders.Values.DESTINATION, "filterIsInstanceTo", "(Ljava/lang/Iterable;Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;", "T", "", "", "reverse", "", "Ljava/util/SortedSet;", "toSortedSet", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "Lkotlin/Function1;", "Ljava/math/BigDecimal;", "selector", "sumOfBigDecimal", "(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "sumOf", "Ljava/math/BigInteger;", "sumOfBigInteger", "(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/CollectionsKt")
/* loaded from: classes.dex */
public class CollectionsKt___CollectionsJvmKt extends CollectionsKt__ReversedViewsKt {
    @NotNull
    public static final <R> List<R> filterIsInstance(@NotNull Iterable<?> filterIsInstance, @NotNull Class<R> klass) {
        Intrinsics.checkNotNullParameter(filterIsInstance, "$this$filterIsInstance");
        Intrinsics.checkNotNullParameter(klass, "klass");
        return (List) filterIsInstanceTo(filterIsInstance, new ArrayList(), klass);
    }

    @NotNull
    public static final <C extends Collection<? super R>, R> C filterIsInstanceTo(@NotNull Iterable<?> filterIsInstanceTo, @NotNull C destination, @NotNull Class<R> klass) {
        Intrinsics.checkNotNullParameter(filterIsInstanceTo, "$this$filterIsInstanceTo");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(klass, "klass");
        for (Object obj : filterIsInstanceTo) {
            if (klass.isInstance(obj)) {
                destination.add(obj);
            }
        }
        return destination;
    }

    public static <T> void reverse(@NotNull List<T> reverse) {
        Intrinsics.checkNotNullParameter(reverse, "$this$reverse");
        Collections.reverse(reverse);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final <T> BigDecimal sumOfBigDecimal(Iterable<? extends T> iterable, Function1<? super T, ? extends BigDecimal> function1) {
        BigDecimal valueOf = BigDecimal.valueOf(0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigDecimal.valueOf(this.toLong())");
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            valueOf = valueOf.add(function1.invoke((T) it2.next()));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final <T> BigInteger sumOfBigInteger(Iterable<? extends T> iterable, Function1<? super T, ? extends BigInteger> function1) {
        BigInteger valueOf = BigInteger.valueOf(0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigInteger.valueOf(this.toLong())");
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            valueOf = valueOf.add(function1.invoke((T) it2.next()));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @NotNull
    public static final <T extends Comparable<? super T>> SortedSet<T> toSortedSet(@NotNull Iterable<? extends T> toSortedSet) {
        Intrinsics.checkNotNullParameter(toSortedSet, "$this$toSortedSet");
        return (SortedSet) CollectionsKt___CollectionsKt.toCollection(toSortedSet, new TreeSet());
    }

    @NotNull
    public static final <T> SortedSet<T> toSortedSet(@NotNull Iterable<? extends T> toSortedSet, @NotNull Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(toSortedSet, "$this$toSortedSet");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return (SortedSet) CollectionsKt___CollectionsKt.toCollection(toSortedSet, new TreeSet(comparator));
    }
}
