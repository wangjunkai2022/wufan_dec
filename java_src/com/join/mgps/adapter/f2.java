package com.join.mgps.adapter;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.CompanySubBean;
import com.join.mgps.dto.GameOLHeadAdBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GameSingleConpanyAdapter.java */
/* loaded from: classes3.dex */
public class f2 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    List<k1.b> f41643a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    Context f41644b;

    /* renamed from: c  reason: collision with root package name */
    LayoutInflater f41645c;

    /* compiled from: GameSingleConpanyAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameOLHeadAdBean f41646a;

        a(GameOLHeadAdBean gameOLHeadAdBean) {
            this.f41646a = gameOLHeadAdBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<CompanySubBean> sub = this.f41646a.getSub();
            if (sub == null || sub.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(f2.this.f41644b, sub.get(0).getIntentDataBean());
        }
    }

    /* compiled from: GameSingleConpanyAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameOLHeadAdBean f41648a;

        b(GameOLHeadAdBean gameOLHeadAdBean) {
            this.f41648a = gameOLHeadAdBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<CompanySubBean> sub = this.f41648a.getSub();
            if (sub == null || sub.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(f2.this.f41644b, sub.get(0).getIntentDataBean());
        }
    }

    public f2(Context context) {
        this.f41644b = context;
        this.f41645c = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    /* renamed from: a */
    public k1.b getItem(int i2) {
        return this.f41643a.get(i2);
    }

    public List<k1.b> b() {
        return this.f41643a;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f41643a.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f41645c.inflate(R.layout.game_single_company_item_layout, (ViewGroup) null);
        }
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) com.join.mgps.Util.o2.a(view, R.id.imageLeft);
        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) com.join.mgps.Util.o2.a(view, R.id.imageRight);
        TextView textView = (TextView) com.join.mgps.Util.o2.a(view, R.id.appNumberLeft);
        TextView textView2 = (TextView) com.join.mgps.Util.o2.a(view, R.id.companyRight);
        TextView textView3 = (TextView) com.join.mgps.Util.o2.a(view, R.id.appNumberRight);
        RelativeLayout relativeLayout = (RelativeLayout) com.join.mgps.Util.o2.a(view, R.id.rightLayout);
        k1.b item = getItem(i2);
        GameOLHeadAdBean a4 = item.a();
        GameOLHeadAdBean b4 = item.b();
        MyImageLoader.d(simpleDraweeView, R.drawable.banner_normal_icon, a4.getMain().getPic_remote());
        ((TextView) com.join.mgps.Util.o2.a(view, R.id.companyLeft)).setText(a4.getMain().getSub_title());
        List<CompanySubBean> sub = a4.getSub();
        if (sub != null && sub.size() > 0) {
            textView.setText(Html.fromHtml("<font color='0xF47500' >" + sub.get(0).getGame_count() + "</font>款游戏"), TextView.BufferType.SPANNABLE);
        }
        if (b4 != null) {
            List<CompanySubBean> sub2 = b4.getSub();
            if (sub2 != null && sub2.size() > 0) {
                textView3.setText(Html.fromHtml("<font color='0xF47500' >" + sub2.get(0).getGame_count() + "</font>款游戏"), TextView.BufferType.SPANNABLE);
            }
            MyImageLoader.d(simpleDraweeView2, R.drawable.rect_normal_icon, b4.getMain().getPic_remote());
            textView2.setText(b4.getMain().getSub_title());
            relativeLayout.setVisibility(0);
        } else {
            relativeLayout.setVisibility(4);
        }
        simpleDraweeView.setOnClickListener(new a(a4));
        simpleDraweeView2.setOnClickListener(new b(b4));
        return view;
    }
}
