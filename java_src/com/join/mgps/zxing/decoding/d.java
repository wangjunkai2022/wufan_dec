package com.join.mgps.zxing.decoding;

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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.FaceTransferScanQrCodeActivity;
import java.util.Hashtable;
/* compiled from: FaceTransferDecodeHandler.java */
/* loaded from: classes4.dex */
public class d extends Handler {

    /* renamed from: c  reason: collision with root package name */
    private static final String f52515c = b.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final FaceTransferScanQrCodeActivity f52516a;

    /* renamed from: b  reason: collision with root package name */
    private final MultiFormatReader f52517b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(FaceTransferScanQrCodeActivity faceTransferScanQrCodeActivity, Hashtable<DecodeHintType, Object> hashtable) {
        MultiFormatReader multiFormatReader = new MultiFormatReader();
        this.f52517b = multiFormatReader;
        multiFormatReader.setHints(hashtable);
        this.f52516a = faceTransferScanQrCodeActivity;
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
        com.join.mgps.zxing.camera.f a4 = com.join.mgps.zxing.camera.c.c().a(bArr2, i4, i2);
        try {
            result = this.f52517b.decodeWithState(new BinaryBitmap(new HybridBinarizer(a4)));
            this.f52517b.reset();
        } catch (ReaderException unused) {
            this.f52517b.reset();
            result = null;
        } catch (Throwable th) {
            this.f52517b.reset();
            throw th;
        }
        if (result != null) {
            long currentTimeMillis2 = System.currentTimeMillis();
            StringBuilder sb = new StringBuilder();
            sb.append("Found barcode (");
            sb.append(currentTimeMillis2 - currentTimeMillis);
            sb.append(" ms):\n");
            sb.append(result.toString());
            Message obtain = Message.obtain(this.f52516a.Q0(), R.id.decode_succeeded, result);
            Bundle bundle = new Bundle();
            bundle.putParcelable("barcode_bitmap", a4.c());
            obtain.setData(bundle);
            obtain.sendToTarget();
            return;
        }
        Message.obtain(this.f52516a.Q0(), (int) R.id.decode_failed).sendToTarget();
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
