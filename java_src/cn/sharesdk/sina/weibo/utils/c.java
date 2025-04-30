package cn.sharesdk.sina.weibo.utils;

import android.content.pm.Signature;
import android.net.Uri;
import android.text.TextUtils;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.tools.utils.Data;
/* compiled from: WeiboAppManager.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Uri f8990a = Uri.parse("content://com.sina.weibo.sdkProvider/query/package");

    /* renamed from: b  reason: collision with root package name */
    private static a f8991b = null;

    /* compiled from: WeiboAppManager.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f8992a;

        /* renamed from: b  reason: collision with root package name */
        private int f8993b;

        public String toString() {
            return "WeiboInfo: PackageName = " + this.f8992a + ", supportApi = " + this.f8993b;
        }
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return a(cn.sharesdk.framework.utils.a.b(str, 64).signatures, "18da2bf10352443a00a5e046d9fca6bd");
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean a(Signature[] signatureArr, String str) {
        if (signatureArr != null && str != null) {
            for (Signature signature : signatureArr) {
                if (str.equals(Data.MD5(signature.toByteArray()))) {
                    SSDKLog.b().a("check pass", new Object[0]);
                    return true;
                }
            }
        }
        return false;
    }
}
