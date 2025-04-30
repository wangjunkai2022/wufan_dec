package com.qq.e.comm.managers.plugin;

import com.join.mgps.dto.PayCenterOrderRequest;
import com.umeng.analytics.pro.ai;
/* loaded from: classes4.dex */
class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f56464a = {"0", "1", PayCenterOrderRequest.PAY_TYPE_RECHARGE, "3", "4", "5", "6", "7", "8", "9", "a", "b", ai.aD, com.xinzhu.overmind.utils.helpers.d.f64708a, "e", "f"};

    public static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 : bArr) {
            if (i2 < 0) {
                i2 += 256;
            }
            StringBuilder sb = new StringBuilder();
            String[] strArr = f56464a;
            sb.append(strArr[i2 / 16]);
            sb.append(strArr[i2 % 16]);
            stringBuffer.append(sb.toString());
        }
        return stringBuffer.toString();
    }
}
