package com.join.mgps.activity;

import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.enums.Dtype;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.ArrayList;
import java.util.List;
import me.relex.circleindicator.CircleIndicator;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
@EActivity(R.layout.appdown_finish_activity)
/* loaded from: classes3.dex */
public class AppDownFinishActivity extends BaseAppCompatActivity {

    /* renamed from: a  reason: collision with root package name */
    protected int f28370a;

    /* renamed from: b  reason: collision with root package name */
    protected int f28371b;

    /* renamed from: c  reason: collision with root package name */
    private e f28372c;

    /* renamed from: d  reason: collision with root package name */
    private ViewPager f28373d;

    /* renamed from: e  reason: collision with root package name */
    private CircleIndicator f28374e;
    @Extra

    /* renamed from: f  reason: collision with root package name */
    String f28375f;

    /* renamed from: h  reason: collision with root package name */
    b f28377h;

    /* renamed from: g  reason: collision with root package name */
    List<String> f28376g = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    private ContentObserver f28378i = new a(new Handler());

    /* loaded from: classes3.dex */
    class a extends ContentObserver {
        a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z3) {
            if (Build.VERSION.SDK_INT < 21) {
                Settings.System.getInt(AppDownFinishActivity.this.getContentResolver(), "navigationbar_is_min", 0);
            } else {
                Settings.Global.getInt(AppDownFinishActivity.this.getContentResolver(), "navigationbar_is_min", 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class b extends ContentObserver {
        b(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z3) {
            super.onChange(z3);
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        View a(int i2);

        int getCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        public DownloadTask f28381a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f28382b;

        private d() {
        }

        /* synthetic */ d(AppDownFinishActivity appDownFinishActivity, a aVar) {
            this();
        }
    }

    /* loaded from: classes3.dex */
    public class e extends PagerAdapter implements c {

        /* renamed from: b  reason: collision with root package name */
        private List<d> f28385b = new ArrayList();

        /* renamed from: a  reason: collision with root package name */
        private List<View> f28384a = new ArrayList();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ d f28387a;

            a(d dVar) {
                this.f28387a = dVar;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilsMy.c3(view.getContext(), this.f28387a.f28381a);
                if (this.f28387a.f28382b) {
                    com.papa.sim.statistic.p.l(view.getContext()).K1(Event.onclickSoGameStart, new Ext().setGameId(this.f28387a.f28381a.getCrc_link_type_val()));
                } else {
                    com.papa.sim.statistic.p.l(view.getContext()).K1(Event.onclickSinGameStart, new Ext().setGameId(this.f28387a.f28381a.getCrc_link_type_val()));
                }
                AppDownFinishActivity.this.finish();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AppDownFinishActivity.this.finish();
            }
        }

        public e() {
        }

        private void c(d dVar, View view) {
            TextView textView = (TextView) view.findViewById(R.id.info);
            TextView textView2 = (TextView) view.findViewById(R.id.title);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) view.findViewById(R.id.icon);
            ImageView imageView = (ImageView) view.findViewById(R.id.cancle);
            if (Dtype.apk.name().equals(dVar.f28381a.getFileType())) {
                textView.setText("下载完成");
                dVar.f28382b = true;
                com.papa.sim.statistic.p.l(AppDownFinishActivity.this).K1(Event.showSoGameStart, new Ext().setGameId(dVar.f28381a.getCrc_link_type_val()));
            } else {
                com.papa.sim.statistic.p.l(AppDownFinishActivity.this).K1(Event.showSinGameStart, new Ext().setGameId(dVar.f28381a.getCrc_link_type_val()));
                dVar.f28382b = false;
                textView.setText("安装完成");
            }
            MyImageLoader.h(simpleDraweeView, dVar.f28381a.getPortraitURL());
            textView2.setText(dVar.f28381a.getShowName());
            view.findViewById(R.id.tv_ok).setOnClickListener(new a(dVar));
            imageView.setOnClickListener(new b());
        }

        @Override // com.join.mgps.activity.AppDownFinishActivity.c
        public View a(int i2) {
            return this.f28384a.get(i2);
        }

        public void b(d dVar) {
            this.f28384a.add(null);
            this.f28385b.add(dVar);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
            viewGroup.removeView((View) obj);
            this.f28384a.set(i2, null);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f28385b.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i2) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_app_down_finish, viewGroup, false);
            viewGroup.addView(inflate);
            c(this.f28385b.get(i2), inflate);
            this.f28384a.set(i2, inflate);
            return inflate;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }
    }

    private void registerNavigationBarObserver() {
        if (Build.VERSION.SDK_INT < 21) {
            getContentResolver().registerContentObserver(Settings.System.getUriFor("navigationbar_is_min"), true, this.f28378i);
        } else {
            getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_is_min"), true, this.f28378i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f28373d = (ViewPager) findViewById(R.id.viewPager);
        try {
            TypedArray obtainStyledAttributes = getTheme().obtainStyledAttributes(new int[]{16842926});
            int resourceId = obtainStyledAttributes.getResourceId(0, 0);
            obtainStyledAttributes.recycle();
            TypedArray obtainStyledAttributes2 = getTheme().obtainStyledAttributes(resourceId, new int[]{16842938, 16842939});
            this.f28370a = obtainStyledAttributes2.getResourceId(0, 0);
            this.f28371b = obtainStyledAttributes2.getResourceId(1, 0);
            obtainStyledAttributes2.recycle();
        } catch (Resources.NotFoundException e4) {
            e4.printStackTrace();
        }
        this.f28376g.clear();
        this.f28376g.add(this.f28375f);
        this.f28372c = new e();
        DownloadTask B = g1.f.G().B(this.f28375f);
        d dVar = new d(this, null);
        dVar.f28381a = B;
        this.f28372c.b(dVar);
        this.f28374e = (CircleIndicator) findViewById(R.id.indicator);
        this.f28373d.setAdapter(this.f28372c);
        this.f28374e.setViewPager(this.f28373d);
        this.f28373d.setOffscreenPageLimit(3);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        try {
            overridePendingTransition(this.f28370a, this.f28371b);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            getContentResolver().unregisterContentObserver(this.f28377h);
            getContentResolver().unregisterContentObserver(this.f28378i);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Bundle extras = intent.getExtras();
        if (extras != null && extras.containsKey("gameId")) {
            this.f28375f = extras.getString("gameId");
        }
        if (!this.f28376g.contains(this.f28375f)) {
            this.f28376g.add(this.f28375f);
            DownloadTask B = g1.f.G().B(this.f28375f);
            d dVar = new d(this, null);
            dVar.f28381a = B;
            this.f28372c.b(dVar);
            this.f28372c.notifyDataSetChanged();
            this.f28374e.setViewPager(this.f28373d);
        }
        try {
            registerContentResolver();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void registerContentResolver() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f28377h = new b(new Handler());
            getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_hide_bar_enabled"), true, this.f28377h);
            registerNavigationBarObserver();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        getWindow().setAttributes(attributes);
        com.join.mgps.Util.z1.o(this, 16777215, true);
    }
}
