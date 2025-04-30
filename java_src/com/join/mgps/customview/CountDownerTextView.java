package com.join.mgps.customview;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.widget.TextView;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class CountDownerTextView extends TextView {

    /* renamed from: b  reason: collision with root package name */
    private static final int f45260b = 1000;

    /* renamed from: c  reason: collision with root package name */
    private static final int f45261c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final int f45262d = 100;

    /* renamed from: a  reason: collision with root package name */
    private a f45263a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<CountDownerTextView> f45264a;

        /* renamed from: b  reason: collision with root package name */
        private int f45265b;

        /* renamed from: c  reason: collision with root package name */
        private int f45266c;

        /* renamed from: d  reason: collision with root package name */
        private long f45267d;

        /* renamed from: e  reason: collision with root package name */
        private String f45268e;

        /* renamed from: f  reason: collision with root package name */
        private String f45269f;

        public a(CountDownerTextView countDownerTextView) {
            this.f45264a = new WeakReference<>(countDownerTextView);
        }

        public void a(int i2, int i4, long j4, String str, String str2) {
            this.f45265b = i2;
            this.f45266c = i4;
            this.f45267d = j4;
            this.f45268e = str;
            this.f45269f = str2;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            CountDownerTextView countDownerTextView;
            super.handleMessage(message);
            if (message.what != 100 || (countDownerTextView = this.f45264a.get()) == null) {
                return;
            }
            this.f45265b += this.f45266c;
            countDownerTextView.setText(this.f45268e + com.join.mgps.Util.x.f(this.f45265b) + this.f45269f);
            sendEmptyMessageDelayed(100, this.f45267d);
        }
    }

    public CountDownerTextView(Context context) {
        super(context);
        b();
    }

    private int a(long j4, int i2) {
        return (int) ((((SystemClock.elapsedRealtime() - j4) / 1000) + i2) - 1);
    }

    void b() {
        this.f45263a = new a(this);
    }

    public void c(int i2, int i4, long j4, int i5, String str, String str2) {
        int a4 = a(j4, i5);
        setText(str + com.join.mgps.Util.x.f(a4) + str2);
        if (this.f45263a == null) {
            this.f45263a = new a(this);
        }
        this.f45263a.a(a4, i4, i2, str, str2);
        this.f45263a.removeMessages(100);
        this.f45263a.sendEmptyMessage(100);
    }

    public void d(long j4, int i2, String str, String str2) {
        c(1000, 1, j4, i2, str, str2);
    }

    public void e() {
        a aVar = this.f45263a;
        if (aVar != null) {
            aVar.removeMessages(100);
            this.f45263a = null;
        }
    }

    public CountDownerTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }
}
