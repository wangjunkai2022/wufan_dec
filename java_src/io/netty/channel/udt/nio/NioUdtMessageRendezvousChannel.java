package io.netty.channel.udt.nio;

import com.barchart.udt.TypeUDT;
import com.barchart.udt.nio.SocketChannelUDT;
@Deprecated
/* loaded from: classes5.dex */
public class NioUdtMessageRendezvousChannel extends NioUdtMessageConnectorChannel {
    public NioUdtMessageRendezvousChannel() {
        super((SocketChannelUDT) NioUdtProvider.newRendezvousChannelUDT(TypeUDT.DATAGRAM));
    }
}
