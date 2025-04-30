package com.facebook.cache.common;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* compiled from: WriterCallbacks.java */
/* loaded from: classes2.dex */
public class k {

    /* compiled from: WriterCallbacks.java */
    /* loaded from: classes2.dex */
    static class a implements j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InputStream f11550a;

        a(InputStream inputStream) {
            this.f11550a = inputStream;
        }

        @Override // com.facebook.cache.common.j
        public void a(OutputStream outputStream) throws IOException {
            com.facebook.common.internal.b.a(this.f11550a, outputStream);
        }
    }

    /* compiled from: WriterCallbacks.java */
    /* loaded from: classes2.dex */
    static class b implements j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ byte[] f11551a;

        b(byte[] bArr) {
            this.f11551a = bArr;
        }

        @Override // com.facebook.cache.common.j
        public void a(OutputStream outputStream) throws IOException {
            outputStream.write(this.f11551a);
        }
    }

    public static j a(InputStream inputStream) {
        return new a(inputStream);
    }

    public static j b(byte[] bArr) {
        return new b(bArr);
    }
}
