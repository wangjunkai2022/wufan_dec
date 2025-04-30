package kotlin.io;

import java.io.InputStream;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
/* compiled from: Console.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\u0010\u0005\n\u0002\u0010\n\n\u0002\u0010\f\n\u0002\u0010\u000b\n\u0002\u0010\u0007\n\u0002\u0010\u0006\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u0013\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u0087\b\u001a\u0011\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0004H\u0087\b\u001a\u0011\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0005H\u0087\b\u001a\u0011\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0006H\u0087\b\u001a\u0011\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0007H\u0087\b\u001a\u0011\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\bH\u0087\b\u001a\u0011\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\tH\u0087\b\u001a\u0011\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\nH\u0087\b\u001a\u0011\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u000bH\u0087\b\u001a\u0011\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\fH\u0087\b\u001a\u0013\u0010\r\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0004H\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0005H\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0006H\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0007H\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\bH\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\tH\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\nH\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u000bH\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\fH\u0087\b\u001a\t\u0010\r\u001a\u00020\u0002H\u0087\b\u001a\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¨\u0006\u0010"}, d2 = {"", "message", "", "print", "", "", "", "", "", "", "", "", "", "println", "", "readLine", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
@JvmName(name = "ConsoleKt")
/* loaded from: classes5.dex */
public final class ConsoleKt {
    @InlineOnly
    private static final void print(Object obj) {
        System.out.print(obj);
    }

    @InlineOnly
    private static final void println(Object obj) {
        System.out.println(obj);
    }

    @Nullable
    public static final String readLine() {
        LineReader lineReader = LineReader.INSTANCE;
        InputStream inputStream = System.in;
        Intrinsics.checkNotNullExpressionValue(inputStream, "System.`in`");
        Charset defaultCharset = Charset.defaultCharset();
        Intrinsics.checkNotNullExpressionValue(defaultCharset, "Charset.defaultCharset()");
        return lineReader.readLine(inputStream, defaultCharset);
    }

    @InlineOnly
    private static final void print(int i2) {
        System.out.print(i2);
    }

    @InlineOnly
    private static final void println(int i2) {
        System.out.println(i2);
    }

    @InlineOnly
    private static final void print(long j4) {
        System.out.print(j4);
    }

    @InlineOnly
    private static final void println(long j4) {
        System.out.println(j4);
    }

    @InlineOnly
    private static final void print(byte b4) {
        System.out.print(Byte.valueOf(b4));
    }

    @InlineOnly
    private static final void println(byte b4) {
        System.out.println(Byte.valueOf(b4));
    }

    @InlineOnly
    private static final void print(short s3) {
        System.out.print(Short.valueOf(s3));
    }

    @InlineOnly
    private static final void println(short s3) {
        System.out.println(Short.valueOf(s3));
    }

    @InlineOnly
    private static final void print(char c4) {
        System.out.print(c4);
    }

    @InlineOnly
    private static final void println(char c4) {
        System.out.println(c4);
    }

    @InlineOnly
    private static final void print(boolean z3) {
        System.out.print(z3);
    }

    @InlineOnly
    private static final void println(boolean z3) {
        System.out.println(z3);
    }

    @InlineOnly
    private static final void print(float f4) {
        System.out.print(f4);
    }

    @InlineOnly
    private static final void println(float f4) {
        System.out.println(f4);
    }

    @InlineOnly
    private static final void print(double d4) {
        System.out.print(d4);
    }

    @InlineOnly
    private static final void println(double d4) {
        System.out.println(d4);
    }

    @InlineOnly
    private static final void print(char[] cArr) {
        System.out.print(cArr);
    }

    @InlineOnly
    private static final void println(char[] cArr) {
        System.out.println(cArr);
    }

    @InlineOnly
    private static final void println() {
        System.out.println();
    }
}
