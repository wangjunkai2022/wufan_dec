package kotlin.sequences;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.SinceKotlin;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.internal.InlineOnly;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Sequences.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\b\n\u0002\u0010\u001c\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0006\u001a.\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001H\u0087\bø\u0001\u0000\u001a\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002\u001a-\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u00002\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0007\"\u00028\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u0012\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000\u001a!\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004H\u0087\b\u001a2\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00042\u0012\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0001H\u0007\u001a\"\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0004\u001a+\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00100\u0004H\u0007¢\u0006\u0004\b\u0011\u0010\u0012\u001aE\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0013*\b\u0012\u0004\u0012\u00028\u00000\u00042\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00020\u0014H\u0002¢\u0006\u0004\b\u0015\u0010\u0016\u001a@\u0010\u0019\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00180\u0017\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0013*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00170\u0004\u001a\u001e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0007\u001a&\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u001c\u001a\u00020\u001bH\u0007\u001ab\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u001d\"\u0004\b\u0002\u0010\u00132\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u00042\u0018\u0010!\u001a\u0014\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001f2\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u00020\u0014H\u0000\u001a\u001c\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0004\u001a&\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\b\b\u0000\u0010\u0000*\u00020$2\u000e\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0001\u001a?\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\b\b\u0000\u0010\u0000*\u00020$2\b\u0010'\u001a\u0004\u0018\u00018\u00002\u0014\u0010%\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0014H\u0007¢\u0006\u0004\b&\u0010(\u001a<\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\b\b\u0000\u0010\u0000*\u00020$2\u000e\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00012\u0014\u0010%\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0014\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006*"}, d2 = {"T", "Lkotlin/Function0;", "", "iterator", "Lkotlin/sequences/Sequence;", "Sequence", "asSequence", "", "elements", "sequenceOf", "([Ljava/lang/Object;)Lkotlin/sequences/Sequence;", "emptySequence", "orEmpty", "defaultValue", "ifEmpty", "flatten", "", "flattenSequenceOfIterable", "(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;", "R", "Lkotlin/Function1;", "flatten$SequencesKt__SequencesKt", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;", "Lkotlin/Pair;", "", "unzip", "shuffled", "Lkotlin/random/Random;", "random", "C", "source", "Lkotlin/Function2;", "", "transform", "flatMapIndexed", "constrainOnce", "", "nextFunction", "generateSequence", "seed", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;", "seedFunction", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/sequences/SequencesKt")
/* loaded from: classes.dex */
public class SequencesKt__SequencesKt extends SequencesKt__SequencesJVMKt {
    @InlineOnly
    private static final <T> Sequence<T> Sequence(final Function0<? extends Iterator<? extends T>> function0) {
        return new Sequence<T>() { // from class: kotlin.sequences.SequencesKt__SequencesKt$Sequence$1
            @Override // kotlin.sequences.Sequence
            @NotNull
            public Iterator<T> iterator() {
                return (Iterator) Function0.this.invoke();
            }
        };
    }

    @NotNull
    public static <T> Sequence<T> asSequence(@NotNull final Iterator<? extends T> asSequence) {
        Sequence<T> constrainOnce;
        Intrinsics.checkNotNullParameter(asSequence, "$this$asSequence");
        constrainOnce = constrainOnce(new Sequence<T>() { // from class: kotlin.sequences.SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            @NotNull
            public Iterator<T> iterator() {
                return asSequence;
            }
        });
        return constrainOnce;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static <T> Sequence<T> constrainOnce(@NotNull Sequence<? extends T> constrainOnce) {
        Intrinsics.checkNotNullParameter(constrainOnce, "$this$constrainOnce");
        return constrainOnce instanceof ConstrainedOnceSequence ? constrainOnce : new ConstrainedOnceSequence(constrainOnce);
    }

    @NotNull
    public static <T> Sequence<T> emptySequence() {
        return EmptySequence.INSTANCE;
    }

    @NotNull
    public static final <T, C, R> Sequence<R> flatMapIndexed(@NotNull Sequence<? extends T> source, @NotNull Function2<? super Integer, ? super T, ? extends C> transform, @NotNull Function1<? super C, ? extends Iterator<? extends R>> iterator) {
        Sequence<R> sequence;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(transform, "transform");
        Intrinsics.checkNotNullParameter(iterator, "iterator");
        sequence = SequencesKt__SequenceBuilderKt.sequence(new SequencesKt__SequencesKt$flatMapIndexed$1(source, transform, iterator, null));
        return sequence;
    }

    @NotNull
    public static final <T> Sequence<T> flatten(@NotNull Sequence<? extends Sequence<? extends T>> flatten) {
        Intrinsics.checkNotNullParameter(flatten, "$this$flatten");
        return flatten$SequencesKt__SequencesKt(flatten, new Function1<Sequence<? extends T>, Iterator<? extends T>>() { // from class: kotlin.sequences.SequencesKt__SequencesKt$flatten$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke((Sequence) ((Sequence) obj));
            }

            @NotNull
            public final Iterator<T> invoke(@NotNull Sequence<? extends T> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return (Iterator<? extends T>) it2.iterator();
            }
        });
    }

    private static final <T, R> Sequence<R> flatten$SequencesKt__SequencesKt(Sequence<? extends T> sequence, Function1<? super T, ? extends Iterator<? extends R>> function1) {
        if (sequence instanceof TransformingSequence) {
            return ((TransformingSequence) sequence).flatten$kotlin_stdlib(function1);
        }
        return new FlatteningSequence(sequence, new Function1<T, T>() { // from class: kotlin.sequences.SequencesKt__SequencesKt$flatten$3
            @Override // kotlin.jvm.functions.Function1
            public final T invoke(T t3) {
                return t3;
            }
        }, function1);
    }

    @JvmName(name = "flattenSequenceOfIterable")
    @NotNull
    public static final <T> Sequence<T> flattenSequenceOfIterable(@NotNull Sequence<? extends Iterable<? extends T>> flatten) {
        Intrinsics.checkNotNullParameter(flatten, "$this$flatten");
        return flatten$SequencesKt__SequencesKt(flatten, new Function1<Iterable<? extends T>, Iterator<? extends T>>() { // from class: kotlin.sequences.SequencesKt__SequencesKt$flatten$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke((Iterable) ((Iterable) obj));
            }

            @NotNull
            public final Iterator<T> invoke(@NotNull Iterable<? extends T> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return (Iterator<? extends T>) it2.iterator();
            }
        });
    }

    @NotNull
    public static final <T> Sequence<T> generateSequence(@NotNull final Function0<? extends T> nextFunction) {
        Sequence<T> constrainOnce;
        Intrinsics.checkNotNullParameter(nextFunction, "nextFunction");
        constrainOnce = constrainOnce(new GeneratorSequence(nextFunction, new Function1<T, T>() { // from class: kotlin.sequences.SequencesKt__SequencesKt$generateSequence$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final T invoke(@NotNull T it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return (T) Function0.this.invoke();
            }
        }));
        return constrainOnce;
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static final <T> Sequence<T> ifEmpty(@NotNull Sequence<? extends T> ifEmpty, @NotNull Function0<? extends Sequence<? extends T>> defaultValue) {
        Sequence<T> sequence;
        Intrinsics.checkNotNullParameter(ifEmpty, "$this$ifEmpty");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        sequence = SequencesKt__SequenceBuilderKt.sequence(new SequencesKt__SequencesKt$ifEmpty$1(ifEmpty, defaultValue, null));
        return sequence;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <T> Sequence<T> orEmpty(Sequence<? extends T> sequence) {
        Sequence<T> emptySequence;
        if (sequence != 0) {
            return sequence;
        }
        emptySequence = emptySequence();
        return emptySequence;
    }

    @NotNull
    public static final <T> Sequence<T> sequenceOf(@NotNull T... elements) {
        Sequence<T> asSequence;
        Sequence<T> emptySequence;
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.length == 0) {
            emptySequence = emptySequence();
            return emptySequence;
        }
        asSequence = ArraysKt___ArraysKt.asSequence(elements);
        return asSequence;
    }

    @SinceKotlin(version = "1.4")
    @NotNull
    public static final <T> Sequence<T> shuffled(@NotNull Sequence<? extends T> shuffled) {
        Intrinsics.checkNotNullParameter(shuffled, "$this$shuffled");
        return shuffled(shuffled, Random.Default);
    }

    @NotNull
    public static final <T, R> Pair<List<T>, List<R>> unzip(@NotNull Sequence<? extends Pair<? extends T, ? extends R>> unzip) {
        Intrinsics.checkNotNullParameter(unzip, "$this$unzip");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Pair<? extends T, ? extends R> pair : unzip) {
            arrayList.add(pair.getFirst());
            arrayList2.add(pair.getSecond());
        }
        return TuplesKt.to(arrayList, arrayList2);
    }

    @LowPriorityInOverloadResolution
    @NotNull
    public static <T> Sequence<T> generateSequence(@Nullable final T t3, @NotNull Function1<? super T, ? extends T> nextFunction) {
        Intrinsics.checkNotNullParameter(nextFunction, "nextFunction");
        if (t3 == null) {
            return EmptySequence.INSTANCE;
        }
        return new GeneratorSequence(new Function0<T>() { // from class: kotlin.sequences.SequencesKt__SequencesKt$generateSequence$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final T invoke() {
                return (T) t3;
            }
        }, nextFunction);
    }

    @SinceKotlin(version = "1.4")
    @NotNull
    public static final <T> Sequence<T> shuffled(@NotNull Sequence<? extends T> shuffled, @NotNull Random random) {
        Sequence<T> sequence;
        Intrinsics.checkNotNullParameter(shuffled, "$this$shuffled");
        Intrinsics.checkNotNullParameter(random, "random");
        sequence = SequencesKt__SequenceBuilderKt.sequence(new SequencesKt__SequencesKt$shuffled$1(shuffled, random, null));
        return sequence;
    }

    @NotNull
    public static <T> Sequence<T> generateSequence(@NotNull Function0<? extends T> seedFunction, @NotNull Function1<? super T, ? extends T> nextFunction) {
        Intrinsics.checkNotNullParameter(seedFunction, "seedFunction");
        Intrinsics.checkNotNullParameter(nextFunction, "nextFunction");
        return new GeneratorSequence(seedFunction, nextFunction);
    }
}
