package io.netty.channel.unix;

import io.netty.util.internal.EmptyArrays;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.ConnectException;
import java.net.NoRouteToHostException;
import java.nio.channels.AlreadyConnectedException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.ConnectionPendingException;
import java.nio.channels.NotYetConnectedException;
/* loaded from: classes5.dex */
public final class Errors {
    public static final int ERRNO_ENOENT_NEGATIVE = -ErrorsStaticallyReferencedJniMethods.errnoENOENT();
    public static final int ERRNO_ENOTCONN_NEGATIVE = -ErrorsStaticallyReferencedJniMethods.errnoENOTCONN();
    public static final int ERRNO_EBADF_NEGATIVE = -ErrorsStaticallyReferencedJniMethods.errnoEBADF();
    public static final int ERRNO_EPIPE_NEGATIVE = -ErrorsStaticallyReferencedJniMethods.errnoEPIPE();
    public static final int ERRNO_ECONNRESET_NEGATIVE = -ErrorsStaticallyReferencedJniMethods.errnoECONNRESET();
    public static final int ERRNO_EAGAIN_NEGATIVE = -ErrorsStaticallyReferencedJniMethods.errnoEAGAIN();
    public static final int ERRNO_EWOULDBLOCK_NEGATIVE = -ErrorsStaticallyReferencedJniMethods.errnoEWOULDBLOCK();
    public static final int ERRNO_EINPROGRESS_NEGATIVE = -ErrorsStaticallyReferencedJniMethods.errnoEINPROGRESS();
    public static final int ERROR_ECONNREFUSED_NEGATIVE = -ErrorsStaticallyReferencedJniMethods.errorECONNREFUSED();
    public static final int ERROR_EISCONN_NEGATIVE = -ErrorsStaticallyReferencedJniMethods.errorEISCONN();
    public static final int ERROR_EALREADY_NEGATIVE = -ErrorsStaticallyReferencedJniMethods.errorEALREADY();
    public static final int ERROR_ENETUNREACH_NEGATIVE = -ErrorsStaticallyReferencedJniMethods.errorENETUNREACH();
    private static final String[] ERRORS = new String[512];

    /* loaded from: classes5.dex */
    static final class NativeConnectException extends ConnectException {
        private static final long serialVersionUID = -5532328671712318161L;
        private final int expectedErr;

        NativeConnectException(String str, int i2) {
            super(str + "(..) failed: " + Errors.ERRORS[-i2]);
            this.expectedErr = i2;
        }

        int expectedErr() {
            return this.expectedErr;
        }
    }

    /* loaded from: classes5.dex */
    public static final class NativeIoException extends IOException {
        private static final long serialVersionUID = 8222160204268655526L;
        private final int expectedErr;
        private final boolean fillInStackTrace;

        public NativeIoException(String str, int i2) {
            this(str, i2, true);
        }

        public int expectedErr() {
            return this.expectedErr;
        }

        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            if (this.fillInStackTrace) {
                return super.fillInStackTrace();
            }
            return this;
        }

        public NativeIoException(String str, int i2, boolean z3) {
            super(str + "(..) failed: " + Errors.ERRORS[-i2]);
            this.expectedErr = i2;
            this.fillInStackTrace = z3;
        }
    }

    static {
        int i2 = 0;
        while (true) {
            String[] strArr = ERRORS;
            if (i2 >= strArr.length) {
                return;
            }
            strArr[i2] = ErrorsStaticallyReferencedJniMethods.strError(i2);
            i2++;
        }
    }

    private Errors() {
    }

    @Deprecated
    public static int ioResult(String str, int i2, NativeIoException nativeIoException, ClosedChannelException closedChannelException) throws IOException {
        if (i2 == ERRNO_EAGAIN_NEGATIVE || i2 == ERRNO_EWOULDBLOCK_NEGATIVE) {
            return 0;
        }
        if (i2 != nativeIoException.expectedErr()) {
            if (i2 != ERRNO_EBADF_NEGATIVE) {
                if (i2 != ERRNO_ENOTCONN_NEGATIVE) {
                    if (i2 == ERRNO_ENOENT_NEGATIVE) {
                        throw new FileNotFoundException();
                    }
                    throw newIOException(str, i2);
                }
                throw new NotYetConnectedException();
            }
            throw closedChannelException;
        }
        throw nativeIoException;
    }

    public static NativeIoException newConnectionResetException(String str, int i2) {
        NativeIoException nativeIoException = new NativeIoException(str, i2, false);
        nativeIoException.setStackTrace(EmptyArrays.EMPTY_STACK_TRACE);
        return nativeIoException;
    }

    public static NativeIoException newIOException(String str, int i2) {
        return new NativeIoException(str, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void throwConnectException(String str, int i2) throws IOException {
        if (i2 != ERROR_EALREADY_NEGATIVE) {
            if (i2 != ERROR_ENETUNREACH_NEGATIVE) {
                if (i2 != ERROR_EISCONN_NEGATIVE) {
                    if (i2 == ERRNO_ENOENT_NEGATIVE) {
                        throw new FileNotFoundException();
                    }
                    throw new ConnectException(str + "(..) failed: " + ERRORS[-i2]);
                }
                throw new AlreadyConnectedException();
            }
            throw new NoRouteToHostException();
        }
        throw new ConnectionPendingException();
    }

    public static int ioResult(String str, int i2) throws IOException {
        if (i2 == ERRNO_EAGAIN_NEGATIVE || i2 == ERRNO_EWOULDBLOCK_NEGATIVE) {
            return 0;
        }
        if (i2 != ERRNO_EBADF_NEGATIVE) {
            if (i2 != ERRNO_ENOTCONN_NEGATIVE) {
                if (i2 == ERRNO_ENOENT_NEGATIVE) {
                    throw new FileNotFoundException();
                }
                throw new NativeIoException(str, i2, false);
            }
            throw new NotYetConnectedException();
        }
        throw new ClosedChannelException();
    }
}
