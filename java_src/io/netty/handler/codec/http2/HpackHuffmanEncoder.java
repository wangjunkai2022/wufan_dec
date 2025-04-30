package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.util.AsciiString;
import io.netty.util.ByteProcessor;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class HpackHuffmanEncoder {
    private final int[] codes;
    private final EncodeProcessor encodeProcessor;
    private final EncodedLengthProcessor encodedLengthProcessor;
    private final byte[] lengths;

    /* loaded from: classes5.dex */
    private final class EncodeProcessor implements ByteProcessor {
        private long current;

        /* renamed from: n  reason: collision with root package name */
        private int f65753n;
        ByteBuf out;

        private EncodeProcessor() {
        }

        void end() {
            try {
                int i2 = this.f65753n;
                if (i2 > 0) {
                    long j4 = this.current << (8 - i2);
                    this.current = j4;
                    long j5 = j4 | (255 >>> i2);
                    this.current = j5;
                    this.out.writeByte((int) j5);
                }
            } finally {
                this.out = null;
                this.current = 0L;
                this.f65753n = 0;
            }
        }

        @Override // io.netty.util.ByteProcessor
        public boolean process(byte b4) {
            int i2;
            byte b5 = HpackHuffmanEncoder.this.lengths[b4 & 255];
            long j4 = this.current << b5;
            this.current = j4;
            this.current = j4 | HpackHuffmanEncoder.this.codes[i2];
            this.f65753n += b5;
            while (true) {
                int i4 = this.f65753n;
                if (i4 < 8) {
                    return true;
                }
                int i5 = i4 - 8;
                this.f65753n = i5;
                this.out.writeByte((int) (this.current >> i5));
            }
        }
    }

    /* loaded from: classes5.dex */
    private final class EncodedLengthProcessor implements ByteProcessor {
        private long len;

        private EncodedLengthProcessor() {
        }

        int length() {
            return (int) ((this.len + 7) >> 3);
        }

        @Override // io.netty.util.ByteProcessor
        public boolean process(byte b4) {
            this.len += HpackHuffmanEncoder.this.lengths[b4 & 255];
            return true;
        }

        void reset() {
            this.len = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HpackHuffmanEncoder() {
        this(HpackUtil.HUFFMAN_CODES, HpackUtil.HUFFMAN_CODE_LENGTHS);
    }

    private void encodeSlowPath(ByteBuf byteBuf, CharSequence charSequence) {
        int i2 = 0;
        long j4 = 0;
        byte b4 = 0;
        while (i2 < charSequence.length()) {
            int charAt = charSequence.charAt(i2) & 255;
            int i4 = this.codes[charAt];
            byte b5 = this.lengths[charAt];
            j4 = (j4 << b5) | i4;
            int i5 = b4 + b5;
            while (i5 >= 8) {
                i5 = (i5 == 1 ? 1 : 0) - 8;
                byteBuf.writeByte((int) (j4 >> i5));
            }
            i2++;
            b4 = i5;
        }
        if (b4 > 0) {
            byteBuf.writeByte((int) ((255 >>> b4) | (j4 << (8 - b4))));
        }
    }

    private int getEncodedLengthSlowPath(CharSequence charSequence) {
        long j4 = 0;
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            j4 += this.lengths[charSequence.charAt(i2) & 255];
        }
        return (int) ((j4 + 7) >> 3);
    }

    public void encode(ByteBuf byteBuf, CharSequence charSequence) {
        ObjectUtil.checkNotNull(byteBuf, "out");
        if (charSequence instanceof AsciiString) {
            AsciiString asciiString = (AsciiString) charSequence;
            try {
                try {
                    EncodeProcessor encodeProcessor = this.encodeProcessor;
                    encodeProcessor.out = byteBuf;
                    asciiString.forEachByte(encodeProcessor);
                } catch (Exception e4) {
                    PlatformDependent.throwException(e4);
                }
                return;
            } finally {
                this.encodeProcessor.end();
            }
        }
        encodeSlowPath(byteBuf, charSequence);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getEncodedLength(CharSequence charSequence) {
        if (charSequence instanceof AsciiString) {
            AsciiString asciiString = (AsciiString) charSequence;
            try {
                this.encodedLengthProcessor.reset();
                asciiString.forEachByte(this.encodedLengthProcessor);
                return this.encodedLengthProcessor.length();
            } catch (Exception e4) {
                PlatformDependent.throwException(e4);
                return -1;
            }
        }
        return getEncodedLengthSlowPath(charSequence);
    }

    private HpackHuffmanEncoder(int[] iArr, byte[] bArr) {
        this.encodedLengthProcessor = new EncodedLengthProcessor();
        this.encodeProcessor = new EncodeProcessor();
        this.codes = iArr;
        this.lengths = bArr;
    }
}
