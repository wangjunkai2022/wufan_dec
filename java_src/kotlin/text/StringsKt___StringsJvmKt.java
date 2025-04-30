package kotlin.text;

import java.math.BigDecimal;
import java.math.BigInteger;
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
/* compiled from: _StringsJvm.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0010\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0015\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0010\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005*\u00020\u0000\u001a+\u0010\f\u001a\u00020\b*\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007H\u0087\bø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a+\u0010\f\u001a\u00020\r*\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\r0\u0007H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0010"}, d2 = {"", "", "index", "", "elementAt", "Ljava/util/SortedSet;", "toSortedSet", "Lkotlin/Function1;", "Ljava/math/BigDecimal;", "selector", "sumOfBigDecimal", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "sumOf", "Ljava/math/BigInteger;", "sumOfBigInteger", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* loaded from: classes.dex */
public class StringsKt___StringsJvmKt extends StringsKt__StringsKt {
    @InlineOnly
    private static final char elementAt(CharSequence charSequence, int i2) {
        return charSequence.charAt(i2);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final BigDecimal sumOfBigDecimal(CharSequence charSequence, Function1<? super Character, ? extends BigDecimal> function1) {
        BigDecimal valueOf = BigDecimal.valueOf(0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigDecimal.valueOf(this.toLong())");
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            valueOf = valueOf.add(function1.invoke(Character.valueOf(charSequence.charAt(i2))));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final BigInteger sumOfBigInteger(CharSequence charSequence, Function1<? super Character, ? extends BigInteger> function1) {
        BigInteger valueOf = BigInteger.valueOf(0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigInteger.valueOf(this.toLong())");
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            valueOf = valueOf.add(function1.invoke(Character.valueOf(charSequence.charAt(i2))));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @NotNull
    public static final SortedSet<Character> toSortedSet(@NotNull CharSequence toSortedSet) {
        Intrinsics.checkNotNullParameter(toSortedSet, "$this$toSortedSet");
        return (SortedSet) StringsKt___StringsKt.toCollection(toSortedSet, new TreeSet());
    }
}
