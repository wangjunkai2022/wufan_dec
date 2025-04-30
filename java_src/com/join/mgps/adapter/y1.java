package com.join.mgps.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.GameOLHeadAdBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GameOLGiftPackageAdapter.java */
/* loaded from: classes3.dex */
public class y1 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private LayoutInflater f44554a;

    /* renamed from: b  reason: collision with root package name */
    private Context f44555b;

    /* renamed from: c  reason: collision with root package name */
    private List<k1.a<GiftPackageDataInfoBean>> f44556c = new ArrayList(0);

    /* renamed from: d  reason: collision with root package name */
    private Handler f44557d;

    /* compiled from: GameOLGiftPackageAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameOLHeadAdBean f44558a;

        a(GameOLHeadAdBean gameOLHeadAdBean) {
            this.f44558a = gameOLHeadAdBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(y1.this.f44555b, this.f44558a.getSub().get(0).getIntentDataBean());
        }
    }

    /* compiled from: GameOLGiftPackageAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f44560a;

        b(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f44560a = giftPackageDataInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f44560a.getGift_package_status() == 0) {
                Message message = new Message();
                message.what = 1;
                message.obj = this.f44560a;
                y1.this.f44557d.sendMessage(message);
            } else if (this.f44560a.getGift_package_status() == 1) {
                Message message2 = new Message();
                message2.what = 2;
                message2.obj = this.f44560a;
                y1.this.f44557d.sendMessage(message2);
            }
        }
    }

    /* compiled from: GameOLGiftPackageAdapter.java */
    /* loaded from: classes3.dex */
    class c {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f44562a;

        c() {
        }
    }

    /* compiled from: GameOLGiftPackageAdapter.java */
    /* loaded from: classes3.dex */
    class d {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f44564a;

        /* renamed from: b  reason: collision with root package name */
        private ImageView f44565b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f44566c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f44567d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f44568e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f44569f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f44570g;

        /* renamed from: h  reason: collision with root package name */
        private RelativeLayout f44571h;

        d() {
        }
    }

    /* compiled from: GameOLGiftPackageAdapter.java */
    /* loaded from: classes3.dex */
    class e {

        /* renamed from: a  reason: collision with root package name */
        private TextView f44573a;

        e() {
        }
    }

    public y1(Context context, Handler handler) {
        this.f44554a = LayoutInflater.from(context);
        this.f44555b = context;
        this.f44557d = handler;
    }

    @Override // android.widget.Adapter
    /* renamed from: c */
    public k1.a<GiftPackageDataInfoBean> getItem(int i2) {
        return this.f44556c.get(i2);
    }

    public List<k1.a<GiftPackageDataInfoBean>> d() {
        return this.f44556c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44556c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        return this.f44556c.get(i2).d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        e eVar;
        e eVar2;
        d dVar;
        d dVar2;
        int itemViewType = getItemViewType(i2);
        c cVar = null;
        if (view == null) {
            if (itemViewType == 0) {
                c cVar2 = new c();
                View inflate = this.f44554a.inflate(R.layout.gameol_top_ad_layout, (ViewGroup) null);
                cVar2.f44562a = (SimpleDraweeView) inflate.findViewById(R.id.adImage);
                inflate.setTag(cVar2);
                eVar = null;
                cVar = cVar2;
                view = inflate;
                eVar2 = eVar;
                dVar = eVar;
            } else if (itemViewType != 1) {
                if (itemViewType == 2) {
                    d dVar3 = new d();
                    View inflate2 = this.f44554a.inflate(R.layout.gameol_gift_listview_item, (ViewGroup) null);
                    dVar3.f44564a = (SimpleDraweeView) inflate2.findViewById(R.id.mgListviewItemIcon);
                    dVar3.f44565b = (ImageView) inflate2.findViewById(R.id.giftPackageSwich);
                    dVar3.f44567d = (TextView) inflate2.findViewById(R.id.mgListviewItemAppname);
                    dVar3.f44571h = (RelativeLayout) inflate2.findViewById(R.id.rLayoutRight);
                    dVar3.f44566c = (TextView) inflate2.findViewById(R.id.mgListviewItemInstall);
                    dVar3.f44568e = (TextView) inflate2.findViewById(R.id.GiftSurplus);
                    dVar3.f44569f = (TextView) inflate2.findViewById(R.id.GiftCount);
                    dVar3.f44570g = (TextView) inflate2.findViewById(R.id.GiftEndTime);
                    inflate2.setTag(dVar3);
                    dVar2 = dVar3;
                    view = inflate2;
                    eVar2 = null;
                    dVar = dVar2;
                }
                eVar2 = null;
                dVar = null;
            } else {
                e eVar3 = new e();
                View inflate3 = this.f44554a.inflate(R.layout.gameol_top_title_layout, (ViewGroup) null);
                eVar3.f44573a = (TextView) inflate3.findViewById(R.id.titleText);
                inflate3.setTag(eVar3);
                dVar = null;
                eVar2 = eVar3;
                view = inflate3;
            }
        } else if (itemViewType == 0) {
            eVar = null;
            cVar = (c) view.getTag();
            eVar2 = eVar;
            dVar = eVar;
        } else if (itemViewType != 1) {
            if (itemViewType == 2) {
                dVar2 = (d) view.getTag();
                eVar2 = null;
                dVar = dVar2;
            }
            eVar2 = null;
            dVar = null;
        } else {
            eVar2 = (e) view.getTag();
            dVar = null;
        }
        if (itemViewType == 0) {
            GameOLHeadAdBean b4 = this.f44556c.get(i2).b();
            MyImageLoader.d(cVar.f44562a, R.drawable.banner_normal_icon, b4.getMain().getPic_remote());
            cVar.f44562a.setOnClickListener(new a(b4));
        } else if (itemViewType == 1) {
            eVar2.f44573a.setText(this.f44556c.get(i2).e());
        } else if (itemViewType == 2) {
            GiftPackageDataInfoBean c4 = this.f44556c.get(i2).c();
            MyImageLoader.d(dVar.f44564a, R.drawable.main_normal_icon, c4.getGift_package_pic());
            dVar.f44565b.setVisibility(0);
            dVar.f44567d.setText(c4.getGift_package_title());
            dVar.f44568e.setText(c4.getGift_package_surplus() + net.lingala.zip4j.util.e.F0);
            dVar.f44569f.setText(c4.getGift_package_count() + "");
            dVar.f44570g.setText(com.join.mgps.Util.x.C(c4.getGift_package_times_end() * 1000));
            if (c4.getGift_package_status() == 0) {
                dVar.f44566c.setText("领取");
            } else {
                dVar.f44566c.setText("查看");
            }
            dVar.f44571h.setOnClickListener(new b(c4));
        }
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }
}
