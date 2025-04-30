package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.activity.MyAccountLoginActivity_;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.util.Objects;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import okio.internal.SegmentedByteStringKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SegmentedByteString.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u001f\b\u0000\u0012\f\u0010D\u001a\b\u0012\u0004\u0012\u00020\"0C\u0012\u0006\u0010?\u001a\u00020>¢\u0006\u0004\bH\u0010IJ\b\u0010\u0002\u001a\u00020\u0001H\u0002J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\t\u001a\u00020\u0007H\u0016J\b\u0010\n\u001a\u00020\u0007H\u0016J\b\u0010\u000b\u001a\u00020\u0001H\u0016J\b\u0010\f\u001a\u00020\u0001H\u0016J\u0017\u0010\u0010\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0007H\u0010¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0014\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0001H\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0015\u001a\u00020\u0007H\u0016J\u0018\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u0017\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0016H\u0010¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010!\u001a\u00020\u0016H\u0010¢\u0006\u0004\b\u001f\u0010 J\b\u0010#\u001a\u00020\"H\u0016J\b\u0010%\u001a\u00020$H\u0016J\u0010\u0010)\u001a\u00020(2\u0006\u0010'\u001a\u00020&H\u0016J'\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u0016H\u0010¢\u0006\u0004\b.\u0010/J(\u00103\u001a\u0002022\u0006\u0010,\u001a\u00020\u00162\u0006\u00100\u001a\u00020\u00012\u0006\u00101\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u0016H\u0016J(\u00103\u001a\u0002022\u0006\u0010,\u001a\u00020\u00162\u0006\u00100\u001a\u00020\"2\u0006\u00101\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u0016H\u0016J\u0018\u00105\u001a\u00020\u00162\u0006\u00100\u001a\u00020\"2\u0006\u00104\u001a\u00020\u0016H\u0016J\u0018\u00106\u001a\u00020\u00162\u0006\u00100\u001a\u00020\"2\u0006\u00104\u001a\u00020\u0016H\u0016J\u000f\u00109\u001a\u00020\"H\u0010¢\u0006\u0004\b7\u00108J\u0013\u0010;\u001a\u0002022\b\u00100\u001a\u0004\u0018\u00010:H\u0096\u0002J\b\u0010<\u001a\u00020\u0016H\u0016J\b\u0010=\u001a\u00020\u0007H\u0016R\u001c\u0010?\u001a\u00020>8\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\bA\u0010BR\"\u0010D\u001a\b\u0012\u0004\u0012\u00020\"0C8\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\bD\u0010E\u001a\u0004\bF\u0010G¨\u0006J"}, d2 = {"Lokio/SegmentedByteString;", "Lokio/ByteString;", "toByteString", "Ljava/lang/Object;", "writeReplace", "Ljava/nio/charset/Charset;", "charset", "", TypedValues.Custom.S_STRING, HttpHeaders.Values.BASE64, "hex", "toAsciiLowercase", "toAsciiUppercase", "algorithm", "digest$okio", "(Ljava/lang/String;)Lokio/ByteString;", "digest", "key", "hmac$okio", "(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;", "hmac", "base64Url", "", "beginIndex", "endIndex", "substring", "pos", "", "internalGet$okio", "(I)B", "internalGet", "getSize$okio", "()I", "getSize", "", "toByteArray", "Ljava/nio/ByteBuffer;", "asByteBuffer", "Ljava/io/OutputStream;", "out", "", "write", "Lokio/Buffer;", "buffer", "offset", "byteCount", "write$okio", "(Lokio/Buffer;II)V", "other", "otherOffset", "", "rangeEquals", MyAccountLoginActivity_.J, "indexOf", "lastIndexOf", "internalArray$okio", "()[B", "internalArray", "", "equals", TTDownloadField.TT_HASHCODE, "toString", "", "directory", "[I", "getDirectory$okio", "()[I", "", "segments", "[[B", "getSegments$okio", "()[[B", "<init>", "([[B[I)V", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5.dex */
public final class SegmentedByteString extends ByteString {
    @NotNull
    private final transient int[] directory;
    @NotNull
    private final transient byte[][] segments;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SegmentedByteString(@NotNull byte[][] segments, @NotNull int[] directory) {
        super(ByteString.EMPTY.getData$okio());
        Intrinsics.checkNotNullParameter(segments, "segments");
        Intrinsics.checkNotNullParameter(directory, "directory");
        this.segments = segments;
        this.directory = directory;
    }

    private final ByteString toByteString() {
        return new ByteString(toByteArray());
    }

    private final Object writeReplace() {
        ByteString byteString = toByteString();
        Objects.requireNonNull(byteString, "null cannot be cast to non-null type java.lang.Object");
        return byteString;
    }

    @Override // okio.ByteString
    @NotNull
    public ByteBuffer asByteBuffer() {
        ByteBuffer asReadOnlyBuffer = ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
        Intrinsics.checkNotNullExpressionValue(asReadOnlyBuffer, "ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer()");
        return asReadOnlyBuffer;
    }

    @Override // okio.ByteString
    @NotNull
    public String base64() {
        return toByteString().base64();
    }

    @Override // okio.ByteString
    @NotNull
    public String base64Url() {
        return toByteString().base64Url();
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString digest$okio(@NotNull String algorithm) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        int length = getSegments$okio().length;
        int i2 = 0;
        int i4 = 0;
        while (i2 < length) {
            int i5 = getDirectory$okio()[length + i2];
            int i6 = getDirectory$okio()[i2];
            messageDigest.update(getSegments$okio()[i2], i5, i6 - i4);
            i2++;
            i4 = i6;
        }
        byte[] digest = messageDigest.digest();
        Intrinsics.checkNotNullExpressionValue(digest, "digest.digest()");
        return new ByteString(digest);
    }

    @Override // okio.ByteString
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == size() && rangeEquals(0, byteString, 0, size())) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final int[] getDirectory$okio() {
        return this.directory;
    }

    @NotNull
    public final byte[][] getSegments$okio() {
        return this.segments;
    }

    @Override // okio.ByteString
    public int getSize$okio() {
        return getDirectory$okio()[getSegments$okio().length - 1];
    }

    @Override // okio.ByteString
    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int length = getSegments$okio().length;
        int i2 = 0;
        int i4 = 1;
        int i5 = 0;
        while (i2 < length) {
            int i6 = getDirectory$okio()[length + i2];
            int i7 = getDirectory$okio()[i2];
            byte[] bArr = getSegments$okio()[i2];
            int i8 = (i7 - i5) + i6;
            while (i6 < i8) {
                i4 = (i4 * 31) + bArr[i6];
                i6++;
            }
            i2++;
            i5 = i7;
        }
        setHashCode$okio(i4);
        return i4;
    }

    @Override // okio.ByteString
    @NotNull
    public String hex() {
        return toByteString().hex();
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString hmac$okio(@NotNull String algorithm, @NotNull ByteString key) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            int length = getSegments$okio().length;
            int i2 = 0;
            int i4 = 0;
            while (i2 < length) {
                int i5 = getDirectory$okio()[length + i2];
                int i6 = getDirectory$okio()[i2];
                mac.update(getSegments$okio()[i2], i5, i6 - i4);
                i2++;
                i4 = i6;
            }
            byte[] doFinal = mac.doFinal();
            Intrinsics.checkNotNullExpressionValue(doFinal, "mac.doFinal()");
            return new ByteString(doFinal);
        } catch (InvalidKeyException e4) {
            throw new IllegalArgumentException(e4);
        }
    }

    @Override // okio.ByteString
    public int indexOf(@NotNull byte[] other, int i2) {
        Intrinsics.checkNotNullParameter(other, "other");
        return toByteString().indexOf(other, i2);
    }

    @Override // okio.ByteString
    @NotNull
    public byte[] internalArray$okio() {
        return toByteArray();
    }

    @Override // okio.ByteString
    public byte internalGet$okio(int i2) {
        Util.checkOffsetAndCount(getDirectory$okio()[getSegments$okio().length - 1], i2, 1L);
        int segment = SegmentedByteStringKt.segment(this, i2);
        return getSegments$okio()[segment][(i2 - (segment == 0 ? 0 : getDirectory$okio()[segment - 1])) + getDirectory$okio()[getSegments$okio().length + segment]];
    }

    @Override // okio.ByteString
    public int lastIndexOf(@NotNull byte[] other, int i2) {
        Intrinsics.checkNotNullParameter(other, "other");
        return toByteString().lastIndexOf(other, i2);
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i2, @NotNull ByteString other, int i4, int i5) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (i2 < 0 || i2 > size() - i5) {
            return false;
        }
        int i6 = i5 + i2;
        int segment = SegmentedByteStringKt.segment(this, i2);
        while (i2 < i6) {
            int i7 = segment == 0 ? 0 : getDirectory$okio()[segment - 1];
            int i8 = getDirectory$okio()[getSegments$okio().length + segment];
            int min = Math.min(i6, (getDirectory$okio()[segment] - i7) + i7) - i2;
            if (!other.rangeEquals(i4, getSegments$okio()[segment], i8 + (i2 - i7), min)) {
                return false;
            }
            i4 += min;
            i2 += min;
            segment++;
        }
        return true;
    }

    @Override // okio.ByteString
    @NotNull
    public String string(@NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        return toByteString().string(charset);
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString substring(int i2, int i4) {
        if (i2 >= 0) {
            if (!(i4 <= size())) {
                throw new IllegalArgumentException(("endIndex=" + i4 + " > length(" + size() + ')').toString());
            }
            int i5 = i4 - i2;
            if (i5 >= 0) {
                if (i2 == 0 && i4 == size()) {
                    return this;
                }
                if (i2 == i4) {
                    return ByteString.EMPTY;
                }
                int segment = SegmentedByteStringKt.segment(this, i2);
                int segment2 = SegmentedByteStringKt.segment(this, i4 - 1);
                byte[][] bArr = (byte[][]) ArraysKt.copyOfRange(getSegments$okio(), segment, segment2 + 1);
                int[] iArr = new int[bArr.length * 2];
                if (segment <= segment2) {
                    int i6 = segment;
                    int i7 = 0;
                    while (true) {
                        iArr[i7] = Math.min(getDirectory$okio()[i6] - i2, i5);
                        int i8 = i7 + 1;
                        iArr[i7 + bArr.length] = getDirectory$okio()[getSegments$okio().length + i6];
                        if (i6 == segment2) {
                            break;
                        }
                        i6++;
                        i7 = i8;
                    }
                }
                int i9 = segment != 0 ? getDirectory$okio()[segment - 1] : 0;
                int length = bArr.length;
                iArr[length] = iArr[length] + (i2 - i9);
                return new SegmentedByteString(bArr, iArr);
            }
            throw new IllegalArgumentException(("endIndex=" + i4 + " < beginIndex=" + i2).toString());
        }
        throw new IllegalArgumentException(("beginIndex=" + i2 + " < 0").toString());
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString toAsciiLowercase() {
        return toByteString().toAsciiLowercase();
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString toAsciiUppercase() {
        return toByteString().toAsciiUppercase();
    }

    @Override // okio.ByteString
    @NotNull
    public byte[] toByteArray() {
        byte[] bArr = new byte[size()];
        int length = getSegments$okio().length;
        int i2 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 < length) {
            int i6 = getDirectory$okio()[length + i2];
            int i7 = getDirectory$okio()[i2];
            int i8 = i7 - i4;
            ArraysKt___ArraysJvmKt.copyInto(getSegments$okio()[i2], bArr, i5, i6, i6 + i8);
            i5 += i8;
            i2++;
            i4 = i7;
        }
        return bArr;
    }

    @Override // okio.ByteString
    @NotNull
    public String toString() {
        return toByteString().toString();
    }

    @Override // okio.ByteString
    public void write(@NotNull OutputStream out) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        int length = getSegments$okio().length;
        int i2 = 0;
        int i4 = 0;
        while (i2 < length) {
            int i5 = getDirectory$okio()[length + i2];
            int i6 = getDirectory$okio()[i2];
            out.write(getSegments$okio()[i2], i5, i6 - i4);
            i2++;
            i4 = i6;
        }
    }

    @Override // okio.ByteString
    public void write$okio(@NotNull Buffer buffer, int i2, int i4) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int i5 = i4 + i2;
        int segment = SegmentedByteStringKt.segment(this, i2);
        while (i2 < i5) {
            int i6 = segment == 0 ? 0 : getDirectory$okio()[segment - 1];
            int i7 = getDirectory$okio()[getSegments$okio().length + segment];
            int min = Math.min(i5, (getDirectory$okio()[segment] - i6) + i6) - i2;
            int i8 = i7 + (i2 - i6);
            Segment segment2 = new Segment(getSegments$okio()[segment], i8, i8 + min, true, false);
            Segment segment3 = buffer.head;
            if (segment3 == null) {
                segment2.prev = segment2;
                segment2.next = segment2;
                buffer.head = segment2;
            } else {
                Intrinsics.checkNotNull(segment3);
                Segment segment4 = segment3.prev;
                Intrinsics.checkNotNull(segment4);
                segment4.push(segment2);
            }
            i2 += min;
            segment++;
        }
        buffer.setSize$okio(buffer.size() + size());
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i2, @NotNull byte[] other, int i4, int i5) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (i2 < 0 || i2 > size() - i5 || i4 < 0 || i4 > other.length - i5) {
            return false;
        }
        int i6 = i5 + i2;
        int segment = SegmentedByteStringKt.segment(this, i2);
        while (i2 < i6) {
            int i7 = segment == 0 ? 0 : getDirectory$okio()[segment - 1];
            int i8 = getDirectory$okio()[getSegments$okio().length + segment];
            int min = Math.min(i6, (getDirectory$okio()[segment] - i7) + i7) - i2;
            if (!Util.arrayRangeEquals(getSegments$okio()[segment], i8 + (i2 - i7), other, i4, min)) {
                return false;
            }
            i4 += min;
            i2 += min;
            segment++;
        }
        return true;
    }
}
