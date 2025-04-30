package io.netty.channel.epoll;

import com.join.mgps.socket.entity.b;
import io.netty.channel.ChannelException;
import io.netty.channel.DefaultFileRegion;
import io.netty.channel.epoll.NativeDatagramPacketArray;
import io.netty.channel.socket.InternetProtocolFamily;
import io.netty.channel.unix.Errors;
import io.netty.channel.unix.NativeInetAddress;
import io.netty.channel.unix.PeerCredentials;
import io.netty.channel.unix.Socket;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SocketUtils;
import java.io.IOException;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.UnknownHostException;
import java.util.Enumeration;
/* loaded from: classes5.dex */
final class LinuxSocket extends Socket {
    static final InetAddress INET6_ANY = unsafeInetAddrByName("::");
    private static final InetAddress INET_ANY = unsafeInetAddrByName(b.f52090j);
    private static final long MAX_UINT32_T = 4294967295L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LinuxSocket(int i2) {
        super(i2);
    }

    private static InetAddress deriveInetAddress(NetworkInterface networkInterface, boolean z3) {
        InetAddress inetAddress = z3 ? INET6_ANY : INET_ANY;
        if (networkInterface != null) {
            Enumeration<InetAddress> inetAddresses = networkInterface.getInetAddresses();
            while (inetAddresses.hasMoreElements()) {
                InetAddress nextElement = inetAddresses.nextElement();
                if ((nextElement instanceof Inet6Address) == z3) {
                    return nextElement;
                }
            }
        }
        return inetAddress;
    }

    private InternetProtocolFamily family() {
        return this.ipv6 ? InternetProtocolFamily.IPv6 : InternetProtocolFamily.IPv4;
    }

    private static native int getInterface(int i2, boolean z3);

    private static native int getIpMulticastLoop(int i2, boolean z3) throws IOException;

    private static native PeerCredentials getPeerCredentials(int i2) throws IOException;

    private static native int getSoBusyPoll(int i2) throws IOException;

    private static native int getTcpDeferAccept(int i2) throws IOException;

    private static native void getTcpInfo(int i2, long[] jArr) throws IOException;

    private static native int getTcpKeepCnt(int i2) throws IOException;

    private static native int getTcpKeepIdle(int i2) throws IOException;

    private static native int getTcpKeepIntvl(int i2) throws IOException;

    private static native int getTcpNotSentLowAt(int i2) throws IOException;

    private static native int getTcpUserTimeout(int i2) throws IOException;

    private static native int getTimeToLive(int i2) throws IOException;

    private static InetAddress inetAddress(int i2) {
        try {
            return InetAddress.getByAddress(new byte[]{(byte) ((i2 >>> 24) & 255), (byte) ((i2 >>> 16) & 255), (byte) ((i2 >>> 8) & 255), (byte) (i2 & 255)});
        } catch (UnknownHostException unused) {
            return null;
        }
    }

    private static int interfaceIndex(NetworkInterface networkInterface) {
        if (PlatformDependent.javaVersion() >= 7) {
            return networkInterface.getIndex();
        }
        return -1;
    }

    private static native int isIpFreeBind(int i2) throws IOException;

    private static native int isIpRecvOrigDestAddr(int i2) throws IOException;

    private static native int isIpTransparent(int i2) throws IOException;

    private static native int isTcpCork(int i2) throws IOException;

    private static native int isTcpFastOpenConnect(int i2) throws IOException;

    private static native int isTcpQuickAck(int i2) throws IOException;

    private static native void joinGroup(int i2, boolean z3, byte[] bArr, byte[] bArr2, int i4, int i5) throws IOException;

    private static native void joinSsmGroup(int i2, boolean z3, byte[] bArr, byte[] bArr2, int i4, int i5, byte[] bArr3) throws IOException;

    private static native void leaveGroup(int i2, boolean z3, byte[] bArr, byte[] bArr2, int i4, int i5) throws IOException;

    private static native void leaveSsmGroup(int i2, boolean z3, byte[] bArr, byte[] bArr2, int i4, int i5, byte[] bArr3) throws IOException;

    public static LinuxSocket newSocketDgram(boolean z3) {
        return new LinuxSocket(Socket.newSocketDgram0(z3));
    }

    public static LinuxSocket newSocketDomain() {
        return new LinuxSocket(Socket.newSocketDomain0());
    }

    public static LinuxSocket newSocketStream(boolean z3) {
        return new LinuxSocket(Socket.newSocketStream0(z3));
    }

    private static native long sendFile(int i2, DefaultFileRegion defaultFileRegion, long j4, long j5, long j6) throws IOException;

    private static native void setInterface(int i2, boolean z3, byte[] bArr, int i4, int i5) throws IOException;

    private static native void setIpFreeBind(int i2, int i4) throws IOException;

    private static native void setIpMulticastLoop(int i2, boolean z3, int i4) throws IOException;

    private static native void setIpRecvOrigDestAddr(int i2, int i4) throws IOException;

    private static native void setIpTransparent(int i2, int i4) throws IOException;

    private static native void setSoBusyPoll(int i2, int i4) throws IOException;

    private static native void setTcpCork(int i2, int i4) throws IOException;

    private static native void setTcpDeferAccept(int i2, int i4) throws IOException;

    private static native void setTcpFastOpen(int i2, int i4) throws IOException;

    private static native void setTcpFastOpenConnect(int i2, int i4) throws IOException;

    private static native void setTcpKeepCnt(int i2, int i4) throws IOException;

    private static native void setTcpKeepIdle(int i2, int i4) throws IOException;

    private static native void setTcpKeepIntvl(int i2, int i4) throws IOException;

    private static native void setTcpMd5Sig(int i2, boolean z3, byte[] bArr, int i4, byte[] bArr2) throws IOException;

    private static native void setTcpNotSentLowAt(int i2, int i4) throws IOException;

    private static native void setTcpQuickAck(int i2, int i4) throws IOException;

    private static native void setTcpUserTimeout(int i2, int i4) throws IOException;

    private static native void setTimeToLive(int i2, int i4) throws IOException;

    private static InetAddress unsafeInetAddrByName(String str) {
        try {
            return InetAddress.getByName(str);
        } catch (UnknownHostException e4) {
            throw new ChannelException(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InetAddress getInterface() throws IOException {
        NetworkInterface networkInterface = getNetworkInterface();
        if (networkInterface != null) {
            Enumeration<InetAddress> addressesFromNetworkInterface = SocketUtils.addressesFromNetworkInterface(networkInterface);
            if (addressesFromNetworkInterface.hasMoreElements()) {
                return addressesFromNetworkInterface.nextElement();
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NetworkInterface getNetworkInterface() throws IOException {
        int i2 = getInterface(intValue(), this.ipv6);
        if (this.ipv6) {
            if (PlatformDependent.javaVersion() >= 7) {
                return NetworkInterface.getByIndex(i2);
            }
            return null;
        }
        InetAddress inetAddress = inetAddress(i2);
        if (inetAddress != null) {
            return NetworkInterface.getByInetAddress(inetAddress);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PeerCredentials getPeerCredentials() throws IOException {
        return getPeerCredentials(intValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSoBusyPoll() throws IOException {
        return getSoBusyPoll(intValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getTcpDeferAccept() throws IOException {
        return getTcpDeferAccept(intValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getTcpInfo(EpollTcpInfo epollTcpInfo) throws IOException {
        getTcpInfo(intValue(), epollTcpInfo.info);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getTcpKeepCnt() throws IOException {
        return getTcpKeepCnt(intValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getTcpKeepIdle() throws IOException {
        return getTcpKeepIdle(intValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getTcpKeepIntvl() throws IOException {
        return getTcpKeepIntvl(intValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getTcpNotSentLowAt() throws IOException {
        return getTcpNotSentLowAt(intValue()) & 4294967295L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getTcpUserTimeout() throws IOException {
        return getTcpUserTimeout(intValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getTimeToLive() throws IOException {
        return getTimeToLive(intValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isIpFreeBind() throws IOException {
        return isIpFreeBind(intValue()) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isIpRecvOrigDestAddr() throws IOException {
        return isIpRecvOrigDestAddr(intValue()) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isIpTransparent() throws IOException {
        return isIpTransparent(intValue()) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isLoopbackModeDisabled() throws IOException {
        return getIpMulticastLoop(intValue(), this.ipv6) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isTcpCork() throws IOException {
        return isTcpCork(intValue()) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isTcpFastOpenConnect() throws IOException {
        return isTcpFastOpenConnect(intValue()) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isTcpQuickAck() throws IOException {
        return isTcpQuickAck(intValue()) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void joinGroup(InetAddress inetAddress, NetworkInterface networkInterface, InetAddress inetAddress2) throws IOException {
        NativeInetAddress newInstance = NativeInetAddress.newInstance(inetAddress);
        NativeInetAddress newInstance2 = NativeInetAddress.newInstance(deriveInetAddress(networkInterface, inetAddress instanceof Inet6Address));
        if (inetAddress2 != null) {
            joinSsmGroup(intValue(), this.ipv6, newInstance.address(), newInstance2.address(), newInstance.scopeId(), interfaceIndex(networkInterface), NativeInetAddress.newInstance(inetAddress2).address());
            return;
        }
        joinGroup(intValue(), this.ipv6, newInstance.address(), newInstance2.address(), newInstance.scopeId(), interfaceIndex(networkInterface));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void leaveGroup(InetAddress inetAddress, NetworkInterface networkInterface, InetAddress inetAddress2) throws IOException {
        NativeInetAddress newInstance = NativeInetAddress.newInstance(inetAddress);
        NativeInetAddress newInstance2 = NativeInetAddress.newInstance(deriveInetAddress(networkInterface, inetAddress instanceof Inet6Address));
        if (inetAddress2 != null) {
            leaveSsmGroup(intValue(), this.ipv6, newInstance.address(), newInstance2.address(), newInstance.scopeId(), interfaceIndex(networkInterface), NativeInetAddress.newInstance(inetAddress2).address());
            return;
        }
        leaveGroup(intValue(), this.ipv6, newInstance.address(), newInstance2.address(), newInstance.scopeId(), interfaceIndex(networkInterface));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int recvmmsg(NativeDatagramPacketArray.NativeDatagramPacket[] nativeDatagramPacketArr, int i2, int i4) throws IOException {
        return Native.recvmmsg(intValue(), this.ipv6, nativeDatagramPacketArr, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long sendFile(DefaultFileRegion defaultFileRegion, long j4, long j5, long j6) throws IOException {
        defaultFileRegion.open();
        long sendFile = sendFile(intValue(), defaultFileRegion, j4, j5, j6);
        return sendFile >= 0 ? sendFile : Errors.ioResult("sendfile", (int) sendFile);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int sendmmsg(NativeDatagramPacketArray.NativeDatagramPacket[] nativeDatagramPacketArr, int i2, int i4) throws IOException {
        return Native.sendmmsg(intValue(), this.ipv6, nativeDatagramPacketArr, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setInterface(InetAddress inetAddress) throws IOException {
        NativeInetAddress newInstance = NativeInetAddress.newInstance(inetAddress);
        setInterface(intValue(), this.ipv6, newInstance.address(), newInstance.scopeId(), interfaceIndex(inetAddress));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setIpFreeBind(boolean z3) throws IOException {
        setIpFreeBind(intValue(), z3 ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setIpRecvOrigDestAddr(boolean z3) throws IOException {
        setIpRecvOrigDestAddr(intValue(), z3 ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setIpTransparent(boolean z3) throws IOException {
        setIpTransparent(intValue(), z3 ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLoopbackModeDisabled(boolean z3) throws IOException {
        setIpMulticastLoop(intValue(), this.ipv6, !z3 ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNetworkInterface(NetworkInterface networkInterface) throws IOException {
        InetAddress deriveInetAddress = deriveInetAddress(networkInterface, family() == InternetProtocolFamily.IPv6);
        if (!deriveInetAddress.equals(family() == InternetProtocolFamily.IPv4 ? INET_ANY : INET6_ANY)) {
            NativeInetAddress newInstance = NativeInetAddress.newInstance(deriveInetAddress);
            setInterface(intValue(), this.ipv6, newInstance.address(), newInstance.scopeId(), interfaceIndex(networkInterface));
            return;
        }
        throw new IOException("NetworkInterface does not support " + family());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSoBusyPoll(int i2) throws IOException {
        setSoBusyPoll(intValue(), i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTcpCork(boolean z3) throws IOException {
        setTcpCork(intValue(), z3 ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTcpDeferAccept(int i2) throws IOException {
        setTcpDeferAccept(intValue(), i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTcpFastOpen(int i2) throws IOException {
        setTcpFastOpen(intValue(), i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTcpFastOpenConnect(boolean z3) throws IOException {
        setTcpFastOpenConnect(intValue(), z3 ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTcpKeepCnt(int i2) throws IOException {
        setTcpKeepCnt(intValue(), i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTcpKeepIdle(int i2) throws IOException {
        setTcpKeepIdle(intValue(), i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTcpKeepIntvl(int i2) throws IOException {
        setTcpKeepIntvl(intValue(), i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTcpMd5Sig(InetAddress inetAddress, byte[] bArr) throws IOException {
        NativeInetAddress newInstance = NativeInetAddress.newInstance(inetAddress);
        setTcpMd5Sig(intValue(), this.ipv6, newInstance.address(), newInstance.scopeId(), bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTcpNotSentLowAt(long j4) throws IOException {
        if (j4 >= 0 && j4 <= 4294967295L) {
            setTcpNotSentLowAt(intValue(), (int) j4);
            return;
        }
        throw new IllegalArgumentException("tcpNotSentLowAt must be a uint32_t");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTcpQuickAck(boolean z3) throws IOException {
        setTcpQuickAck(intValue(), z3 ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTcpUserTimeout(int i2) throws IOException {
        setTcpUserTimeout(intValue(), i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTimeToLive(int i2) throws IOException {
        setTimeToLive(intValue(), i2);
    }

    private static int interfaceIndex(InetAddress inetAddress) throws IOException {
        NetworkInterface byInetAddress;
        if (PlatformDependent.javaVersion() < 7 || (byInetAddress = NetworkInterface.getByInetAddress(inetAddress)) == null) {
            return -1;
        }
        return byInetAddress.getIndex();
    }

    public static LinuxSocket newSocketDgram() {
        return newSocketDgram(Socket.isIPv6Preferred());
    }

    public static LinuxSocket newSocketStream() {
        return newSocketStream(Socket.isIPv6Preferred());
    }
}
