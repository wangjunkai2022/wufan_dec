package okio.internal;

import com.android.dx.io.Opcodes;
import com.fasterxml.jackson.core.base.GeneratorBase;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Utf8;
import org.jetbrains.annotations.NotNull;
/* compiled from: -Utf8.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0010\u0012\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u001e\u0010\u0005\u001a\u00020\u0004*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0001\u001a\n\u0010\u0006\u001a\u00020\u0000*\u00020\u0004¨\u0006\u0007"}, d2 = {"", "", "beginIndex", "endIndex", "", "commonToUtf8String", "commonAsUtf8ToByteArray", "okio"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes5.dex */
public final class _Utf8Kt {
    @NotNull
    public static final byte[] commonAsUtf8ToByteArray(@NotNull String commonAsUtf8ToByteArray) {
        int i2;
        int i4;
        char charAt;
        Intrinsics.checkNotNullParameter(commonAsUtf8ToByteArray, "$this$commonAsUtf8ToByteArray");
        byte[] bArr = new byte[commonAsUtf8ToByteArray.length() * 4];
        int length = commonAsUtf8ToByteArray.length();
        int i5 = 0;
        while (i5 < length) {
            char charAt2 = commonAsUtf8ToByteArray.charAt(i5);
            if (Intrinsics.compare((int) charAt2, 128) >= 0) {
                int length2 = commonAsUtf8ToByteArray.length();
                int i6 = i5;
                while (i5 < length2) {
                    char charAt3 = commonAsUtf8ToByteArray.charAt(i5);
                    if (Intrinsics.compare((int) charAt3, 128) < 0) {
                        int i7 = i6 + 1;
                        bArr[i6] = (byte) charAt3;
                        i5++;
                        while (i5 < length2 && Intrinsics.compare((int) commonAsUtf8ToByteArray.charAt(i5), 128) < 0) {
                            bArr[i7] = (byte) commonAsUtf8ToByteArray.charAt(i5);
                            i5++;
                            i7++;
                        }
                        i6 = i7;
                    } else {
                        if (Intrinsics.compare((int) charAt3, 2048) < 0) {
                            int i8 = i6 + 1;
                            bArr[i6] = (byte) ((charAt3 >> 6) | 192);
                            i2 = i8 + 1;
                            bArr[i8] = (byte) ((charAt3 & '?') | 128);
                        } else if (55296 > charAt3 || 57343 < charAt3) {
                            int i9 = i6 + 1;
                            bArr[i6] = (byte) ((charAt3 >> '\f') | Opcodes.SHL_INT_LIT8);
                            int i10 = i9 + 1;
                            bArr[i9] = (byte) (((charAt3 >> 6) & 63) | 128);
                            i2 = i10 + 1;
                            bArr[i10] = (byte) ((charAt3 & '?') | 128);
                        } else if (Intrinsics.compare((int) charAt3, (int) GeneratorBase.SURR1_LAST) > 0 || length2 <= (i4 = i5 + 1) || 56320 > (charAt = commonAsUtf8ToByteArray.charAt(i4)) || 57343 < charAt) {
                            i2 = i6 + 1;
                            bArr[i6] = Utf8.REPLACEMENT_BYTE;
                        } else {
                            int charAt4 = ((charAt3 << '\n') + commonAsUtf8ToByteArray.charAt(i4)) - 56613888;
                            int i11 = i6 + 1;
                            bArr[i6] = (byte) ((charAt4 >> 18) | 240);
                            int i12 = i11 + 1;
                            bArr[i11] = (byte) (((charAt4 >> 12) & 63) | 128);
                            int i13 = i12 + 1;
                            bArr[i12] = (byte) (((charAt4 >> 6) & 63) | 128);
                            i2 = i13 + 1;
                            bArr[i13] = (byte) ((charAt4 & 63) | 128);
                            i5 += 2;
                            i6 = i2;
                        }
                        i5++;
                        i6 = i2;
                    }
                }
                byte[] copyOf = Arrays.copyOf(bArr, i6);
                Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, newSize)");
                return copyOf;
            }
            bArr[i5] = (byte) charAt2;
            i5++;
        }
        byte[] copyOf2 = Arrays.copyOf(bArr, commonAsUtf8ToByteArray.length());
        Intrinsics.checkNotNullExpressionValue(copyOf2, "java.util.Arrays.copyOf(this, newSize)");
        return copyOf2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x009d, code lost:
        if (((r16[r5] & 192) == 128) == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x011e, code lost:
        if (((r16[r5] & 192) == 128) == false) goto L37;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String commonToUtf8String(@org.jetbrains.annotations.NotNull byte[] r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal._Utf8Kt.commonToUtf8String(byte[], int, int):java.lang.String");
    }

    public static /* synthetic */ String commonToUtf8String$default(byte[] bArr, int i2, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i2 = 0;
        }
        if ((i5 & 2) != 0) {
            i4 = bArr.length;
        }
        return commonToUtf8String(bArr, i2, i4);
    }
}
