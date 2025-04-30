package org.apache.http.entity;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;
@NotThreadSafe
/* loaded from: classes5.dex */
public class FileEntityHC4 extends AbstractHttpEntityHC4 implements Cloneable {
    protected final File file;

    @Deprecated
    public FileEntityHC4(File file, String str) {
        this.file = (File) Args.notNull(file, "File");
        setContentType(str);
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public InputStream getContent() throws IOException {
        return new FileInputStream(this.file);
    }

    public long getContentLength() {
        return this.file.length();
    }

    public boolean isRepeatable() {
        return true;
    }

    public boolean isStreaming() {
        return false;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        Args.notNull(outputStream, "Output stream");
        FileInputStream fileInputStream = new FileInputStream(this.file);
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read != -1) {
                    outputStream.write(bArr, 0, read);
                } else {
                    outputStream.flush();
                    return;
                }
            }
        } finally {
            fileInputStream.close();
        }
    }

    public FileEntityHC4(File file, ContentType contentType) {
        this.file = (File) Args.notNull(file, "File");
        if (contentType != null) {
            setContentType(contentType.toString());
        }
    }

    public FileEntityHC4(File file) {
        this.file = (File) Args.notNull(file, "File");
    }
}
