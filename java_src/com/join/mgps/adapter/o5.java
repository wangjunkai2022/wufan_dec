package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.CarouselViewPager2;
import com.join.mgps.dto.BannerBean;
import java.util.List;
/* compiled from: SimpleCarouselAdapter.java */
/* loaded from: classes3.dex */
public class o5 extends com.join.mgps.customview.a<CarouselViewPager2> {

    /* renamed from: c  reason: collision with root package name */
    private List<BannerBean> f43064c;

    /* renamed from: d  reason: collision with root package name */
    private Context f43065d;

    /* compiled from: SimpleCarouselAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f43066a;

        a(int i2) {
            this.f43066a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o5 o5Var = o5.this;
            o5Var.g((BannerBean) o5Var.f43064c.get(this.f43066a));
        }
    }

    public o5(Context context, CarouselViewPager2 carouselViewPager2, List<BannerBean> list) {
        super(carouselViewPager2);
        this.f43064c = list;
        this.f43065d = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(BannerBean bannerBean) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setJump_type(bannerBean.getJump_type());
        intentDateBean.setLink_type(bannerBean.getLink_type());
        intentDateBean.setLink_type_val(bannerBean.getLink_type_val());
        if (bannerBean.getLink_type() == 1) {
            intentDateBean.setTpl_type(bannerBean.getGame_info_tpl_type());
        } else {
            intentDateBean.setTpl_type(bannerBean.getTpl_type());
        }
        intentDateBean.setCrc_link_type_val(bannerBean.getCrc_link_type_val());
        intentDateBean.setObject(bannerBean.getTitle());
        IntentUtil.getInstance().intentActivity(this.f43065d, intentDateBean);
    }

    @Override // com.join.mgps.customview.a
    public int b() {
        List<BannerBean> list = this.f43064c;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // com.join.mgps.customview.a
    public Object c(ViewGroup viewGroup, int i2) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_viewpager_layout, (ViewGroup) null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) inflate.findViewById(R.id.adImage);
        simpleDraweeView.setOnClickListener(new a(i2));
        String pic_remote = this.f43064c.get(i2).getPic_remote();
        Context context = this.f43065d;
        MyImageLoader.f(simpleDraweeView, R.drawable.banner_normal_icon, pic_remote, MyImageLoader.D(context, context.getResources().getDimensionPixelOffset(R.dimen.wdp16)));
        viewGroup.addView(inflate, -1, -1);
        return inflate;
    }

    public void f(List<BannerBean> list) {
        this.f43064c = list;
    }
}
