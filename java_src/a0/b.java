package a0;

import com.facebook.common.internal.h;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: ByteArrayBinaryResource.java */
/* loaded from: classes2.dex */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f21a;

    public b(byte[] bArr) {
        this.f21a = (byte[]) h.i(bArr);
    }

    @Override // a0.a
    public InputStream a() throws IOException {
        return new ByteArrayInputStream(this.f21a);
    }

    @Override // a0.a
    public byte[] read() {
        return this.f21a;
    }

    @Override // a0.a
    public long size() {
        return this.f21a.length;
    }
}
