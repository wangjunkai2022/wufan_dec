package com.danikula.videocache.file;

import android.text.TextUtils;
import com.danikula.videocache.p;
import com.join.mgps.Util.g0;
/* compiled from: Md5FileNameGenerator.java */
/* loaded from: classes2.dex */
public class f implements c {

    /* renamed from: a  reason: collision with root package name */
    private static final int f11097a = 4;

    private String b(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return (lastIndexOf == -1 || lastIndexOf <= str.lastIndexOf(47) || (lastIndexOf + 2) + 4 <= str.length()) ? "" : str.substring(lastIndexOf + 1, str.length());
    }

    @Override // com.danikula.videocache.file.c
    public String a(String str) {
        String b4 = b(str);
        String d4 = p.d(str);
        if (TextUtils.isEmpty(b4)) {
            return d4;
        }
        return d4 + g0.f27568a + b4;
    }
}
