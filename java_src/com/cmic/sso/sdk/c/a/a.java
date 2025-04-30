package com.cmic.sso.sdk.c.a;

import java.io.Closeable;
import java.io.IOException;
/* compiled from: ConnectionInterceptor.java */
/* loaded from: classes2.dex */
public class a implements b {
    /* JADX WARN: Removed duplicated region for block: B:110:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0232  */
    @Override // com.cmic.sso.sdk.c.a.b
    @android.annotation.TargetApi(21)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.cmic.sso.sdk.c.c.c r19, com.cmic.sso.sdk.c.d.c r20, com.cmic.sso.sdk.a r21) {
        /*
            Method dump skipped, instructions count: 673
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmic.sso.sdk.c.a.a.a(com.cmic.sso.sdk.c.c.c, com.cmic.sso.sdk.c.d.c, com.cmic.sso.sdk.a):void");
    }

    private void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
    }
}
