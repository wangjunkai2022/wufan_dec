package com.join.mgps.adapter;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.MyVoucherGameActivity_;
import com.join.mgps.dto.AccountVoucher;
import com.join.mgps.dto.AccountVoucherGameBean;
import java.util.List;
/* compiled from: MyVoucherAdapter.java */
/* loaded from: classes3.dex */
public class o3 extends BaseAdapter {

    /* renamed from: e  reason: collision with root package name */
    public static final int f43038e = 0;

    /* renamed from: f  reason: collision with root package name */
    public static final int f43039f = 1;

    /* renamed from: a  reason: collision with root package name */
    private List<Object> f43040a;

    /* renamed from: b  reason: collision with root package name */
    private Context f43041b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f43042c;

    /* renamed from: d  reason: collision with root package name */
    private int f43043d;

    /* compiled from: MyVoucherAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountVoucher f43044a;

        a(AccountVoucher accountVoucher) {
            this.f43044a = accountVoucher;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyVoucherGameActivity_.X0(o3.this.f43041b).a(this.f43044a).start();
        }
    }

    /* compiled from: MyVoucherAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountVoucherGameBean f43046a;

        b(AccountVoucherGameBean accountVoucherGameBean) {
            this.f43046a = accountVoucherGameBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            Context context = o3.this.f43041b;
            intentUtil.goGameDetialActivity(context, this.f43046a.getGame_id() + "", this.f43046a.getGame_info_tpl_type(), this.f43046a.getSp_tpl_two_position(), this.f43046a.get_from());
        }
    }

    /* compiled from: MyVoucherAdapter.java */
    /* loaded from: classes3.dex */
    class c {

        /* renamed from: a  reason: collision with root package name */
        TextView f43048a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43049b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43050c;

        /* renamed from: d  reason: collision with root package name */
        TextView f43051d;

        /* renamed from: e  reason: collision with root package name */
        LinearLayout f43052e;

        public c(View view) {
            this.f43048a = (TextView) view.findViewById(R.id.voucherContent);
            this.f43049b = (TextView) view.findViewById(R.id.voucherPrice);
            this.f43051d = (TextView) view.findViewById(R.id.voucherGameGet);
            this.f43050c = (TextView) view.findViewById(R.id.voucherGameNumber);
            this.f43052e = (LinearLayout) view.findViewById(R.id.gameVoucherRight);
        }
    }

    /* compiled from: MyVoucherAdapter.java */
    /* loaded from: classes3.dex */
    class d {

        /* renamed from: a  reason: collision with root package name */
        public TextView f43054a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f43055b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f43056c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f43057d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f43058e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f43059f;

        /* renamed from: g  reason: collision with root package name */
        public SimpleDraweeView f43060g;

        public d(View view) {
            this.f43054a = (TextView) view.findViewById(R.id.appName);
            this.f43055b = (TextView) view.findViewById(R.id.voucherIs);
            this.f43056c = (TextView) view.findViewById(R.id.voucherOut);
            this.f43057d = (TextView) view.findViewById(R.id.voucherHand);
            this.f43058e = (TextView) view.findViewById(R.id.gameVoucherPrice);
            this.f43059f = (TextView) view.findViewById(R.id.gameVoucherConsume);
            this.f43060g = (SimpleDraweeView) view.findViewById(R.id.mgListviewItemIcon);
        }
    }

    public o3(List<Object> list, Context context) {
        this.f43040a = list;
        this.f43041b = context;
        this.f43042c = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f43040a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f43040a.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        return getItem(i2) instanceof AccountVoucher ? 0 : 1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        d dVar;
        c cVar;
        try {
            int itemViewType = getItemViewType(i2);
            this.f43043d = itemViewType;
            d dVar2 = null;
            if (view == null) {
                if (itemViewType == 0) {
                    view = this.f43042c.inflate(R.layout.my_voucher_item, (ViewGroup) null);
                    dVar = new d(view);
                    view.setTag(dVar);
                    dVar2 = dVar;
                    cVar = null;
                } else if (itemViewType != 1) {
                    cVar = null;
                } else {
                    view = this.f43042c.inflate(R.layout.my_no_voucher_item, (ViewGroup) null);
                    cVar = new c(view);
                    view.setTag(cVar);
                }
            } else if (itemViewType != 0) {
                if (itemViewType == 1) {
                    cVar = (c) view.getTag();
                }
                cVar = null;
            } else {
                dVar = (d) view.getTag();
                dVar2 = dVar;
                cVar = null;
            }
            int i4 = this.f43043d;
            if (i4 != 0) {
                if (i4 == 1 && (this.f43040a.get(i2) instanceof AccountVoucherGameBean)) {
                    AccountVoucherGameBean accountVoucherGameBean = (AccountVoucherGameBean) this.f43040a.get(i2);
                    cVar.f43048a.setText(accountVoucherGameBean.getCoupon_title());
                    int coupon_type = accountVoucherGameBean.getCoupon_type();
                    if (coupon_type == 1) {
                        cVar.f43049b.setVisibility(0);
                        cVar.f43050c.setVisibility(0);
                        cVar.f43051d.setPadding(0, 0, 0, com.join.mgps.Util.b0.a(this.f43041b, 15.0f));
                    } else if (coupon_type == 2) {
                        cVar.f43049b.setVisibility(8);
                        cVar.f43050c.setVisibility(8);
                        cVar.f43051d.setPadding(0, 0, 0, 0);
                    }
                    cVar.f43049b.setText("￥" + accountVoucherGameBean.getCoupon_money());
                    cVar.f43050c.setText(String.format(this.f43041b.getString(R.string.voucher_surplus), Integer.valueOf(accountVoucherGameBean.getCoupon_surplus())));
                    cVar.f43052e.setOnClickListener(new b(accountVoucherGameBean));
                }
            } else if (this.f43040a.get(i2) instanceof AccountVoucher) {
                AccountVoucher accountVoucher = (AccountVoucher) this.f43040a.get(i2);
                dVar2.f43054a.setText(accountVoucher.getGame_name());
                MyImageLoader.h(dVar2.f43060g, accountVoucher.getGame_icon());
                dVar2.f43059f.setText(Html.fromHtml(String.format(this.f43041b.getResources().getString(R.string.voucher_consume_price), "<font color = '#D33D3E'>" + accountVoucher.getStatus().getUsed().getMoney() + "</font>")));
                dVar2.f43058e.setText(Html.fromHtml(String.format(this.f43041b.getResources().getString(R.string.voucher_use_price), "<font color = '#D33D3E'>" + accountVoucher.getStatus().getAvailable().getCount() + "</font>", "<font color = '#D33D3E'>" + accountVoucher.getStatus().getAvailable().getMoney() + "</font>")));
                view.setOnClickListener(new a(accountVoucher));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }
}
