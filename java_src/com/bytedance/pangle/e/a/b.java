package com.bytedance.pangle.e.a;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    InputStream f10204a;

    /* renamed from: b  reason: collision with root package name */
    private int f10205b;

    public b(InputStream inputStream) {
        a(inputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(InputStream inputStream) {
        this.f10204a = inputStream;
        this.f10205b = 0;
    }

    public final void b() {
        long skip = this.f10204a.skip(4L);
        this.f10205b = (int) (this.f10205b + skip);
        if (skip != 4) {
            throw new EOFException();
        }
    }

    public final int a() {
        int i2 = 0;
        for (int i4 = 0; i4 != 32; i4 += 8) {
            int read = this.f10204a.read();
            if (read == -1) {
                throw new EOFException();
            }
            this.f10205b++;
            i2 |= read << i4;
        }
        return i2;
    }

    public final void b(int i2) {
        int a4 = a();
        if (a4 != i2) {
            throw new IOException(String.format("Expected: 0x%08x got: 0x%08x", Integer.valueOf(i2), Integer.valueOf(a4)));
        }
    }

    public final int[] a(int i2) {
        int[] iArr = new int[i2];
        int i4 = 0;
        while (i2 > 0) {
            iArr[i4] = a();
            i2--;
            i4++;
        }
        return iArr;
    }
}
