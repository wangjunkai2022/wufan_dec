package com.netease.nis.quicklogin.ui;

import android.content.Context;
import android.content.Intent;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.annotation.NonNull;
import com.netease.nis.quicklogin.listener.ClickEventListener;
/* compiled from: YDClickableSpan.java */
/* loaded from: classes4.dex */
public class a extends ClickableSpan {

    /* renamed from: a  reason: collision with root package name */
    private final ClickEventListener f54271a;

    /* renamed from: b  reason: collision with root package name */
    private final String f54272b;

    /* renamed from: c  reason: collision with root package name */
    private final String f54273c;

    /* renamed from: d  reason: collision with root package name */
    private final int f54274d;

    public a(ClickEventListener clickEventListener, String str, String str2, int i2) {
        this.f54271a = clickEventListener;
        this.f54272b = str;
        this.f54273c = str2;
        this.f54274d = i2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(@NonNull View view) {
        ClickEventListener clickEventListener = this.f54271a;
        if (clickEventListener != null) {
            clickEventListener.onClick(1, this.f54274d);
        }
        Context context = view.getContext();
        Intent intent = new Intent(context, ProtocolDetailActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("url", this.f54272b);
        intent.putExtra("title", this.f54273c);
        context.startActivity(intent);
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(@NonNull TextPaint textPaint) {
        textPaint.setUnderlineText(false);
        textPaint.clearShadowLayer();
    }
}
