package com.switfpass.pay.activity;

import android.widget.Toast;
import com.switfpass.pay.bean.OrderBena;
/* loaded from: classes4.dex */
final class p extends com.switfpass.pay.thread.h {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ QrcodeActivity f58690a;

    p(QrcodeActivity qrcodeActivity) {
        this.f58690a = qrcodeActivity;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        super.onError(obj);
        this.f58690a.runOnUiThread(new s());
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPostExecute() {
        super.onPostExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPreExecute() {
        super.onPreExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        super.onSucceed(orderBena);
        if (orderBena != null) {
            Toast.makeText(this.f58690a.getApplicationContext(), "红包发送成功", 1).show();
        }
    }
}
