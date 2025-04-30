package com.mob.tools.network;

import com.mob.tools.utils.Data;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
@Deprecated
/* loaded from: classes4.dex */
public class ByteArrayPart extends HTTPPart {

    /* renamed from: a  reason: collision with root package name */
    private BufferedByteArrayOutputStream f53857a;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mob.tools.network.HTTPPart
    public InputStream a() throws Throwable {
        BufferedByteArrayOutputStream bufferedByteArrayOutputStream = this.f53857a;
        if (bufferedByteArrayOutputStream == null) {
            return new ByteArrayInputStream(new byte[0]);
        }
        byte[] buffer = bufferedByteArrayOutputStream.getBuffer();
        if (buffer != null && this.f53857a.size() > 0) {
            return new ByteArrayInputStream(buffer, 0, this.f53857a.size());
        }
        return new ByteArrayInputStream(new byte[0]);
    }

    public ByteArrayPart append(byte[] bArr) throws Throwable {
        if (this.f53857a == null) {
            this.f53857a = new BufferedByteArrayOutputStream(bArr.length);
        }
        this.f53857a.write(bArr);
        this.f53857a.flush();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mob.tools.network.HTTPPart
    public long b() throws Throwable {
        BufferedByteArrayOutputStream bufferedByteArrayOutputStream = this.f53857a;
        if (bufferedByteArrayOutputStream == null) {
            return 0L;
        }
        return bufferedByteArrayOutputStream.size();
    }

    public String toString() {
        byte[] buffer;
        BufferedByteArrayOutputStream bufferedByteArrayOutputStream = this.f53857a;
        if (bufferedByteArrayOutputStream == null || (buffer = bufferedByteArrayOutputStream.getBuffer()) == null) {
            return null;
        }
        return Data.byteToHex(buffer, 0, this.f53857a.size());
    }
}
