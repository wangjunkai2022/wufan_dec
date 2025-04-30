package androidx.emoji2.text.flatbuffer;

import androidx.emoji2.text.flatbuffer.Utf8Old;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.StandardCharsets;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class Utf8Old extends Utf8 {

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<Cache> f5694b = ThreadLocal.withInitial(new Supplier() { // from class: androidx.emoji2.text.flatbuffer.a
        @Override // java.util.function.Supplier
        public final Object get() {
            Utf8Old.Cache b4;
            b4 = Utf8Old.b();
            return b4;
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Cache {

        /* renamed from: c  reason: collision with root package name */
        CharSequence f5697c = null;

        /* renamed from: d  reason: collision with root package name */
        ByteBuffer f5698d = null;

        /* renamed from: a  reason: collision with root package name */
        final CharsetEncoder f5695a = StandardCharsets.UTF_8.newEncoder();

        /* renamed from: b  reason: collision with root package name */
        final CharsetDecoder f5696b = StandardCharsets.UTF_8.newDecoder();

        Cache() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Cache b() {
        return new Cache();
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public String decodeUtf8(ByteBuffer byteBuffer, int i2, int i4) {
        CharsetDecoder charsetDecoder = f5694b.get().f5696b;
        charsetDecoder.reset();
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.position(i2);
        duplicate.limit(i2 + i4);
        try {
            return charsetDecoder.decode(duplicate).toString();
        } catch (CharacterCodingException e4) {
            throw new IllegalArgumentException("Bad encoding", e4);
        }
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        Cache cache = f5694b.get();
        if (cache.f5697c != charSequence) {
            encodedLength(charSequence);
        }
        byteBuffer.put(cache.f5698d);
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public int encodedLength(CharSequence charSequence) {
        Cache cache = f5694b.get();
        int length = (int) (charSequence.length() * cache.f5695a.maxBytesPerChar());
        ByteBuffer byteBuffer = cache.f5698d;
        if (byteBuffer == null || byteBuffer.capacity() < length) {
            cache.f5698d = ByteBuffer.allocate(Math.max(128, length));
        }
        cache.f5698d.clear();
        cache.f5697c = charSequence;
        CoderResult encode = cache.f5695a.encode(charSequence instanceof CharBuffer ? (CharBuffer) charSequence : CharBuffer.wrap(charSequence), cache.f5698d, true);
        if (encode.isError()) {
            try {
                encode.throwException();
            } catch (CharacterCodingException e4) {
                throw new IllegalArgumentException("bad character encoding", e4);
            }
        }
        cache.f5698d.flip();
        return cache.f5698d.remaining();
    }
}
