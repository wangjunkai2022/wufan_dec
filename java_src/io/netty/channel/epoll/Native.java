package io.netty.channel.epoll;

import io.netty.channel.epoll.NativeDatagramPacketArray;
import io.netty.channel.unix.Errors;
import io.netty.channel.unix.FileDescriptor;
import io.netty.channel.unix.Socket;
import io.netty.util.internal.NativeLibraryLoader;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.ThrowableUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.util.Locale;
/* loaded from: classes5.dex */
public final class Native {
    public static final int EPOLLERR;
    public static final int EPOLLET;
    public static final int EPOLLIN;
    public static final int EPOLLOUT;
    public static final int EPOLLRDHUP;
    static final boolean IS_SUPPORTING_RECVMMSG;
    public static final boolean IS_SUPPORTING_SENDMMSG;
    public static final boolean IS_SUPPORTING_TCP_FASTOPEN;
    public static final String KERNEL_VERSION;
    public static final int TCP_MD5SIG_MAXKEYLEN;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(Native.class);

    static {
        try {
            offsetofEpollData();
        } catch (UnsatisfiedLinkError unused) {
            loadNativeLibrary();
        }
        Socket.initialize();
        EPOLLIN = NativeStaticallyReferencedJniMethods.epollin();
        EPOLLOUT = NativeStaticallyReferencedJniMethods.epollout();
        EPOLLRDHUP = NativeStaticallyReferencedJniMethods.epollrdhup();
        EPOLLET = NativeStaticallyReferencedJniMethods.epollet();
        EPOLLERR = NativeStaticallyReferencedJniMethods.epollerr();
        IS_SUPPORTING_SENDMMSG = NativeStaticallyReferencedJniMethods.isSupportingSendmmsg();
        IS_SUPPORTING_RECVMMSG = NativeStaticallyReferencedJniMethods.isSupportingRecvmmsg();
        IS_SUPPORTING_TCP_FASTOPEN = NativeStaticallyReferencedJniMethods.isSupportingTcpFastopen();
        TCP_MD5SIG_MAXKEYLEN = NativeStaticallyReferencedJniMethods.tcpMd5SigMaxKeyLen();
        KERNEL_VERSION = NativeStaticallyReferencedJniMethods.kernelVersion();
    }

    private Native() {
    }

    public static int epollBusyWait(FileDescriptor fileDescriptor, EpollEventArray epollEventArray) throws IOException {
        int epollBusyWait0 = epollBusyWait0(fileDescriptor.intValue(), epollEventArray.memoryAddress(), epollEventArray.length());
        if (epollBusyWait0 >= 0) {
            return epollBusyWait0;
        }
        throw Errors.newIOException("epoll_wait", epollBusyWait0);
    }

    private static native int epollBusyWait0(int i2, long j4, int i4);

    private static native int epollCreate();

    public static void epollCtlAdd(int i2, int i4, int i5) throws IOException {
        int epollCtlAdd0 = epollCtlAdd0(i2, i4, i5);
        if (epollCtlAdd0 < 0) {
            throw Errors.newIOException("epoll_ctl", epollCtlAdd0);
        }
    }

    private static native int epollCtlAdd0(int i2, int i4, int i5);

    public static void epollCtlDel(int i2, int i4) throws IOException {
        int epollCtlDel0 = epollCtlDel0(i2, i4);
        if (epollCtlDel0 < 0) {
            throw Errors.newIOException("epoll_ctl", epollCtlDel0);
        }
    }

    private static native int epollCtlDel0(int i2, int i4);

    public static void epollCtlMod(int i2, int i4, int i5) throws IOException {
        int epollCtlMod0 = epollCtlMod0(i2, i4, i5);
        if (epollCtlMod0 < 0) {
            throw Errors.newIOException("epoll_ctl", epollCtlMod0);
        }
    }

    private static native int epollCtlMod0(int i2, int i4, int i5);

    private static native int epollWait(int i2, long j4, int i4, int i5);

    @Deprecated
    public static int epollWait(FileDescriptor fileDescriptor, EpollEventArray epollEventArray, FileDescriptor fileDescriptor2, int i2, int i4) throws IOException {
        int i5;
        int i6;
        if (i2 == 0 && i4 == 0) {
            return epollWait(fileDescriptor, epollEventArray, 0);
        }
        if (i2 == Integer.MAX_VALUE) {
            i5 = 0;
            i6 = 0;
        } else {
            i5 = i2;
            i6 = i4;
        }
        int epollWait0 = epollWait0(fileDescriptor.intValue(), epollEventArray.memoryAddress(), epollEventArray.length(), fileDescriptor2.intValue(), i5, i6);
        if (epollWait0 >= 0) {
            return epollWait0;
        }
        throw Errors.newIOException("epoll_wait", epollWait0);
    }

    private static native int epollWait0(int i2, long j4, int i4, int i5, int i6, int i7);

    private static native int eventFd();

    public static native void eventFdRead(int i2);

    public static native void eventFdWrite(int i2, long j4);

    private static void loadNativeLibrary() {
        if (SystemPropertyUtil.get("os.name").toLowerCase(Locale.UK).trim().startsWith("linux")) {
            String str = "netty_transport_native_epoll_" + PlatformDependent.normalizedArch();
            ClassLoader classLoader = PlatformDependent.getClassLoader(Native.class);
            try {
                NativeLibraryLoader.load(str, classLoader);
                return;
            } catch (UnsatisfiedLinkError e4) {
                try {
                    NativeLibraryLoader.load("netty_transport_native_epoll", classLoader);
                    logger.debug("Failed to load {}", str, e4);
                    return;
                } catch (UnsatisfiedLinkError e5) {
                    ThrowableUtil.addSuppressed(e4, e5);
                    throw e4;
                }
            }
        }
        throw new IllegalStateException("Only supported on Linux");
    }

    public static FileDescriptor newEpollCreate() {
        return new FileDescriptor(epollCreate());
    }

    public static FileDescriptor newEventFd() {
        return new FileDescriptor(eventFd());
    }

    public static FileDescriptor newTimerFd() {
        return new FileDescriptor(timerFd());
    }

    public static native int offsetofEpollData();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int recvmmsg(int i2, boolean z3, NativeDatagramPacketArray.NativeDatagramPacket[] nativeDatagramPacketArr, int i4, int i5) throws IOException {
        int recvmmsg0 = recvmmsg0(i2, z3, nativeDatagramPacketArr, i4, i5);
        return recvmmsg0 >= 0 ? recvmmsg0 : Errors.ioResult("recvmmsg", recvmmsg0);
    }

    private static native int recvmmsg0(int i2, boolean z3, NativeDatagramPacketArray.NativeDatagramPacket[] nativeDatagramPacketArr, int i4, int i5);

    @Deprecated
    public static int sendmmsg(int i2, NativeDatagramPacketArray.NativeDatagramPacket[] nativeDatagramPacketArr, int i4, int i5) throws IOException {
        return sendmmsg(i2, Socket.isIPv6Preferred(), nativeDatagramPacketArr, i4, i5);
    }

    private static native int sendmmsg0(int i2, boolean z3, NativeDatagramPacketArray.NativeDatagramPacket[] nativeDatagramPacketArr, int i4, int i5);

    public static native int sizeofEpollEvent();

    public static int splice(int i2, long j4, int i4, long j5, long j6) throws IOException {
        int splice0 = splice0(i2, j4, i4, j5, j6);
        return splice0 >= 0 ? splice0 : Errors.ioResult("splice", splice0);
    }

    private static native int splice0(int i2, long j4, int i4, long j5, long j6);

    private static native int timerFd();

    static native void timerFdRead(int i2);

    static native void timerFdSetTime(int i2, int i4, int i5) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int sendmmsg(int i2, boolean z3, NativeDatagramPacketArray.NativeDatagramPacket[] nativeDatagramPacketArr, int i4, int i5) throws IOException {
        int sendmmsg0 = sendmmsg0(i2, z3, nativeDatagramPacketArr, i4, i5);
        return sendmmsg0 >= 0 ? sendmmsg0 : Errors.ioResult("sendmmsg", sendmmsg0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int epollWait(FileDescriptor fileDescriptor, EpollEventArray epollEventArray, boolean z3) throws IOException {
        return epollWait(fileDescriptor, epollEventArray, z3 ? 0 : -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int epollWait(FileDescriptor fileDescriptor, EpollEventArray epollEventArray, int i2) throws IOException {
        int epollWait = epollWait(fileDescriptor.intValue(), epollEventArray.memoryAddress(), epollEventArray.length(), i2);
        if (epollWait >= 0) {
            return epollWait;
        }
        throw Errors.newIOException("epoll_wait", epollWait);
    }
}
