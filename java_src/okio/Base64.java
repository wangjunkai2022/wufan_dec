package okio;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: -Base64.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0002\b\n\u001a\u000e\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0000\u001a\u0016\u0010\u0004\u001a\u00020\u0000*\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0001H\u0000\"\u001c\u0010\u0005\u001a\u00020\u00018\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u001c\u0010\t\u001a\u00020\u00018\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\t\u0010\u0006\u001a\u0004\b\n\u0010\b¨\u0006\u000b"}, d2 = {"", "", "decodeBase64ToArray", "map", "encodeBase64", "BASE64", "[B", "getBASE64", "()[B", "BASE64_URL_SAFE", "getBASE64_URL_SAFE", "okio"}, k = 2, mv = {1, 4, 0})
@JvmName(name = "-Base64")
/* renamed from: okio.-Base64  reason: invalid class name */
/* loaded from: classes5.dex */
public final class Base64 {
    @NotNull
    private static final byte[] BASE64;
    @NotNull
    private static final byte[] BASE64_URL_SAFE;

    static {
        ByteString.Companion companion = ByteString.Companion;
        BASE64 = companion.encodeUtf8("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").getData$okio();
        BASE64_URL_SAFE = companion.encodeUtf8("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_").getData$okio();
    }

    @Nullable
    public static final byte[] decodeBase64ToArray(@NotNull String decodeBase64ToArray) {
        int i2;
        char charAt;
        Intrinsics.checkNotNullParameter(decodeBase64ToArray, "$this$decodeBase64ToArray");
        int length = decodeBase64ToArray.length();
        while (length > 0 && ((charAt = decodeBase64ToArray.charAt(length - 1)) == '=' || charAt == '\n' || charAt == '\r' || charAt == ' ' || charAt == '\t')) {
            length--;
        }
        int i4 = (int) ((length * 6) / 8);
        byte[] bArr = new byte[i4];
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < length; i8++) {
            char charAt2 = decodeBase64ToArray.charAt(i8);
            if ('A' <= charAt2 && 'Z' >= charAt2) {
                i2 = charAt2 - 'A';
            } else if ('a' <= charAt2 && 'z' >= charAt2) {
                i2 = charAt2 - 'G';
            } else if ('0' <= charAt2 && '9' >= charAt2) {
                i2 = charAt2 + 4;
            } else if (charAt2 == '+' || charAt2 == '-') {
                i2 = 62;
            } else if (charAt2 == '/' || charAt2 == '_') {
                i2 = 63;
            } else {
                if (charAt2 != '\n' && charAt2 != '\r' && charAt2 != ' ' && charAt2 != '\t') {
                    return null;
                }
            }
            i6 = (i6 << 6) | i2;
            i5++;
            if (i5 % 4 == 0) {
                int i9 = i7 + 1;
                bArr[i7] = (byte) (i6 >> 16);
                int i10 = i9 + 1;
                bArr[i9] = (byte) (i6 >> 8);
                bArr[i10] = (byte) i6;
                i7 = i10 + 1;
            }
        }
        int i11 = i5 % 4;
        if (i11 != 1) {
            if (i11 == 2) {
                bArr[i7] = (byte) ((i6 << 12) >> 16);
                i7++;
            } else if (i11 == 3) {
                int i12 = i6 << 6;
                int i13 = i7 + 1;
                bArr[i7] = (byte) (i12 >> 16);
                i7 = i13 + 1;
                bArr[i13] = (byte) (i12 >> 8);
            }
            if (i7 == i4) {
                return bArr;
            }
            byte[] copyOf = Arrays.copyOf(bArr, i7);
            Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, newSize)");
            return copyOf;
        }
        return null;
    }

    @NotNull
    public static final String encodeBase64(@NotNull byte[] encodeBase64, @NotNull byte[] map) {
        Intrinsics.checkNotNullParameter(encodeBase64, "$this$encodeBase64");
        Intrinsics.checkNotNullParameter(map, "map");
        byte[] bArr = new byte[((encodeBase64.length + 2) / 3) * 4];
        int length = encodeBase64.length - (encodeBase64.length % 3);
        int i2 = 0;
        int i4 = 0;
        while (i2 < length) {
            int i5 = i2 + 1;
            byte b4 = encodeBase64[i2];
            int i6 = i5 + 1;
            byte b5 = encodeBase64[i5];
            int i7 = i6 + 1;
            byte b6 = encodeBase64[i6];
            int i8 = i4 + 1;
            bArr[i4] = map[(b4 & 255) >> 2];
            int i9 = i8 + 1;
            bArr[i8] = map[((b4 & 3) << 4) | ((b5 & 255) >> 4)];
            int i10 = i9 + 1;
            bArr[i9] = map[((b5 & 15) << 2) | ((b6 & 255) >> 6)];
            i4 = i10 + 1;
            bArr[i10] = map[b6 & Utf8.REPLACEMENT_BYTE];
            i2 = i7;
        }
        int length2 = encodeBase64.length - length;
        if (length2 == 1) {
            byte b7 = encodeBase64[i2];
            int i11 = i4 + 1;
            bArr[i4] = map[(b7 & 255) >> 2];
            int i12 = i11 + 1;
            bArr[i11] = map[(b7 & 3) << 4];
            byte b8 = (byte) 61;
            bArr[i12] = b8;
            bArr[i12 + 1] = b8;
        } else if (length2 == 2) {
            int i13 = i2 + 1;
            byte b9 = encodeBase64[i2];
            byte b10 = encodeBase64[i13];
            int i14 = i4 + 1;
            bArr[i4] = map[(b9 & 255) >> 2];
            int i15 = i14 + 1;
            bArr[i14] = map[((b9 & 3) << 4) | ((b10 & 255) >> 4)];
            bArr[i15] = map[(b10 & 15) << 2];
            bArr[i15 + 1] = (byte) 61;
        }
        return Platform.toUtf8String(bArr);
    }

    public static /* synthetic */ String encodeBase64$default(byte[] bArr, byte[] bArr2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            bArr2 = BASE64;
        }
        return encodeBase64(bArr, bArr2);
    }

    @NotNull
    public static final byte[] getBASE64() {
        return BASE64;
    }

    @NotNull
    public static final byte[] getBASE64_URL_SAFE() {
        return BASE64_URL_SAFE;
    }
}
