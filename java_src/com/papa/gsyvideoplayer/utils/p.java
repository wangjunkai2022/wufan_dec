package com.papa.gsyvideoplayer.utils;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import tv.danmaku.ijk.media.player.misc.IMediaDataSource;
/* compiled from: RawDataSourceProvider.java */
/* loaded from: classes4.dex */
public class p implements IMediaDataSource {

    /* renamed from: a  reason: collision with root package name */
    private AssetFileDescriptor f55314a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f55315b;

    public p(AssetFileDescriptor assetFileDescriptor) {
        this.f55314a = assetFileDescriptor;
    }

    public static p a(Context context, Uri uri) {
        try {
            return new p(context.getApplicationContext().getContentResolver().openAssetFileDescriptor(uri, net.lingala.zip4j.util.e.f73017f0));
        } catch (FileNotFoundException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private byte[] b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    @Override // tv.danmaku.ijk.media.player.misc.IMediaDataSource
    public void close() throws IOException {
        AssetFileDescriptor assetFileDescriptor = this.f55314a;
        if (assetFileDescriptor != null) {
            assetFileDescriptor.close();
        }
        this.f55314a = null;
        this.f55315b = null;
    }

    @Override // tv.danmaku.ijk.media.player.misc.IMediaDataSource
    public long getSize() throws IOException {
        long length = this.f55314a.getLength();
        if (this.f55315b == null) {
            this.f55315b = b(this.f55314a.createInputStream());
        }
        return length;
    }

    @Override // tv.danmaku.ijk.media.player.misc.IMediaDataSource
    public int readAt(long j4, byte[] bArr, int i2, int i4) throws IOException {
        byte[] bArr2 = this.f55315b;
        if (1 + j4 >= bArr2.length) {
            return -1;
        }
        if (i4 + j4 >= bArr2.length) {
            int length = (int) (bArr2.length - j4);
            if (length > bArr.length) {
                length = bArr.length;
            }
            i4 = length - 1;
        }
        System.arraycopy(bArr2, (int) j4, bArr, i2, i4);
        return i4;
    }
}
