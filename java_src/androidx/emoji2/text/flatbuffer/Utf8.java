package androidx.emoji2.text.flatbuffer;

import com.papa91.arc.ext.Log;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public abstract class Utf8 {

    /* renamed from: a  reason: collision with root package name */
    private static Utf8 f5693a;

    /* loaded from: classes.dex */
    static class DecodeUtil {
        DecodeUtil() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void a(byte b4, byte b5, byte b6, byte b7, char[] cArr, int i2) throws IllegalArgumentException {
            if (!f(b5) && (((b4 << BinaryMemcacheOpcodes.TOUCH) + (b5 + 112)) >> 30) == 0 && !f(b6) && !f(b7)) {
                int k4 = ((b4 & 7) << 18) | (k(b5) << 12) | (k(b6) << 6) | k(b7);
                cArr[i2] = e(k4);
                cArr[i2 + 1] = j(k4);
                return;
            }
            throw new IllegalArgumentException("Invalid UTF-8");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void b(byte b4, char[] cArr, int i2) {
            cArr[i2] = (char) b4;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void c(byte b4, byte b5, byte b6, char[] cArr, int i2) throws IllegalArgumentException {
            if (!f(b5) && ((b4 != -32 || b5 >= -96) && ((b4 != -19 || b5 < -96) && !f(b6)))) {
                cArr[i2] = (char) (((b4 & 15) << 12) | (k(b5) << 6) | k(b6));
                return;
            }
            throw new IllegalArgumentException("Invalid UTF-8");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void d(byte b4, byte b5, char[] cArr, int i2) throws IllegalArgumentException {
            if (b4 >= -62) {
                if (!f(b5)) {
                    cArr[i2] = (char) (((b4 & 31) << 6) | k(b5));
                    return;
                }
                throw new IllegalArgumentException("Invalid UTF-8: Illegal trailing byte in 2 bytes utf");
            }
            throw new IllegalArgumentException("Invalid UTF-8: Illegal leading byte in 2 bytes utf");
        }

        private static char e(int i2) {
            return (char) ((i2 >>> 10) + okio.Utf8.HIGH_SURROGATE_HEADER);
        }

        private static boolean f(byte b4) {
            return b4 > -65;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean g(byte b4) {
            return b4 >= 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean h(byte b4) {
            return b4 < -16;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean i(byte b4) {
            return b4 < -32;
        }

        private static char j(int i2) {
            return (char) ((i2 & Log.LogWrapper.MAX_MSG_LEN) + 56320);
        }

        private static int k(byte b4) {
            return b4 & okio.Utf8.REPLACEMENT_BYTE;
        }
    }

    /* loaded from: classes.dex */
    static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i2, int i4) {
            super("Unpaired surrogate at index " + i2 + " of " + i4);
        }
    }

    public static Utf8 getDefault() {
        if (f5693a == null) {
            f5693a = new Utf8Safe();
        }
        return f5693a;
    }

    public static void setDefault(Utf8 utf8) {
        f5693a = utf8;
    }

    public abstract String decodeUtf8(ByteBuffer byteBuffer, int i2, int i4);

    public abstract void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer);

    public abstract int encodedLength(CharSequence charSequence);
}
