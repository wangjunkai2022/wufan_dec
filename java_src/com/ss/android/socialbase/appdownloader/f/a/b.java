package com.ss.android.socialbase.appdownloader.f.a;

import com.join.mgps.Util.g0;
import java.io.IOException;
/* compiled from: ChunkUtil.java */
/* loaded from: classes4.dex */
public class b {
    public static final void a(d dVar, int i2) throws IOException {
        int b4 = dVar.b();
        if (b4 == i2) {
            return;
        }
        throw new IOException("Expected chunk of type 0x" + Integer.toHexString(i2) + ", read 0x" + Integer.toHexString(b4) + g0.f27568a);
    }
}
