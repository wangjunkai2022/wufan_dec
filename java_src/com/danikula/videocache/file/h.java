package com.danikula.videocache.file;

import java.io.File;
/* compiled from: TotalSizeLruDiskUsage.java */
/* loaded from: classes2.dex */
public class h extends e {

    /* renamed from: b  reason: collision with root package name */
    private final long f11099b;

    public h(long j4) {
        if (j4 > 0) {
            this.f11099b = j4;
            return;
        }
        throw new IllegalArgumentException("Max size must be positive number!");
    }

    @Override // com.danikula.videocache.file.e
    protected boolean b(File file, long j4, int i2) {
        return j4 <= this.f11099b;
    }
}
