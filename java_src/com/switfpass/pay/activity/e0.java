package com.switfpass.pay.activity;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.widget.Toast;
import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.RequestMsg;
import java.util.Map;
/* loaded from: classes4.dex */
final class e0 extends AsyncTask {

    /* renamed from: a  reason: collision with root package name */
    private ProgressDialog f58671a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ PayPlugin f58672b;

    public e0(PayPlugin payPlugin) {
        this.f58672b = payPlugin;
    }

    private Map a() {
        String e4 = PayPlugin.e(this.f58672b);
        new StringBuilder("doInBackground, url = ").append("https://pay.swiftpass.cn/pay/gateway");
        new StringBuilder("doInBackground, entity = ").append(e4);
        com.switfpass.pay.service.b bVar = new com.switfpass.pay.service.b();
        byte[] n4 = com.switfpass.pay.utils.o0.n("https://pay.swiftpass.cn/pay/gateway", e4);
        if (n4 != null && n4.length != 0) {
            String str = new String(n4);
            new StringBuilder("doInBackground, content = ").append(str);
            bVar.a(str);
            try {
                return com.switfpass.pay.utils.s0.a(str);
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
        return null;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Object doInBackground(Object... objArr) {
        return a();
    }

    @Override // android.os.AsyncTask
    protected final void onCancelled() {
        super.onCancelled();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Object obj) {
        Map map = (Map) obj;
        ProgressDialog progressDialog = this.f58671a;
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
        if (map == null || !((String) map.get("status")).equals("0")) {
            PayPlugin payPlugin = this.f58672b;
            Toast.makeText(payPlugin, payPlugin.getString(com.join.android.app.mgsim.wufun.R.drawable.res_0x7f080006_ic_launcher_foreground__0), 1).show();
            return;
        }
        Toast.makeText(this.f58672b, (int) com.join.android.app.mgsim.wufun.R.drawable.res_0x7f080005_avd_show_password__2, 1).show();
        RequestMsg requestMsg = new RequestMsg();
        requestMsg.N((String) map.get("token_id"));
        requestMsg.J((String) map.get("services"));
        requestMsg.w("wx2a5538052969956e");
        requestMsg.D(1.0d);
        requestMsg.P(MainApplication.f58621w);
        PayPlugin.k(this.f58672b, requestMsg);
    }

    @Override // android.os.AsyncTask
    protected final void onPreExecute() {
        PayPlugin payPlugin = this.f58672b;
        this.f58671a = ProgressDialog.show(payPlugin, "", payPlugin.getString(com.join.android.app.mgsim.wufun.R.drawable.aa_dialog_bg));
    }
}
