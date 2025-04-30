package com.efs.sdk.base.core.e;

import com.efs.sdk.base.processor.action.ILogEncryptAction;
/* loaded from: classes2.dex */
public final class b implements ILogEncryptAction {
    @Override // com.efs.sdk.base.processor.action.ILogEncryptAction
    public final byte[] decrypt(String str, byte[] bArr) {
        try {
            return com.efs.sdk.base.core.util.c.a.a(bArr, str);
        } catch (Exception e4) {
            com.efs.sdk.base.core.util.d.b("efs.base", "aes decrypt error", e4);
            return null;
        }
    }

    @Override // com.efs.sdk.base.processor.action.ILogEncryptAction
    public final byte[] encrypt(String str, byte[] bArr) {
        try {
            return com.efs.sdk.base.core.util.c.a.b(bArr, str);
        } catch (Exception e4) {
            com.efs.sdk.base.core.util.d.b("efs.base", "aes encrypt error", e4);
            return null;
        }
    }

    @Override // com.efs.sdk.base.processor.action.ILogEncryptAction
    public final int getDeVal() {
        return 2;
    }
}
