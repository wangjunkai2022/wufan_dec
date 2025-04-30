package com.switfpass.pay.activity.zxing.decoding;

import android.os.Handler;
import android.os.Looper;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPointCallback;
import com.switfpass.pay.activity.PaySDKCaptureActivity;
import java.util.Hashtable;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes4.dex */
public final class a extends Thread {

    /* renamed from: e  reason: collision with root package name */
    public static final String f58763e = "barcode_bitmap";

    /* renamed from: a  reason: collision with root package name */
    private final PaySDKCaptureActivity f58764a;

    /* renamed from: b  reason: collision with root package name */
    private final Hashtable f58765b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f58766c;

    /* renamed from: d  reason: collision with root package name */
    private final CountDownLatch f58767d = new CountDownLatch(1);

    public a(PaySDKCaptureActivity paySDKCaptureActivity, Vector vector, String str, ResultPointCallback resultPointCallback) {
        this.f58764a = paySDKCaptureActivity;
        Hashtable hashtable = new Hashtable(3);
        this.f58765b = hashtable;
        if (vector == null || vector.isEmpty()) {
            vector = new Vector();
            vector.addAll(j.f58793b);
            vector.addAll(j.f58794c);
            vector.addAll(j.f58795d);
        }
        hashtable.put(DecodeHintType.POSSIBLE_FORMATS, vector);
        if (str != null) {
            hashtable.put(DecodeHintType.CHARACTER_SET, str);
        }
        hashtable.put(DecodeHintType.NEED_RESULT_POINT_CALLBACK, resultPointCallback);
    }

    public final Handler a() {
        try {
            this.f58767d.await();
        } catch (InterruptedException unused) {
        }
        return this.f58766c;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Looper.prepare();
        this.f58766c = new k(this.f58764a, this.f58765b);
        this.f58767d.countDown();
        Looper.loop();
    }
}
