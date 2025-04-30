package io.netty.channel.unix;

import io.netty.channel.ChannelException;
import io.netty.util.CharsetUtil;
import io.netty.util.NetUtil;
import java.io.IOException;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PortUnreachableException;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public class Socket extends FileDescriptor {
    protected final boolean ipv6;
    public static final int UDS_SUN_PATH_SIZE = LimitsStaticallyReferencedJniMethods.udsSunPathSize();
    private static final AtomicBoolean INITIALIZED = new AtomicBoolean();

    public Socket(int i2) {
        super(i2);
        this.ipv6 = isIPv6(i2);
    }

    private static native int accept(int i2, byte[] bArr);

    private static native int bind(int i2, boolean z3, byte[] bArr, int i4, int i5);

    private static native int bindDomainSocket(int i2, byte[] bArr);

    private static native int connect(int i2, boolean z3, byte[] bArr, int i4, int i5);

    private static native int connectDomainSocket(int i2, byte[] bArr);

    private static native int disconnect(int i2, boolean z3);

    private static native int finishConnect(int i2);

    private static native int getReceiveBufferSize(int i2) throws IOException;

    private static native int getSendBufferSize(int i2) throws IOException;

    private static native int getSoError(int i2) throws IOException;

    private static native int getSoLinger(int i2) throws IOException;

    private static native int getTrafficClass(int i2, boolean z3) throws IOException;

    public static void initialize() {
        if (INITIALIZED.compareAndSet(false, true)) {
            initialize(NetUtil.isIpV4StackPreferred());
        }
    }

    private static native void initialize(boolean z3);

    private static native int isBroadcast(int i2) throws IOException;

    private static native boolean isIPv6(int i2);

    public static native boolean isIPv6Preferred();

    private static native int isKeepAlive(int i2) throws IOException;

    private static native int isReuseAddress(int i2) throws IOException;

    private static native int isReusePort(int i2) throws IOException;

    private static native int isTcpNoDelay(int i2) throws IOException;

    private static native int listen(int i2, int i4);

    private static native byte[] localAddress(int i2);

    public static Socket newSocketDgram() {
        return new Socket(newSocketDgram0());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int newSocketDgram0() {
        return newSocketDgram0(isIPv6Preferred());
    }

    private static native int newSocketDgramFd(boolean z3);

    public static Socket newSocketDomain() {
        return new Socket(newSocketDomain0());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int newSocketDomain0() {
        int newSocketDomainFd = newSocketDomainFd();
        if (newSocketDomainFd >= 0) {
            return newSocketDomainFd;
        }
        throw new ChannelException(Errors.newIOException("newSocketDomain", newSocketDomainFd));
    }

    private static native int newSocketDomainFd();

    public static Socket newSocketStream() {
        return new Socket(newSocketStream0());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int newSocketStream0() {
        return newSocketStream0(isIPv6Preferred());
    }

    private static native int newSocketStreamFd(boolean z3);

    private static native int recvFd(int i2);

    private static native DatagramSocketAddress recvFrom(int i2, ByteBuffer byteBuffer, int i4, int i5) throws IOException;

    private static native DatagramSocketAddress recvFromAddress(int i2, long j4, int i4, int i5) throws IOException;

    private static native byte[] remoteAddress(int i2);

    private static native int sendFd(int i2, int i4);

    private static native int sendTo(int i2, boolean z3, ByteBuffer byteBuffer, int i4, int i5, byte[] bArr, int i6, int i7);

    private static native int sendToAddress(int i2, boolean z3, long j4, int i4, int i5, byte[] bArr, int i6, int i7);

    private static native int sendToAddresses(int i2, boolean z3, long j4, int i4, byte[] bArr, int i5, int i6);

    private static native void setBroadcast(int i2, int i4) throws IOException;

    private static native void setKeepAlive(int i2, int i4) throws IOException;

    private static native void setReceiveBufferSize(int i2, int i4) throws IOException;

    private static native void setReuseAddress(int i2, int i4) throws IOException;

    private static native void setReusePort(int i2, int i4) throws IOException;

    private static native void setSendBufferSize(int i2, int i4) throws IOException;

    private static native void setSoLinger(int i2, int i4) throws IOException;

    private static native void setTcpNoDelay(int i2, int i4) throws IOException;

    private static native void setTrafficClass(int i2, boolean z3, int i4) throws IOException;

    private static native int shutdown(int i2, boolean z3, boolean z4);

    public final int accept(byte[] bArr) throws IOException {
        int accept = accept(this.fd, bArr);
        if (accept >= 0) {
            return accept;
        }
        if (accept == Errors.ERRNO_EAGAIN_NEGATIVE || accept == Errors.ERRNO_EWOULDBLOCK_NEGATIVE) {
            return -1;
        }
        throw Errors.newIOException("accept", accept);
    }

    public final void bind(SocketAddress socketAddress) throws IOException {
        if (socketAddress instanceof InetSocketAddress) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
            NativeInetAddress newInstance = NativeInetAddress.newInstance(inetSocketAddress.getAddress());
            int bind = bind(this.fd, this.ipv6, newInstance.address, newInstance.scopeId, inetSocketAddress.getPort());
            if (bind < 0) {
                throw Errors.newIOException("bind", bind);
            }
        } else if (socketAddress instanceof DomainSocketAddress) {
            int bindDomainSocket = bindDomainSocket(this.fd, ((DomainSocketAddress) socketAddress).path().getBytes(CharsetUtil.UTF_8));
            if (bindDomainSocket < 0) {
                throw Errors.newIOException("bind", bindDomainSocket);
            }
        } else {
            throw new Error("Unexpected SocketAddress implementation " + socketAddress);
        }
    }

    public final boolean connect(SocketAddress socketAddress) throws IOException {
        int connectDomainSocket;
        if (socketAddress instanceof InetSocketAddress) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
            NativeInetAddress newInstance = NativeInetAddress.newInstance(inetSocketAddress.getAddress());
            connectDomainSocket = connect(this.fd, this.ipv6, newInstance.address, newInstance.scopeId, inetSocketAddress.getPort());
        } else if (socketAddress instanceof DomainSocketAddress) {
            connectDomainSocket = connectDomainSocket(this.fd, ((DomainSocketAddress) socketAddress).path().getBytes(CharsetUtil.UTF_8));
        } else {
            throw new Error("Unexpected SocketAddress implementation " + socketAddress);
        }
        if (connectDomainSocket < 0) {
            if (connectDomainSocket == Errors.ERRNO_EINPROGRESS_NEGATIVE) {
                return false;
            }
            Errors.throwConnectException("connect", connectDomainSocket);
            return true;
        }
        return true;
    }

    public final void disconnect() throws IOException {
        int disconnect = disconnect(this.fd, this.ipv6);
        if (disconnect < 0) {
            Errors.throwConnectException("disconnect", disconnect);
        }
    }

    public final boolean finishConnect() throws IOException {
        int finishConnect = finishConnect(this.fd);
        if (finishConnect < 0) {
            if (finishConnect == Errors.ERRNO_EINPROGRESS_NEGATIVE) {
                return false;
            }
            Errors.throwConnectException("finishConnect", finishConnect);
            return true;
        }
        return true;
    }

    public final int getReceiveBufferSize() throws IOException {
        return getReceiveBufferSize(this.fd);
    }

    public final int getSendBufferSize() throws IOException {
        return getSendBufferSize(this.fd);
    }

    public final int getSoError() throws IOException {
        return getSoError(this.fd);
    }

    public final int getSoLinger() throws IOException {
        return getSoLinger(this.fd);
    }

    public final int getTrafficClass() throws IOException {
        return getTrafficClass(this.fd, this.ipv6);
    }

    public final boolean isBroadcast() throws IOException {
        return isBroadcast(this.fd) != 0;
    }

    public final boolean isInputShutdown() {
        return FileDescriptor.isInputShutdown(this.state);
    }

    public final boolean isKeepAlive() throws IOException {
        return isKeepAlive(this.fd) != 0;
    }

    public final boolean isOutputShutdown() {
        return FileDescriptor.isOutputShutdown(this.state);
    }

    public final boolean isReuseAddress() throws IOException {
        return isReuseAddress(this.fd) != 0;
    }

    public final boolean isReusePort() throws IOException {
        return isReusePort(this.fd) != 0;
    }

    public final boolean isShutdown() {
        int i2 = this.state;
        return FileDescriptor.isInputShutdown(i2) && FileDescriptor.isOutputShutdown(i2);
    }

    public final boolean isTcpNoDelay() throws IOException {
        return isTcpNoDelay(this.fd) != 0;
    }

    public final void listen(int i2) throws IOException {
        int listen = listen(this.fd, i2);
        if (listen < 0) {
            throw Errors.newIOException("listen", listen);
        }
    }

    public final InetSocketAddress localAddress() {
        byte[] localAddress = localAddress(this.fd);
        if (localAddress == null) {
            return null;
        }
        return NativeInetAddress.address(localAddress, 0, localAddress.length);
    }

    public final int recvFd() throws IOException {
        int recvFd = recvFd(this.fd);
        if (recvFd > 0) {
            return recvFd;
        }
        if (recvFd == 0) {
            return -1;
        }
        if (recvFd == Errors.ERRNO_EAGAIN_NEGATIVE || recvFd == Errors.ERRNO_EWOULDBLOCK_NEGATIVE) {
            return 0;
        }
        throw Errors.newIOException("recvFd", recvFd);
    }

    public final DatagramSocketAddress recvFrom(ByteBuffer byteBuffer, int i2, int i4) throws IOException {
        return recvFrom(this.fd, byteBuffer, i2, i4);
    }

    public final DatagramSocketAddress recvFromAddress(long j4, int i2, int i4) throws IOException {
        return recvFromAddress(this.fd, j4, i2, i4);
    }

    public final InetSocketAddress remoteAddress() {
        byte[] remoteAddress = remoteAddress(this.fd);
        if (remoteAddress == null) {
            return null;
        }
        return NativeInetAddress.address(remoteAddress, 0, remoteAddress.length);
    }

    public final int sendFd(int i2) throws IOException {
        int sendFd = sendFd(this.fd, i2);
        if (sendFd >= 0) {
            return sendFd;
        }
        if (sendFd == Errors.ERRNO_EAGAIN_NEGATIVE || sendFd == Errors.ERRNO_EWOULDBLOCK_NEGATIVE) {
            return -1;
        }
        throw Errors.newIOException("sendFd", sendFd);
    }

    public final int sendTo(ByteBuffer byteBuffer, int i2, int i4, InetAddress inetAddress, int i5) throws IOException {
        byte[] ipv4MappedIpv6Address;
        int i6;
        if (inetAddress instanceof Inet6Address) {
            byte[] address = inetAddress.getAddress();
            i6 = ((Inet6Address) inetAddress).getScopeId();
            ipv4MappedIpv6Address = address;
        } else {
            ipv4MappedIpv6Address = NativeInetAddress.ipv4MappedIpv6Address(inetAddress.getAddress());
            i6 = 0;
        }
        int sendTo = sendTo(this.fd, this.ipv6, byteBuffer, i2, i4, ipv4MappedIpv6Address, i6, i5);
        if (sendTo >= 0) {
            return sendTo;
        }
        if (sendTo != Errors.ERROR_ECONNREFUSED_NEGATIVE) {
            return Errors.ioResult("sendTo", sendTo);
        }
        throw new PortUnreachableException("sendTo failed");
    }

    public final int sendToAddress(long j4, int i2, int i4, InetAddress inetAddress, int i5) throws IOException {
        byte[] ipv4MappedIpv6Address;
        int i6;
        if (inetAddress instanceof Inet6Address) {
            byte[] address = inetAddress.getAddress();
            i6 = ((Inet6Address) inetAddress).getScopeId();
            ipv4MappedIpv6Address = address;
        } else {
            ipv4MappedIpv6Address = NativeInetAddress.ipv4MappedIpv6Address(inetAddress.getAddress());
            i6 = 0;
        }
        int sendToAddress = sendToAddress(this.fd, this.ipv6, j4, i2, i4, ipv4MappedIpv6Address, i6, i5);
        if (sendToAddress >= 0) {
            return sendToAddress;
        }
        if (sendToAddress != Errors.ERROR_ECONNREFUSED_NEGATIVE) {
            return Errors.ioResult("sendToAddress", sendToAddress);
        }
        throw new PortUnreachableException("sendToAddress failed");
    }

    public final int sendToAddresses(long j4, int i2, InetAddress inetAddress, int i4) throws IOException {
        byte[] ipv4MappedIpv6Address;
        int i5;
        if (inetAddress instanceof Inet6Address) {
            byte[] address = inetAddress.getAddress();
            i5 = ((Inet6Address) inetAddress).getScopeId();
            ipv4MappedIpv6Address = address;
        } else {
            ipv4MappedIpv6Address = NativeInetAddress.ipv4MappedIpv6Address(inetAddress.getAddress());
            i5 = 0;
        }
        int sendToAddresses = sendToAddresses(this.fd, this.ipv6, j4, i2, ipv4MappedIpv6Address, i5, i4);
        if (sendToAddresses >= 0) {
            return sendToAddresses;
        }
        if (sendToAddresses != Errors.ERROR_ECONNREFUSED_NEGATIVE) {
            return Errors.ioResult("sendToAddresses", sendToAddresses);
        }
        throw new PortUnreachableException("sendToAddresses failed");
    }

    public final void setBroadcast(boolean z3) throws IOException {
        setBroadcast(this.fd, z3 ? 1 : 0);
    }

    public final void setKeepAlive(boolean z3) throws IOException {
        setKeepAlive(this.fd, z3 ? 1 : 0);
    }

    public final void setReceiveBufferSize(int i2) throws IOException {
        setReceiveBufferSize(this.fd, i2);
    }

    public final void setReuseAddress(boolean z3) throws IOException {
        setReuseAddress(this.fd, z3 ? 1 : 0);
    }

    public final void setReusePort(boolean z3) throws IOException {
        setReusePort(this.fd, z3 ? 1 : 0);
    }

    public final void setSendBufferSize(int i2) throws IOException {
        setSendBufferSize(this.fd, i2);
    }

    public final void setSoLinger(int i2) throws IOException {
        setSoLinger(this.fd, i2);
    }

    public final void setTcpNoDelay(boolean z3) throws IOException {
        setTcpNoDelay(this.fd, z3 ? 1 : 0);
    }

    public final void setTrafficClass(int i2) throws IOException {
        setTrafficClass(this.fd, this.ipv6, i2);
    }

    public final void shutdown() throws IOException {
        shutdown(true, true);
    }

    @Override // io.netty.channel.unix.FileDescriptor
    public String toString() {
        return "Socket{fd=" + this.fd + '}';
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int newSocketDgram0(boolean z3) {
        int newSocketDgramFd = newSocketDgramFd(z3);
        if (newSocketDgramFd >= 0) {
            return newSocketDgramFd;
        }
        throw new ChannelException(Errors.newIOException("newSocketDgram", newSocketDgramFd));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int newSocketStream0(boolean z3) {
        int newSocketStreamFd = newSocketStreamFd(z3);
        if (newSocketStreamFd >= 0) {
            return newSocketStreamFd;
        }
        throw new ChannelException(Errors.newIOException("newSocketStream", newSocketStreamFd));
    }

    public final void shutdown(boolean z3, boolean z4) throws IOException {
        int i2;
        int inputShutdown;
        do {
            i2 = this.state;
            if (!FileDescriptor.isClosed(i2)) {
                inputShutdown = (!z3 || FileDescriptor.isInputShutdown(i2)) ? i2 : FileDescriptor.inputShutdown(i2);
                if (z4 && !FileDescriptor.isOutputShutdown(inputShutdown)) {
                    inputShutdown = FileDescriptor.outputShutdown(inputShutdown);
                }
                if (inputShutdown == i2) {
                    return;
                }
            } else {
                throw new ClosedChannelException();
            }
        } while (!casState(i2, inputShutdown));
        int shutdown = shutdown(this.fd, z3, z4);
        if (shutdown < 0) {
            Errors.ioResult("shutdown", shutdown);
        }
    }
}
