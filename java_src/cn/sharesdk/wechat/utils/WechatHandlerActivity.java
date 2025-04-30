package cn.sharesdk.wechat.utils;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import cn.sharesdk.framework.utils.SSDKLog;
/* loaded from: classes2.dex */
public class WechatHandlerActivity extends Activity {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        SSDKLog.b().a("Wechat CallBack Start", new Object[0]);
        setTheme(16973839);
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                getWindow().addFlags(Integer.MIN_VALUE);
                getWindow().setStatusBarColor(0);
            }
            super.onCreate(bundle);
            l.a().a(this);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
        finish();
    }

    public void onGetMessageFromWXReq(WXMediaMessage wXMediaMessage) {
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        SSDKLog.b().a("Wechat CallBack Start", new Object[0]);
        super.onNewIntent(intent);
        setIntent(intent);
        try {
            l.a().a(this);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
        finish();
    }

    public void onShowMessageFromWXReq(WXMediaMessage wXMediaMessage) {
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int i2) {
        if (Build.VERSION.SDK_INT == 26) {
            return;
        }
        super.setRequestedOrientation(i2);
    }
}
