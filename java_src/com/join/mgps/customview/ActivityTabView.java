package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.BTActivityBean;
import com.join.mgps.dto.BtGameBenefitBean;
import com.join.mgps.dto.BtGameBenefitSummary;
import com.join.mgps.dto.BtGameWelfare;
/* loaded from: classes3.dex */
public class ActivityTabView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private View f44849a;

    /* renamed from: b  reason: collision with root package name */
    private View f44850b;

    /* renamed from: c  reason: collision with root package name */
    private View f44851c;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f44852d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f44853e;

    /* renamed from: f  reason: collision with root package name */
    private ImageView f44854f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f44855g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f44856h;

    /* renamed from: i  reason: collision with root package name */
    private TextView f44857i;

    /* renamed from: j  reason: collision with root package name */
    private TextView f44858j;

    /* renamed from: k  reason: collision with root package name */
    private TextView f44859k;

    /* renamed from: l  reason: collision with root package name */
    private TextView f44860l;

    /* renamed from: m  reason: collision with root package name */
    private d f44861m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ActivityTabView.this.f44861m != null) {
                ActivityTabView.this.f44861m.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BtGameBenefitBean f44863a;

        b(BtGameBenefitBean btGameBenefitBean) {
            this.f44863a = btGameBenefitBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ActivityTabView.this.f44861m != null) {
                ActivityTabView.this.f44861m.c(this.f44863a.getJump_url());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BtGameBenefitBean f44865a;

        c(BtGameBenefitBean btGameBenefitBean) {
            this.f44865a = btGameBenefitBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ActivityTabView.this.f44861m != null) {
                ActivityTabView.this.f44861m.a(this.f44865a.getJump_url());
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(String str);

        void b();

        void c(String str);
    }

    public ActivityTabView(Context context) {
        super(context);
    }

    private void b(BTActivityBean bTActivityBean) {
        if (bTActivityBean != null) {
            this.f44849a = findViewById(R.id.ll_tab_1);
            this.f44852d = (ImageView) findViewById(R.id.iv_icon_1);
            this.f44855g = (TextView) findViewById(R.id.tv_title_1);
            this.f44858j = (TextView) findViewById(R.id.tv_desc_1);
            this.f44855g.setText(bTActivityBean.getTitle());
            this.f44858j.setText(bTActivityBean.getSub_head());
            this.f44849a.setOnClickListener(new a());
        }
    }

    private void c(BtGameBenefitSummary btGameBenefitSummary) {
        BtGameBenefitBean game_coupon_summary = btGameBenefitSummary.getGame_coupon_summary();
        if (game_coupon_summary != null) {
            this.f44850b = findViewById(R.id.ll_tab_2);
            this.f44853e = (ImageView) findViewById(R.id.iv_icon_2);
            this.f44856h = (TextView) findViewById(R.id.tv_title_2);
            this.f44859k = (TextView) findViewById(R.id.tv_desc_2);
            this.f44856h.setText(game_coupon_summary.getTitle());
            this.f44859k.setText(game_coupon_summary.isExist() ? game_coupon_summary.getSub_title() : game_coupon_summary.getDefault_sub_title());
            this.f44850b.setOnClickListener(new b(game_coupon_summary));
        }
    }

    private void d(BtGameBenefitSummary btGameBenefitSummary) {
        BtGameBenefitBean game_gift_summary = btGameBenefitSummary.getGame_gift_summary();
        if (game_gift_summary != null) {
            this.f44851c = findViewById(R.id.ll_tab_3);
            this.f44854f = (ImageView) findViewById(R.id.iv_icon_3);
            this.f44857i = (TextView) findViewById(R.id.tv_title_3);
            this.f44860l = (TextView) findViewById(R.id.tv_desc_3);
            this.f44857i.setText(game_gift_summary.getTitle());
            this.f44860l.setText(game_gift_summary.isExist() ? game_gift_summary.getSub_title() : game_gift_summary.getDefault_sub_title());
            this.f44851c.setOnClickListener(new c(game_gift_summary));
        }
    }

    public void setListener(d dVar) {
        this.f44861m = dVar;
    }

    public void update(BtGameWelfare btGameWelfare) {
        if (btGameWelfare.getGame_activity_summary() != null && btGameWelfare.getGame_activity_summary().size() > 0 && btGameWelfare.getGame_benefit_summary() != null && btGameWelfare.getGame_benefit_summary().getGame_coupon_summary() != null && btGameWelfare.getGame_benefit_summary().getGame_coupon_summary() != null) {
            View.inflate(getContext(), R.layout.view_activity_tab_view_three, this);
            b(btGameWelfare.getGame_activity_summary().get(0));
            c(btGameWelfare.getGame_benefit_summary());
            d(btGameWelfare.getGame_benefit_summary());
        }
        if (btGameWelfare.getGame_activity_summary() == null && btGameWelfare.getGame_benefit_summary() != null && btGameWelfare.getGame_benefit_summary().getGame_coupon_summary() != null && btGameWelfare.getGame_benefit_summary().getGame_coupon_summary() != null) {
            View.inflate(getContext(), R.layout.view_activity_tab_view_two, this);
            c(btGameWelfare.getGame_benefit_summary());
            d(btGameWelfare.getGame_benefit_summary());
        } else if (btGameWelfare.getGame_activity_summary() == null || btGameWelfare.getGame_activity_summary().size() <= 0) {
        } else {
            View.inflate(getContext(), R.layout.view_activity_tab_view_one, this);
            b(btGameWelfare.getGame_activity_summary().get(0));
        }
    }

    public ActivityTabView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ActivityTabView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
