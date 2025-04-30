package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.AccountVoucherGameBean;
import java.util.List;
/* compiled from: HotVoucherAdapter.java */
/* loaded from: classes3.dex */
public class n2 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<AccountVoucherGameBean> f42994a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f42995b;

    /* renamed from: c  reason: collision with root package name */
    private Context f42996c;

    /* compiled from: HotVoucherAdapter.java */
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        TextView f42997a;

        /* renamed from: b  reason: collision with root package name */
        TextView f42998b;

        /* renamed from: c  reason: collision with root package name */
        TextView f42999c;

        /* renamed from: d  reason: collision with root package name */
        TextView f43000d;

        /* renamed from: e  reason: collision with root package name */
        LinearLayout f43001e;

        /* renamed from: f  reason: collision with root package name */
        LinearLayout f43002f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: HotVoucherAdapter.java */
        /* renamed from: com.join.mgps.adapter.n2$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class View$OnClickListenerC0180a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ AccountVoucherGameBean f43004a;

            View$OnClickListenerC0180a(AccountVoucherGameBean accountVoucherGameBean) {
                this.f43004a = accountVoucherGameBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IntentUtil intentUtil = IntentUtil.getInstance();
                Context context = n2.this.f42996c;
                intentUtil.goGameDetialActivity(context, this.f43004a.getGame_id() + "", this.f43004a.getGame_tpl(), this.f43004a.getSp_tpl_two_position(), this.f43004a.get_from_type());
            }
        }

        public a(View view) {
            this.f42997a = (TextView) view.findViewById(R.id.voucherPrice);
            this.f42998b = (TextView) view.findViewById(R.id.voucherContent);
            this.f43000d = (TextView) view.findViewById(R.id.voucherGameGet);
            this.f42999c = (TextView) view.findViewById(R.id.voucherGameNumber);
            this.f43001e = (LinearLayout) view.findViewById(R.id.layoutGamevoucher);
            this.f43002f = (LinearLayout) view.findViewById(R.id.gameVoucherRight);
        }

        public void a(AccountVoucherGameBean accountVoucherGameBean) {
            if (accountVoucherGameBean != null) {
                TextView textView = this.f42997a;
                textView.setText("￥" + accountVoucherGameBean.getCoupon_money());
                this.f42998b.setText(accountVoucherGameBean.getCoupon_title());
                this.f43000d.setText(n2.this.f42996c.getString(R.string.voucher_go));
                int coupon_type = accountVoucherGameBean.getCoupon_type();
                if (coupon_type == 1) {
                    this.f42999c.setText(String.format(n2.this.f42996c.getString(R.string.voucher_surplus), Integer.valueOf(accountVoucherGameBean.getCoupon_surplus())));
                    this.f43000d.setPadding(0, 0, 0, com.join.mgps.Util.b0.a(n2.this.f42996c, 15.0f));
                    this.f43000d.setVisibility(0);
                    this.f42997a.setVisibility(0);
                } else if (coupon_type == 2) {
                    this.f42997a.setVisibility(8);
                    this.f42999c.setVisibility(8);
                    this.f43000d.setPadding(0, 0, 0, 0);
                }
                this.f43002f.setOnClickListener(new View$OnClickListenerC0180a(accountVoucherGameBean));
            }
        }
    }

    public n2(Context context, List<AccountVoucherGameBean> list) {
        this.f42995b = LayoutInflater.from(context);
        this.f42996c = context;
        this.f42994a = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f42994a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f42994a.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        a aVar;
        if (view == null) {
            view = this.f42995b.inflate(R.layout.layout_voucher_game_detail, (ViewGroup) null);
            aVar = new a(view);
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
        }
        aVar.a((AccountVoucherGameBean) getItem(i2));
        return view;
    }
}
