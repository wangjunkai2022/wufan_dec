package io.netty.handler.codec.compression;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.ByteToMessageDecoder;
import io.netty.util.internal.ObjectUtil;
import java.util.List;
import java.util.zip.Checksum;
import net.jpountz.lz4.LZ4Exception;
import net.jpountz.lz4.LZ4Factory;
import net.jpountz.lz4.LZ4FastDecompressor;
/* loaded from: classes5.dex */
public class Lz4FrameDecoder extends ByteToMessageDecoder {
    private int blockType;
    private ByteBufChecksum checksum;
    private int compressedLength;
    private int currentChecksum;
    private State currentState;
    private int decompressedLength;
    private LZ4FastDecompressor decompressor;

    /* renamed from: io.netty.handler.codec.compression.Lz4FrameDecoder$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$compression$Lz4FrameDecoder$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$io$netty$handler$codec$compression$Lz4FrameDecoder$State = iArr;
            try {
                iArr[State.INIT_BLOCK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$Lz4FrameDecoder$State[State.DECOMPRESS_DATA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$Lz4FrameDecoder$State[State.FINISHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$Lz4FrameDecoder$State[State.CORRUPTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes5.dex */
    private enum State {
        INIT_BLOCK,
        DECOMPRESS_DATA,
        FINISHED,
        CORRUPTED
    }

    public Lz4FrameDecoder() {
        this(false);
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        ByteBuf retainedSlice;
        try {
            int i2 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$compression$Lz4FrameDecoder$State[this.currentState.ordinal()];
            ByteBuf byteBuf2 = null;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3 && i2 != 4) {
                        throw new IllegalStateException();
                    }
                    byteBuf.skipBytes(byteBuf.readableBytes());
                    return;
                }
            } else if (byteBuf.readableBytes() < 21) {
                return;
            } else {
                if (byteBuf.readLong() == 5501767354678207339L) {
                    byte readByte = byteBuf.readByte();
                    int i4 = (readByte & 15) + 10;
                    int i5 = readByte & 240;
                    int reverseBytes = Integer.reverseBytes(byteBuf.readInt());
                    if (reverseBytes >= 0 && reverseBytes <= 33554432) {
                        int reverseBytes2 = Integer.reverseBytes(byteBuf.readInt());
                        int i6 = 1 << i4;
                        if (reverseBytes2 >= 0 && reverseBytes2 <= i6) {
                            if ((reverseBytes2 == 0 && reverseBytes != 0) || ((reverseBytes2 != 0 && reverseBytes == 0) || (i5 == 16 && reverseBytes2 != reverseBytes))) {
                                throw new DecompressionException(String.format("stream corrupted: compressedLength(%d) and decompressedLength(%d) mismatch", Integer.valueOf(reverseBytes), Integer.valueOf(reverseBytes2)));
                            }
                            int reverseBytes3 = Integer.reverseBytes(byteBuf.readInt());
                            if (reverseBytes2 == 0 && reverseBytes == 0) {
                                if (reverseBytes3 == 0) {
                                    this.currentState = State.FINISHED;
                                    this.decompressor = null;
                                    this.checksum = null;
                                    return;
                                }
                                throw new DecompressionException("stream corrupted: checksum error");
                            }
                            this.blockType = i5;
                            this.compressedLength = reverseBytes;
                            this.decompressedLength = reverseBytes2;
                            this.currentChecksum = reverseBytes3;
                            this.currentState = State.DECOMPRESS_DATA;
                        } else {
                            throw new DecompressionException(String.format("invalid decompressedLength: %d (expected: 0-%d)", Integer.valueOf(reverseBytes2), Integer.valueOf(i6)));
                        }
                    } else {
                        throw new DecompressionException(String.format("invalid compressedLength: %d (expected: 0-%d)", Integer.valueOf(reverseBytes), 33554432));
                    }
                } else {
                    throw new DecompressionException("unexpected block identifier");
                }
            }
            int i7 = this.blockType;
            int i8 = this.compressedLength;
            int i9 = this.decompressedLength;
            int i10 = this.currentChecksum;
            if (byteBuf.readableBytes() < i8) {
                return;
            }
            ByteBufChecksum byteBufChecksum = this.checksum;
            try {
                try {
                    if (i7 == 16) {
                        retainedSlice = byteBuf.retainedSlice(byteBuf.readerIndex(), i9);
                    } else if (i7 == 32) {
                        retainedSlice = channelHandlerContext.alloc().buffer(i9, i9);
                        try {
                            this.decompressor.decompress(CompressionUtil.safeNioBuffer(byteBuf), retainedSlice.internalNioBuffer(retainedSlice.writerIndex(), i9));
                            retainedSlice.writerIndex(retainedSlice.writerIndex() + i9);
                        } catch (LZ4Exception e4) {
                            e = e4;
                            throw new DecompressionException((Throwable) e);
                        } catch (Throwable th) {
                            th = th;
                            byteBuf2 = retainedSlice;
                            if (byteBuf2 != null) {
                                byteBuf2.release();
                            }
                            throw th;
                        }
                    } else {
                        throw new DecompressionException(String.format("unexpected blockType: %d (expected: %d or %d)", Integer.valueOf(i7), 16, 32));
                    }
                    byteBuf.skipBytes(i8);
                    if (byteBufChecksum != null) {
                        CompressionUtil.checkChecksum(byteBufChecksum, retainedSlice, i10);
                    }
                    list.add(retainedSlice);
                    this.currentState = State.INIT_BLOCK;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (LZ4Exception e5) {
                e = e5;
            }
        } catch (Exception e6) {
            this.currentState = State.CORRUPTED;
            throw e6;
        }
    }

    public boolean isClosed() {
        return this.currentState == State.FINISHED;
    }

    public Lz4FrameDecoder(boolean z3) {
        this(LZ4Factory.fastestInstance(), z3);
    }

    public Lz4FrameDecoder(LZ4Factory lZ4Factory, boolean z3) {
        this(lZ4Factory, z3 ? new Lz4XXHash32(-1756908916) : null);
    }

    public Lz4FrameDecoder(LZ4Factory lZ4Factory, Checksum checksum) {
        this.currentState = State.INIT_BLOCK;
        this.decompressor = ((LZ4Factory) ObjectUtil.checkNotNull(lZ4Factory, "factory")).fastDecompressor();
        this.checksum = checksum == null ? null : ByteBufChecksum.wrapChecksum(checksum);
    }
}
