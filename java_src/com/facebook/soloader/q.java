package com.facebook.soloader;

import android.os.StrictMode;
import java.io.File;
/* compiled from: NoopSoSource.java */
/* loaded from: classes2.dex */
public class q extends t {
    @Override // com.facebook.soloader.t
    public int c(String str, int i2, StrictMode.ThreadPolicy threadPolicy) {
        return 1;
    }

    @Override // com.facebook.soloader.t
    public File e(String str) {
        throw new UnsupportedOperationException("unpacking not supported in test mode");
    }
}
