package com.umeng.analytics.pro;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* compiled from: TIOStreamTransport.java */
/* loaded from: classes4.dex */
public class cc extends ce {

    /* renamed from: a  reason: collision with root package name */
    protected InputStream f60650a;

    /* renamed from: b  reason: collision with root package name */
    protected OutputStream f60651b;

    protected cc() {
        this.f60650a = null;
        this.f60651b = null;
    }

    @Override // com.umeng.analytics.pro.ce
    public int a(byte[] bArr, int i2, int i4) throws cf {
        InputStream inputStream = this.f60650a;
        if (inputStream != null) {
            try {
                int read = inputStream.read(bArr, i2, i4);
                if (read >= 0) {
                    return read;
                }
                throw new cf(4);
            } catch (IOException e4) {
                throw new cf(0, e4);
            }
        }
        throw new cf(1, "Cannot read from null inputStream");
    }

    @Override // com.umeng.analytics.pro.ce
    public boolean a() {
        return true;
    }

    @Override // com.umeng.analytics.pro.ce
    public void b() throws cf {
    }

    @Override // com.umeng.analytics.pro.ce
    public void b(byte[] bArr, int i2, int i4) throws cf {
        OutputStream outputStream = this.f60651b;
        if (outputStream != null) {
            try {
                outputStream.write(bArr, i2, i4);
                return;
            } catch (IOException e4) {
                throw new cf(0, e4);
            }
        }
        throw new cf(1, "Cannot write to null outputStream");
    }

    @Override // com.umeng.analytics.pro.ce
    public void c() {
        InputStream inputStream = this.f60650a;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            this.f60650a = null;
        }
        OutputStream outputStream = this.f60651b;
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
            this.f60651b = null;
        }
    }

    @Override // com.umeng.analytics.pro.ce
    public void d() throws cf {
        OutputStream outputStream = this.f60651b;
        if (outputStream != null) {
            try {
                outputStream.flush();
                return;
            } catch (IOException e4) {
                throw new cf(0, e4);
            }
        }
        throw new cf(1, "Cannot flush null outputStream");
    }

    public cc(InputStream inputStream) {
        this.f60650a = null;
        this.f60651b = null;
        this.f60650a = inputStream;
    }

    public cc(OutputStream outputStream) {
        this.f60650a = null;
        this.f60651b = null;
        this.f60651b = outputStream;
    }

    public cc(InputStream inputStream, OutputStream outputStream) {
        this.f60650a = null;
        this.f60651b = null;
        this.f60650a = inputStream;
        this.f60651b = outputStream;
    }
}
