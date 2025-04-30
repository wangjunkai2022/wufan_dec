package com.efs.sdk.base.processor.action;
/* loaded from: classes2.dex */
public interface ILogEncryptAction {
    byte[] decrypt(String str, byte[] bArr);

    byte[] encrypt(String str, byte[] bArr);

    int getDeVal();
}
