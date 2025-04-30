package com.join.mgps.zxing.decoding;

import android.os.Handler;
import android.os.Looper;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPointCallback;
import com.join.mgps.zxing.CaptureActivity;
import java.util.Hashtable;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DecodeThread.java */
/* loaded from: classes4.dex */
public final class c extends Thread {

    /* renamed from: e  reason: collision with root package name */
    public static final String f52510e = "barcode_bitmap";

    /* renamed from: a  reason: collision with root package name */
    private final CaptureActivity f52511a;

    /* renamed from: b  reason: collision with root package name */
    private final Hashtable<DecodeHintType, Object> f52512b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f52513c;

    /* renamed from: d  reason: collision with root package name */
    private final CountDownLatch f52514d = new CountDownLatch(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(CaptureActivity captureActivity, Vector<BarcodeFormat> vector, String str, ResultPointCallback resultPointCallback) {
        this.f52511a = captureActivity;
        Hashtable<DecodeHintType, Object> hashtable = new Hashtable<>(3);
        this.f52512b = hashtable;
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
            this.f52514d.await();
        } catch (InterruptedException unused) {
        }
        return this.f52513c;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.f52513c = new b(this.f52511a, this.f52512b);
        this.f52514d.countDown();
        Looper.loop();
    }
}
