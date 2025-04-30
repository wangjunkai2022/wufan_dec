package kotlin.collections;

import io.netty.handler.codec.rtsp.RtspHeaders;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Grouping.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010%\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u009e\u0001\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\r\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032b\u0010\f\u001a^\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0015\u0012\u0013\u0018\u00018\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00028\u00020\u0004H\u0087\bø\u0001\u0000\u001a¹\u0001\u0010\u0012\u001a\u00028\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000f*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0011\u001a\u00028\u00032b\u0010\f\u001a^\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0015\u0012\u0013\u0018\u00018\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00028\u00020\u0004H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a¿\u0001\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\r\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000326\u0010\u0015\u001a2\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00028\u00020\u00142K\u0010\f\u001aG\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00118\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00028\u00020\u0016H\u0087\bø\u0001\u0000\u001aÚ\u0001\u0010\u0018\u001a\u00028\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000f*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0011\u001a\u00028\u000326\u0010\u0015\u001a2\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00028\u00020\u00142K\u0010\f\u001aG\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00118\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00028\u00020\u0016H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u0081\u0001\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\r\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u001a\u001a\u00028\u000226\u0010\f\u001a2\u0012\u0013\u0012\u00118\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00028\u00020\u0014H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u001b\u001a\u0095\u0001\u0010\u0018\u001a\u00028\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000f*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0011\u001a\u00028\u00032\u0006\u0010\u001a\u001a\u00028\u000226\u0010\f\u001a2\u0012\u0013\u0012\u00118\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00028\u00020\u0014H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u001c\u001a\u008b\u0001\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00000\r\"\u0004\b\u0000\u0010\u001d\"\b\b\u0001\u0010\u0000*\u00028\u0000\"\u0004\b\u0002\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00032K\u0010\f\u001aG\u0012\u0013\u0012\u00118\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00028\u00000\u0016H\u0087\bø\u0001\u0000\u001a¦\u0001\u0010\u001f\u001a\u00028\u0003\"\u0004\b\u0000\u0010\u001d\"\b\b\u0001\u0010\u0000*\u00028\u0000\"\u0004\b\u0002\u0010\u0001\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00000\u000f*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00032\u0006\u0010\u0011\u001a\u00028\u00032K\u0010\f\u001aG\u0012\u0013\u0012\u00118\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00028\u00000\u0016H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 \u001aK\u0010\"\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0016\b\u0002\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u00028\u0001\u0012\u0004\u0012\u00020!0\u000f*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0011\u001a\u00028\u0002H\u0007¢\u0006\u0004\b\"\u0010#\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006$"}, d2 = {"T", "K", "R", "Lkotlin/collections/Grouping;", "Lkotlin/Function4;", "Lkotlin/ParameterName;", "name", "key", "accumulator", "element", "", "first", "operation", "", "aggregate", "", "M", RtspHeaders.Values.DESTINATION, "aggregateTo", "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function4;)Ljava/util/Map;", "Lkotlin/Function2;", "initialValueSelector", "Lkotlin/Function3;", "fold", "foldTo", "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)Ljava/util/Map;", "initialValue", "(Lkotlin/collections/Grouping;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/Map;", "(Lkotlin/collections/Grouping;Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/Map;", "S", "reduce", "reduceTo", "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)Ljava/util/Map;", "", "eachCountTo", "(Lkotlin/collections/Grouping;Ljava/util/Map;)Ljava/util/Map;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/GroupingKt")
/* loaded from: classes5.dex */
class GroupingKt__GroupingKt extends GroupingKt__GroupingJVMKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T, K, R> Map<K, R> aggregate(@NotNull Grouping<T, ? extends K> aggregate, @NotNull Function4<? super K, ? super R, ? super T, ? super Boolean, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(aggregate, "$this$aggregate");
        Intrinsics.checkNotNullParameter(operation, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> sourceIterator = aggregate.sourceIterator();
        while (sourceIterator.hasNext()) {
            ?? next = sourceIterator.next();
            Object obj = (K) aggregate.keyOf(next);
            Object obj2 = (Object) linkedHashMap.get(obj);
            linkedHashMap.put(obj, operation.invoke(obj, obj2, next, Boolean.valueOf(obj2 == 0 && !linkedHashMap.containsKey(obj))));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T, K, R, M extends Map<? super K, R>> M aggregateTo(@NotNull Grouping<T, ? extends K> aggregateTo, @NotNull M destination, @NotNull Function4<? super K, ? super R, ? super T, ? super Boolean, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(aggregateTo, "$this$aggregateTo");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(operation, "operation");
        Iterator<T> sourceIterator = aggregateTo.sourceIterator();
        while (sourceIterator.hasNext()) {
            ?? next = sourceIterator.next();
            Object keyOf = aggregateTo.keyOf(next);
            Object obj = (Object) destination.get(keyOf);
            destination.put(keyOf, operation.invoke(keyOf, obj, next, Boolean.valueOf(obj == 0 && !destination.containsKey(keyOf))));
        }
        return destination;
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T, K, M extends Map<? super K, Integer>> M eachCountTo(@NotNull Grouping<T, ? extends K> eachCountTo, @NotNull M destination) {
        Intrinsics.checkNotNullParameter(eachCountTo, "$this$eachCountTo");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Iterator<T> sourceIterator = eachCountTo.sourceIterator();
        while (sourceIterator.hasNext()) {
            K keyOf = eachCountTo.keyOf(sourceIterator.next());
            Object obj = destination.get(keyOf);
            if (obj == null && !destination.containsKey(keyOf)) {
                obj = 0;
            }
            destination.put(keyOf, Integer.valueOf(((Number) obj).intValue() + 1));
        }
        return destination;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T, K, R> Map<K, R> fold(@NotNull Grouping<T, ? extends K> fold, @NotNull Function2<? super K, ? super T, ? extends R> initialValueSelector, @NotNull Function3<? super K, ? super R, ? super T, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(fold, "$this$fold");
        Intrinsics.checkNotNullParameter(initialValueSelector, "initialValueSelector");
        Intrinsics.checkNotNullParameter(operation, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> sourceIterator = fold.sourceIterator();
        while (sourceIterator.hasNext()) {
            ?? next = sourceIterator.next();
            Object obj = (K) fold.keyOf(next);
            R r3 = (Object) linkedHashMap.get(obj);
            if (r3 == null && !linkedHashMap.containsKey(obj)) {
                r3 = initialValueSelector.invoke(obj, next);
            }
            linkedHashMap.put(obj, operation.invoke(obj, r3, next));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T, K, R, M extends Map<? super K, R>> M foldTo(@NotNull Grouping<T, ? extends K> foldTo, @NotNull M destination, @NotNull Function2<? super K, ? super T, ? extends R> initialValueSelector, @NotNull Function3<? super K, ? super R, ? super T, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(foldTo, "$this$foldTo");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(initialValueSelector, "initialValueSelector");
        Intrinsics.checkNotNullParameter(operation, "operation");
        Iterator<T> sourceIterator = foldTo.sourceIterator();
        while (sourceIterator.hasNext()) {
            ?? next = sourceIterator.next();
            Object keyOf = foldTo.keyOf(next);
            R r3 = (Object) destination.get(keyOf);
            if (r3 == null && !destination.containsKey(keyOf)) {
                r3 = initialValueSelector.invoke(keyOf, next);
            }
            destination.put(keyOf, operation.invoke(keyOf, r3, next));
        }
        return destination;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <S, T extends S, K> Map<K, S> reduce(@NotNull Grouping<T, ? extends K> reduce, @NotNull Function3<? super K, ? super S, ? super T, ? extends S> operation) {
        Intrinsics.checkNotNullParameter(reduce, "$this$reduce");
        Intrinsics.checkNotNullParameter(operation, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator sourceIterator = reduce.sourceIterator();
        while (sourceIterator.hasNext()) {
            S s3 = (Object) sourceIterator.next();
            Object obj = (Object) reduce.keyOf(s3);
            Object obj2 = (Object) linkedHashMap.get(obj);
            if (!(obj2 == 0 && !linkedHashMap.containsKey(obj))) {
                s3 = operation.invoke(obj, obj2, s3);
            }
            linkedHashMap.put(obj, s3);
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <S, T extends S, K, M extends Map<? super K, S>> M reduceTo(@NotNull Grouping<T, ? extends K> reduceTo, @NotNull M destination, @NotNull Function3<? super K, ? super S, ? super T, ? extends S> operation) {
        Intrinsics.checkNotNullParameter(reduceTo, "$this$reduceTo");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(operation, "operation");
        Iterator sourceIterator = reduceTo.sourceIterator();
        while (sourceIterator.hasNext()) {
            S s3 = (Object) sourceIterator.next();
            Object obj = (Object) reduceTo.keyOf(s3);
            Object obj2 = (Object) destination.get(obj);
            if (!(obj2 == 0 && !destination.containsKey(obj))) {
                s3 = operation.invoke(obj, obj2, s3);
            }
            destination.put(obj, s3);
        }
        return destination;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T, K, R, M extends Map<? super K, R>> M foldTo(@NotNull Grouping<T, ? extends K> foldTo, @NotNull M destination, R r3, @NotNull Function2<? super R, ? super T, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(foldTo, "$this$foldTo");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(operation, "operation");
        Iterator<T> sourceIterator = foldTo.sourceIterator();
        while (sourceIterator.hasNext()) {
            ?? next = sourceIterator.next();
            K keyOf = foldTo.keyOf(next);
            Object obj = (Object) destination.get(keyOf);
            if (obj == null && !destination.containsKey(keyOf)) {
                obj = (Object) r3;
            }
            destination.put(keyOf, operation.invoke(obj, next));
        }
        return destination;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T, K, R> Map<K, R> fold(@NotNull Grouping<T, ? extends K> fold, R r3, @NotNull Function2<? super R, ? super T, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(fold, "$this$fold");
        Intrinsics.checkNotNullParameter(operation, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> sourceIterator = fold.sourceIterator();
        while (sourceIterator.hasNext()) {
            ?? next = sourceIterator.next();
            K keyOf = fold.keyOf(next);
            Object obj = (Object) linkedHashMap.get(keyOf);
            if (obj == null && !linkedHashMap.containsKey(keyOf)) {
                obj = (Object) r3;
            }
            linkedHashMap.put(keyOf, operation.invoke(obj, next));
        }
        return linkedHashMap;
    }
}
