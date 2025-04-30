package io.netty.handler.codec.http.websocketx;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.util.CharsetUtil;
import io.netty.util.concurrent.FastThreadLocal;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SuppressJava6Requirement;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
/* loaded from: classes5.dex */
final class WebSocketUtil {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final FastThreadLocal<MessageDigest> MD5 = new FastThreadLocal<MessageDigest>() { // from class: io.netty.handler.codec.http.websocketx.WebSocketUtil.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.util.concurrent.FastThreadLocal
        public MessageDigest initialValue() throws Exception {
            try {
                return MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException unused) {
                throw new InternalError("MD5 not supported on this platform - Outdated?");
            }
        }
    };
    private static final FastThreadLocal<MessageDigest> SHA1 = new FastThreadLocal<MessageDigest>() { // from class: io.netty.handler.codec.http.websocketx.WebSocketUtil.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.util.concurrent.FastThreadLocal
        public MessageDigest initialValue() throws Exception {
            try {
                return MessageDigest.getInstance("SHA1");
            } catch (NoSuchAlgorithmException unused) {
                throw new InternalError("SHA-1 not supported on this platform - Outdated?");
            }
        }
    };

    private WebSocketUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressJava6Requirement(reason = "Guarded with java version check")
    public static String base64(byte[] bArr) {
        if (PlatformDependent.javaVersion() >= 8) {
            return Base64.getEncoder().encodeToString(bArr);
        }
        ByteBuf encode = io.netty.handler.codec.base64.Base64.encode(Unpooled.wrappedBuffer(bArr));
        String byteBuf = encode.toString(CharsetUtil.UTF_8);
        encode.release();
        return byteBuf;
    }

    private static byte[] digest(FastThreadLocal<MessageDigest> fastThreadLocal, byte[] bArr) {
        MessageDigest messageDigest = fastThreadLocal.get();
        messageDigest.reset();
        return messageDigest.digest(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] md5(byte[] bArr) {
        return digest(MD5, bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] randomBytes(int i2) {
        byte[] bArr = new byte[i2];
        PlatformDependent.threadLocalRandom().nextBytes(bArr);
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int randomNumber(int i2, int i4) {
        double nextDouble = PlatformDependent.threadLocalRandom().nextDouble();
        double d4 = i2;
        double d5 = i4 - i2;
        Double.isNaN(d5);
        Double.isNaN(d4);
        return (int) (d4 + (nextDouble * d5));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] sha1(byte[] bArr) {
        return digest(SHA1, bArr);
    }
}
