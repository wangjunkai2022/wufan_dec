package k3;

import java.net.Socket;
import java.net.SocketException;
import java.util.Objects;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.v;
/* compiled from: DefaultSocketChannelConfig.java */
/* loaded from: classes5.dex */
public class c extends v implements e {

    /* renamed from: c  reason: collision with root package name */
    private final Socket f70694c;

    public c(Socket socket) {
        Objects.requireNonNull(socket, "socket");
        this.f70694c = socket;
    }

    @Override // org.jboss.netty.channel.v, org.jboss.netty.channel.f
    public boolean c(String str, Object obj) {
        if (super.c(str, obj)) {
            return true;
        }
        if ("receiveBufferSize".equals(str)) {
            setReceiveBufferSize(org.jboss.netty.util.internal.b.b(obj));
        } else if ("sendBufferSize".equals(str)) {
            setSendBufferSize(org.jboss.netty.util.internal.b.b(obj));
        } else if ("tcpNoDelay".equals(str)) {
            setTcpNoDelay(org.jboss.netty.util.internal.b.a(obj));
        } else if ("keepAlive".equals(str)) {
            setKeepAlive(org.jboss.netty.util.internal.b.a(obj));
        } else if ("reuseAddress".equals(str)) {
            setReuseAddress(org.jboss.netty.util.internal.b.a(obj));
        } else if ("soLinger".equals(str)) {
            setSoLinger(org.jboss.netty.util.internal.b.b(obj));
        } else if (!"trafficClass".equals(str)) {
            return false;
        } else {
            setTrafficClass(org.jboss.netty.util.internal.b.b(obj));
        }
        return true;
    }

    @Override // k3.e
    public int getReceiveBufferSize() {
        try {
            return this.f70694c.getReceiveBufferSize();
        } catch (SocketException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // k3.e
    public int getSendBufferSize() {
        try {
            return this.f70694c.getSendBufferSize();
        } catch (SocketException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // k3.e
    public int getSoLinger() {
        try {
            return this.f70694c.getSoLinger();
        } catch (SocketException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // k3.e
    public int getTrafficClass() {
        try {
            return this.f70694c.getTrafficClass();
        } catch (SocketException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // k3.e
    public boolean isKeepAlive() {
        try {
            return this.f70694c.getKeepAlive();
        } catch (SocketException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // k3.e
    public boolean isReuseAddress() {
        try {
            return this.f70694c.getReuseAddress();
        } catch (SocketException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // k3.e
    public boolean isTcpNoDelay() {
        try {
            return this.f70694c.getTcpNoDelay();
        } catch (SocketException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // k3.e
    public void setKeepAlive(boolean z3) {
        try {
            this.f70694c.setKeepAlive(z3);
        } catch (SocketException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // k3.e
    public void setPerformancePreferences(int i2, int i4, int i5) {
        this.f70694c.setPerformancePreferences(i2, i4, i5);
    }

    @Override // k3.e
    public void setReceiveBufferSize(int i2) {
        try {
            this.f70694c.setReceiveBufferSize(i2);
        } catch (SocketException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // k3.e
    public void setReuseAddress(boolean z3) {
        try {
            this.f70694c.setReuseAddress(z3);
        } catch (SocketException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // k3.e
    public void setSendBufferSize(int i2) {
        try {
            this.f70694c.setSendBufferSize(i2);
        } catch (SocketException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // k3.e
    public void setSoLinger(int i2) {
        try {
            if (i2 < 0) {
                this.f70694c.setSoLinger(false, 0);
            } else {
                this.f70694c.setSoLinger(true, i2);
            }
        } catch (SocketException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // k3.e
    public void setTcpNoDelay(boolean z3) {
        try {
            this.f70694c.setTcpNoDelay(z3);
        } catch (SocketException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // k3.e
    public void setTrafficClass(int i2) {
        try {
            this.f70694c.setTrafficClass(i2);
        } catch (SocketException e4) {
            throw new ChannelException(e4);
        }
    }
}
