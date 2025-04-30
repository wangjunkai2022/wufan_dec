package kotlin.experimental;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
/* compiled from: bitwiseOperations.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0010\u0005\n\u0002\b\u0005\n\u0002\u0010\n\n\u0000\u001a\u0015\u0010\u0002\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\f\u001a\u0015\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\f\u001a\u0015\u0010\u0004\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\f\u001a\r\u0010\u0005\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\u0015\u0010\u0002\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u0006H\u0087\f\u001a\u0015\u0010\u0003\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u0006H\u0087\f\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u0006H\u0087\f\u001a\r\u0010\u0005\u001a\u00020\u0006*\u00020\u0006H\u0087\b¨\u0006\u0007"}, d2 = {"", "other", "and", "or", "xor", "inv", "", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class BitwiseOperationsKt {
    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final byte and(byte b4, byte b5) {
        return (byte) (b4 & b5);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final short and(short s3, short s4) {
        return (short) (s3 & s4);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final byte inv(byte b4) {
        return (byte) (b4 ^ (-1));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final short inv(short s3) {
        return (short) (s3 ^ (-1));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final byte or(byte b4, byte b5) {
        return (byte) (b4 | b5);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final short or(short s3, short s4) {
        return (short) (s3 | s4);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final byte xor(byte b4, byte b5) {
        return (byte) (b4 ^ b5);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final short xor(short s3, short s4) {
        return (short) (s3 ^ s4);
    }
}
