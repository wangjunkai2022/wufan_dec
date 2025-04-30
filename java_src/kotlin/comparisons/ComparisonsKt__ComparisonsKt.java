package kotlin.comparisons;

import java.util.Comparator;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Comparisons.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0006\u001a[\u0010\b\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\u0006\u0010\u0002\u001a\u00028\u000026\u0010\u0006\u001a\u001c\u0012\u0018\b\u0001\u0012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u00040\u0003\"\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0004¢\u0006\u0004\b\b\u0010\t\u001aG\u0010\u000b\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\u0006\u0010\u0002\u001a\u00028\u00002 \u0010\u0006\u001a\u001c\u0012\u0018\b\u0001\u0012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u00040\u0003H\u0002¢\u0006\u0004\b\n\u0010\t\u001aC\u0010\b\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u0018\u0010\f\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0004H\u0087\bø\u0001\u0000¢\u0006\u0004\b\b\u0010\r\u001a_\u0010\b\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u000e2\u0006\u0010\u0001\u001a\u00028\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00010\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0001`\u00102\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0087\bø\u0001\u0000¢\u0006\u0004\b\b\u0010\u0012\u001a/\u0010\u0013\u001a\u00020\u0007\"\f\b\u0000\u0010\u0000*\u0006\u0012\u0002\b\u00030\u00052\b\u0010\u0001\u001a\u0004\u0018\u00018\u00002\b\u0010\u0002\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a[\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u000026\u0010\u0006\u001a\u001c\u0012\u0018\b\u0001\u0012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u00040\u0003\"\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0004¢\u0006\u0004\b\u0015\u0010\u0016\u001a>\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u00002\u001a\b\u0004\u0010\f\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0004H\u0087\bø\u0001\u0000\u001aZ\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u000e2\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00010\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0001`\u00102\u0014\b\u0004\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0087\bø\u0001\u0000\u001a>\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u00002\u001a\b\u0004\u0010\f\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0004H\u0087\bø\u0001\u0000\u001aZ\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u000e2\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00010\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0001`\u00102\u0014\b\u0004\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0087\bø\u0001\u0000\u001aR\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000*\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u00102\u001a\b\u0004\u0010\f\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0004H\u0087\bø\u0001\u0000\u001an\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u000e*\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u00102\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00010\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0001`\u00102\u0014\b\u0004\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0087\bø\u0001\u0000\u001aR\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000*\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u00102\u001a\b\u0004\u0010\f\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0004H\u0087\bø\u0001\u0000\u001an\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u000e*\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u00102\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00010\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0001`\u00102\u0014\b\u0004\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0087\bø\u0001\u0000\u001ap\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000*\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u001028\b\u0004\u0010\u001d\u001a2\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u0002\u0012\u0004\u0012\u00020\u00070\u001aH\u0087\bø\u0001\u0000\u001aO\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000*\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u00102\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0010H\u0086\u0004\u001aO\u0010 \u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000*\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u00102\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0010H\u0086\u0004\u001a@\u0010\"\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000fj\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000`\u0010\"\b\b\u0000\u0010\u0000*\u00020!2\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0010\u001a-\u0010\"\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000fj\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000`\u0010\"\u000e\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0087\b\u001a@\u0010#\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000fj\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000`\u0010\"\b\b\u0000\u0010\u0000*\u00020!2\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0010\u001a-\u0010#\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000fj\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000`\u0010\"\u000e\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0087\b\u001a&\u0010$\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u000e\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0005\u001a&\u0010%\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u000e\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0005\u001a0\u0010&\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000*\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006'"}, d2 = {"T", "a", "b", "", "Lkotlin/Function1;", "", "selectors", "", "compareValuesBy", "(Ljava/lang/Object;Ljava/lang/Object;[Lkotlin/jvm/functions/Function1;)I", "compareValuesByImpl$ComparisonsKt__ComparisonsKt", "compareValuesByImpl", "selector", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)I", "K", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;Lkotlin/jvm/functions/Function1;)I", "compareValues", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)I", "compareBy", "([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;", "compareByDescending", "thenBy", "thenByDescending", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "comparison", "thenComparator", "then", "thenDescending", "", "nullsFirst", "nullsLast", "naturalOrder", "reverseOrder", "reversed", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/comparisons/ComparisonsKt")
/* loaded from: classes.dex */
public class ComparisonsKt__ComparisonsKt {
    @NotNull
    public static final <T> Comparator<T> compareBy(@NotNull final Function1<? super T, ? extends Comparable<?>>... selectors) {
        Intrinsics.checkNotNullParameter(selectors, "selectors");
        if (selectors.length > 0) {
            return new Comparator<T>() { // from class: kotlin.comparisons.ComparisonsKt__ComparisonsKt$compareBy$1
                @Override // java.util.Comparator
                public final int compare(T t3, T t4) {
                    int compareValuesByImpl$ComparisonsKt__ComparisonsKt;
                    compareValuesByImpl$ComparisonsKt__ComparisonsKt = ComparisonsKt__ComparisonsKt.compareValuesByImpl$ComparisonsKt__ComparisonsKt(t3, t4, selectors);
                    return compareValuesByImpl$ComparisonsKt__ComparisonsKt;
                }
            };
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @InlineOnly
    private static final <T> Comparator<T> compareByDescending(Function1<? super T, ? extends Comparable<?>> function1) {
        return new ComparisonsKt__ComparisonsKt$compareByDescending$1(function1);
    }

    public static <T extends Comparable<?>> int compareValues(@Nullable T t3, @Nullable T t4) {
        if (t3 == t4) {
            return 0;
        }
        if (t3 == null) {
            return -1;
        }
        if (t4 == null) {
            return 1;
        }
        return t3.compareTo(t4);
    }

    public static final <T> int compareValuesBy(T t3, T t4, @NotNull Function1<? super T, ? extends Comparable<?>>... selectors) {
        Intrinsics.checkNotNullParameter(selectors, "selectors");
        if (selectors.length > 0) {
            return compareValuesByImpl$ComparisonsKt__ComparisonsKt(t3, t4, selectors);
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> int compareValuesByImpl$ComparisonsKt__ComparisonsKt(T t3, T t4, Function1<? super T, ? extends Comparable<?>>[] function1Arr) {
        int compareValues;
        for (Function1<? super T, ? extends Comparable<?>> function1 : function1Arr) {
            compareValues = compareValues(function1.invoke(t3), function1.invoke(t4));
            if (compareValues != 0) {
                return compareValues;
            }
        }
        return 0;
    }

    @NotNull
    public static final <T extends Comparable<? super T>> Comparator<T> naturalOrder() {
        NaturalOrderComparator naturalOrderComparator = NaturalOrderComparator.INSTANCE;
        Objects.requireNonNull(naturalOrderComparator, "null cannot be cast to non-null type kotlin.Comparator<T> /* = java.util.Comparator<T> */");
        return naturalOrderComparator;
    }

    @NotNull
    public static final <T> Comparator<T> nullsFirst(@NotNull final Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return new Comparator<T>() { // from class: kotlin.comparisons.ComparisonsKt__ComparisonsKt$nullsFirst$1
            @Override // java.util.Comparator
            public final int compare(@Nullable T t3, @Nullable T t4) {
                if (t3 == t4) {
                    return 0;
                }
                if (t3 == null) {
                    return -1;
                }
                if (t4 == null) {
                    return 1;
                }
                return comparator.compare(t3, t4);
            }
        };
    }

    @NotNull
    public static final <T> Comparator<T> nullsLast(@NotNull final Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return new Comparator<T>() { // from class: kotlin.comparisons.ComparisonsKt__ComparisonsKt$nullsLast$1
            @Override // java.util.Comparator
            public final int compare(@Nullable T t3, @Nullable T t4) {
                if (t3 == t4) {
                    return 0;
                }
                if (t3 == null) {
                    return 1;
                }
                if (t4 == null) {
                    return -1;
                }
                return comparator.compare(t3, t4);
            }
        };
    }

    @NotNull
    public static <T extends Comparable<? super T>> Comparator<T> reverseOrder() {
        ReverseOrderComparator reverseOrderComparator = ReverseOrderComparator.INSTANCE;
        Objects.requireNonNull(reverseOrderComparator, "null cannot be cast to non-null type kotlin.Comparator<T> /* = java.util.Comparator<T> */");
        return reverseOrderComparator;
    }

    @NotNull
    public static final <T> Comparator<T> reversed(@NotNull Comparator<T> reversed) {
        Intrinsics.checkNotNullParameter(reversed, "$this$reversed");
        if (reversed instanceof ReversedComparator) {
            return ((ReversedComparator) reversed).getComparator();
        }
        Comparator<T> comparator = NaturalOrderComparator.INSTANCE;
        if (Intrinsics.areEqual(reversed, comparator)) {
            ReverseOrderComparator reverseOrderComparator = ReverseOrderComparator.INSTANCE;
            Objects.requireNonNull(reverseOrderComparator, "null cannot be cast to non-null type kotlin.Comparator<T> /* = java.util.Comparator<T> */");
            return reverseOrderComparator;
        }
        if (Intrinsics.areEqual(reversed, ReverseOrderComparator.INSTANCE)) {
            Objects.requireNonNull(comparator, "null cannot be cast to non-null type kotlin.Comparator<T> /* = java.util.Comparator<T> */");
        } else {
            comparator = new ReversedComparator<>(reversed);
        }
        return comparator;
    }

    @NotNull
    public static final <T> Comparator<T> then(@NotNull final Comparator<T> then, @NotNull final Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(then, "$this$then");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return new Comparator<T>() { // from class: kotlin.comparisons.ComparisonsKt__ComparisonsKt$then$1
            @Override // java.util.Comparator
            public final int compare(T t3, T t4) {
                int compare = then.compare(t3, t4);
                return compare != 0 ? compare : comparator.compare(t3, t4);
            }
        };
    }

    @InlineOnly
    private static final <T> Comparator<T> thenBy(final Comparator<T> comparator, final Function1<? super T, ? extends Comparable<?>> function1) {
        return new Comparator<T>() { // from class: kotlin.comparisons.ComparisonsKt__ComparisonsKt$thenBy$1
            @Override // java.util.Comparator
            public final int compare(T t3, T t4) {
                int compareValues;
                int compare = comparator.compare(t3, t4);
                if (compare != 0) {
                    return compare;
                }
                compareValues = ComparisonsKt__ComparisonsKt.compareValues((Comparable) function1.invoke(t3), (Comparable) function1.invoke(t4));
                return compareValues;
            }
        };
    }

    @InlineOnly
    private static final <T> Comparator<T> thenByDescending(final Comparator<T> comparator, final Function1<? super T, ? extends Comparable<?>> function1) {
        return new Comparator<T>() { // from class: kotlin.comparisons.ComparisonsKt__ComparisonsKt$thenByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t3, T t4) {
                int compareValues;
                int compare = comparator.compare(t3, t4);
                if (compare != 0) {
                    return compare;
                }
                compareValues = ComparisonsKt__ComparisonsKt.compareValues((Comparable) function1.invoke(t4), (Comparable) function1.invoke(t3));
                return compareValues;
            }
        };
    }

    @InlineOnly
    private static final <T> Comparator<T> thenComparator(final Comparator<T> comparator, final Function2<? super T, ? super T, Integer> function2) {
        return new Comparator<T>() { // from class: kotlin.comparisons.ComparisonsKt__ComparisonsKt$thenComparator$1
            @Override // java.util.Comparator
            public final int compare(T t3, T t4) {
                int compare = comparator.compare(t3, t4);
                return compare != 0 ? compare : ((Number) function2.invoke(t3, t4)).intValue();
            }
        };
    }

    @NotNull
    public static final <T> Comparator<T> thenDescending(@NotNull final Comparator<T> thenDescending, @NotNull final Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(thenDescending, "$this$thenDescending");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return new Comparator<T>() { // from class: kotlin.comparisons.ComparisonsKt__ComparisonsKt$thenDescending$1
            @Override // java.util.Comparator
            public final int compare(T t3, T t4) {
                int compare = thenDescending.compare(t3, t4);
                return compare != 0 ? compare : comparator.compare(t4, t3);
            }
        };
    }

    @InlineOnly
    private static final <T, K> Comparator<T> compareByDescending(final Comparator<? super K> comparator, final Function1<? super T, ? extends K> function1) {
        return new Comparator<T>() { // from class: kotlin.comparisons.ComparisonsKt__ComparisonsKt$compareByDescending$2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t3, T t4) {
                return comparator.compare(function1.invoke(t4), function1.invoke(t3));
            }
        };
    }

    @InlineOnly
    private static final <T extends Comparable<? super T>> Comparator<T> nullsFirst() {
        return nullsFirst(naturalOrder());
    }

    @InlineOnly
    private static final <T extends Comparable<? super T>> Comparator<T> nullsLast() {
        return nullsLast(naturalOrder());
    }

    @InlineOnly
    private static final <T, K> Comparator<T> thenBy(final Comparator<T> comparator, final Comparator<? super K> comparator2, final Function1<? super T, ? extends K> function1) {
        return new Comparator<T>() { // from class: kotlin.comparisons.ComparisonsKt__ComparisonsKt$thenBy$2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t3, T t4) {
                int compare = comparator.compare(t3, t4);
                return compare != 0 ? compare : comparator2.compare(function1.invoke(t3), function1.invoke(t4));
            }
        };
    }

    @InlineOnly
    private static final <T, K> Comparator<T> thenByDescending(final Comparator<T> comparator, final Comparator<? super K> comparator2, final Function1<? super T, ? extends K> function1) {
        return new Comparator<T>() { // from class: kotlin.comparisons.ComparisonsKt__ComparisonsKt$thenByDescending$2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t3, T t4) {
                int compare = comparator.compare(t3, t4);
                return compare != 0 ? compare : comparator2.compare(function1.invoke(t4), function1.invoke(t3));
            }
        };
    }

    @InlineOnly
    private static final <T> Comparator<T> compareBy(Function1<? super T, ? extends Comparable<?>> function1) {
        return new ComparisonsKt__ComparisonsKt$compareBy$2(function1);
    }

    @InlineOnly
    private static final <T> int compareValuesBy(T t3, T t4, Function1<? super T, ? extends Comparable<?>> function1) {
        int compareValues;
        compareValues = compareValues(function1.invoke(t3), function1.invoke(t4));
        return compareValues;
    }

    @InlineOnly
    private static final <T, K> Comparator<T> compareBy(final Comparator<? super K> comparator, final Function1<? super T, ? extends K> function1) {
        return new Comparator<T>() { // from class: kotlin.comparisons.ComparisonsKt__ComparisonsKt$compareBy$3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t3, T t4) {
                return comparator.compare(function1.invoke(t3), function1.invoke(t4));
            }
        };
    }

    @InlineOnly
    private static final <T, K> int compareValuesBy(T t3, T t4, Comparator<? super K> comparator, Function1<? super T, ? extends K> function1) {
        return comparator.compare((K) function1.invoke(t3), (K) function1.invoke(t4));
    }
}
