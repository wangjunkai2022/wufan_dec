package kotlin;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BigDecimals.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0010\u0007\n\u0002\u0010\u0006\n\u0000\u001a\u0015\u0010\u0002\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0004\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0005\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0006\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\r\u0010\u0007\u001a\u00020\u0000*\u00020\u0000H\u0087\n\u001a\r\u0010\b\u001a\u00020\u0000*\u00020\u0000H\u0087\n\u001a\r\u0010\t\u001a\u00020\u0000*\u00020\u0000H\u0087\n\u001a\r\u0010\u000b\u001a\u00020\u0000*\u00020\nH\u0087\b\u001a\u0015\u0010\u000b\u001a\u00020\u0000*\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0087\b\u001a\r\u0010\u000b\u001a\u00020\u0000*\u00020\u000eH\u0087\b\u001a\u0015\u0010\u000b\u001a\u00020\u0000*\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0087\b\u001a\r\u0010\u000b\u001a\u00020\u0000*\u00020\u000fH\u0087\b\u001a\u0015\u0010\u000b\u001a\u00020\u0000*\u00020\u000f2\u0006\u0010\r\u001a\u00020\fH\u0087\b\u001a\r\u0010\u000b\u001a\u00020\u0000*\u00020\u0010H\u0087\b\u001a\u0015\u0010\u000b\u001a\u00020\u0000*\u00020\u00102\u0006\u0010\r\u001a\u00020\fH\u0087\b¨\u0006\u0011"}, d2 = {"Ljava/math/BigDecimal;", "other", "plus", "minus", "times", "div", "rem", "unaryMinus", "inc", "dec", "", "toBigDecimal", "Ljava/math/MathContext;", "mathContext", "", "", "", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/NumbersKt")
/* loaded from: classes5.dex */
class NumbersKt__BigDecimalsKt {
    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal dec(BigDecimal dec) {
        Intrinsics.checkNotNullParameter(dec, "$this$dec");
        BigDecimal subtract = dec.subtract(BigDecimal.ONE);
        Intrinsics.checkNotNullExpressionValue(subtract, "this.subtract(BigDecimal.ONE)");
        return subtract;
    }

    @InlineOnly
    private static final BigDecimal div(BigDecimal div, BigDecimal bigDecimal) {
        Intrinsics.checkNotNullParameter(div, "$this$div");
        BigDecimal divide = div.divide(bigDecimal, RoundingMode.HALF_EVEN);
        Intrinsics.checkNotNullExpressionValue(divide, "this.divide(other, RoundingMode.HALF_EVEN)");
        return divide;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal inc(BigDecimal inc) {
        Intrinsics.checkNotNullParameter(inc, "$this$inc");
        BigDecimal add = inc.add(BigDecimal.ONE);
        Intrinsics.checkNotNullExpressionValue(add, "this.add(BigDecimal.ONE)");
        return add;
    }

    @InlineOnly
    private static final BigDecimal minus(BigDecimal minus, BigDecimal bigDecimal) {
        Intrinsics.checkNotNullParameter(minus, "$this$minus");
        BigDecimal subtract = minus.subtract(bigDecimal);
        Intrinsics.checkNotNullExpressionValue(subtract, "this.subtract(other)");
        return subtract;
    }

    @InlineOnly
    private static final BigDecimal plus(BigDecimal plus, BigDecimal bigDecimal) {
        Intrinsics.checkNotNullParameter(plus, "$this$plus");
        BigDecimal add = plus.add(bigDecimal);
        Intrinsics.checkNotNullExpressionValue(add, "this.add(other)");
        return add;
    }

    @InlineOnly
    private static final BigDecimal rem(BigDecimal rem, BigDecimal bigDecimal) {
        Intrinsics.checkNotNullParameter(rem, "$this$rem");
        BigDecimal remainder = rem.remainder(bigDecimal);
        Intrinsics.checkNotNullExpressionValue(remainder, "this.remainder(other)");
        return remainder;
    }

    @InlineOnly
    private static final BigDecimal times(BigDecimal times, BigDecimal bigDecimal) {
        Intrinsics.checkNotNullParameter(times, "$this$times");
        BigDecimal multiply = times.multiply(bigDecimal);
        Intrinsics.checkNotNullExpressionValue(multiply, "this.multiply(other)");
        return multiply;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(int i2) {
        BigDecimal valueOf = BigDecimal.valueOf(i2);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigDecimal.valueOf(this.toLong())");
        return valueOf;
    }

    @InlineOnly
    private static final BigDecimal unaryMinus(BigDecimal unaryMinus) {
        Intrinsics.checkNotNullParameter(unaryMinus, "$this$unaryMinus");
        BigDecimal negate = unaryMinus.negate();
        Intrinsics.checkNotNullExpressionValue(negate, "this.negate()");
        return negate;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(int i2, MathContext mathContext) {
        return new BigDecimal(i2, mathContext);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(long j4) {
        BigDecimal valueOf = BigDecimal.valueOf(j4);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigDecimal.valueOf(this)");
        return valueOf;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(long j4, MathContext mathContext) {
        return new BigDecimal(j4, mathContext);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(float f4) {
        return new BigDecimal(String.valueOf(f4));
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(float f4, MathContext mathContext) {
        return new BigDecimal(String.valueOf(f4), mathContext);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(double d4) {
        return new BigDecimal(String.valueOf(d4));
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(double d4, MathContext mathContext) {
        return new BigDecimal(String.valueOf(d4), mathContext);
    }
}
