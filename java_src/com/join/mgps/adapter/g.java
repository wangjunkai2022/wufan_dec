package com.join.mgps.adapter;

import android.content.ClipboardManager;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.GiftsDetailActivity_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import java.util.List;
/* compiled from: CodesBoxAdapter.java */
/* loaded from: classes3.dex */
public class g extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    ExtBean f41657a;

    /* renamed from: b  reason: collision with root package name */
    private Context f41658b;

    /* renamed from: c  reason: collision with root package name */
    private List<GiftPackageDataInfoBean> f41659c;

    /* compiled from: CodesBoxAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f41660a;

        a(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f41660a = giftPackageDataInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBean accountData = AccountUtil_.getInstance_(g.this.f41658b).getAccountData();
            if (accountData != null) {
                GiftsDetailActivity_.n1(g.this.f41658b).c(this.f41660a).a(accountData.getUid()).start();
            }
        }
    }

    /* compiled from: CodesBoxAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f41662a;

        b(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f41662a = giftPackageDataInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f41662a.getGift_package_status() == 1) {
                if (this.f41662a.getGift_package_overdue() == 1) {
                    com.join.mgps.Util.i2.a(g.this.f41658b).b("该礼包已过期");
                    return;
                }
                ((ClipboardManager) g.this.f41658b.getSystemService("clipboard")).setText(this.f41662a.getGift_package_code());
                com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(g.this.f41658b);
                a4.b(this.f41662a.getGift_package_code() + "已复制到剪贴板");
            }
        }
    }

    /* compiled from: CodesBoxAdapter.java */
    /* loaded from: classes3.dex */
    class c {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f41664a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f41665b;

        /* renamed from: c  reason: collision with root package name */
        TextView f41666c;

        /* renamed from: d  reason: collision with root package name */
        TextView f41667d;

        /* renamed from: e  reason: collision with root package name */
        TextView f41668e;

        /* renamed from: f  reason: collision with root package name */
        TextView f41669f;

        c() {
        }
    }

    public g(Context context) {
        this.f41658b = context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f41659c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        View view2;
        c cVar;
        if (view == null) {
            cVar = new c();
            view2 = LayoutInflater.from(this.f41658b).inflate(R.layout.codes_box_item, (ViewGroup) null);
            cVar.f41664a = (LinearLayout) view2.findViewById(R.id.layoutItem);
            cVar.f41665b = (SimpleDraweeView) view2.findViewById(R.id.giftIcon);
            cVar.f41666c = (TextView) view2.findViewById(R.id.giftNameTv);
            cVar.f41667d = (TextView) view2.findViewById(R.id.giftNameTime);
            cVar.f41668e = (TextView) view2.findViewById(R.id.saveCodeContent);
            cVar.f41669f = (TextView) view2.findViewById(R.id.saveCodeTv);
            view2.setTag(cVar);
        } else {
            view2 = view;
            cVar = (c) view.getTag();
        }
        GiftPackageDataInfoBean giftPackageDataInfoBean = this.f41659c.get(i2);
        cVar.f41666c.setText(giftPackageDataInfoBean.getGift_package_title());
        TextView textView = cVar.f41667d;
        textView.setText(com.join.mgps.Util.x.w(giftPackageDataInfoBean.getGift_package_times_begin()) + " 至 " + com.join.mgps.Util.x.w(giftPackageDataInfoBean.getGift_package_times_end()));
        cVar.f41668e.setText(giftPackageDataInfoBean.getGift_package_code());
        cVar.f41665b.setImageDrawable(this.f41658b.getResources().getDrawable(R.drawable.banner_normal_icon));
        MyImageLoader.f(cVar.f41665b, R.drawable.banner_normal_icon, giftPackageDataInfoBean.getGift_package_pic(), MyImageLoader.C(this.f41658b));
        if (giftPackageDataInfoBean.getGift_package_status() == 1) {
            if (giftPackageDataInfoBean.getGift_package_overdue() == 1) {
                cVar.f41669f.setText("已过期");
                cVar.f41669f.setTextColor(-7763575);
                cVar.f41669f.setBackgroundResource(R.drawable.recom_grey_butn);
            } else {
                cVar.f41669f.setText("复制");
                cVar.f41669f.setTextColor(-358375);
                cVar.f41669f.setBackgroundResource(R.drawable.recom_maincolor_butn);
            }
        } else {
            cVar.f41669f.setText("领取");
            cVar.f41669f.setTextColor(-358375);
            cVar.f41669f.setBackgroundResource(R.drawable.recom_maincolor_butn);
        }
        cVar.f41664a.setOnClickListener(new a(giftPackageDataInfoBean));
        cVar.f41669f.setOnClickListener(new b(giftPackageDataInfoBean));
        return view2;
    }

    public g(Context context, List<GiftPackageDataInfoBean> list) {
        this.f41658b = context;
        this.f41659c = list;
    }
}
