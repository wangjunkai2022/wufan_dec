package com.mob.tools.network;

import com.mob.tools.proguard.PublicMemberKeeper;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class MultiPartInputStream extends InputStream implements PublicMemberKeeper {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<InputStream> f53867a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private int f53868b;

    private boolean a() {
        ArrayList<InputStream> arrayList = this.f53867a;
        return arrayList == null || arrayList.size() <= 0;
    }

    public void addInputStream(InputStream inputStream) throws Throwable {
        this.f53867a.add(inputStream);
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (a()) {
            return 0;
        }
        return this.f53867a.get(this.f53868b).available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Iterator<InputStream> it2 = this.f53867a.iterator();
        while (it2.hasNext()) {
            it2.next().close();
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (a()) {
            return -1;
        }
        int read = this.f53867a.get(this.f53868b).read();
        while (read < 0) {
            int i2 = this.f53868b + 1;
            this.f53868b = i2;
            if (i2 >= this.f53867a.size()) {
                break;
            }
            read = this.f53867a.get(this.f53868b).read();
        }
        return read;
    }

    @Override // java.io.InputStream
    public long skip(long j4) throws IOException {
        throw new IOException();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) throws IOException {
        if (a()) {
            return -1;
        }
        int read = this.f53867a.get(this.f53868b).read(bArr, i2, i4);
        while (read < 0) {
            int i5 = this.f53868b + 1;
            this.f53868b = i5;
            if (i5 >= this.f53867a.size()) {
                break;
            }
            read = this.f53867a.get(this.f53868b).read(bArr, i2, i4);
        }
        return read;
    }
}
