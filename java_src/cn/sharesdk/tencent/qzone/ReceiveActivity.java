package cn.sharesdk.tencent.qzone;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.tools.MobUIShell;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
/* loaded from: classes2.dex */
public class ReceiveActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private static String f9041a;

    /* renamed from: b  reason: collision with root package name */
    private static PlatformActionListener f9042b;

    public static void a(String str) {
        f9041a = str;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        SSDKLog.b().a("Qzone CallBack Start", new Object[0]);
        super.onCreate(bundle);
        try {
            Intent intent = getIntent();
            String scheme = intent.getScheme();
            if (scheme == null || !scheme.startsWith(f9041a)) {
                return;
            }
            finish();
            Bundle urlToBundle = ResHelper.urlToBundle(intent.getDataString());
            String valueOf = String.valueOf(urlToBundle.get("result"));
            String valueOf2 = String.valueOf(urlToBundle.get("action"));
            if ("shareToQQ".equals(valueOf2) || "shareToQzone".equals(valueOf2)) {
                if ("complete".equals(valueOf)) {
                    if (f9042b != null) {
                        f9042b.onComplete(null, 9, new Hashon().fromJson(String.valueOf(urlToBundle.get(GrantCredentialsPermissionActivity.f64044h))));
                    }
                } else if ("error".equals(valueOf)) {
                    if (f9042b != null) {
                        f9042b.onError(null, 9, new Throwable(String.valueOf(urlToBundle.get(GrantCredentialsPermissionActivity.f64044h))));
                    }
                } else {
                    PlatformActionListener platformActionListener = f9042b;
                    if (platformActionListener != null) {
                        platformActionListener.onCancel(null, 9);
                    }
                }
            }
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setClass(this, MobUIShell.class);
            intent2.setFlags(335544320);
            startActivity(intent2);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            PlatformActionListener platformActionListener2 = f9042b;
            if (platformActionListener2 != null) {
                platformActionListener2.onError(null, 9, th);
            }
        }
    }

    public static void a(PlatformActionListener platformActionListener) {
        f9042b = platformActionListener;
    }
}
