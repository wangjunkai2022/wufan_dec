package com.join.mgps.zxing.decoding;

import android.os.Handler;
import android.os.Looper;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPointCallback;
import com.join.mgps.activity.FaceTransferScanQrCodeActivity;
import java.util.Hashtable;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
/* compiled from: FaceTransferDecodeThread.java */
/* loaded from: classes4.dex */
public class e extends Thread {

    /* renamed from: e  reason: collision with root package name */
    public static final String f52518e = "barcode_bitmap";

    /* renamed from: a  reason: collision with root package name */
    private final FaceTransferScanQrCodeActivity f52519a;

    /* renamed from: b  reason: collision with root package name */
    private final Hashtable<DecodeHintType, Object> f52520b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f52521c;

    /* renamed from: d  reason: collision with root package name */
    private final CountDownLatch f52522d = new CountDownLatch(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(FaceTransferScanQrCodeActivity faceTransferScanQrCodeActivity, Vector<BarcodeFormat> vector, String str, ResultPointCallback resultPointCallback) {
        this.f52519a = faceTransferScanQrCodeActivity;
        Hashtable<DecodeHintType, Object> hashtable = new Hashtable<>(3);
        this.f52520b = hashtable;
        if (vector == null || vector.isEmpty()) {
            vector = new Vector<>();
            vector.addAll(a.f52504c);
            vector.addAll(a.f52505d);
            vector.addAll(a.f52506e);
        }
        hashtable.put(DecodeHintType.POSSIBLE_FORMATS, vector);
        if (str != null) {
            hashtable.put(DecodeHintType.CHARACTER_SET, str);
        }
        hashtable.put(DecodeHintType.NEED_RESULT_POINT_CALLBACK, resultPointCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Handler a() {
        try {
            this.f52522d.await();
        } catch (InterruptedException unused) {
        }
        return this.f52521c;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.f52521c = new d(this.f52519a, this.f52520b);
        this.f52522d.countDown();
        Looper.loop();
    }
}
