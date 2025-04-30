package com.ss.android.socialbase.appdownloader.f.a;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: IntReader.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private InputStream f57701a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f57702b;

    /* renamed from: c  reason: collision with root package name */
    private int f57703c;

    public d() {
    }

    public final void a(InputStream inputStream, boolean z3) {
        this.f57701a = inputStream;
        this.f57702b = z3;
        this.f57703c = 0;
    }

    public final int b() throws IOException {
        return a(4);
    }

    public final void c(int i2) throws IOException {
        if (i2 > 0) {
            long j4 = i2;
            long skip = this.f57701a.skip(j4);
            this.f57703c = (int) (this.f57703c + skip);
            if (skip != j4) {
                throw new EOFException();
            }
        }
    }

    public d(InputStream inputStream, boolean z3) {
        a(inputStream, z3);
    }

    public final int[] b(int i2) throws IOException {
        int[] iArr = new int[i2];
        a(iArr, 0, i2);
        return iArr;
    }

    public final void a() {
        InputStream inputStream = this.f57701a;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
            a(null, false);
        }
    }

    public final void c() throws IOException {
        c(4);
    }

    public final int a(int i2) throws IOException {
        if (i2 >= 0 && i2 <= 4) {
            int i4 = 0;
            if (this.f57702b) {
                for (int i5 = (i2 - 1) * 8; i5 >= 0; i5 -= 8) {
                    int read = this.f57701a.read();
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.f57703c++;
                    i4 |= read << i5;
                }
                return i4;
            }
            int i6 = i2 * 8;
            int i7 = 0;
            while (i4 != i6) {
                int read2 = this.f57701a.read();
                if (read2 == -1) {
                    throw new EOFException();
                }
                this.f57703c++;
                i7 |= read2 << i4;
                i4 += 8;
            }
            return i7;
        }
        throw new IllegalArgumentException();
    }

    public final void a(int[] iArr, int i2, int i4) throws IOException {
        while (i4 > 0) {
            iArr[i2] = b();
            i4--;
            i2++;
        }
    }
}
