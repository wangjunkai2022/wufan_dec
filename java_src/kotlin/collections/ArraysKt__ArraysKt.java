package kotlin.collections;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.TuplesKt;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShortArray;
import kotlin.collections.unsigned.UArraysKt___UArraysKt;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Arrays.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u001a-\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\u0012\u0012\u000e\b\u0001\u0012\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00010\u0001¢\u0006\u0004\b\u0003\u0010\u0004\u001aI\u0010\u0007\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00020\u0006\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0005*\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00060\u0001¢\u0006\u0004\b\u0007\u0010\b\u001a+\u0010\n\u001a\u00020\t*\b\u0012\u0002\b\u0003\u0018\u00010\u0001H\u0087\b\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a=\u0010\u000f\u001a\u00028\u0001\"\u0010\b\u0000\u0010\f*\u0006\u0012\u0002\b\u00030\u0001*\u00028\u0001\"\u0004\b\u0001\u0010\u0005*\u00028\u00002\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0087\bø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a5\u0010\u0014\u001a\u00020\t\"\u0004\b\u0000\u0010\u0000*\f\u0012\u0006\b\u0001\u0012\u00028\u0000\u0018\u00010\u00012\u0010\u0010\u0011\u001a\f\u0012\u0006\b\u0001\u0012\u00028\u0000\u0018\u00010\u0001H\u0001¢\u0006\u0004\b\u0012\u0010\u0013\u001a#\u0010\u0018\u001a\u00020\u0015\"\u0004\b\u0000\u0010\u0000*\f\u0012\u0006\b\u0001\u0012\u00028\u0000\u0018\u00010\u0001H\u0001¢\u0006\u0004\b\u0016\u0010\u0017\u001a?\u0010!\u001a\u00020\u001e\"\u0004\b\u0000\u0010\u0000*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00012\n\u0010\u001b\u001a\u00060\u0019j\u0002`\u001a2\u0010\u0010\u001d\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00010\u001cH\u0002¢\u0006\u0004\b\u001f\u0010 \u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\""}, d2 = {"T", "", "", "flatten", "([[Ljava/lang/Object;)Ljava/util/List;", "R", "Lkotlin/Pair;", "unzip", "([Lkotlin/Pair;)Lkotlin/Pair;", "", "isNullOrEmpty", "([Ljava/lang/Object;)Z", "C", "Lkotlin/Function0;", "defaultValue", "ifEmpty", "([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "other", "contentDeepEquals", "([Ljava/lang/Object;[Ljava/lang/Object;)Z", "contentDeepEqualsImpl", "", "contentDeepToString", "([Ljava/lang/Object;)Ljava/lang/String;", "contentDeepToStringImpl", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "result", "", "processed", "", "contentDeepToStringInternal$ArraysKt__ArraysKt", "([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/List;)V", "contentDeepToStringInternal", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/ArraysKt")
/* loaded from: classes.dex */
public class ArraysKt__ArraysKt extends ArraysKt__ArraysJVMKt {
    @SinceKotlin(version = "1.3")
    @PublishedApi
    @JvmName(name = "contentDeepEquals")
    public static final <T> boolean contentDeepEquals(@Nullable T[] tArr, @Nullable T[] tArr2) {
        boolean m576contentEqualslec5QzE;
        boolean m572contentEqualsKJPZfPQ;
        boolean m571contentEqualsFGO6Aew;
        boolean m574contentEqualskV0jMPg;
        if (tArr == tArr2) {
            return true;
        }
        if (tArr == null || tArr2 == null || tArr.length != tArr2.length) {
            return false;
        }
        int length = tArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            T t3 = tArr[i2];
            T t4 = tArr2[i2];
            if (t3 != t4) {
                if (t3 == null || t4 == null) {
                    return false;
                }
                if ((t3 instanceof Object[]) && (t4 instanceof Object[])) {
                    if (!contentDeepEquals((Object[]) t3, (Object[]) t4)) {
                        return false;
                    }
                } else if ((t3 instanceof byte[]) && (t4 instanceof byte[])) {
                    if (!Arrays.equals((byte[]) t3, (byte[]) t4)) {
                        return false;
                    }
                } else if ((t3 instanceof short[]) && (t4 instanceof short[])) {
                    if (!Arrays.equals((short[]) t3, (short[]) t4)) {
                        return false;
                    }
                } else if ((t3 instanceof int[]) && (t4 instanceof int[])) {
                    if (!Arrays.equals((int[]) t3, (int[]) t4)) {
                        return false;
                    }
                } else if ((t3 instanceof long[]) && (t4 instanceof long[])) {
                    if (!Arrays.equals((long[]) t3, (long[]) t4)) {
                        return false;
                    }
                } else if ((t3 instanceof float[]) && (t4 instanceof float[])) {
                    if (!Arrays.equals((float[]) t3, (float[]) t4)) {
                        return false;
                    }
                } else if ((t3 instanceof double[]) && (t4 instanceof double[])) {
                    if (!Arrays.equals((double[]) t3, (double[]) t4)) {
                        return false;
                    }
                } else if ((t3 instanceof char[]) && (t4 instanceof char[])) {
                    if (!Arrays.equals((char[]) t3, (char[]) t4)) {
                        return false;
                    }
                } else if ((t3 instanceof boolean[]) && (t4 instanceof boolean[])) {
                    if (!Arrays.equals((boolean[]) t3, (boolean[]) t4)) {
                        return false;
                    }
                } else if ((t3 instanceof UByteArray) && (t4 instanceof UByteArray)) {
                    m574contentEqualskV0jMPg = UArraysKt___UArraysKt.m574contentEqualskV0jMPg(((UByteArray) t3).m108unboximpl(), ((UByteArray) t4).m108unboximpl());
                    if (!m574contentEqualskV0jMPg) {
                        return false;
                    }
                } else if ((t3 instanceof UShortArray) && (t4 instanceof UShortArray)) {
                    m571contentEqualsFGO6Aew = UArraysKt___UArraysKt.m571contentEqualsFGO6Aew(((UShortArray) t3).m368unboximpl(), ((UShortArray) t4).m368unboximpl());
                    if (!m571contentEqualsFGO6Aew) {
                        return false;
                    }
                } else if ((t3 instanceof UIntArray) && (t4 instanceof UIntArray)) {
                    m572contentEqualsKJPZfPQ = UArraysKt___UArraysKt.m572contentEqualsKJPZfPQ(((UIntArray) t3).m186unboximpl(), ((UIntArray) t4).m186unboximpl());
                    if (!m572contentEqualsKJPZfPQ) {
                        return false;
                    }
                } else if ((t3 instanceof ULongArray) && (t4 instanceof ULongArray)) {
                    m576contentEqualslec5QzE = UArraysKt___UArraysKt.m576contentEqualslec5QzE(((ULongArray) t3).m264unboximpl(), ((ULongArray) t4).m264unboximpl());
                    if (!m576contentEqualslec5QzE) {
                        return false;
                    }
                } else if (!Intrinsics.areEqual(t3, t4)) {
                    return false;
                }
            }
        }
        return true;
    }

    @SinceKotlin(version = "1.3")
    @JvmName(name = "contentDeepToString")
    @NotNull
    @PublishedApi
    public static final <T> String contentDeepToString(@Nullable T[] tArr) {
        int coerceAtMost;
        if (tArr == null) {
            return "null";
        }
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(tArr.length, 429496729);
        StringBuilder sb = new StringBuilder((coerceAtMost * 5) + 2);
        contentDeepToStringInternal$ArraysKt__ArraysKt(tArr, sb, new ArrayList());
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    private static final <T> void contentDeepToStringInternal$ArraysKt__ArraysKt(T[] tArr, StringBuilder sb, List<Object[]> list) {
        int lastIndex;
        String m594contentToStringuLth9ew;
        String m591contentToStringXUkPCBk;
        String m592contentToStringd6D3K8;
        String m588contentToString2csIQuQ;
        if (list.contains(tArr)) {
            sb.append("[...]");
            return;
        }
        list.add(tArr);
        sb.append('[');
        int length = tArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i2 != 0) {
                sb.append(", ");
            }
            T t3 = tArr[i2];
            if (t3 == null) {
                sb.append("null");
            } else if (t3 instanceof Object[]) {
                contentDeepToStringInternal$ArraysKt__ArraysKt((Object[]) t3, sb, list);
            } else if (t3 instanceof byte[]) {
                String arrays = Arrays.toString((byte[]) t3);
                Intrinsics.checkNotNullExpressionValue(arrays, "java.util.Arrays.toString(this)");
                sb.append(arrays);
            } else if (t3 instanceof short[]) {
                String arrays2 = Arrays.toString((short[]) t3);
                Intrinsics.checkNotNullExpressionValue(arrays2, "java.util.Arrays.toString(this)");
                sb.append(arrays2);
            } else if (t3 instanceof int[]) {
                String arrays3 = Arrays.toString((int[]) t3);
                Intrinsics.checkNotNullExpressionValue(arrays3, "java.util.Arrays.toString(this)");
                sb.append(arrays3);
            } else if (t3 instanceof long[]) {
                String arrays4 = Arrays.toString((long[]) t3);
                Intrinsics.checkNotNullExpressionValue(arrays4, "java.util.Arrays.toString(this)");
                sb.append(arrays4);
            } else if (t3 instanceof float[]) {
                String arrays5 = Arrays.toString((float[]) t3);
                Intrinsics.checkNotNullExpressionValue(arrays5, "java.util.Arrays.toString(this)");
                sb.append(arrays5);
            } else if (t3 instanceof double[]) {
                String arrays6 = Arrays.toString((double[]) t3);
                Intrinsics.checkNotNullExpressionValue(arrays6, "java.util.Arrays.toString(this)");
                sb.append(arrays6);
            } else if (t3 instanceof char[]) {
                String arrays7 = Arrays.toString((char[]) t3);
                Intrinsics.checkNotNullExpressionValue(arrays7, "java.util.Arrays.toString(this)");
                sb.append(arrays7);
            } else if (t3 instanceof boolean[]) {
                String arrays8 = Arrays.toString((boolean[]) t3);
                Intrinsics.checkNotNullExpressionValue(arrays8, "java.util.Arrays.toString(this)");
                sb.append(arrays8);
            } else if (t3 instanceof UByteArray) {
                m588contentToString2csIQuQ = UArraysKt___UArraysKt.m588contentToString2csIQuQ(((UByteArray) t3).m108unboximpl());
                sb.append(m588contentToString2csIQuQ);
            } else if (t3 instanceof UShortArray) {
                m592contentToStringd6D3K8 = UArraysKt___UArraysKt.m592contentToStringd6D3K8(((UShortArray) t3).m368unboximpl());
                sb.append(m592contentToStringd6D3K8);
            } else if (t3 instanceof UIntArray) {
                m591contentToStringXUkPCBk = UArraysKt___UArraysKt.m591contentToStringXUkPCBk(((UIntArray) t3).m186unboximpl());
                sb.append(m591contentToStringXUkPCBk);
            } else if (t3 instanceof ULongArray) {
                m594contentToStringuLth9ew = UArraysKt___UArraysKt.m594contentToStringuLth9ew(((ULongArray) t3).m264unboximpl());
                sb.append(m594contentToStringuLth9ew);
            } else {
                sb.append(t3.toString());
            }
        }
        sb.append(']');
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(list);
        list.remove(lastIndex);
    }

    @NotNull
    public static final <T> List<T> flatten(@NotNull T[][] flatten) {
        Intrinsics.checkNotNullParameter(flatten, "$this$flatten");
        int i2 = 0;
        for (T[] tArr : flatten) {
            i2 += tArr.length;
        }
        ArrayList arrayList = new ArrayList(i2);
        for (T[] tArr2 : flatten) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, tArr2);
        }
        return arrayList;
    }

    /* JADX WARN: Incorrect types in method signature: <C:[Ljava/lang/Object;:TR;R:Ljava/lang/Object;>(TC;Lkotlin/jvm/functions/Function0<+TR;>;)TR; */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final Object ifEmpty(Object[] objArr, Function0 function0) {
        return objArr.length == 0 ? function0.invoke() : objArr;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean isNullOrEmpty(Object[] objArr) {
        if (objArr != null) {
            if (!(objArr.length == 0)) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final <T, R> Pair<List<T>, List<R>> unzip(@NotNull Pair<? extends T, ? extends R>[] unzip) {
        Intrinsics.checkNotNullParameter(unzip, "$this$unzip");
        ArrayList arrayList = new ArrayList(unzip.length);
        ArrayList arrayList2 = new ArrayList(unzip.length);
        for (Pair<? extends T, ? extends R> pair : unzip) {
            arrayList.add(pair.getFirst());
            arrayList2.add(pair.getSecond());
        }
        return TuplesKt.to(arrayList, arrayList2);
    }
}
