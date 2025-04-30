package kotlin.sequences;

import io.netty.handler.codec.rtsp.RtspHeaders;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
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
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _SequencesJvm.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001f\n\u0002\b\u0004\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\u0006\u0012\u0002\b\u00030\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u001aC\u0010\b\u001a\u00028\u0000\"\u0010\b\u0000\u0010\u0006*\n\u0012\u0006\b\u0000\u0012\u00028\u00010\u0005\"\u0004\b\u0001\u0010\u0000*\u0006\u0012\u0002\b\u00030\u00012\u0006\u0010\u0007\u001a\u00028\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002¢\u0006\u0004\b\b\u0010\t\u001a&\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f\"\u000e\b\u0000\u0010\u000b*\b\u0012\u0004\u0012\u00028\u00000\n*\b\u0012\u0004\u0012\u00028\u00000\u0001\u001a8\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f\"\u0004\b\u0000\u0010\u000b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u001a\u0010\u0010\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u000ej\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u000f\u001a7\u0010\u0016\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u000b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00120\u0011H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a7\u0010\u0016\u001a\u00020\u0017\"\u0004\b\u0000\u0010\u000b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00170\u0011H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001a"}, d2 = {"R", "Lkotlin/sequences/Sequence;", "Ljava/lang/Class;", "klass", "filterIsInstance", "", "C", RtspHeaders.Values.DESTINATION, "filterIsInstanceTo", "(Lkotlin/sequences/Sequence;Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;", "", "T", "Ljava/util/SortedSet;", "toSortedSet", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "Lkotlin/Function1;", "Ljava/math/BigDecimal;", "selector", "sumOfBigDecimal", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "sumOf", "Ljava/math/BigInteger;", "sumOfBigInteger", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/sequences/SequencesKt")
/* loaded from: classes.dex */
public class SequencesKt___SequencesJvmKt extends SequencesKt__SequencesKt {
    @NotNull
    public static final <R> Sequence<R> filterIsInstance(@NotNull Sequence<?> filterIsInstance, @NotNull final Class<R> klass) {
        Sequence<R> filter;
        Intrinsics.checkNotNullParameter(filterIsInstance, "$this$filterIsInstance");
        Intrinsics.checkNotNullParameter(klass, "klass");
        filter = SequencesKt___SequencesKt.filter(filterIsInstance, new Function1<Object, Boolean>() { // from class: kotlin.sequences.SequencesKt___SequencesJvmKt$filterIsInstance$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
                return Boolean.valueOf(invoke2(obj));
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final boolean invoke2(@Nullable Object obj) {
                return klass.isInstance(obj);
            }
        });
        Objects.requireNonNull(filter, "null cannot be cast to non-null type kotlin.sequences.Sequence<R>");
        return filter;
    }

    @NotNull
    public static final <C extends Collection<? super R>, R> C filterIsInstanceTo(@NotNull Sequence<?> filterIsInstanceTo, @NotNull C destination, @NotNull Class<R> klass) {
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

    @SinceKotlin(version = "1.4")
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final <T> BigDecimal sumOfBigDecimal(Sequence<? extends T> sequence, Function1<? super T, ? extends BigDecimal> function1) {
        BigDecimal valueOf = BigDecimal.valueOf(0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigDecimal.valueOf(this.toLong())");
        Iterator<? extends T> it2 = sequence.iterator();
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
    private static final <T> BigInteger sumOfBigInteger(Sequence<? extends T> sequence, Function1<? super T, ? extends BigInteger> function1) {
        BigInteger valueOf = BigInteger.valueOf(0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigInteger.valueOf(this.toLong())");
        Iterator<? extends T> it2 = sequence.iterator();
        while (it2.hasNext()) {
            valueOf = valueOf.add(function1.invoke((T) it2.next()));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @NotNull
    public static final <T extends Comparable<? super T>> SortedSet<T> toSortedSet(@NotNull Sequence<? extends T> toSortedSet) {
        Intrinsics.checkNotNullParameter(toSortedSet, "$this$toSortedSet");
        return (SortedSet) SequencesKt___SequencesKt.toCollection(toSortedSet, new TreeSet());
    }

    @NotNull
    public static final <T> SortedSet<T> toSortedSet(@NotNull Sequence<? extends T> toSortedSet, @NotNull Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(toSortedSet, "$this$toSortedSet");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return (SortedSet) SequencesKt___SequencesKt.toCollection(toSortedSet, new TreeSet(comparator));
    }
}
