package com.netease.nis.quicklogin.view;

import android.view.View;
import com.netease.nis.basesdk.Logger;
/* compiled from: DelegateOnClickImp.java */
/* loaded from: classes4.dex */
public class a implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private final View.OnClickListener f54354a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f54355b = true;

    public a(View.OnClickListener onClickListener) {
        this.f54354a = onClickListener;
    }

    public void a(boolean z3) {
        this.f54355b = z3;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        long currentTimeMillis = System.currentTimeMillis();
        long longValue = view.getTag(view.getId()) != null ? ((Long) view.getTag(view.getId())).longValue() : 0L;
        if (longValue != 0 && currentTimeMillis - longValue <= 1500) {
            if (this.f54355b) {
                Logger.d("本次点击丢弃");
                return;
            }
            View.OnClickListener onClickListener = this.f54354a;
            if (onClickListener != null) {
                onClickListener.onClick(view);
                return;
            }
            return;
        }
        View.OnClickListener onClickListener2 = this.f54354a;
        if (onClickListener2 != null) {
            onClickListener2.onClick(view);
        }
        view.setTag(view.getId(), Long.valueOf(currentTimeMillis));
    }
}
