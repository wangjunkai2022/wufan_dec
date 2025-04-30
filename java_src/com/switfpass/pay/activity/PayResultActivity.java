package com.switfpass.pay.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.mgps.activity.PayNowActivity_;
import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.lib.Resourcemap;
import java.text.NumberFormat;
import net.tsz.afinal.FinalBitmap;
/* loaded from: classes4.dex */
public class PayResultActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private TextView f58630a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f58631b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f58632c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f58633d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f58634e;

    /* renamed from: f  reason: collision with root package name */
    private OrderBena f58635f;

    /* renamed from: g  reason: collision with root package name */
    private ImageView f58636g;

    /* renamed from: h  reason: collision with root package name */
    private ImageView f58637h;

    /* renamed from: i  reason: collision with root package name */
    private TextView f58638i;

    /* renamed from: j  reason: collision with root package name */
    private TextView f58639j;

    /* renamed from: k  reason: collision with root package name */
    private TextView f58640k;

    /* renamed from: l  reason: collision with root package name */
    private TextView f58641l;

    /* renamed from: m  reason: collision with root package name */
    private TextView f58642m;

    /* renamed from: n  reason: collision with root package name */
    private TextView f58643n;

    /* renamed from: o  reason: collision with root package name */
    private LinearLayout f58644o;

    /* renamed from: p  reason: collision with root package name */
    private LinearLayout f58645p;

    /* renamed from: q  reason: collision with root package name */
    private LinearLayout f58646q;

    /* renamed from: r  reason: collision with root package name */
    private LinearLayout f58647r;

    /* renamed from: s  reason: collision with root package name */
    private Button f58648s;

    /* renamed from: t  reason: collision with root package name */
    private FinalBitmap f58649t;

    /* renamed from: u  reason: collision with root package name */
    private TextView f58650u;

    public static void startActivity(OrderBena orderBena, Context context) {
        Intent intent = new Intent();
        intent.putExtra(PayNowActivity_.f34915x0, orderBena);
        intent.setClass(context, PayResultActivity.class);
        context.startActivity(intent);
    }

    protected View b(int i2) {
        return findViewById(i2);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(Resourcemap.getLayout_Result());
        this.f58635f = (OrderBena) getIntent().getSerializableExtra(PayNowActivity_.f34915x0);
        FinalBitmap create = FinalBitmap.create(this);
        this.f58649t = create;
        try {
            create.configDiskCachePath(com.switfpass.pay.utils.o0.i());
        } catch (Exception unused) {
        }
        this.f58650u = (TextView) b(Resourcemap.getLayout_tv_pay_transNo());
        this.f58637h = (ImageView) b(Resourcemap.getById_iv_pay_image());
        this.f58645p = (LinearLayout) b(Resourcemap.getById_pay_logo_lay());
        this.f58646q = (LinearLayout) b(Resourcemap.getById_pay_img_lay());
        this.f58636g = (ImageView) b(Resourcemap.getById_pay_logo_title());
        this.f58630a = (TextView) b(Resourcemap.getLayout_tv_orderNo());
        this.f58631b = (TextView) b(Resourcemap.getLayout_tv_order_time());
        this.f58632c = (TextView) b(Resourcemap.getLayout_tv_order_state());
        this.f58633d = (TextView) b(Resourcemap.getLayout_tv_tv_bank());
        this.f58634e = (TextView) b(Resourcemap.getLayout_tv_money());
        b(Resourcemap.getLayout_iv_payType());
        this.f58638i = (TextView) b(Resourcemap.getLayout_finsh());
        this.f58639j = (TextView) b(Resourcemap.getLayout_tv_pay_body());
        this.f58640k = (TextView) b(Resourcemap.getLayout_tv_pay_mch_order());
        this.f58641l = (TextView) b(Resourcemap.getLayout_tv_pay_wx_order());
        this.f58642m = (TextView) b(Resourcemap.getLayout_tx_pay_wx_title());
        this.f58644o = (LinearLayout) b(Resourcemap.getLayout_rl_pay_mch());
        this.f58643n = (TextView) b(Resourcemap.getLayout_tv_pay_mch());
        this.f58647r = (LinearLayout) b(Resourcemap.getLayout_layBack());
        this.f58648s = (Button) b(Resourcemap.getLayout_pay_complete());
        if (!"".equals(this.f58635f.n()) && this.f58635f.n() != null) {
            this.f58646q.setVisibility(8);
            this.f58645p.setVisibility(0);
            this.f58649t.display(this.f58636g, this.f58635f.n());
        }
        if (this.f58635f.d() == null || this.f58635f.d().equals("")) {
            this.f58644o.setVisibility(8);
        } else {
            this.f58644o.setVisibility(0);
            this.f58640k.setText(this.f58635f.d());
        }
        this.f58630a.setText(this.f58635f.l());
        this.f58633d.setText(this.f58635f.w());
        NumberFormat numberInstance = NumberFormat.getNumberInstance();
        numberInstance.setMinimumFractionDigits(2);
        TextView textView = this.f58634e;
        textView.setText("￥" + numberInstance.format(Double.parseDouble(this.f58635f.i()) / 100.0d));
        this.f58631b.setText(com.switfpass.pay.utils.o0.e(Long.parseLong(this.f58635f.x())));
        this.f58639j.setText(this.f58635f.c());
        this.f58650u.setText(this.f58635f.g());
        this.f58641l.setText(this.f58635f.y());
        this.f58643n.setText(this.f58635f.f());
        this.f58632c.setText(getResources().getString(Resourcemap.getString_pay_success_prompt()));
        if (this.f58635f.r() != null) {
            if (this.f58635f.r().equals(MainApplication.f58608j) || this.f58635f.r().equalsIgnoreCase(MainApplication.f58615q) || this.f58635f.r().equalsIgnoreCase(MainApplication.f58614p)) {
                this.f58637h.setImageDrawable(getResources().getDrawable(Resourcemap.getById_icon_qq_color()));
                this.f58642m.setText(getResources().getString(Resourcemap.getString_pay_qq_order_no()));
                this.f58644o.setVisibility(8);
            } else if (this.f58635f.r().equals(MainApplication.f58611m) || this.f58635f.r().equalsIgnoreCase(MainApplication.f58617s)) {
                this.f58637h.setImageDrawable(getResources().getDrawable(Resourcemap.getById_icon_pay_color()));
                this.f58642m.setText(getResources().getString(Resourcemap.getString_pay_zfb_order_no()));
            }
        }
        this.f58638i.setOnClickListener(new f0(this));
        this.f58647r.setOnClickListener(new g0(this));
        this.f58648s.setOnClickListener(new h0(this));
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            OrderBena orderBena = this.f58635f;
            if (orderBena == null || !orderBena.B()) {
                com.switfpass.pay.handle.a.a(0, 0);
            } else {
                com.switfpass.pay.handle.a.b(6, 7, "支付状态：该笔订单已支付");
            }
            finish();
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }
}
