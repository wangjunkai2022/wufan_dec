package io.netty.handler.codec.compression;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.internal.ObjectUtil;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
/* loaded from: classes5.dex */
public class JdkZlibDecoder extends ZlibDecoder {
    private static final int FCOMMENT = 16;
    private static final int FEXTRA = 4;
    private static final int FHCRC = 2;
    private static final int FNAME = 8;
    private static final int FRESERVED = 224;
    private final ByteBufChecksum crc;
    private boolean decideZlibOrNone;
    private final boolean decompressConcatenated;
    private final byte[] dictionary;
    private volatile boolean finished;
    private int flags;
    private GzipState gzipState;
    private Inflater inflater;
    private int xlen;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.netty.handler.codec.compression.JdkZlibDecoder$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$compression$JdkZlibDecoder$GzipState;
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$compression$ZlibWrapper;

        static {
            int[] iArr = new int[GzipState.values().length];
            $SwitchMap$io$netty$handler$codec$compression$JdkZlibDecoder$GzipState = iArr;
            try {
                iArr[GzipState.FOOTER_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$JdkZlibDecoder$GzipState[GzipState.HEADER_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$JdkZlibDecoder$GzipState[GzipState.FLG_READ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$JdkZlibDecoder$GzipState[GzipState.XLEN_READ.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$JdkZlibDecoder$GzipState[GzipState.SKIP_FNAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$JdkZlibDecoder$GzipState[GzipState.SKIP_COMMENT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$JdkZlibDecoder$GzipState[GzipState.PROCESS_FHCRC.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$JdkZlibDecoder$GzipState[GzipState.HEADER_END.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[ZlibWrapper.values().length];
            $SwitchMap$io$netty$handler$codec$compression$ZlibWrapper = iArr2;
            try {
                iArr2[ZlibWrapper.GZIP.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$ZlibWrapper[ZlibWrapper.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$ZlibWrapper[ZlibWrapper.ZLIB.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$ZlibWrapper[ZlibWrapper.ZLIB_OR_NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum GzipState {
        HEADER_START,
        HEADER_END,
        FLG_READ,
        XLEN_READ,
        SKIP_FNAME,
        SKIP_COMMENT,
        PROCESS_FHCRC,
        FOOTER_START
    }

    public JdkZlibDecoder() {
        this(ZlibWrapper.ZLIB, null, false, 0);
    }

    private static boolean looksLikeZlib(short s3) {
        return (s3 & 30720) == 30720 && s3 % 31 == 0;
    }

    private boolean readGZIPFooter(ByteBuf byteBuf) {
        if (byteBuf.readableBytes() < 8) {
            return false;
        }
        verifyCrc(byteBuf);
        int i2 = 0;
        for (int i4 = 0; i4 < 4; i4++) {
            i2 |= byteBuf.readUnsignedByte() << (i4 * 8);
        }
        int totalOut = this.inflater.getTotalOut();
        if (i2 == totalOut) {
            return true;
        }
        throw new DecompressionException("Number of bytes mismatch. Expected: " + i2 + ", Got: " + totalOut);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x010a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean readGZIPHeader(io.netty.buffer.ByteBuf r8) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.compression.JdkZlibDecoder.readGZIPHeader(io.netty.buffer.ByteBuf):boolean");
    }

    private void verifyCrc(ByteBuf byteBuf) {
        long j4 = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            j4 |= byteBuf.readUnsignedByte() << (i2 * 8);
        }
        long value = this.crc.getValue();
        if (j4 == value) {
            return;
        }
        throw new DecompressionException("CRC value mismatch. Expected: " + j4 + ", Got: " + value);
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f5, code lost:
        r10 = false;
     */
    @Override // io.netty.handler.codec.ByteToMessageDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void decode(io.netty.channel.ChannelHandlerContext r10, io.netty.buffer.ByteBuf r11, java.util.List<java.lang.Object> r12) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.compression.JdkZlibDecoder.decode(io.netty.channel.ChannelHandlerContext, io.netty.buffer.ByteBuf, java.util.List):void");
    }

    @Override // io.netty.handler.codec.compression.ZlibDecoder
    protected void decompressionBufferExhausted(ByteBuf byteBuf) {
        this.finished = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.ByteToMessageDecoder
    public void handlerRemoved0(ChannelHandlerContext channelHandlerContext) throws Exception {
        super.handlerRemoved0(channelHandlerContext);
        Inflater inflater = this.inflater;
        if (inflater != null) {
            inflater.end();
        }
    }

    @Override // io.netty.handler.codec.compression.ZlibDecoder
    public boolean isClosed() {
        return this.finished;
    }

    public JdkZlibDecoder(int i2) {
        this(ZlibWrapper.ZLIB, null, false, i2);
    }

    public JdkZlibDecoder(byte[] bArr) {
        this(ZlibWrapper.ZLIB, bArr, false, 0);
    }

    public JdkZlibDecoder(byte[] bArr, int i2) {
        this(ZlibWrapper.ZLIB, bArr, false, i2);
    }

    public JdkZlibDecoder(ZlibWrapper zlibWrapper) {
        this(zlibWrapper, null, false, 0);
    }

    public JdkZlibDecoder(ZlibWrapper zlibWrapper, int i2) {
        this(zlibWrapper, null, false, i2);
    }

    public JdkZlibDecoder(ZlibWrapper zlibWrapper, boolean z3) {
        this(zlibWrapper, null, z3, 0);
    }

    public JdkZlibDecoder(ZlibWrapper zlibWrapper, boolean z3, int i2) {
        this(zlibWrapper, null, z3, i2);
    }

    public JdkZlibDecoder(boolean z3) {
        this(ZlibWrapper.GZIP, null, z3, 0);
    }

    public JdkZlibDecoder(boolean z3, int i2) {
        this(ZlibWrapper.GZIP, null, z3, i2);
    }

    private JdkZlibDecoder(ZlibWrapper zlibWrapper, byte[] bArr, boolean z3, int i2) {
        super(i2);
        this.gzipState = GzipState.HEADER_START;
        this.flags = -1;
        this.xlen = -1;
        ObjectUtil.checkNotNull(zlibWrapper, "wrapper");
        this.decompressConcatenated = z3;
        int i4 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$compression$ZlibWrapper[zlibWrapper.ordinal()];
        if (i4 == 1) {
            this.inflater = new Inflater(true);
            this.crc = ByteBufChecksum.wrapChecksum(new CRC32());
        } else if (i4 == 2) {
            this.inflater = new Inflater(true);
            this.crc = null;
        } else if (i4 == 3) {
            this.inflater = new Inflater();
            this.crc = null;
        } else if (i4 == 4) {
            this.decideZlibOrNone = true;
            this.crc = null;
        } else {
            throw new IllegalArgumentException("Only GZIP or ZLIB is supported, but you used " + zlibWrapper);
        }
        this.dictionary = bArr;
    }
}
