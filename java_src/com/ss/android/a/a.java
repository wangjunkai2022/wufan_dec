package com.ss.android.a;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import net.lingala.zip4j.util.e;
/* compiled from: FileRandomAccess.java */
/* loaded from: classes4.dex */
public class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private final RandomAccessFile f56871a;

    public a(File file) throws FileNotFoundException {
        this.f56871a = new RandomAccessFile(file, e.f73017f0);
    }

    @Override // com.ss.android.a.b
    public long a() throws IOException {
        return this.f56871a.length();
    }

    @Override // com.ss.android.a.b
    public void b() throws IOException {
        this.f56871a.close();
    }

    @Override // com.ss.android.a.b
    public int a(byte[] bArr, int i2, int i4) throws IOException {
        return this.f56871a.read(bArr, i2, i4);
    }

    @Override // com.ss.android.a.b
    public void a(long j4, long j5) throws IOException {
        this.f56871a.seek(j4);
    }
}
