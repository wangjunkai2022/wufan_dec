package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.RecommendInfomationBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GamdetialInformationStrategyAdapter.java */
/* loaded from: classes3.dex */
public class t0 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f44028a;

    /* renamed from: b  reason: collision with root package name */
    private List<RecommendInfomationBean> f44029b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayout.LayoutParams f44030c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamdetialInformationStrategyAdapter.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f44031a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String[] f44032b;

        a(int i2, String[] strArr) {
            this.f44031a = i2;
            this.f44032b = strArr;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.Util.i0.G0(view.getContext(), this.f44031a, this.f44032b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamdetialInformationStrategyAdapter.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f44034a;

        b(int i2) {
            this.f44034a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(this.f44034a);
            com.join.mgps.Util.i0.v0(t0.this.f44028a, forumPostsBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GamdetialInformationStrategyAdapter.java */
    /* loaded from: classes3.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        public TextView f44036a;

        /* renamed from: b  reason: collision with root package name */
        public RelativeLayout f44037b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f44038c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f44039d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f44040e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f44041f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f44042g;

        /* renamed from: h  reason: collision with root package name */
        public TextView f44043h;

        public c(View view) {
            this.f44037b = (RelativeLayout) view.findViewById(R.id.forum_post_media_container);
            this.f44036a = (TextView) view.findViewById(R.id.images_count);
            view.setTag(this);
        }
    }

    /* compiled from: GamdetialInformationStrategyAdapter.java */
    /* loaded from: classes3.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        public TextView f44045a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f44046b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f44047c;

        /* renamed from: d  reason: collision with root package name */
        public LinearLayout f44048d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f44049e;

        /* renamed from: f  reason: collision with root package name */
        public SimpleDraweeView f44050f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f44051g;

        public d() {
        }
    }

    public t0(Context context) {
        this.f44028a = context;
    }

    private View b(int i2, View view, ViewGroup viewGroup) {
        View view2;
        d dVar;
        if (view == null) {
            dVar = new d();
            view2 = LayoutInflater.from(this.f44028a).inflate(R.layout.mg_gamedetailmore_infomation_item_top, (ViewGroup) null);
            View findViewById = view2.findViewById(R.id.layoutInformation);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) findViewById.getLayoutParams();
            layoutParams.setMargins(0, 0, 0, 0);
            findViewById.setLayoutParams(layoutParams);
            dVar.f44050f = (SimpleDraweeView) view2.findViewById(R.id.informationImage);
            dVar.f44048d = (LinearLayout) view2.findViewById(R.id.layoutInformation);
            dVar.f44045a = (TextView) view2.findViewById(R.id.pubtime);
            dVar.f44051g = (TextView) view2.findViewById(R.id.messageType);
            dVar.f44049e = (TextView) view2.findViewById(R.id.informationTv);
            dVar.f44046b = (TextView) view2.findViewById(R.id.pv);
            dVar.f44047c = (TextView) view2.findViewById(R.id.uv);
            view2.setTag(dVar);
        } else {
            view2 = view;
            dVar = (d) view.getTag();
        }
        RecommendInfomationBean recommendInfomationBean = this.f44029b.get(i2);
        if (recommendInfomationBean.getPic_list().length > 0) {
            MyImageLoader.h(dVar.f44050f, recommendInfomationBean.getPic_list()[0]);
            dVar.f44050f.setVisibility(0);
        } else {
            dVar.f44050f.setVisibility(8);
        }
        TextView textView = dVar.f44046b;
        textView.setText(recommendInfomationBean.getCommit() + "");
        TextView textView2 = dVar.f44047c;
        textView2.setText(recommendInfomationBean.getView() + "");
        dVar.f44045a.setText(com.join.android.app.common.utils.c.b(recommendInfomationBean.getTimes()));
        dVar.f44049e.setText(recommendInfomationBean.getTitle());
        dVar.f44051g.setText(recommendInfomationBean.getType());
        if (com.join.mgps.Util.d2.h(recommendInfomationBean.getType_color())) {
            recommendInfomationBean.setType_color("#8dbbec");
        }
        if (com.join.mgps.Util.d2.i(recommendInfomationBean.getType())) {
            dVar.f44051g.setVisibility(0);
            TextView textView3 = dVar.f44051g;
            textView3.setTextColor(Color.parseColor(recommendInfomationBean.getType_color() + ""));
            TextView textView4 = dVar.f44051g;
            Context context = this.f44028a;
            textView4.setBackgroundDrawable(com.join.mgps.Util.h2.a(context, recommendInfomationBean.getType_color() + ""));
        } else {
            dVar.f44051g.setVisibility(8);
        }
        return view2;
    }

    private View d(int i2, View view, ViewGroup viewGroup) {
        c cVar;
        RecommendInfomationBean recommendInfomationBean = this.f44029b.get(i2);
        if (view == null) {
            view = LayoutInflater.from(this.f44028a).inflate(R.layout.detial_more_information_item_image_layout, (ViewGroup) null);
            cVar = new c(view);
            cVar.f44041f = (TextView) view.findViewById(R.id.informationTv);
            cVar.f44042g = (TextView) view.findViewById(R.id.images_count);
            cVar.f44043h = (TextView) view.findViewById(R.id.messageType);
            cVar.f44038c = (TextView) view.findViewById(R.id.pubtime);
            cVar.f44039d = (TextView) view.findViewById(R.id.pv);
            cVar.f44040e = (TextView) view.findViewById(R.id.uv);
            view.setTag(cVar);
        } else {
            cVar = (c) view.getTag();
        }
        if (recommendInfomationBean == null) {
            return view;
        }
        try {
            if (com.join.mgps.Util.d2.h(recommendInfomationBean.getType_color())) {
                recommendInfomationBean.setType_color("#8dbbec");
            }
            cVar.f44043h.setText(recommendInfomationBean.getType());
            if (com.join.mgps.Util.d2.i(recommendInfomationBean.getType())) {
                cVar.f44043h.setVisibility(0);
                TextView textView = cVar.f44043h;
                textView.setTextColor(Color.parseColor(recommendInfomationBean.getType_color() + ""));
                TextView textView2 = cVar.f44043h;
                Context context = this.f44028a;
                textView2.setBackgroundDrawable(com.join.mgps.Util.h2.a(context, recommendInfomationBean.getType_color() + ""));
            } else {
                cVar.f44043h.setVisibility(8);
            }
            cVar.f44042g.setVisibility(8);
            TextView textView3 = cVar.f44039d;
            textView3.setText(recommendInfomationBean.getCommit() + "");
            TextView textView4 = cVar.f44040e;
            textView4.setText(recommendInfomationBean.getView() + "");
            cVar.f44038c.setText(com.join.android.app.common.utils.c.b(recommendInfomationBean.getTimes()));
            cVar.f44041f.setText(recommendInfomationBean.getTitle());
            f(cVar.f44037b, recommendInfomationBean);
            h(view, recommendInfomationBean.getPost_id());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return view;
    }

    private void f(RelativeLayout relativeLayout, RecommendInfomationBean recommendInfomationBean) {
        recommendInfomationBean.getPic_list();
        if (this.f44030c == null) {
            this.f44030c = e();
        }
        String[] pic_list = recommendInfomationBean.getPic_list();
        int[] iArr = {R.id.img_m_1, R.id.img_m_2, R.id.img_m_3};
        for (int i2 = 0; i2 < 3; i2++) {
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) relativeLayout.findViewById(iArr[i2]);
            if (i2 >= recommendInfomationBean.getPic_list().length) {
                simpleDraweeView.setVisibility(8);
            } else {
                g(simpleDraweeView, i2, recommendInfomationBean.getPic_list()[i2], i2 + 0, pic_list);
            }
        }
    }

    public List<RecommendInfomationBean> c() {
        if (this.f44029b == null) {
            this.f44029b = new ArrayList();
        }
        return this.f44029b;
    }

    LinearLayout.LayoutParams e() {
        DisplayMetrics displayMetrics = this.f44028a.getResources().getDisplayMetrics();
        int dimensionPixelSize = (int) (((displayMetrics.widthPixels - (this.f44028a.getResources().getDimensionPixelSize(R.dimen.dp24) * 2)) - ((displayMetrics.density * 6.0f) * 2.0f)) / 3.0f);
        return new LinearLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize);
    }

    void g(SimpleDraweeView simpleDraweeView, int i2, String str, int i4, String[] strArr) {
        if (this.f44030c == null) {
            this.f44030c = e();
        }
        int i5 = (int) (this.f44028a.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f44030c;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
        if (i2 > 0) {
            layoutParams2.setMargins(i5, 0, 0, 0);
        } else {
            layoutParams2.setMargins(0, 0, 0, 0);
        }
        if (!com.join.mgps.Util.d2.h(str)) {
            simpleDraweeView.setVisibility(0);
            simpleDraweeView.setLayoutParams(layoutParams2);
            simpleDraweeView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            MyImageLoader.i(simpleDraweeView, str, r.c.f12144g);
            simpleDraweeView.setOnClickListener(new a(i4, strArr));
            return;
        }
        simpleDraweeView.setVisibility(8);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44029b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        return this.f44029b.get(i2).getPic_list().length >= 3 ? 1 : 2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        RecommendInfomationBean recommendInfomationBean = this.f44029b.get(i2);
        if (itemViewType == 1) {
            com.join.mgps.Util.t0.d("Strategy", "111" + recommendInfomationBean.getPic_list().length);
            return d(i2, view, viewGroup);
        } else if (itemViewType != 2) {
            return view;
        } else {
            com.join.mgps.Util.t0.d("Strategy", "222" + recommendInfomationBean.getPic_list().length);
            return b(i2, view, viewGroup);
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }

    public void h(View view, int i2) {
        view.setOnClickListener(new b(i2));
    }

    public t0() {
    }
}
