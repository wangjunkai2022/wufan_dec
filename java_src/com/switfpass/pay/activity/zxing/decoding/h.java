package com.switfpass.pay.activity.zxing.decoding;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.google.zxing.Result;
import com.join.android.app.mgsim.wufun.R;
import com.switfpass.pay.activity.PaySDKCaptureActivity;
import java.util.Vector;
/* loaded from: classes4.dex */
public final class h extends Handler {

    /* renamed from: d  reason: collision with root package name */
    private static final String f58787d = h.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final PaySDKCaptureActivity f58788a;

    /* renamed from: b  reason: collision with root package name */
    private final a f58789b;

    /* renamed from: c  reason: collision with root package name */
    private d f58790c;

    public h(PaySDKCaptureActivity paySDKCaptureActivity, Vector vector, String str) {
        this.f58788a = paySDKCaptureActivity;
        a aVar = new a(paySDKCaptureActivity, vector, str, new i(paySDKCaptureActivity.getViewfinderView()));
        this.f58789b = aVar;
        aVar.start();
        this.f58790c = d.SUCCESS;
        com.switfpass.pay.activity.zxing.camera.a.c().j();
        a();
    }

    private void a() {
        if (this.f58790c == d.SUCCESS) {
            this.f58790c = d.PREVIEW;
            com.switfpass.pay.activity.zxing.camera.a.c().i(this.f58789b.a(), R.dimen.abc_action_bar_content_inset_with_nav);
            com.switfpass.pay.activity.zxing.camera.a.c().h(this, R.dimen.abc_action_bar_content_inset_material);
            this.f58788a.drawViewfinder();
        }
    }

    public final void b() {
        this.f58790c = d.DONE;
        com.switfpass.pay.activity.zxing.camera.a.c().k();
        Message.obtain(this.f58789b.a(), (int) R.dimen.abc_action_bar_overflow_padding_end_material).sendToTarget();
        try {
            this.f58789b.join();
        } catch (InterruptedException unused) {
        }
        removeMessages(R.dimen.abc_action_bar_default_padding_end_material);
        removeMessages(R.dimen.abc_action_bar_default_height_material);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == R.dimen.abc_action_bar_content_inset_material) {
            if (this.f58790c == d.PREVIEW) {
                com.switfpass.pay.activity.zxing.camera.a.c().h(this, R.dimen.abc_action_bar_content_inset_material);
            }
        } else if (i2 == R.dimen.abc_action_bar_overflow_padding_start_material) {
            a();
        } else if (i2 == R.dimen.abc_action_bar_default_padding_end_material) {
            this.f58790c = d.SUCCESS;
            Bundle data = message.getData();
            if (data != null) {
                data.getParcelable("barcode_bitmap");
            }
            this.f58788a.submitData(((Result) message.obj).getText(), true);
        } else if (i2 == R.dimen.abc_action_bar_default_height_material) {
            this.f58790c = d.PREVIEW;
            com.switfpass.pay.activity.zxing.camera.a.c().i(this.f58789b.a(), R.dimen.abc_action_bar_content_inset_with_nav);
        } else if (i2 == R.dimen.abc_action_bar_stacked_max_height) {
            String text = ((Result) message.obj).getText();
            Intent intent = new Intent();
            intent.putExtra("code", text);
            this.f58788a.setResult(-1, intent);
            this.f58788a.finish();
        }
    }
}
