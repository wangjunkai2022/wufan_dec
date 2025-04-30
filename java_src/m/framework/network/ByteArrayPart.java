package m.framework.network;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import m.framework.utils.Data;
/* loaded from: classes5.dex */
public class ByteArrayPart extends HTTPPart {
    private byte[] buffer;

    public ByteArrayPart append(byte[] bArr) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr2 = this.buffer;
        if (bArr2 != null && bArr2.length > 0) {
            byteArrayOutputStream.write(bArr2);
        }
        byteArrayOutputStream.write(bArr);
        byteArrayOutputStream.flush();
        this.buffer = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.close();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // m.framework.network.HTTPPart
    public InputStream getInputStream() throws Throwable {
        byte[] bArr = this.buffer;
        if (bArr != null && bArr.length > 0) {
            return new ByteArrayInputStream(this.buffer);
        }
        return new ByteArrayInputStream(new byte[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // m.framework.network.HTTPPart
    public long length() throws Throwable {
        byte[] bArr = this.buffer;
        return bArr == null ? 0 : bArr.length;
    }

    public String toString() {
        return Data.byteToHex(this.buffer);
    }
}
