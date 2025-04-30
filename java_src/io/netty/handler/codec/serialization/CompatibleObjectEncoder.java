package io.netty.handler.codec.serialization;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufOutputStream;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.MessageToByteEncoder;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
/* loaded from: classes5.dex */
public class CompatibleObjectEncoder extends MessageToByteEncoder<Serializable> {
    private final int resetInterval;
    private int writtenObjects;

    public CompatibleObjectEncoder() {
        this(16);
    }

    protected ObjectOutputStream newObjectOutputStream(OutputStream outputStream) throws Exception {
        return new ObjectOutputStream(outputStream);
    }

    public CompatibleObjectEncoder(int i2) {
        if (i2 >= 0) {
            this.resetInterval = i2;
            return;
        }
        throw new IllegalArgumentException("resetInterval: " + i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageToByteEncoder
    public void encode(ChannelHandlerContext channelHandlerContext, Serializable serializable, ByteBuf byteBuf) throws Exception {
        ObjectOutputStream newObjectOutputStream = newObjectOutputStream(new ByteBufOutputStream(byteBuf));
        try {
            int i2 = this.resetInterval;
            if (i2 != 0) {
                int i4 = this.writtenObjects + 1;
                this.writtenObjects = i4;
                if (i4 % i2 == 0) {
                    newObjectOutputStream.reset();
                }
            }
            newObjectOutputStream.writeObject(serializable);
            newObjectOutputStream.flush();
        } finally {
            newObjectOutputStream.close();
        }
    }
}
