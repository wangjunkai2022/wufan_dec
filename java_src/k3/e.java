package k3;
/* compiled from: SocketChannelConfig.java */
/* loaded from: classes5.dex */
public interface e extends org.jboss.netty.channel.f {
    int getReceiveBufferSize();

    int getSendBufferSize();

    int getSoLinger();

    int getTrafficClass();

    boolean isKeepAlive();

    boolean isReuseAddress();

    boolean isTcpNoDelay();

    void setKeepAlive(boolean z3);

    void setPerformancePreferences(int i2, int i4, int i5);

    void setReceiveBufferSize(int i2);

    void setReuseAddress(boolean z3);

    void setSendBufferSize(int i2);

    void setSoLinger(int i2);

    void setTcpNoDelay(boolean z3);

    void setTrafficClass(int i2);
}
