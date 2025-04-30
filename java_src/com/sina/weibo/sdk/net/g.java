package com.sina.weibo.sdk.net;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4.dex */
public final class g implements f {
    private int code;

    /* renamed from: p  reason: collision with root package name */
    private InputStream f56742p;

    public g(int i2, InputStream inputStream) {
        this.code = i2;
        this.f56742p = inputStream;
    }

    @Override // com.sina.weibo.sdk.net.f
    public final String f() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = this.f56742p.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    String byteArrayOutputStream2 = byteArrayOutputStream.toString();
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream2;
                }
            }
        } catch (IOException e4) {
            throw e4;
        }
    }
}
