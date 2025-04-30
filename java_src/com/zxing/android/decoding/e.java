package com.zxing.android.decoding;

import android.os.Handler;
import android.os.Looper;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPointCallback;
import com.zxing.android.CaptureActivity;
import java.util.Hashtable;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DecodeThread.java */
/* loaded from: classes3.dex */
public final class e extends Thread {

    /* renamed from: e  reason: collision with root package name */
    public static final String f65068e = "barcode_bitmap";

    /* renamed from: a  reason: collision with root package name */
    private final CaptureActivity f65069a;

    /* renamed from: b  reason: collision with root package name */
    private final Hashtable<DecodeHintType, Object> f65070b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f65071c;

    /* renamed from: d  reason: collision with root package name */
    private final CountDownLatch f65072d = new CountDownLatch(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(CaptureActivity captureActivity, Vector<BarcodeFormat> vector, String str, ResultPointCallback resultPointCallback) {
        this.f65069a = captureActivity;
        Hashtable<DecodeHintType, Object> hashtable = new Hashtable<>(3);
        this.f65070b = hashtable;
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
            this.f65072d.await();
        } catch (InterruptedException unused) {
        }
        return this.f65071c;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.f65071c = new c(this.f65069a, this.f65070b);
        this.f65072d.countDown();
        Looper.loop();
    }
}
