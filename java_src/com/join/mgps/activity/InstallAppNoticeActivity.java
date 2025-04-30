package com.join.mgps.activity;

import android.content.Context;
import android.graphics.drawable.Animatable;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import com.BaseActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.photoviewer.MultiTouchViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.BootPageData;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import me.relex.circleindicator.CircleIndicator;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.install_app_notice_layout)
/* loaded from: classes3.dex */
public class InstallAppNoticeActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    SimpleDraweeView f32788a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    MultiTouchViewPager f32789b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    CircleIndicator f32790c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f32791d;
    @Extra

    /* renamed from: e  reason: collision with root package name */
    String f32792e;
    @Extra

    /* renamed from: f  reason: collision with root package name */
    String f32793f;

    /* renamed from: g  reason: collision with root package name */
    BootPageData f32794g;

    /* renamed from: h  reason: collision with root package name */
    b f32795h;

    /* renamed from: i  reason: collision with root package name */
    DownloadTask f32796i;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            InstallAppNoticeActivity.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    public class b extends PagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        List<String> f32798a;

        /* loaded from: classes3.dex */
        class a extends com.facebook.drawee.controller.b<com.facebook.imagepipeline.image.f> {
            a() {
            }

            @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
            /* renamed from: h */
            public void d(String str, com.facebook.imagepipeline.image.f fVar, Animatable animatable) {
                super.d(str, fVar, animatable);
            }
        }

        /* renamed from: com.join.mgps.activity.InstallAppNoticeActivity$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class View$OnClickListenerC0152b implements View.OnClickListener {
            View$OnClickListenerC0152b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InstallAppNoticeActivity.this.G0();
            }
        }

        public b() {
        }

        public List<String> b() {
            return this.f32798a;
        }

        public void c(List<String> list) {
            this.f32798a = list;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            List<String> list = this.f32798a;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i2) {
            Uri parse;
            String str = this.f32798a.get(i2);
            Context context = viewGroup.getContext();
            View inflate = LayoutInflater.from(context).inflate(R.layout.home_popup_ad_item, (ViewGroup) null);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) inflate.findViewById(R.id.adImage);
            simpleDraweeView.getHierarchy().H(R.drawable.main_normal_icon);
            com.facebook.drawee.backends.pipeline.e newDraweeControllerBuilder = Fresco.newDraweeControllerBuilder();
            if (InstallAppNoticeActivity.this.isHomePopupAdLocalCached(str)) {
                parse = com.join.mgps.Util.k0.j(new File(com.join.mgps.Util.u.b(context), com.join.mgps.Util.g0.o(str)));
            } else {
                parse = Uri.parse(str);
            }
            newDraweeControllerBuilder.a(parse);
            newDraweeControllerBuilder.c(simpleDraweeView.getController());
            newDraweeControllerBuilder.H(new a());
            simpleDraweeView.setController(newDraweeControllerBuilder.build());
            simpleDraweeView.setClickable(true);
            try {
                viewGroup.addView(inflate, -1, -1);
                simpleDraweeView.setOnClickListener(new View$OnClickListenerC0152b());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return inflate;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G0() {
        com.join.android.app.common.utils.a.g0(this).u(this, new File(this.f32796i.getGameZipPath()));
    }

    public void F0(Context context, AppBeanMain appBeanMain) {
        if (appBeanMain == null) {
            return;
        }
        IntentUtil.getInstance().intentActivity(context, new IntentDateBean(appBeanMain.getLink_type(), appBeanMain.getJump_type(), appBeanMain.getLink_type_val(), appBeanMain.getCrc_link_type_val(), appBeanMain.getTpl_type(), null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        try {
            this.f32794g = (BootPageData) JsonMapper.getInstance().fromJson(com.join.mgps.Util.d2.g(this.f32792e), BootPageData.class);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f32796i = g1.f.G().B(this.f32793f);
        BootPageData bootPageData = this.f32794g;
        if (bootPageData == null || bootPageData.getGame_setup_boot() == null || com.join.mgps.Util.d2.h(this.f32794g.getGame_setup_boot().getTitle()) || this.f32794g.getGame_setup_boot().getPic().length == 0) {
            finish();
        }
        this.f32791d.setText(this.f32794g.getGame_setup_boot().getTitle() + "下载完成，请按下图操作");
        ArrayList arrayList = new ArrayList();
        for (String str : this.f32794g.getGame_setup_boot().getPic()) {
            arrayList.add(str);
        }
        b bVar = new b();
        this.f32795h = bVar;
        bVar.c(arrayList);
        this.f32789b.setAdapter(this.f32795h);
        this.f32790c.setViewPager(this.f32789b);
        try {
            this.f32788a.setOnClickListener(new a());
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    boolean isHomePopupAdLocalCached(String str) {
        return new File(com.join.mgps.Util.u.b(this), com.join.mgps.Util.g0.o(str)).exists();
    }
}
