package com.switfpass.pay.activity;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import androidx.core.app.NotificationCompat;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.dto.Constant;
import com.switfpass.pay.bean.MchBean;
import com.switfpass.pay.bean.RequestMsg;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
/* loaded from: classes4.dex */
public class PayPlugin extends BasePayActivity implements View.OnClickListener {

    /* renamed from: b  reason: collision with root package name */
    private EditText f58626b;

    /* renamed from: c  reason: collision with root package name */
    public Handler f58627c = new b0();

    /* renamed from: d  reason: collision with root package name */
    protected ProgressDialog f58628d = null;

    /* renamed from: e  reason: collision with root package name */
    private String f58629e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String e(PayPlugin payPlugin) {
        HashMap hashMap = new HashMap();
        hashMap.put("body", "sdk收款");
        hashMap.put(NotificationCompat.CATEGORY_SERVICE, "unified.trade.pay");
        hashMap.put("version", "1.0");
        hashMap.put("mch_id", "7551000001");
        hashMap.put(Constant.NOTIFY_URL, "http://zhifu.dev.swiftpass.cn/spay/notify");
        payPlugin.f58629e = com.switfpass.pay.utils.w.a(String.valueOf(new Random().nextInt(10000)).getBytes());
        hashMap.put("nonce_str", com.switfpass.pay.utils.w.a(String.valueOf(new Random().nextInt(10000)).getBytes()));
        hashMap.put("out_trade_no", payPlugin.f58629e);
        hashMap.put("mch_create_ip", "127.0.0.1");
        hashMap.put("total_fee", payPlugin.f58626b.getText().toString());
        hashMap.put(Constant.MD5, payPlugin.g("9d101c97133837e13dde2d32a5054abb", hashMap));
        return com.switfpass.pay.utils.s0.b(hashMap);
    }

    public static void h(Activity activity, RequestMsg requestMsg) {
        ArrayList arrayList = new ArrayList();
        for (String str : requestMsg.o().split("\\|")) {
            MchBean mchBean = new MchBean();
            mchBean.w(str);
            arrayList.add(mchBean);
        }
        com.switfpass.pay.utils.d0 d0Var = new com.switfpass.pay.utils.d0(activity, arrayList);
        d0Var.s(requestMsg);
        com.switfpass.pay.utils.h.e(activity, d0Var);
        d0Var.show();
    }

    public static void j(Activity activity, RequestMsg requestMsg) {
        com.switfpass.pay.utils.d0 d0Var = new com.switfpass.pay.utils.d0(activity);
        d0Var.s(requestMsg);
        d0Var.y(requestMsg);
    }

    public static void k(Activity activity, RequestMsg requestMsg) {
        com.switfpass.pay.utils.d0 d0Var = new com.switfpass.pay.utils.d0(activity);
        d0Var.s(requestMsg);
        d0Var.z(requestMsg);
    }

    public static void l(Activity activity, RequestMsg requestMsg) {
        com.switfpass.pay.utils.e0 e0Var = new com.switfpass.pay.utils.e0();
        if (requestMsg.s() == null || "".equals(requestMsg.s())) {
            e0Var.a(activity, "tokenid不能为空");
        } else {
            PaySDKCaptureActivity.startActivity(activity, requestMsg);
        }
    }

    public static void m(Activity activity, RequestMsg requestMsg) {
        com.switfpass.pay.utils.d0 d0Var = new com.switfpass.pay.utils.d0(activity);
        d0Var.s(requestMsg);
        d0Var.A(requestMsg);
    }

    public void f(StringBuilder sb, Map map, boolean z3) {
        ArrayList<String> arrayList = new ArrayList(map.keySet());
        Collections.sort(arrayList);
        for (String str : arrayList) {
            sb.append(str);
            sb.append(SimpleComparison.EQUAL_TO_OPERATION);
            String str2 = (String) map.get(str);
            if (z3) {
                str2 = n(str2);
            }
            sb.append(str2);
            sb.append(m.a.f72566d);
        }
        sb.setLength(sb.length() - 1);
    }

    public String g(String str, Map map) {
        StringBuilder sb = new StringBuilder((map.size() + 1) * 10);
        com.switfpass.pay.utils.k0.a(sb, map, false);
        sb.append("&key=");
        sb.append(str);
        String sb2 = sb.toString();
        try {
            return com.switfpass.pay.utils.w.b(sb2).toUpperCase();
        } catch (Exception unused) {
            return com.switfpass.pay.utils.w.b(sb2).toUpperCase();
        }
    }

    public void i(Context context, String str) {
        runOnUiThread(new d0(this, context, str));
    }

    public String n(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (Throwable unused) {
            return str;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.switfpass.pay.activity.BasePayActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.join.android.app.mgsim.wufun.R.array.smssdk_country_group_b);
        com.switfpass.pay.handle.a.d(9, this.f58627c);
        this.f58626b = (EditText) findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_display_1_material);
        findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_display_2_material);
        findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_display_3_material);
        findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_display_4_material);
        findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_headline_material);
        findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_large_material);
        findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_medium_material);
        findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_menu_header_material);
        ((Button) findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_menu_material)).setOnClickListener(new c0(this));
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }
}
