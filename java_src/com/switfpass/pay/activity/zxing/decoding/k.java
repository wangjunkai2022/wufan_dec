package com.switfpass.pay.activity.zxing.decoding;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.HybridBinarizer;
import com.join.android.app.mgsim.wufun.R;
import com.switfpass.pay.activity.PaySDKCaptureActivity;
import java.util.Hashtable;
/* loaded from: classes4.dex */
final class k extends Handler {

    /* renamed from: c  reason: collision with root package name */
    private static final String f58796c = k.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final PaySDKCaptureActivity f58797a;

    /* renamed from: b  reason: collision with root package name */
    private final MultiFormatReader f58798b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(PaySDKCaptureActivity paySDKCaptureActivity, Hashtable hashtable) {
        MultiFormatReader multiFormatReader = new MultiFormatReader();
        this.f58798b = multiFormatReader;
        multiFormatReader.setHints(hashtable);
        this.f58797a = paySDKCaptureActivity;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 != R.dimen.abc_action_bar_content_inset_with_nav) {
            if (i2 == R.dimen.abc_action_bar_overflow_padding_end_material) {
                Looper.myLooper().quit();
                return;
            }
            return;
        }
        byte[] bArr = (byte[]) message.obj;
        int i4 = message.arg1;
        int i5 = message.arg2;
        long currentTimeMillis = System.currentTimeMillis();
        Result result = null;
        byte[] bArr2 = new byte[bArr.length];
        for (int i6 = 0; i6 < i5; i6++) {
            for (int i7 = 0; i7 < i4; i7++) {
                bArr2[(((i7 * i5) + i5) - i6) - 1] = bArr[(i6 * i4) + i7];
            }
        }
        com.switfpass.pay.activity.zxing.camera.b a4 = com.switfpass.pay.activity.zxing.camera.a.c().a(bArr2, i5, i4);
        try {
            result = this.f58798b.decodeWithState(new BinaryBitmap(new HybridBinarizer(a4)));
        } catch (ReaderException unused) {
        } catch (Throwable th) {
            this.f58798b.reset();
            throw th;
        }
        this.f58798b.reset();
        if (result == null) {
            Message.obtain(this.f58797a.getHandler(), (int) R.dimen.abc_action_bar_default_height_material).sendToTarget();
            return;
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder("Found barcode (");
        sb.append(currentTimeMillis2 - currentTimeMillis);
        sb.append(" ms):\n");
        sb.append(result.toString());
        Message obtain = Message.obtain(this.f58797a.getHandler(), R.dimen.abc_action_bar_default_padding_end_material, result);
        Bundle bundle = new Bundle();
        bundle.putParcelable("barcode_bitmap", a4.c());
        obtain.setData(bundle);
        obtain.sendToTarget();
    }
}
