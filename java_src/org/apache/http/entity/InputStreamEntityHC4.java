package org.apache.http.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;
@NotThreadSafe
/* loaded from: classes5.dex */
public class InputStreamEntityHC4 extends AbstractHttpEntityHC4 {
    private final InputStream content;
    private final long length;

    public InputStreamEntityHC4(InputStream inputStream) {
        this(inputStream, -1L);
    }

    public InputStream getContent() throws IOException {
        return this.content;
    }

    public long getContentLength() {
        return this.length;
    }

    public boolean isRepeatable() {
        return false;
    }

    public boolean isStreaming() {
        return true;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        int read;
        Args.notNull(outputStream, "Output stream");
        InputStream inputStream = this.content;
        try {
            byte[] bArr = new byte[4096];
            long j4 = this.length;
            if (j4 < 0) {
                while (true) {
                    int read2 = inputStream.read(bArr);
                    if (read2 == -1) {
                        break;
                    }
                    outputStream.write(bArr, 0, read2);
                }
            } else {
                while (j4 > 0 && (read = inputStream.read(bArr, 0, (int) Math.min(4096L, j4))) != -1) {
                    outputStream.write(bArr, 0, read);
                    j4 -= read;
                }
            }
        } finally {
            inputStream.close();
        }
    }

    public InputStreamEntityHC4(InputStream inputStream, long j4) {
        this(inputStream, j4, null);
    }

    public InputStreamEntityHC4(InputStream inputStream, ContentType contentType) {
        this(inputStream, -1L, contentType);
    }

    public InputStreamEntityHC4(InputStream inputStream, long j4, ContentType contentType) {
        this.content = (InputStream) Args.notNull(inputStream, "Source input stream");
        this.length = j4;
        if (contentType != null) {
            setContentType(contentType.toString());
        }
    }
}
