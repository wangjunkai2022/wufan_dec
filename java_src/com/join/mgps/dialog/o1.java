package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.activity.ShareWebActivity_;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.papa.sim.statistic.Event;
import m.framework.ui.widget.asyncview.AsyncImageView;
/* compiled from: OnlineCouponDialog.java */
/* loaded from: classes3.dex */
public class o1 extends Dialog implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f47845a;

    /* renamed from: b  reason: collision with root package name */
    private OnlineCouponConfigBean f47846b;

    /* renamed from: c  reason: collision with root package name */
    private int f47847c;

    /* renamed from: d  reason: collision with root package name */
    private a f47848d;

    /* compiled from: OnlineCouponDialog.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a();
    }

    public o1(@NonNull Context context, OnlineCouponConfigBean onlineCouponConfigBean, int i2) {
        super(context);
        this.f47848d = null;
        this.f47845a = context;
        this.f47846b = onlineCouponConfigBean;
        this.f47847c = i2;
    }

    private void a() {
        TextView textView = (TextView) findViewById(R.id.tvTitle);
        TextView textView2 = (TextView) findViewById(R.id.tvDesc);
        ((ImageView) findViewById(R.id.ivClose)).setOnClickListener(this);
        ((TextView) findViewById(R.id.tvGetCoupon)).setOnClickListener(this);
        OnlineCouponConfigBean onlineCouponConfigBean = this.f47846b;
        textView.setText(onlineCouponConfigBean == null ? "" : onlineCouponConfigBean.getRedPacketHint());
        OnlineCouponConfigBean onlineCouponConfigBean2 = this.f47846b;
        textView2.setText(onlineCouponConfigBean2 != null ? onlineCouponConfigBean2.getRedPacketSubHint() : "");
    }

    public void b(a aVar) {
        this.f47848d = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.ivClose) {
            dismiss();
        } else if (view.getId() == R.id.tvGetCoupon) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(this.f47846b.getRedPacketJumpUrl());
            ShareWebActivity_.O2(this.f47845a).b(intentDateBean).start();
            com.papa.sim.statistic.p.l(this.f47845a).M1(Event.clickOpenPopUpRedBag, AccountUtil_.getInstance_(this.f47845a).getAccountData().getUid());
            dismiss();
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_online_coupon);
        setCanceledOnTouchOutside(false);
        getWindow().setBackgroundDrawableResource(AsyncImageView.DEFAULT_TRANSPARENT);
        getWindow().getDecorView().setPadding(0, 0, 0, 0);
        a();
    }
}
