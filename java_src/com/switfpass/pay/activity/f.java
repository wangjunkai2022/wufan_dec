package com.switfpass.pay.activity;

import android.content.Intent;
import com.switfpass.pay.bean.OrderBena;
/* loaded from: classes4.dex */
final class f extends com.switfpass.pay.thread.h {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ QQWapPayWebView f58673a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(QQWapPayWebView qQWapPayWebView) {
        this.f58673a = qQWapPayWebView;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        super.onError(obj);
        Intent intent = new Intent();
        intent.putExtra("resultCode", "NOTPAY");
        this.f58673a.setResult(-1, intent);
        this.f58673a.finish();
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
        if (orderBena != null) {
            Intent intent = new Intent();
            intent.putExtra("resultCode", orderBena.t());
            this.f58673a.setResult(-1, intent);
        } else {
            Intent intent2 = new Intent();
            intent2.putExtra("resultCode", "NOTPAY");
            this.f58673a.setResult(-1, intent2);
        }
        this.f58673a.finish();
    }
}
