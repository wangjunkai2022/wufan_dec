package okhttp3.internal.http2;

import java.io.IOException;
import okhttp3.internal.Util;
import okio.ByteString;
/* loaded from: classes5.dex */
public final class Http2 {
    static final byte FLAG_ACK = 1;
    static final byte FLAG_COMPRESSED = 32;
    static final byte FLAG_END_HEADERS = 4;
    static final byte FLAG_END_PUSH_PROMISE = 4;
    static final byte FLAG_END_STREAM = 1;
    static final byte FLAG_NONE = 0;
    static final byte FLAG_PADDED = 8;
    static final byte FLAG_PRIORITY = 32;
    static final int INITIAL_MAX_FRAME_SIZE = 16384;
    static final byte TYPE_CONTINUATION = 9;
    static final byte TYPE_DATA = 0;
    static final byte TYPE_GOAWAY = 7;
    static final byte TYPE_HEADERS = 1;
    static final byte TYPE_PING = 6;
    static final byte TYPE_PRIORITY = 2;
    static final byte TYPE_PUSH_PROMISE = 5;
    static final byte TYPE_RST_STREAM = 3;
    static final byte TYPE_SETTINGS = 4;
    static final byte TYPE_WINDOW_UPDATE = 8;
    static final ByteString CONNECTION_PREFACE = ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    private static final String[] FRAME_NAMES = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
    static final String[] FLAGS = new String[64];
    static final String[] BINARY = new String[256];

    static {
        String[] strArr;
        int i2 = 0;
        int i4 = 0;
        while (true) {
            String[] strArr2 = BINARY;
            if (i4 >= strArr2.length) {
                break;
            }
            strArr2[i4] = Util.format("%8s", Integer.toBinaryString(i4)).replace(' ', '0');
            i4++;
        }
        String[] strArr3 = FLAGS;
        strArr3[0] = "";
        strArr3[1] = "END_STREAM";
        int[] iArr = {1};
        strArr3[8] = "PADDED";
        for (int i5 = 0; i5 < 1; i5++) {
            int i6 = iArr[i5];
            FLAGS[i6 | 8] = strArr[i6] + "|PADDED";
        }
        String[] strArr4 = FLAGS;
        strArr4[4] = "END_HEADERS";
        strArr4[32] = "PRIORITY";
        strArr4[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i7 = 0; i7 < 3; i7++) {
            int i8 = iArr2[i7];
            for (int i9 = 0; i9 < 1; i9++) {
                int i10 = iArr[i9];
                String[] strArr5 = FLAGS;
                int i11 = i10 | i8;
                strArr5[i11] = strArr5[i10] + '|' + strArr5[i8];
                strArr5[i11 | 8] = strArr5[i10] + '|' + strArr5[i8] + "|PADDED";
            }
        }
        while (true) {
            String[] strArr6 = FLAGS;
            if (i2 >= strArr6.length) {
                return;
            }
            if (strArr6[i2] == null) {
                strArr6[i2] = BINARY[i2];
            }
            i2++;
        }
    }

    private Http2() {
    }

    static String formatFlags(byte b4, byte b5) {
        if (b5 == 0) {
            return "";
        }
        if (b4 != 2 && b4 != 3) {
            if (b4 == 4 || b4 == 6) {
                return b5 == 1 ? "ACK" : BINARY[b5];
            } else if (b4 != 7 && b4 != 8) {
                String[] strArr = FLAGS;
                String str = b5 < strArr.length ? strArr[b5] : BINARY[b5];
                if (b4 != 5 || (b5 & 4) == 0) {
                    return (b4 != 0 || (b5 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED");
                }
                return str.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return BINARY[b5];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String frameLog(boolean z3, int i2, int i4, byte b4, byte b5) {
        String[] strArr = FRAME_NAMES;
        String format = b4 < strArr.length ? strArr[b4] : Util.format("0x%02x", Byte.valueOf(b4));
        String formatFlags = formatFlags(b4, b5);
        Object[] objArr = new Object[5];
        objArr[0] = z3 ? "<<" : ">>";
        objArr[1] = Integer.valueOf(i2);
        objArr[2] = Integer.valueOf(i4);
        objArr[3] = format;
        objArr[4] = formatFlags;
        return Util.format("%s 0x%08x %5d %-13s %s", objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static IllegalArgumentException illegalArgument(String str, Object... objArr) {
        throw new IllegalArgumentException(Util.format(str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static IOException ioException(String str, Object... objArr) throws IOException {
        throw new IOException(Util.format(str, objArr));
    }
}
