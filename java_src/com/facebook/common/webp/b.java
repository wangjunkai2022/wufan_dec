package com.facebook.common.webp;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import java.io.FileDescriptor;
import java.io.InputStream;
/* compiled from: WebpBitmapFactory.java */
/* loaded from: classes2.dex */
public interface b {

    /* compiled from: WebpBitmapFactory.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(String str, String str2);
    }

    void a(com.facebook.common.webp.a aVar);

    Bitmap b(InputStream inputStream, Rect rect, BitmapFactory.Options options);

    void c(a aVar);

    Bitmap d(String str, BitmapFactory.Options options);

    Bitmap e(FileDescriptor fileDescriptor, Rect rect, BitmapFactory.Options options);

    Bitmap f(byte[] bArr, int i2, int i4, BitmapFactory.Options options);
}
