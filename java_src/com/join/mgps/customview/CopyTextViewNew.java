package com.join.mgps.customview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;
/* loaded from: classes3.dex */
public class CopyTextViewNew extends WebView {

    /* renamed from: a  reason: collision with root package name */
    private float f45246a;

    /* renamed from: b  reason: collision with root package name */
    private float f45247b;

    /* renamed from: c  reason: collision with root package name */
    private float f45248c;

    /* renamed from: d  reason: collision with root package name */
    private String f45249d;
    @SuppressLint({"HandlerLeak"})

    /* renamed from: e  reason: collision with root package name */
    Handler f45250e;

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                float floatValue = ((Float) message.obj).floatValue();
                CopyTextViewNew.this.getLayoutParams().height = (int) (floatValue * CopyTextViewNew.this.getResources().getDisplayMetrics().density);
            }
            super.handleMessage(message);
        }
    }

    /* loaded from: classes3.dex */
    private class b {
        private b() {
        }

        @JavascriptInterface
        public void resize(float f4) {
            StringBuilder sb = new StringBuilder();
            sb.append("tbl>>>>:");
            sb.append(f4);
            sb.append(">>>>:");
            sb.append(CopyTextViewNew.this.f45249d);
            Message message = new Message();
            message.what = 1;
            message.obj = Float.valueOf(f4);
            CopyTextViewNew.this.f45250e.sendMessage(message);
        }
    }

    public CopyTextViewNew(Context context) {
        super(context);
        this.f45249d = "";
        this.f45250e = new a();
        b();
    }

    private void b() {
        this.f45246a = 20.0f;
        this.f45247b = 20.0f;
        this.f45248c = 24.0f;
        getSettings().setBuiltInZoomControls(false);
        getSettings().setTextSize(WebSettings.TextSize.NORMAL);
        getSettings().setCacheMode(2);
    }

    public String getText() {
        return this.f45249d;
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        StringBuilder sb = new StringBuilder();
        sb.append("touchevent");
        sb.append(super.onTouchEvent(motionEvent));
        return false;
    }

    public void setText(String str) {
        this.f45249d = str;
        loadDataWithBaseURL(null, "<html><head><style type=\"text/css\">body{font-size:14px}</style></head><body text='#373737' style='margin:0;padding:0;line-height:" + this.f45246a + "px'>" + str.replace("\n", "<br />") + "</body></html>", "text/html", "utf-8", null);
    }

    public void setTextForum(String str) {
        this.f45249d = str;
        loadDataWithBaseURL(null, "<html><head><style type=\"text/css\">body{font-size:16px}</style></head><body text='#373737' style='margin:0;padding:0;line-height:" + this.f45248c + "px'>" + str.replace("\n", "<br />") + "</body></html>", "text/html", "utf-8", null);
    }

    public void setTextHeader(String str) {
        this.f45249d = str;
        loadDataWithBaseURL(null, "<html><head><style type=\"text/css\">body{font-size:14px}</style></head><body text='#373737' style='margin:0;padding:0;line-height:" + this.f45247b + "px'>" + str.replace("\n", "<br />") + "</body></html>", "text/html", "utf-8", null);
    }

    public CopyTextViewNew(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45249d = "";
        this.f45250e = new a();
        b();
    }

    public CopyTextViewNew(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45249d = "";
        this.f45250e = new a();
        b();
    }
}
