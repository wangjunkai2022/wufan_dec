package cn.sharesdk.tencent.qq;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.tools.MobUIShell;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
/* loaded from: classes2.dex */
public class ReceiveActivity extends Activity {
    private static PlatformActionListener listener;
    private static String uriScheme;

    public static void setPlatformActionListener(PlatformActionListener platformActionListener) {
        listener = platformActionListener;
    }

    public static void setUriScheme(String str) {
        uriScheme = str;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        SSDKLog.b().a("QQ CallBack Start", new Object[0]);
        super.onCreate(bundle);
        try {
            Intent intent = getIntent();
            String scheme = intent.getScheme();
            finish();
            if (scheme == null || !scheme.startsWith(uriScheme)) {
                return;
            }
            Bundle urlToBundle = ResHelper.urlToBundle(intent.getDataString());
            String valueOf = String.valueOf(urlToBundle.get("result"));
            String valueOf2 = String.valueOf(urlToBundle.get("action"));
            if ("shareToQQ".equals(valueOf2) || "shareToQzone".equals(valueOf2)) {
                if ("complete".equals(valueOf)) {
                    if (listener != null) {
                        listener.onComplete(null, 9, new Hashon().fromJson(String.valueOf(urlToBundle.get(GrantCredentialsPermissionActivity.f64044h))));
                    }
                } else if ("error".equals(valueOf)) {
                    if (listener != null) {
                        listener.onError(null, 9, new Throwable(String.valueOf(urlToBundle.get(GrantCredentialsPermissionActivity.f64044h))));
                    }
                } else {
                    PlatformActionListener platformActionListener = listener;
                    if (platformActionListener != null) {
                        platformActionListener.onCancel(null, 9);
                    }
                }
            }
            if (Build.VERSION.SDK_INT <= 22) {
                Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.setClass(this, MobUIShell.class);
                intent2.setFlags(335544320);
                startActivity(intent2);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            PlatformActionListener platformActionListener2 = listener;
            if (platformActionListener2 != null) {
                platformActionListener2.onError(null, 9, th);
            }
        }
    }
}
