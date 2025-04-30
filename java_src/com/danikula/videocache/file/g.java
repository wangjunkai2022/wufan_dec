package com.danikula.videocache.file;

import java.io.File;
/* compiled from: TotalCountLruDiskUsage.java */
/* loaded from: classes2.dex */
public class g extends e {

    /* renamed from: b  reason: collision with root package name */
    private final int f11098b;

    public g(int i2) {
        if (i2 > 0) {
            this.f11098b = i2;
            return;
        }
        throw new IllegalArgumentException("Max count must be positive number!");
    }

    @Override // com.danikula.videocache.file.e
    protected boolean b(File file, long j4, int i2) {
        return i2 <= this.f11098b;
    }
}
