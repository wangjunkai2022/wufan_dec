package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;
@NotThreadSafe
/* loaded from: classes5.dex */
public class SerializableEntityHC4 extends AbstractHttpEntityHC4 {
    private Serializable objRef;
    private byte[] objSer;

    public SerializableEntityHC4(Serializable serializable, boolean z3) throws IOException {
        Args.notNull(serializable, "Source object");
        if (z3) {
            createBytes(serializable);
        } else {
            this.objRef = serializable;
        }
    }

    private void createBytes(Serializable serializable) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        objectOutputStream.writeObject(serializable);
        objectOutputStream.flush();
        this.objSer = byteArrayOutputStream.toByteArray();
    }

    public InputStream getContent() throws IOException, IllegalStateException {
        if (this.objSer == null) {
            createBytes(this.objRef);
        }
        return new ByteArrayInputStream(this.objSer);
    }

    public long getContentLength() {
        byte[] bArr = this.objSer;
        if (bArr == null) {
            return -1L;
        }
        return bArr.length;
    }

    public boolean isRepeatable() {
        return true;
    }

    public boolean isStreaming() {
        return this.objSer == null;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        Args.notNull(outputStream, "Output stream");
        byte[] bArr = this.objSer;
        if (bArr == null) {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(outputStream);
            objectOutputStream.writeObject(this.objRef);
            objectOutputStream.flush();
            return;
        }
        outputStream.write(bArr);
        outputStream.flush();
    }

    public SerializableEntityHC4(Serializable serializable) {
        Args.notNull(serializable, "Source object");
        this.objRef = serializable;
    }
}
