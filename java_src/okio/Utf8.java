package okio;

import com.android.dx.io.Opcodes;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.swift.sandhook.annotation.MethodReflectParams;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Utf8.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\f\n\u0002\b\u0010\u001a'\u0010\u0007\u001a\u00020\u0004*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0011\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0001H\u0080\b\u001a\u0011\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0080\b\u001a4\u0010\u0011\u001a\u00020\u000f*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0080\bø\u0001\u0000\u001a4\u0010\u0013\u001a\u00020\u000f*\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000f0\u000eH\u0080\bø\u0001\u0000\u001a4\u0010\u0015\u001a\u00020\u000f*\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000f0\u000eH\u0080\bø\u0001\u0000\u001a4\u0010\u0016\u001a\u00020\u0001*\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000f0\u000eH\u0080\bø\u0001\u0000\u001a4\u0010\u0017\u001a\u00020\u0001*\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000f0\u000eH\u0080\bø\u0001\u0000\u001a4\u0010\u0018\u001a\u00020\u0001*\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000f0\u000eH\u0080\bø\u0001\u0000\"\u0016\u0010\u0019\u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a\"\u0016\u0010\u001b\u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001b\u0010\u001a\"\u0016\u0010\u001c\u001a\u00020\u000b8\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d\"\u0016\u0010\u001e\u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001a\"\u0016\u0010\u001f\u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001f\u0010\u001a\"\u0016\u0010 \u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b \u0010\u001a\"\u0016\u0010!\u001a\u00020\u00148\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b!\u0010\"\"\u0016\u0010#\u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b#\u0010\u001a\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006$"}, d2 = {"", "", "beginIndex", "endIndex", "", "size", "(Ljava/lang/String;II)J", "utf8Size", "codePoint", "", "isIsoControl", "", MethodReflectParams.BYTE, "isUtf8Continuation", "Lkotlin/Function1;", "", "yield", "processUtf8Bytes", "", "processUtf8CodePoints", "", "processUtf16Chars", "process2Utf8Bytes", "process3Utf8Bytes", "process4Utf8Bytes", "REPLACEMENT_CODE_POINT", "I", "MASK_3BYTES", "REPLACEMENT_BYTE", "B", "MASK_2BYTES", "MASK_4BYTES", "LOG_SURROGATE_HEADER", "REPLACEMENT_CHARACTER", "C", "HIGH_SURROGATE_HEADER", "okio"}, k = 2, mv = {1, 4, 0})
@JvmName(name = "Utf8")
/* loaded from: classes5.dex */
public final class Utf8 {
    public static final int HIGH_SURROGATE_HEADER = 55232;
    public static final int LOG_SURROGATE_HEADER = 56320;
    public static final int MASK_2BYTES = 3968;
    public static final int MASK_3BYTES = -123008;
    public static final int MASK_4BYTES = 3678080;
    public static final byte REPLACEMENT_BYTE = 63;
    public static final char REPLACEMENT_CHARACTER = 65533;
    public static final int REPLACEMENT_CODE_POINT = 65533;

    public static final boolean isIsoControl(int i2) {
        return (i2 >= 0 && 31 >= i2) || (127 <= i2 && 159 >= i2);
    }

    public static final boolean isUtf8Continuation(byte b4) {
        return (b4 & 192) == 128;
    }

    public static final int process2Utf8Bytes(@NotNull byte[] process2Utf8Bytes, int i2, int i4, @NotNull Function1<? super Integer, Unit> yield) {
        Intrinsics.checkNotNullParameter(process2Utf8Bytes, "$this$process2Utf8Bytes");
        Intrinsics.checkNotNullParameter(yield, "yield");
        int i5 = i2 + 1;
        Integer valueOf = Integer.valueOf((int) REPLACEMENT_CODE_POINT);
        if (i4 <= i5) {
            yield.invoke(valueOf);
            return 1;
        }
        byte b4 = process2Utf8Bytes[i2];
        byte b5 = process2Utf8Bytes[i5];
        if (!((b5 & 192) == 128)) {
            yield.invoke(valueOf);
            return 1;
        }
        int i6 = (b5 ^ 3968) ^ (b4 << 6);
        if (i6 < 128) {
            yield.invoke(valueOf);
            return 2;
        }
        yield.invoke(Integer.valueOf(i6));
        return 2;
    }

    public static final int process3Utf8Bytes(@NotNull byte[] process3Utf8Bytes, int i2, int i4, @NotNull Function1<? super Integer, Unit> yield) {
        Intrinsics.checkNotNullParameter(process3Utf8Bytes, "$this$process3Utf8Bytes");
        Intrinsics.checkNotNullParameter(yield, "yield");
        int i5 = i2 + 2;
        Integer valueOf = Integer.valueOf((int) REPLACEMENT_CODE_POINT);
        if (i4 <= i5) {
            yield.invoke(valueOf);
            int i6 = i2 + 1;
            if (i4 > i6) {
                if ((process3Utf8Bytes[i6] & 192) == 128) {
                    return 2;
                }
            }
            return 1;
        }
        byte b4 = process3Utf8Bytes[i2];
        byte b5 = process3Utf8Bytes[i2 + 1];
        if (!((b5 & 192) == 128)) {
            yield.invoke(valueOf);
            return 1;
        }
        byte b6 = process3Utf8Bytes[i5];
        if (!((b6 & 192) == 128)) {
            yield.invoke(valueOf);
            return 2;
        }
        int i7 = ((b6 ^ (-123008)) ^ (b5 << 6)) ^ (b4 << 12);
        if (i7 < 2048) {
            yield.invoke(valueOf);
            return 3;
        } else if (55296 <= i7 && 57343 >= i7) {
            yield.invoke(valueOf);
            return 3;
        } else {
            yield.invoke(Integer.valueOf(i7));
            return 3;
        }
    }

    public static final int process4Utf8Bytes(@NotNull byte[] process4Utf8Bytes, int i2, int i4, @NotNull Function1<? super Integer, Unit> yield) {
        Intrinsics.checkNotNullParameter(process4Utf8Bytes, "$this$process4Utf8Bytes");
        Intrinsics.checkNotNullParameter(yield, "yield");
        int i5 = i2 + 3;
        Integer valueOf = Integer.valueOf((int) REPLACEMENT_CODE_POINT);
        if (i4 <= i5) {
            yield.invoke(valueOf);
            int i6 = i2 + 1;
            if (i4 > i6) {
                if ((process4Utf8Bytes[i6] & 192) == 128) {
                    int i7 = i2 + 2;
                    if (i4 > i7) {
                        if ((process4Utf8Bytes[i7] & 192) == 128) {
                            return 3;
                        }
                    }
                    return 2;
                }
            }
            return 1;
        }
        byte b4 = process4Utf8Bytes[i2];
        byte b5 = process4Utf8Bytes[i2 + 1];
        if (!((b5 & 192) == 128)) {
            yield.invoke(valueOf);
            return 1;
        }
        byte b6 = process4Utf8Bytes[i2 + 2];
        if (!((b6 & 192) == 128)) {
            yield.invoke(valueOf);
            return 2;
        }
        byte b7 = process4Utf8Bytes[i5];
        if (!((b7 & 192) == 128)) {
            yield.invoke(valueOf);
            return 3;
        }
        int i8 = (((b7 ^ 3678080) ^ (b6 << 6)) ^ (b5 << 12)) ^ (b4 << BinaryMemcacheOpcodes.ADDQ);
        if (i8 > 1114111) {
            yield.invoke(valueOf);
            return 4;
        } else if (55296 <= i8 && 57343 >= i8) {
            yield.invoke(valueOf);
            return 4;
        } else if (i8 < 65536) {
            yield.invoke(valueOf);
            return 4;
        } else {
            yield.invoke(Integer.valueOf(i8));
            return 4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0098, code lost:
        if (((r16[r4] & 192) == 128) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0119, code lost:
        if (((r16[r4] & 192) == 128) == false) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void processUtf16Chars(@org.jetbrains.annotations.NotNull byte[] r16, int r17, int r18, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super java.lang.Character, kotlin.Unit> r19) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Utf8.processUtf16Chars(byte[], int, int, kotlin.jvm.functions.Function1):void");
    }

    public static final void processUtf8Bytes(@NotNull String processUtf8Bytes, int i2, int i4, @NotNull Function1<? super Byte, Unit> yield) {
        int i5;
        char charAt;
        Intrinsics.checkNotNullParameter(processUtf8Bytes, "$this$processUtf8Bytes");
        Intrinsics.checkNotNullParameter(yield, "yield");
        while (i2 < i4) {
            char charAt2 = processUtf8Bytes.charAt(i2);
            if (Intrinsics.compare((int) charAt2, 128) < 0) {
                yield.invoke(Byte.valueOf((byte) charAt2));
                i2++;
                while (i2 < i4 && Intrinsics.compare((int) processUtf8Bytes.charAt(i2), 128) < 0) {
                    yield.invoke(Byte.valueOf((byte) processUtf8Bytes.charAt(i2)));
                    i2++;
                }
            } else {
                if (Intrinsics.compare((int) charAt2, 2048) < 0) {
                    yield.invoke(Byte.valueOf((byte) ((charAt2 >> 6) | 192)));
                    yield.invoke(Byte.valueOf((byte) ((charAt2 & '?') | 128)));
                } else if (55296 <= charAt2 && 57343 >= charAt2) {
                    if (Intrinsics.compare((int) charAt2, (int) GeneratorBase.SURR1_LAST) <= 0 && i4 > (i5 = i2 + 1) && 56320 <= (charAt = processUtf8Bytes.charAt(i5)) && 57343 >= charAt) {
                        int charAt3 = ((charAt2 << '\n') + processUtf8Bytes.charAt(i5)) - 56613888;
                        yield.invoke(Byte.valueOf((byte) ((charAt3 >> 18) | 240)));
                        yield.invoke(Byte.valueOf((byte) (((charAt3 >> 12) & 63) | 128)));
                        yield.invoke(Byte.valueOf((byte) (((charAt3 >> 6) & 63) | 128)));
                        yield.invoke(Byte.valueOf((byte) ((charAt3 & 63) | 128)));
                        i2 += 2;
                    } else {
                        yield.invoke(Byte.valueOf((byte) REPLACEMENT_BYTE));
                    }
                } else {
                    yield.invoke(Byte.valueOf((byte) ((charAt2 >> '\f') | Opcodes.SHL_INT_LIT8)));
                    yield.invoke(Byte.valueOf((byte) (((charAt2 >> 6) & 63) | 128)));
                    yield.invoke(Byte.valueOf((byte) ((charAt2 & '?') | 128)));
                }
                i2++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0096, code lost:
        if (((r16[r4] & 192) == 128) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0117, code lost:
        if (((r16[r4] & 192) == 128) == false) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void processUtf8CodePoints(@org.jetbrains.annotations.NotNull byte[] r16, int r17, int r18, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super java.lang.Integer, kotlin.Unit> r19) {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Utf8.processUtf8CodePoints(byte[], int, int, kotlin.jvm.functions.Function1):void");
    }

    @JvmOverloads
    @JvmName(name = "size")
    public static final long size(@NotNull String str) {
        return size$default(str, 0, 0, 3, null);
    }

    @JvmOverloads
    @JvmName(name = "size")
    public static final long size(@NotNull String str, int i2) {
        return size$default(str, i2, 0, 2, null);
    }

    @JvmOverloads
    @JvmName(name = "size")
    public static final long size(@NotNull String utf8Size, int i2, int i4) {
        int i5;
        Intrinsics.checkNotNullParameter(utf8Size, "$this$utf8Size");
        if (!(i2 >= 0)) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i2).toString());
        }
        if (i4 >= i2) {
            if (!(i4 <= utf8Size.length())) {
                throw new IllegalArgumentException(("endIndex > string.length: " + i4 + " > " + utf8Size.length()).toString());
            }
            long j4 = 0;
            while (i2 < i4) {
                char charAt = utf8Size.charAt(i2);
                if (charAt < 128) {
                    j4++;
                } else {
                    if (charAt < 2048) {
                        i5 = 2;
                    } else if (charAt < 55296 || charAt > 57343) {
                        i5 = 3;
                    } else {
                        int i6 = i2 + 1;
                        char charAt2 = i6 < i4 ? utf8Size.charAt(i6) : (char) 0;
                        if (charAt > 56319 || charAt2 < 56320 || charAt2 > 57343) {
                            j4++;
                            i2 = i6;
                        } else {
                            j4 += 4;
                            i2 += 2;
                        }
                    }
                    j4 += i5;
                }
                i2++;
            }
            return j4;
        }
        throw new IllegalArgumentException(("endIndex < beginIndex: " + i4 + " < " + i2).toString());
    }

    public static /* synthetic */ long size$default(String str, int i2, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i2 = 0;
        }
        if ((i5 & 2) != 0) {
            i4 = str.length();
        }
        return size(str, i2, i4);
    }
}
