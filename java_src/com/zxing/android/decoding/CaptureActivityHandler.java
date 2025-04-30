package com.zxing.android.decoding;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.zxing.android.CaptureActivity;
import java.util.Vector;
/* loaded from: classes3.dex */
public final class CaptureActivityHandler extends Handler {

    /* renamed from: d  reason: collision with root package name */
    private static final String f65048d = CaptureActivityHandler.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final CaptureActivity f65049a;

    /* renamed from: b  reason: collision with root package name */
    private final e f65050b;

    /* renamed from: c  reason: collision with root package name */
    private State f65051c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum State {
        PREVIEW,
        SUCCESS,
        DONE
    }

    public CaptureActivityHandler(CaptureActivity captureActivity, Vector<BarcodeFormat> vector, String str) {
        this.f65049a = captureActivity;
        e eVar = new e(captureActivity, vector, str, new com.zxing.android.view.a(captureActivity.d()));
        this.f65050b = eVar;
        eVar.start();
        this.f65051c = State.SUCCESS;
        captureActivity.b().k();
        b();
    }

    private void b() {
        if (this.f65051c == State.SUCCESS) {
            this.f65051c = State.PREVIEW;
            this.f65049a.b().i(this.f65050b.a(), 2);
            this.f65049a.b().h(this, 1);
            this.f65049a.a();
        }
    }

    public void a() {
        this.f65051c = State.DONE;
        this.f65049a.b().l();
        Message.obtain(this.f65050b.a(), 8).sendToTarget();
        try {
            this.f65050b.join();
        } catch (InterruptedException unused) {
        }
        removeMessages(4);
        removeMessages(3);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 1) {
            if (this.f65051c == State.PREVIEW) {
                this.f65049a.b().h(this, 1);
            }
        } else if (i2 == 3) {
            this.f65051c = State.PREVIEW;
            this.f65049a.b().i(this.f65050b.a(), 2);
        } else if (i2 == 4) {
            this.f65051c = State.SUCCESS;
            Bundle data = message.getData();
            this.f65049a.e((Result) message.obj, data == null ? null : (Bitmap) data.getParcelable("barcode_bitmap"));
        } else if (i2 == 7) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse((String) message.obj));
            intent.addFlags(524288);
            this.f65049a.startActivity(intent);
        } else if (i2 == 8) {
            b();
        } else if (i2 != 9) {
        } else {
            this.f65049a.setResult(-1, (Intent) message.obj);
            this.f65049a.finish();
        }
    }
}
