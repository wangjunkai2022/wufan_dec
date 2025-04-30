package com.tencent.cos.utils;

import com.tencent.cos.COSClient;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.utils.helpers.d;
/* loaded from: classes4.dex */
public class QLog {
    public static void d(String str, String str2) {
        d(str, str2, null);
    }

    public static void e(String str, String str2) {
        e(str, str2, null);
    }

    public static void i(String str, String str2) {
        i(str, str2, null);
    }

    public static void w(String str, String str2) {
        w(str, str2, null);
    }

    public static void d(String str, String str2, Throwable th) {
        if (COSClient.isEnableLog()) {
            RecordLog.getInstance(COSClient.getContext(), "COS").appendRecord(str, d.f64708a, str2, th);
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (COSClient.isEnableLog()) {
            RecordLog.getInstance(COSClient.getContext(), "COS").appendRecord(str, "e", str2, th);
        }
    }

    public static void i(String str, String str2, Throwable th) {
        if (COSClient.isEnableLog()) {
            RecordLog.getInstance(COSClient.getContext(), "COS").appendRecord(str, ai.aA, str2, th);
        }
    }

    public static void w(String str, String str2, Throwable th) {
        if (COSClient.isEnableLog()) {
            RecordLog.getInstance(COSClient.getContext(), "COS").appendRecord(str, "w", str2, th);
        }
    }
}
