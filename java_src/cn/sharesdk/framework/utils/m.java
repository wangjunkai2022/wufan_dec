package cn.sharesdk.framework.utils;

import android.os.Build;
import android.webkit.WebView;
/* compiled from: WebViewUtils.java */
/* loaded from: classes2.dex */
public class m {
    public static void a(WebView webView, boolean z3) {
        if (webView == null) {
            return;
        }
        try {
            webView.getSettings().setAllowFileAccess(z3);
            if (Build.VERSION.SDK_INT >= 16) {
                webView.getSettings().setAllowFileAccessFromFileURLs(z3);
                webView.getSettings().setAllowUniversalAccessFromFileURLs(z3);
            }
        } catch (Throwable unused) {
        }
    }
}
