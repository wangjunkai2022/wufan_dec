package com.join.mgps.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.viewpager.widget.PagerAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.RecomDatabean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: MGpapaMainViewPagerAdapter.java */
/* loaded from: classes3.dex */
public class u2 extends PagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f44320a;

    /* renamed from: b  reason: collision with root package name */
    private List<RecomDatabean> f44321b;

    /* compiled from: MGpapaMainViewPagerAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabean f44322a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f44323b;

        a(RecomDatabean recomDatabean, int i2) {
            this.f44322a = recomDatabean;
            this.f44323b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<AppBeanMain> sub = this.f44322a.getSub();
            if (sub == null || sub.size() <= 0) {
                return;
            }
            IntentDateBean intentDataBean = sub.get(0).getIntentDataBean();
            intentDataBean.setExtBean(new ExtBean("home", "6-1-" + (this.f44323b + 1)));
            IntentUtil.getInstance().intentActivity(u2.this.f44320a, intentDataBean);
        }
    }

    public u2(Context context, List<RecomDatabean> list) {
        this.f44320a = context;
        if (list == null) {
            this.f44321b = new ArrayList();
        } else {
            this.f44321b = list;
        }
    }

    public void c(List<RecomDatabean> list) {
        if (list == null) {
            this.f44321b = new ArrayList();
        } else {
            this.f44321b = list;
        }
        notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
        viewGroup.removeView((View) obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f44321b.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i2) {
        if (this.f44321b.size() == 0) {
            return null;
        }
        int size = i2 % this.f44321b.size();
        if (size < 0) {
            size += this.f44321b.size();
        }
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this.f44320a);
        simpleDraweeView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
        simpleDraweeView.setPadding(com.join.mgps.Util.b0.a(this.f44320a, 10.0f), 0, com.join.mgps.Util.b0.a(this.f44320a, 10.0f), 0);
        RecomDatabean recomDatabean = this.f44321b.get(size);
        MyImageLoader.h(simpleDraweeView, recomDatabean.getMain().getPic_remote());
        ViewParent parent = simpleDraweeView.getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeView(simpleDraweeView);
            MyImageLoader.h(simpleDraweeView, recomDatabean.getMain().getPic_remote());
        }
        simpleDraweeView.setOnClickListener(new a(recomDatabean, size));
        viewGroup.addView(simpleDraweeView);
        return simpleDraweeView;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }
}
