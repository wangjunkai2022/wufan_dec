package okhttp3.internal.publicsuffix;

import external.org.apache.commons.lang3.d;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;
/* loaded from: classes5.dex */
public final class PublicSuffixDatabase {
    private static final byte EXCEPTION_MARKER = 33;
    public static final String PUBLIC_SUFFIX_RESOURCE = "publicsuffixes.gz";
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;
    private static final byte[] WILDCARD_LABEL = {42};
    private static final String[] EMPTY_RULE = new String[0];
    private static final String[] PREVAILING_RULE = {WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD};
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    private static String binarySearchBytes(byte[] bArr, byte[][] bArr2, int i2) {
        int i4;
        boolean z3;
        int i5;
        int i6;
        int length = bArr.length;
        int i7 = 0;
        while (i7 < length) {
            int i8 = (i7 + length) / 2;
            while (i8 > -1 && bArr[i8] != 10) {
                i8--;
            }
            int i9 = i8 + 1;
            int i10 = 1;
            while (true) {
                i4 = i9 + i10;
                if (bArr[i4] == 10) {
                    break;
                }
                i10++;
            }
            int i11 = i4 - i9;
            int i12 = i2;
            boolean z4 = false;
            int i13 = 0;
            int i14 = 0;
            while (true) {
                if (z4) {
                    i5 = 46;
                    z3 = false;
                } else {
                    z3 = z4;
                    i5 = bArr2[i12][i13] & 255;
                }
                i6 = i5 - (bArr[i9 + i14] & 255);
                if (i6 == 0) {
                    i14++;
                    i13++;
                    if (i14 == i11) {
                        break;
                    } else if (bArr2[i12].length != i13) {
                        z4 = z3;
                    } else if (i12 == bArr2.length - 1) {
                        break;
                    } else {
                        i12++;
                        z4 = true;
                        i13 = -1;
                    }
                } else {
                    break;
                }
            }
            if (i6 >= 0) {
                if (i6 <= 0) {
                    int i15 = i11 - i14;
                    int length2 = bArr2[i12].length - i13;
                    while (true) {
                        i12++;
                        if (i12 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i12].length;
                    }
                    if (length2 >= i15) {
                        if (length2 <= i15) {
                            return new String(bArr, i9, i11, Util.UTF_8);
                        }
                    }
                }
                i7 = i4 + 1;
            }
            length = i9 - 1;
        }
        return null;
    }

    private String[] findMatchingRule(String[] strArr) {
        String str;
        String str2;
        String str3;
        String[] strArr2;
        String[] strArr3;
        int i2 = 0;
        if (!this.listRead.get() && this.listRead.compareAndSet(false, true)) {
            readTheListUninterruptibly();
        } else {
            try {
                this.readCompleteLatch.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        synchronized (this) {
            if (this.publicSuffixListBytes == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        int length = strArr.length;
        byte[][] bArr = new byte[length];
        for (int i4 = 0; i4 < strArr.length; i4++) {
            bArr[i4] = strArr[i4].getBytes(Util.UTF_8);
        }
        int i5 = 0;
        while (true) {
            str = null;
            if (i5 >= length) {
                str2 = null;
                break;
            }
            str2 = binarySearchBytes(this.publicSuffixListBytes, bArr, i5);
            if (str2 != null) {
                break;
            }
            i5++;
        }
        if (length > 1) {
            byte[][] bArr2 = (byte[][]) bArr.clone();
            for (int i6 = 0; i6 < bArr2.length - 1; i6++) {
                bArr2[i6] = WILDCARD_LABEL;
                str3 = binarySearchBytes(this.publicSuffixListBytes, bArr2, i6);
                if (str3 != null) {
                    break;
                }
            }
        }
        str3 = null;
        if (str3 != null) {
            while (true) {
                if (i2 >= length - 1) {
                    break;
                }
                String binarySearchBytes = binarySearchBytes(this.publicSuffixExceptionListBytes, bArr, i2);
                if (binarySearchBytes != null) {
                    str = binarySearchBytes;
                    break;
                }
                i2++;
            }
        }
        if (str != null) {
            return ("!" + str).split("\\.");
        } else if (str2 == null && str3 == null) {
            return PREVAILING_RULE;
        } else {
            if (str2 != null) {
                strArr2 = str2.split("\\.");
            } else {
                strArr2 = EMPTY_RULE;
            }
            if (str3 != null) {
                strArr3 = str3.split("\\.");
            } else {
                strArr3 = EMPTY_RULE;
            }
            return strArr2.length > strArr3.length ? strArr2 : strArr3;
        }
    }

    public static PublicSuffixDatabase get() {
        return instance;
    }

    private void readTheList() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(PUBLIC_SUFFIX_RESOURCE);
        if (resourceAsStream == null) {
            return;
        }
        BufferedSource buffer = Okio.buffer(new GzipSource(Okio.source(resourceAsStream)));
        try {
            byte[] bArr = new byte[buffer.readInt()];
            buffer.readFully(bArr);
            byte[] bArr2 = new byte[buffer.readInt()];
            buffer.readFully(bArr2);
            synchronized (this) {
                this.publicSuffixListBytes = bArr;
                this.publicSuffixExceptionListBytes = bArr2;
            }
            this.readCompleteLatch.countDown();
        } finally {
            Util.closeQuietly(buffer);
        }
    }

    private void readTheListUninterruptibly() {
        boolean z3 = false;
        while (true) {
            try {
                try {
                    readTheList();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z3 = true;
                } catch (IOException e4) {
                    Platform.get().log(5, "Failed to read public suffix list", e4);
                    if (z3) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                if (z3) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z3) {
            Thread.currentThread().interrupt();
        }
    }

    public String getEffectiveTldPlusOne(String str) {
        int length;
        int length2;
        Objects.requireNonNull(str, "domain == null");
        String[] split = IDN.toUnicode(str).split("\\.");
        String[] findMatchingRule = findMatchingRule(split);
        if (split.length != findMatchingRule.length || findMatchingRule[0].charAt(0) == '!') {
            if (findMatchingRule[0].charAt(0) == '!') {
                length = split.length;
                length2 = findMatchingRule.length;
            } else {
                length = split.length;
                length2 = findMatchingRule.length + 1;
            }
            StringBuilder sb = new StringBuilder();
            String[] split2 = str.split("\\.");
            for (int i2 = length - length2; i2 < split2.length; i2++) {
                sb.append(split2[i2]);
                sb.append(d.f65364a);
            }
            sb.deleteCharAt(sb.length() - 1);
            return sb.toString();
        }
        return null;
    }

    void setListBytes(byte[] bArr, byte[] bArr2) {
        this.publicSuffixListBytes = bArr;
        this.publicSuffixExceptionListBytes = bArr2;
        this.listRead.set(true);
        this.readCompleteLatch.countDown();
    }
}
