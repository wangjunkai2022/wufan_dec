package com.sdk.r;

import com.cucc.needless.cmb.sm.SmUtils_CMB;
import com.cucc.needless.cmb.sm.Util;
/* loaded from: classes4.dex */
public class g implements com.sdk.s.a {
    @Override // com.sdk.s.a
    public String a(String str) {
        return SmUtils_CMB.digestEncrypt(str).toUpperCase();
    }

    @Override // com.sdk.s.a
    public String a(String str, String str2) {
        return SmUtils_CMB.asymmetricEncrypt(str, str2).replaceAll("\n", "");
    }

    @Override // com.sdk.s.a
    public String a(String str, String str2, String str3) {
        return SmUtils_CMB.symmetryEncrypt(str, str2, str3).replaceAll("\n", "");
    }

    @Override // com.sdk.s.a
    public String a(String str, String str2, String str3, String str4) {
        return SmUtils_CMB.asymmetricDecrypt(str, str3, str4);
    }

    @Override // com.sdk.s.a
    public String b(String str, String str2) {
        String byteToHex = Util.byteToHex(c.a(str));
        return SmUtils_CMB.symmetryDecrypt(Util.hexToByte(byteToHex.substring(0, 32)), Util.hexToByte(byteToHex.substring(32)), c.a(str2));
    }
}
