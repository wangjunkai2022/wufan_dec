package io.netty.handler.codec.json;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.ByteToMessageDecoder;
import io.netty.handler.codec.CorruptedFrameException;
import io.netty.handler.codec.TooLongFrameException;
import java.util.List;
/* loaded from: classes5.dex */
public class JsonObjectDecoder extends ByteToMessageDecoder {
    private static final int ST_CORRUPTED = -1;
    private static final int ST_DECODING_ARRAY_STREAM = 2;
    private static final int ST_DECODING_NORMAL = 1;
    private static final int ST_INIT = 0;
    private int idx;
    private boolean insideString;
    private int lastReaderIndex;
    private final int maxObjectLength;
    private int openBraces;
    private int state;
    private final boolean streamArrayElements;

    public JsonObjectDecoder() {
        this(1048576);
    }

    private void decodeByte(byte b4, ByteBuf byteBuf, int i2) {
        if ((b4 == 123 || b4 == 91) && !this.insideString) {
            this.openBraces++;
        } else if ((b4 == 125 || b4 == 93) && !this.insideString) {
            this.openBraces--;
        } else if (b4 == 34) {
            if (!this.insideString) {
                this.insideString = true;
                return;
            }
            int i4 = 0;
            for (int i5 = i2 - 1; i5 >= 0 && byteBuf.getByte(i5) == 92; i5--) {
                i4++;
            }
            if (i4 % 2 == 0) {
                this.insideString = false;
            }
        }
    }

    private void initDecoding(byte b4) {
        this.openBraces = 1;
        if (b4 == 91 && this.streamArrayElements) {
            this.state = 2;
        } else {
            this.state = 1;
        }
    }

    private void reset() {
        this.insideString = false;
        this.state = 0;
        this.openBraces = 0;
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        int i2;
        if (this.state == -1) {
            byteBuf.skipBytes(byteBuf.readableBytes());
            return;
        }
        if (this.idx > byteBuf.readerIndex() && this.lastReaderIndex != byteBuf.readerIndex()) {
            this.idx = byteBuf.readerIndex() + (this.idx - this.lastReaderIndex);
        }
        int i4 = this.idx;
        int writerIndex = byteBuf.writerIndex();
        if (writerIndex <= this.maxObjectLength) {
            while (i4 < writerIndex) {
                byte b4 = byteBuf.getByte(i4);
                int i5 = this.state;
                if (i5 == 1) {
                    decodeByte(b4, byteBuf, i4);
                    if (this.openBraces == 0) {
                        int i6 = i4 + 1;
                        ByteBuf extractObject = extractObject(channelHandlerContext, byteBuf, byteBuf.readerIndex(), i6 - byteBuf.readerIndex());
                        if (extractObject != null) {
                            list.add(extractObject);
                        }
                        byteBuf.readerIndex(i6);
                        reset();
                    }
                } else if (i5 == 2) {
                    decodeByte(b4, byteBuf, i4);
                    if (!this.insideString && (((i2 = this.openBraces) == 1 && b4 == 44) || (i2 == 0 && b4 == 93))) {
                        for (int readerIndex = byteBuf.readerIndex(); Character.isWhitespace(byteBuf.getByte(readerIndex)); readerIndex++) {
                            byteBuf.skipBytes(1);
                        }
                        int i7 = i4 - 1;
                        while (i7 >= byteBuf.readerIndex() && Character.isWhitespace(byteBuf.getByte(i7))) {
                            i7--;
                        }
                        ByteBuf extractObject2 = extractObject(channelHandlerContext, byteBuf, byteBuf.readerIndex(), (i7 + 1) - byteBuf.readerIndex());
                        if (extractObject2 != null) {
                            list.add(extractObject2);
                        }
                        byteBuf.readerIndex(i4 + 1);
                        if (b4 == 93) {
                            reset();
                        }
                    }
                } else if (b4 != 123 && b4 != 91) {
                    if (Character.isWhitespace(b4)) {
                        byteBuf.skipBytes(1);
                    } else {
                        this.state = -1;
                        throw new CorruptedFrameException("invalid JSON received at byte position " + i4 + ": " + ByteBufUtil.hexDump(byteBuf));
                    }
                } else {
                    initDecoding(b4);
                    if (this.state == 2) {
                        byteBuf.skipBytes(1);
                    }
                }
                i4++;
            }
            if (byteBuf.readableBytes() == 0) {
                this.idx = 0;
            } else {
                this.idx = i4;
            }
            this.lastReaderIndex = byteBuf.readerIndex();
            return;
        }
        byteBuf.skipBytes(byteBuf.readableBytes());
        reset();
        throw new TooLongFrameException("object length exceeds " + this.maxObjectLength + ": " + writerIndex + " bytes discarded");
    }

    protected ByteBuf extractObject(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, int i2, int i4) {
        return byteBuf.retainedSlice(i2, i4);
    }

    public JsonObjectDecoder(int i2) {
        this(i2, false);
    }

    public JsonObjectDecoder(boolean z3) {
        this(1048576, z3);
    }

    public JsonObjectDecoder(int i2, boolean z3) {
        if (i2 >= 1) {
            this.maxObjectLength = i2;
            this.streamArrayElements = z3;
            return;
        }
        throw new IllegalArgumentException("maxObjectLength must be a positive int");
    }
}
