package com.android.dx.cf.iface;

import com.android.dx.util.ByteArray;
/* loaded from: classes2.dex */
public interface ParseObserver {
    void changeIndent(int i2);

    void endParsingMember(ByteArray byteArray, int i2, String str, String str2, Member member);

    void parsed(ByteArray byteArray, int i2, int i4, String str);

    void startParsingMember(ByteArray byteArray, int i2, String str, String str2);
}
