package com.join.mgps.adapter;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountVoucherGame;
import java.util.List;
/* compiled from: MyVoucherGameAdapter.java */
/* loaded from: classes3.dex */
public class p3 extends BaseAdapter {

    /* renamed from: d  reason: collision with root package name */
    public static final String f43234d = "expire";

    /* renamed from: e  reason: collision with root package name */
    public static final String f43235e = "un_use";

    /* renamed from: f  reason: collision with root package name */
    public static final String f43236f = "used";

    /* renamed from: g  reason: collision with root package name */
    public static final String f43237g = "will_expire";

    /* renamed from: a  reason: collision with root package name */
    private List<AccountVoucherGame> f43238a;

    /* renamed from: b  reason: collision with root package name */
    private Context f43239b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f43240c;

    /* compiled from: MyVoucherGameAdapter.java */
    /* loaded from: classes3.dex */
    class a {

        /* renamed from: a  reason: collision with root package name */
        public TextView f43241a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f43242b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f43243c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f43244d;

        /* renamed from: e  reason: collision with root package name */
        public ImageView f43245e;

        /* renamed from: f  reason: collision with root package name */
        public ImageView f43246f;

        /* renamed from: g  reason: collision with root package name */
        public LinearLayout f43247g;

        /* renamed from: h  reason: collision with root package name */
        public LinearLayout f43248h;

        /* renamed from: i  reason: collision with root package name */
        public RelativeLayout f43249i;

        public a(View view) {
            this.f43247g = (LinearLayout) view.findViewById(R.id.layoutLeft);
            this.f43248h = (LinearLayout) view.findViewById(R.id.layoutVoucherLeft);
            this.f43249i = (RelativeLayout) view.findViewById(R.id.layoutRight);
            this.f43241a = (TextView) view.findViewById(R.id.voucherName);
            this.f43242b = (TextView) view.findViewById(R.id.voucherPrice);
            this.f43243c = (TextView) view.findViewById(R.id.voucherDate);
            this.f43244d = (TextView) view.findViewById(R.id.voucherNo);
            this.f43245e = (ImageView) view.findViewById(R.id.voucherStateTop);
            this.f43246f = (ImageView) view.findViewById(R.id.voucherStateButtom);
        }
    }

    public p3(List<AccountVoucherGame> list, Context context) {
        this.f43238a = list;
        this.f43239b = context;
        this.f43240c = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f43238a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f43238a.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        a aVar;
        View view2;
        if (view == null) {
            view2 = this.f43240c.inflate(R.layout.my_voucher_game_item, (ViewGroup) null);
            aVar = new a(view2);
            view2.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
            view2 = view;
        }
        AccountVoucherGame accountVoucherGame = this.f43238a.get(i2);
        aVar.f43241a.setText(accountVoucherGame.getName());
        aVar.f43242b.setText(String.format(this.f43239b.getString(R.string.voucher_price), Double.valueOf(accountVoucherGame.getMoney())));
        aVar.f43243c.setText(accountVoucherGame.getExpire_date());
        if (accountVoucherGame.getStatus() != null && !accountVoucherGame.getStatus().equals("")) {
            String status = accountVoucherGame.getStatus();
            status.hashCode();
            char c4 = 65535;
            switch (status.hashCode()) {
                case -1289159393:
                    if (status.equals(f43234d)) {
                        c4 = 0;
                        break;
                    }
                    break;
                case -840823071:
                    if (status.equals(f43235e)) {
                        c4 = 1;
                        break;
                    }
                    break;
                case 3599293:
                    if (status.equals(f43236f)) {
                        c4 = 2;
                        break;
                    }
                    break;
                case 484784684:
                    if (status.equals(f43237g)) {
                        c4 = 3;
                        break;
                    }
                    break;
            }
            switch (c4) {
                case 0:
                    aVar.f43245e.setVisibility(8);
                    aVar.f43246f.setVisibility(0);
                    aVar.f43246f.setImageResource(R.drawable.voucher_time_out);
                    aVar.f43243c.setText(String.format(this.f43239b.getString(R.string.voucher_time), accountVoucherGame.getExpire_date()));
                    aVar.f43247g.setBackgroundResource(R.drawable.voucher_gay_left_bg);
                    aVar.f43249i.setBackgroundResource(R.drawable.voucher_gay_right_bg);
                    TextView textView = aVar.f43244d;
                    String string = this.f43239b.getString(R.string.voucher_no);
                    textView.setText(Html.fromHtml(String.format(string, "<font color='0xe1e1e1' >" + accountVoucherGame.getNo() + "<\font>")));
                    aVar.f43248h.setBackgroundResource(R.drawable.account_voucher_gay_bg);
                    aVar.f43242b.setBackgroundResource(R.drawable.account_voucher_gay_bg);
                    break;
                case 1:
                    aVar.f43245e.setVisibility(0);
                    aVar.f43246f.setVisibility(8);
                    aVar.f43245e.setImageResource(R.drawable.voucher_time_now);
                    aVar.f43243c.setText(String.format(this.f43239b.getString(R.string.voucher_time), accountVoucherGame.getExpire_date()));
                    aVar.f43247g.setBackgroundResource(R.drawable.voucher_blue_left_bg);
                    aVar.f43249i.setBackgroundResource(R.drawable.voucher_blue_right_bg);
                    aVar.f43248h.setBackgroundResource(R.drawable.account_voucher_white_bg);
                    aVar.f43242b.setBackgroundResource(R.drawable.account_voucher_white_bg);
                    TextView textView2 = aVar.f43244d;
                    String string2 = this.f43239b.getString(R.string.voucher_no);
                    textView2.setText(Html.fromHtml(String.format(string2, "<font color='0xffb6b6' >" + accountVoucherGame.getNo() + "<\font>")));
                    break;
                case 2:
                    aVar.f43245e.setVisibility(8);
                    aVar.f43246f.setVisibility(0);
                    aVar.f43246f.setImageResource(R.drawable.voucher_time_use);
                    aVar.f43243c.setText(String.format(this.f43239b.getString(R.string.voucher_time), accountVoucherGame.getExpire_date()));
                    aVar.f43247g.setBackgroundResource(R.drawable.voucher_gay_left_bg);
                    aVar.f43249i.setBackgroundResource(R.drawable.voucher_gay_right_bg);
                    aVar.f43248h.setBackgroundResource(R.drawable.account_voucher_gay_bg);
                    aVar.f43242b.setBackgroundResource(R.drawable.account_voucher_gay_bg);
                    TextView textView3 = aVar.f43244d;
                    String string3 = this.f43239b.getString(R.string.voucher_no);
                    textView3.setText(Html.fromHtml(String.format(string3, "<font color='0xe1e1e1' >" + accountVoucherGame.getNo() + "<\font>")));
                    break;
                case 3:
                    aVar.f43245e.setVisibility(0);
                    aVar.f43246f.setVisibility(8);
                    aVar.f43245e.setImageResource(R.drawable.voucher_time_run_out);
                    aVar.f43243c.setText(String.format(this.f43239b.getString(R.string.voucher_time_out), accountVoucherGame.getExpire_date(), accountVoucherGame.getNotice()));
                    aVar.f43247g.setBackgroundResource(R.drawable.voucher_blue_left_bg);
                    aVar.f43249i.setBackgroundResource(R.drawable.voucher_blue_right_bg);
                    aVar.f43248h.setBackgroundResource(R.drawable.account_voucher_white_bg);
                    aVar.f43242b.setBackgroundResource(R.drawable.account_voucher_white_bg);
                    TextView textView4 = aVar.f43244d;
                    String string4 = this.f43239b.getString(R.string.voucher_no);
                    textView4.setText(Html.fromHtml(String.format(string4, "<font color='0xffb6b6' >" + accountVoucherGame.getNo() + "<\font>")));
                    break;
            }
        }
        return view2;
    }
}
