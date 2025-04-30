package org.apache.http.conn;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;
@NotThreadSafe
/* loaded from: classes5.dex */
public class EofSensorInputStreamHC4 extends InputStream implements ConnectionReleaseTrigger {
    private final EofSensorWatcher eofWatcher;
    private boolean selfClosed;
    protected InputStream wrappedStream;

    public EofSensorInputStreamHC4(InputStream inputStream, EofSensorWatcher eofSensorWatcher) {
        Args.notNull(inputStream, "Wrapped stream");
        this.wrappedStream = inputStream;
        this.selfClosed = false;
        this.eofWatcher = eofSensorWatcher;
    }

    public void abortConnection() throws IOException {
        this.selfClosed = true;
        checkAbort();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (isReadAllowed()) {
            try {
                return this.wrappedStream.available();
            } catch (IOException e4) {
                checkAbort();
                throw e4;
            }
        }
        return 0;
    }

    protected void checkAbort() throws IOException {
        InputStream inputStream = this.wrappedStream;
        if (inputStream != null) {
            try {
                EofSensorWatcher eofSensorWatcher = this.eofWatcher;
                if (eofSensorWatcher != null ? eofSensorWatcher.streamAbort(inputStream) : true) {
                    this.wrappedStream.close();
                }
            } finally {
                this.wrappedStream = null;
            }
        }
    }

    protected void checkClose() throws IOException {
        InputStream inputStream = this.wrappedStream;
        if (inputStream != null) {
            try {
                EofSensorWatcher eofSensorWatcher = this.eofWatcher;
                if (eofSensorWatcher != null ? eofSensorWatcher.streamClosed(inputStream) : true) {
                    this.wrappedStream.close();
                }
            } finally {
                this.wrappedStream = null;
            }
        }
    }

    protected void checkEOF(int i2) throws IOException {
        InputStream inputStream = this.wrappedStream;
        if (inputStream == null || i2 >= 0) {
            return;
        }
        try {
            EofSensorWatcher eofSensorWatcher = this.eofWatcher;
            if (eofSensorWatcher != null ? eofSensorWatcher.eofDetected(inputStream) : true) {
                this.wrappedStream.close();
            }
        } finally {
            this.wrappedStream = null;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.selfClosed = true;
        checkClose();
    }

    InputStream getWrappedStream() {
        return this.wrappedStream;
    }

    protected boolean isReadAllowed() throws IOException {
        if (this.selfClosed) {
            throw new IOException("Attempted read on closed stream.");
        }
        return this.wrappedStream != null;
    }

    boolean isSelfClosed() {
        return this.selfClosed;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (isReadAllowed()) {
            try {
                int read = this.wrappedStream.read();
                checkEOF(read);
                return read;
            } catch (IOException e4) {
                checkAbort();
                throw e4;
            }
        }
        return -1;
    }

    public void releaseConnection() throws IOException {
        close();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) throws IOException {
        if (isReadAllowed()) {
            try {
                int read = this.wrappedStream.read(bArr, i2, i4);
                checkEOF(read);
                return read;
            } catch (IOException e4) {
                checkAbort();
                throw e4;
            }
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }
}
