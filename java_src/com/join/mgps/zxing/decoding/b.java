package com.join.mgps.zxing.decoding;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.Result;
import com.google.zxing.common.HybridBinarizer;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.zxing.CaptureActivity;
import java.util.Hashtable;
/* compiled from: DecodeHandler.java */
/* loaded from: classes4.dex */
final class b extends Handler {

    /* renamed from: c  reason: collision with root package name */
    private static final String f52507c = b.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final CaptureActivity f52508a;

    /* renamed from: b  reason: collision with root package name */
    private final MultiFormatReader f52509b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(CaptureActivity captureActivity, Hashtable<DecodeHintType, Object> hashtable) {
        MultiFormatReader multiFormatReader = new MultiFormatReader();
        this.f52509b = multiFormatReader;
        multiFormatReader.setHints(hashtable);
        this.f52508a = captureActivity;
    }

    private void a(byte[] bArr, int i2, int i4) {
        Result result;
        long currentTimeMillis = System.currentTimeMillis();
        com.join.mgps.zxing.camera.f a4 = com.join.mgps.zxing.camera.c.c().a(bArr, i2, i4);
        try {
            result = this.f52509b.decodeWithState(new BinaryBitmap(new HybridBinarizer(a4)));
            this.f52509b.reset();
        } catch (Exception unused) {
            this.f52509b.reset();
            result = null;
        } catch (Throwable th) {
            this.f52509b.reset();
            throw th;
        }
        if (result != null) {
            long currentTimeMillis2 = System.currentTimeMillis();
            StringBuilder sb = new StringBuilder();
            sb.append("Found barcode (");
            sb.append(currentTimeMillis2 - currentTimeMillis);
            sb.append(" ms):\n");
            sb.append(result.toString());
            Message obtain = Message.obtain(this.f52508a.F0(), R.id.decode_succeeded, result);
            Bundle bundle = new Bundle();
            bundle.putParcelable("barcode_bitmap", a4.c());
            obtain.setData(bundle);
            obtain.sendToTarget();
            return;
        }
        Message.obtain(this.f52508a.F0(), (int) R.id.decode_failed).sendToTarget();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == R.id.decode) {
            a((byte[]) message.obj, message.arg1, message.arg2);
        } else if (i2 == R.id.quit) {
            Looper.myLooper().quit();
        }
    }
}
