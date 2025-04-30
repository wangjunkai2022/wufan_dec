package com.sdk.a;
/* loaded from: classes4.dex */
public class c extends com.sdk.b.c<String, String> {
    public c(d dVar, int i2) {
        super(i2);
    }

    @Override // com.sdk.b.c
    public int b(String str, String str2) {
        String str3 = str2;
        if (str3 == null) {
            return 0;
        }
        return str3.length();
    }
}
