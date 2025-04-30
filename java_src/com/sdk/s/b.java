package com.sdk.s;

import com.sdk.r.e;
/* loaded from: classes4.dex */
public class b implements a {
    @Override // com.sdk.s.a
    public String a(String str) {
        return e.a(str);
    }

    @Override // com.sdk.s.a
    public String a(String str, String str2) {
        return com.sdk.q.b.b(str, str2);
    }

    @Override // com.sdk.s.a
    public String a(String str, String str2, String str3) {
        return com.sdk.r.a.b(str3, str, str2);
    }

    @Override // com.sdk.s.a
    public String a(String str, String str2, String str3, String str4) {
        return com.sdk.q.b.a(str3, str);
    }

    @Override // com.sdk.s.a
    public String b(String str, String str2) {
        return com.sdk.r.a.a(str2, str.substring(0, 16), str.substring(16));
    }
}
