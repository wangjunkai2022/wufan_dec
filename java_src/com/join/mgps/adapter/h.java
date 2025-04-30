package com.join.mgps.adapter;

import android.content.ClipboardManager;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
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
/* compiled from: CodesRecommendAdapter.java */
/* loaded from: classes3.dex */
public class h extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    ExtBean f41680a;

    /* renamed from: b  reason: collision with root package name */
    private Context f41681b;

    /* renamed from: c  reason: collision with root package name */
    private List<GiftPackageDataInfoBean> f41682c;

    /* renamed from: d  reason: collision with root package name */
    private Handler f41683d;

    /* compiled from: CodesRecommendAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f41684a;

        a(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f41684a = giftPackageDataInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBean accountData = AccountUtil_.getInstance_(h.this.f41681b).getAccountData();
            if (accountData != null) {
                GiftsDetailActivity_.n1(h.this.f41681b).c(this.f41684a).a(accountData.getUid()).start();
            }
        }
    }

    /* compiled from: CodesRecommendAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f41686a;

        b(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f41686a = giftPackageDataInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f41686a.getGift_package_status() == 1) {
                if (this.f41686a.getGift_package_overdue() == 1) {
                    com.join.mgps.Util.i2.a(h.this.f41681b).b("该礼包已过期");
                    return;
                }
                ((ClipboardManager) h.this.f41681b.getSystemService("clipboard")).setText(this.f41686a.getGift_package_code());
                com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(h.this.f41681b);
                a4.b(this.f41686a.getGift_package_code() + "已复制到剪贴板");
                return;
            }
            Message message = new Message();
            message.what = 1;
            message.obj = this.f41686a;
            h.this.f41683d.sendMessage(message);
        }
    }

    /* compiled from: CodesRecommendAdapter.java */
    /* loaded from: classes3.dex */
    class c {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f41688a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f41689b;

        /* renamed from: c  reason: collision with root package name */
        ImageView f41690c;

        /* renamed from: d  reason: collision with root package name */
        TextView f41691d;

        /* renamed from: e  reason: collision with root package name */
        RelativeLayout f41692e;

        /* renamed from: f  reason: collision with root package name */
        TextView f41693f;

        /* renamed from: g  reason: collision with root package name */
        TextView f41694g;

        /* renamed from: h  reason: collision with root package name */
        TextView f41695h;

        /* renamed from: i  reason: collision with root package name */
        TextView f41696i;

        c() {
        }
    }

    public h(Context context) {
        this.f41681b = context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f41682c.size();
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
            view2 = LayoutInflater.from(this.f41681b).inflate(R.layout.gameol_gift_listview_item, (ViewGroup) null);
            cVar.f41688a = (LinearLayout) view2.findViewById(R.id.linearLayout);
            cVar.f41689b = (SimpleDraweeView) view2.findViewById(R.id.mgListviewItemIcon);
            cVar.f41690c = (ImageView) view2.findViewById(R.id.giftPackageSwich);
            cVar.f41691d = (TextView) view2.findViewById(R.id.mgListviewItemAppname);
            cVar.f41692e = (RelativeLayout) view2.findViewById(R.id.rLayoutRight);
            cVar.f41693f = (TextView) view2.findViewById(R.id.mgListviewItemInstall);
            cVar.f41694g = (TextView) view2.findViewById(R.id.GiftSurplus);
            cVar.f41695h = (TextView) view2.findViewById(R.id.GiftCount);
            cVar.f41696i = (TextView) view2.findViewById(R.id.GiftEndTime);
            view2.setTag(cVar);
        } else {
            view2 = view;
            cVar = (c) view.getTag();
        }
        GiftPackageDataInfoBean giftPackageDataInfoBean = this.f41682c.get(i2);
        MyImageLoader.f(cVar.f41689b, R.drawable.banner_normal_icon, giftPackageDataInfoBean.getGift_package_pic(), MyImageLoader.C(this.f41681b));
        cVar.f41690c.setVisibility(0);
        cVar.f41691d.setText(giftPackageDataInfoBean.getGift_package_title());
        TextView textView = cVar.f41694g;
        textView.setText(giftPackageDataInfoBean.getGift_package_surplus() + net.lingala.zip4j.util.e.F0);
        TextView textView2 = cVar.f41695h;
        textView2.setText(giftPackageDataInfoBean.getGift_package_count() + "");
        cVar.f41696i.setText(com.join.mgps.Util.x.C(giftPackageDataInfoBean.getGift_package_times_end() * 1000));
        if (giftPackageDataInfoBean.getGift_package_status() == 1) {
            if (giftPackageDataInfoBean.getGift_package_overdue() == 1) {
                cVar.f41693f.setText("已过期");
            } else {
                cVar.f41693f.setText("复制");
            }
        } else {
            cVar.f41693f.setText("领取");
        }
        cVar.f41688a.setOnClickListener(new a(giftPackageDataInfoBean));
        cVar.f41692e.setOnClickListener(new b(giftPackageDataInfoBean));
        return view2;
    }

    public h(Context context, List<GiftPackageDataInfoBean> list, Handler handler) {
        this.f41681b = context;
        this.f41682c = list;
        this.f41683d = handler;
    }
}
