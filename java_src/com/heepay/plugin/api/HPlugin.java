package com.heepay.plugin.api;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;
import com.alipay.sdk.cons.b;
import com.heepay.plugin.activity.HyNotityActivity;
import com.heepay.plugin.c.f;
import com.heepay.plugin.c.h;
import com.heepay.plugin.domain.PayInitInfo;
import com.join.mgps.dto.Constant;
import com.tencent.stat.DeviceInfo;
/* loaded from: classes2.dex */
public class HPlugin {
    public static PayInitInfo mPayInitInfo = new PayInitInfo("30", 10, 0);

    public static String getHySDKVersion() {
        return "4.0.4";
    }

    public static synchronized void pay(final Activity activity, String str) {
        synchronized (HPlugin.class) {
            if (h.a()) {
                if (activity != null && !TextUtils.isEmpty(str)) {
                    if (!f.a().a(activity)) {
                        Toast.makeText(activity, "网络未连接，请检查网络设置...", 1).show();
                        return;
                    }
                    Intent intent = new Intent(activity, HyNotityActivity.class);
                    Bundle bundle = new Bundle();
                    String[] split = str.split(",");
                    if (split.length < 4) {
                        Toast.makeText(activity, "请检查传入的参数", 1).show();
                        return;
                    }
                    bundle.putString(b.f9718c, split[0]);
                    try {
                        bundle.putInt(DeviceInfo.TAG_ANDROID_ID, Integer.parseInt(split[1]));
                    } catch (Exception unused) {
                        Toast.makeText(activity, "请检查支付参数是否正确", 1).show();
                    }
                    bundle.putString("bn", split[2]);
                    bundle.putString(Constant.PAY_TYPE, split[3]);
                    intent.putExtras(bundle);
                    activity.startActivityForResult(intent, 0);
                }
                Toast.makeText(activity, "传入的参数不能为空", 1).show();
                return;
            }
            activity.runOnUiThread(new Runnable() { // from class: com.heepay.plugin.api.HPlugin.1
                @Override // java.lang.Runnable
                public void run() {
                    Toast.makeText(activity, "请在主线程中调用", 1).show();
                }
            });
        }
    }

    public static void setPayInitInfo(PayInitInfo payInitInfo) {
        mPayInitInfo = payInitInfo;
    }
}
