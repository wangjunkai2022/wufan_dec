package com.umeng.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.utils.UMUtils;
/* compiled from: EncryptHelper.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f60964a = null;

    /* renamed from: b  reason: collision with root package name */
    private static final String f60965b = "umeng+";

    /* renamed from: c  reason: collision with root package name */
    private static final String f60966c = "ek__id";

    /* renamed from: d  reason: collision with root package name */
    private static final String f60967d = "ek_key";

    /* renamed from: e  reason: collision with root package name */
    private static String f60968e = "";

    /* renamed from: f  reason: collision with root package name */
    private static final String f60969f = "umeng_subprocess_info";

    /* renamed from: g  reason: collision with root package name */
    private static String f60970g = "";

    /* renamed from: h  reason: collision with root package name */
    private static a f60971h;

    private a() {
    }

    public static a a() {
        if (f60971h == null) {
            synchronized (a.class) {
                if (f60971h == null) {
                    f60971h = new a();
                }
            }
        }
        return f60971h;
    }

    private String c(String str) {
        String str2 = "";
        try {
            String substring = str.substring(1, 9);
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < substring.length(); i2++) {
                char charAt = substring.charAt(i2);
                if (Character.isDigit(charAt)) {
                    if (Integer.parseInt(Character.toString(charAt)) == 0) {
                        sb.append(0);
                    } else {
                        sb.append(10 - Integer.parseInt(Character.toString(charAt)));
                    }
                } else {
                    sb.append(charAt);
                }
            }
            str2 = sb.toString();
            return str2 + new StringBuilder(str2).reverse().toString();
        } catch (Throwable unused) {
            return str2;
        }
    }

    public String b(String str) {
        String str2;
        String str3 = null;
        try {
            if (!TextUtils.isEmpty(f60964a)) {
                str = new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), f60964a.getBytes()));
            }
            return str;
        } catch (Exception unused) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败!");
            if (TextUtils.isEmpty(f60968e)) {
                return null;
            }
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，换老秘钥重试");
            try {
                str2 = new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), f60968e.getBytes()));
            } catch (Exception unused2) {
            }
            try {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，换老秘钥重试成功。");
                return str2;
            } catch (Exception unused3) {
                str3 = str2;
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，换老秘钥重试失败。换子进程备份key重试。");
                try {
                    String str4 = new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), f60970g.getBytes()));
                    try {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，子进程备份key重试成功。");
                        return str4;
                    } catch (Throwable unused4) {
                        str3 = str4;
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，子进程备份key重试失败。");
                        return str3;
                    }
                } catch (Throwable unused5) {
                }
            }
        }
    }

    public void a(Context context) {
        try {
            if (TextUtils.isEmpty(f60964a)) {
                String multiProcessSP = UMUtils.getMultiProcessSP(context, f60966c);
                if (!TextUtils.isEmpty(multiProcessSP)) {
                    f60968e = c(multiProcessSP);
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>> primaryKey: " + f60968e);
                }
                SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f60969f, 0);
                if (sharedPreferences != null) {
                    f60970g = sharedPreferences.getString(f60966c, null);
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程备份秘钥：主进程key: " + f60970g);
                }
                f60964a = c(UMUtils.genId());
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>> 正式秘钥：key: " + f60964a);
            }
        } catch (Throwable unused) {
        }
    }

    public String a(String str) {
        try {
            return TextUtils.isEmpty(f60964a) ? str : Base64.encodeToString(DataHelper.encrypt(str.getBytes(), f60964a.getBytes()), 0);
        } catch (Exception unused) {
            return null;
        }
    }
}
