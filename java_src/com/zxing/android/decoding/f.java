package com.zxing.android.decoding;

import android.os.Handler;
import android.os.Looper;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPointCallback;
import com.join.mgps.activity.FaceTransferScanQrCodeActivity;
import java.util.Hashtable;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DecodeThreadForFace.java */
/* loaded from: classes3.dex */
public final class f extends Thread {

    /* renamed from: e  reason: collision with root package name */
    public static final String f65073e = "barcode_bitmap";

    /* renamed from: a  reason: collision with root package name */
    private final FaceTransferScanQrCodeActivity f65074a;

    /* renamed from: b  reason: collision with root package name */
    private final Hashtable<DecodeHintType, Object> f65075b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f65076c;

    /* renamed from: d  reason: collision with root package name */
    private final CountDownLatch f65077d = new CountDownLatch(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(FaceTransferScanQrCodeActivity faceTransferScanQrCodeActivity, Vector<BarcodeFormat> vector, String str, ResultPointCallback resultPointCallback) {
        this.f65074a = faceTransferScanQrCodeActivity;
        Hashtable<DecodeHintType, Object> hashtable = new Hashtable<>(3);
        this.f65075b = hashtable;
        if (vector == null || vector.isEmpty()) {
            vector = new Vector<>();
            vector.addAll(b.f65059c);
            vector.addAll(b.f65060d);
            vector.addAll(b.f65061e);
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
            this.f65077d.await();
        } catch (InterruptedException unused) {
        }
        return this.f65076c;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.f65076c = new d(this.f65074a, this.f65075b);
        this.f65077d.countDown();
        Looper.loop();
    }
}
