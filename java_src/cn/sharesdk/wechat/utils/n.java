package cn.sharesdk.wechat.utils;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.Bundle;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.onekeyshare.OnekeyShare;
import com.mob.MobSDK;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: WechatTools.java */
/* loaded from: classes2.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private static volatile n f9135a;

    public static n a() {
        if (f9135a == null) {
            synchronized (n.class) {
                if (f9135a == null) {
                    f9135a = new n();
                }
            }
        }
        return f9135a;
    }

    public int a(String str) {
        if (str == null || str.length() == 0) {
            return 0;
        }
        File file = new File(str);
        if (!file.exists()) {
            if (MobSDK.getContext() != null && str.startsWith("content")) {
                try {
                    return a(MobSDK.getContext().getContentResolver(), Uri.parse(str));
                } catch (Exception unused) {
                }
            }
            return 0;
        }
        return (int) file.length();
    }

    private static int a(ContentResolver contentResolver, Uri uri) {
        SSDKLog.b().a("MicroMsg.SDK.Util", "getFileSize with content url");
        if (contentResolver != null && uri != null) {
            InputStream inputStream = null;
            try {
                try {
                    InputStream openInputStream = contentResolver.openInputStream(uri);
                    if (openInputStream == null) {
                        if (openInputStream != null) {
                            try {
                                openInputStream.close();
                            } catch (IOException e4) {
                                SSDKLog b4 = SSDKLog.b();
                                b4.a(OnekeyShare.SHARESDK_TAG, "WechatTools exception" + e4);
                            }
                        }
                        return 0;
                    }
                    int available = openInputStream.available();
                    try {
                        openInputStream.close();
                    } catch (IOException e5) {
                        SSDKLog b5 = SSDKLog.b();
                        b5.a(OnekeyShare.SHARESDK_TAG, "WechatTools exception" + e5);
                    }
                    return available;
                } catch (Throwable th) {
                    if (0 != 0) {
                        try {
                            inputStream.close();
                        } catch (IOException e6) {
                            SSDKLog b6 = SSDKLog.b();
                            b6.a(OnekeyShare.SHARESDK_TAG, "WechatTools exception" + e6);
                        }
                    }
                    throw th;
                }
            } catch (Exception e7) {
                SSDKLog b7 = SSDKLog.b();
                b7.a("MicroMsg.SDK.Util", "getFileSize fail, " + e7.getMessage());
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (IOException e8) {
                        SSDKLog b8 = SSDKLog.b();
                        b8.a(OnekeyShare.SHARESDK_TAG, "WechatTools exception" + e8);
                    }
                }
                return 0;
            }
        }
        SSDKLog.b().a("MicroMsg.SDK.Util", "getFileSize fail, resolver or uri is null");
        return 0;
    }

    public static String a(Bundle bundle, String str) {
        if (bundle == null) {
            return null;
        }
        try {
            return bundle.getString(str);
        } catch (Exception e4) {
            SSDKLog b4 = SSDKLog.b();
            b4.a("getStringExtra exception:" + e4.getMessage(), new Object[0]);
            return null;
        }
    }

    public static int a(Bundle bundle, String str, int i2) {
        if (bundle == null) {
            return i2;
        }
        try {
            return bundle.getInt(str, i2);
        } catch (Exception e4) {
            SSDKLog b4 = SSDKLog.b();
            b4.a("getIntExtra exception:" + e4.getMessage(), new Object[0]);
            return i2;
        }
    }
}
