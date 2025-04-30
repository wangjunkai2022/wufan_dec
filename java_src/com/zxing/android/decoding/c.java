package com.zxing.android.decoding;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.HybridBinarizer;
import com.zxing.android.CaptureActivity;
import java.util.Hashtable;
/* compiled from: DecodeHandler.java */
/* loaded from: classes3.dex */
final class c extends Handler {

    /* renamed from: c  reason: collision with root package name */
    private static final String f65062c = c.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final CaptureActivity f65063a;

    /* renamed from: b  reason: collision with root package name */
    private final MultiFormatReader f65064b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(CaptureActivity captureActivity, Hashtable<DecodeHintType, Object> hashtable) {
        MultiFormatReader multiFormatReader = new MultiFormatReader();
        this.f65064b = multiFormatReader;
        multiFormatReader.setHints(hashtable);
        this.f65063a = captureActivity;
    }

    private void a(byte[] bArr, int i2, int i4) {
        Result result;
        long currentTimeMillis = System.currentTimeMillis();
        byte[] bArr2 = new byte[bArr.length];
        for (int i5 = 0; i5 < i4; i5++) {
            for (int i6 = 0; i6 < i2; i6++) {
                bArr2[(((i6 * i4) + i4) - i5) - 1] = bArr[(i5 * i2) + i6];
            }
        }
        com.zxing.android.camera.e a4 = this.f65063a.b().a(bArr2, i4, i2);
        try {
            result = this.f65064b.decodeWithState(new BinaryBitmap(new HybridBinarizer(a4)));
            this.f65064b.reset();
        } catch (ReaderException unused) {
            this.f65064b.reset();
            result = null;
        } catch (Throwable th) {
            this.f65064b.reset();
            throw th;
        }
        if (result != null) {
            long currentTimeMillis2 = System.currentTimeMillis();
            StringBuilder sb = new StringBuilder();
            sb.append("Found barcode (");
            sb.append(currentTimeMillis2 - currentTimeMillis);
            sb.append(" ms):\n");
            sb.append(result.toString());
            Message obtain = Message.obtain(this.f65063a.c(), 4, result);
            Bundle bundle = new Bundle();
            bundle.putParcelable("barcode_bitmap", a4.a());
            obtain.setData(bundle);
            obtain.sendToTarget();
            return;
        }
        Message.obtain(this.f65063a.c(), 3).sendToTarget();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 2) {
            a((byte[]) message.obj, message.arg1, message.arg2);
        } else if (i2 != 8) {
        } else {
            Looper.myLooper().quit();
        }
    }
}
