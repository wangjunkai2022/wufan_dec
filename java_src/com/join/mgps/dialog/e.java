package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
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
/* compiled from: AppDownFinishDialog.java */
/* loaded from: classes3.dex */
public class e extends AlertDialog implements DialogInterface.OnDismissListener {

    /* renamed from: a  reason: collision with root package name */
    private d f47632a;

    /* renamed from: b  reason: collision with root package name */
    private ViewPager f47633b;

    /* renamed from: c  reason: collision with root package name */
    private CircleIndicator f47634c;

    /* renamed from: d  reason: collision with root package name */
    String f47635d;

    /* renamed from: e  reason: collision with root package name */
    List<String> f47636e;

    /* compiled from: AppDownFinishDialog.java */
    /* loaded from: classes3.dex */
    public interface b {
        View a(int i2);

        int getCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AppDownFinishDialog.java */
    /* loaded from: classes3.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        public DownloadTask f47637a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f47638b;

        private c() {
        }
    }

    /* compiled from: AppDownFinishDialog.java */
    /* loaded from: classes3.dex */
    public class d extends PagerAdapter implements b {

        /* renamed from: b  reason: collision with root package name */
        private List<c> f47641b = new ArrayList();

        /* renamed from: a  reason: collision with root package name */
        private List<View> f47640a = new ArrayList();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: AppDownFinishDialog.java */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ c f47643a;

            a(c cVar) {
                this.f47643a = cVar;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!this.f47643a.f47637a.isSo()) {
                    if (this.f47643a.f47637a.isMod()) {
                        com.papa.sim.statistic.p.l(view.getContext()).K1(Event.onclickSinGameStart, new Ext().setGameId(this.f47643a.f47637a.getCrc_link_type_val()).setGameFlag(1));
                    } else {
                        com.papa.sim.statistic.p.l(view.getContext()).K1(Event.onclickSinGameStart, new Ext().setGameId(this.f47643a.f47637a.getCrc_link_type_val()).setGameFlag(1));
                    }
                    com.papa.sim.statistic.p.l(view.getContext()).K1(Event.onclickSinGameStart, new Ext().setGameId(this.f47643a.f47637a.getCrc_link_type_val()).setGameFlag(1));
                } else if (this.f47643a.f47637a.isMod()) {
                    com.papa.sim.statistic.p.l(view.getContext()).K1(Event.onclickSoGameStart, new Ext().setGameId(this.f47643a.f47637a.getCrc_link_type_val()).setGameFlag(1));
                } else {
                    com.papa.sim.statistic.p.l(view.getContext()).K1(Event.onclickSoGameStart, new Ext().setGameId(this.f47643a.f47637a.getCrc_link_type_val()));
                }
                UtilsMy.c3(view.getContext(), this.f47643a.f47637a);
                e.this.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: AppDownFinishDialog.java */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ c f47645a;

            b(c cVar) {
                this.f47645a = cVar;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (this.f47645a.f47637a.isSo()) {
                    if (this.f47645a.f47637a.isMod()) {
                        com.papa.sim.statistic.p.l(view.getContext()).K1(Event.exitSoGameStart, new Ext().setGameId(this.f47645a.f47637a.getCrc_link_type_val()).setGameFlag(1));
                    } else {
                        com.papa.sim.statistic.p.l(view.getContext()).K1(Event.exitSoGameStart, new Ext().setGameId(this.f47645a.f47637a.getCrc_link_type_val()));
                    }
                } else if (this.f47645a.f47637a.isMod()) {
                    com.papa.sim.statistic.p.l(view.getContext()).K1(Event.exitSinGameStart, new Ext().setGameId(this.f47645a.f47637a.getCrc_link_type_val()).setGameFlag(1));
                } else {
                    com.papa.sim.statistic.p.l(view.getContext()).K1(Event.exitSinGameStart, new Ext().setGameId(this.f47645a.f47637a.getCrc_link_type_val()).setGameFlag(1));
                }
                e.this.dismiss();
            }
        }

        public d() {
        }

        private void c(c cVar, View view) {
            if (cVar.f47637a == null) {
                return;
            }
            TextView textView = (TextView) view.findViewById(R.id.info);
            TextView textView2 = (TextView) view.findViewById(R.id.title);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) view.findViewById(R.id.icon);
            ImageView imageView = (ImageView) view.findViewById(R.id.cancle);
            TextView textView3 = (TextView) view.findViewById(R.id.tv_score);
            ImageView imageView2 = (ImageView) view.findViewById(R.id.iv_star);
            TextView textView4 = (TextView) view.findViewById(R.id.tipsLayout);
            if (!com.join.mgps.Util.d2.h(cVar.f47637a.getScore()) && Float.valueOf(cVar.f47637a.getScore()).floatValue() > 0.0f) {
                textView3.setVisibility(0);
                textView3.setText(cVar.f47637a.getScore());
                imageView2.setVisibility(0);
            } else {
                textView3.setVisibility(8);
                imageView2.setVisibility(8);
            }
            if (cVar.f47637a.getSp_tag_info() != null && cVar.f47637a.getSp_tag_info().getModel() != null) {
                textView4.setVisibility(0);
                textView4.setText(cVar.f47637a.getSp_tag_info().getModel().getName());
            } else {
                textView4.setVisibility(8);
            }
            if (Dtype.apk.name().equals(cVar.f47637a.getFileType())) {
                textView.setText("下载完成");
                if (cVar.f47637a.isMod()) {
                    com.papa.sim.statistic.p.l(e.this.getContext()).K1(Event.showSoGameStart, new Ext().setGameId(cVar.f47637a.getCrc_link_type_val()).setGameFlag(1));
                } else {
                    com.papa.sim.statistic.p.l(e.this.getContext()).K1(Event.showSoGameStart, new Ext().setGameId(cVar.f47637a.getCrc_link_type_val()));
                }
            } else {
                if (cVar.f47637a.isMod()) {
                    com.papa.sim.statistic.p.l(e.this.getContext()).K1(Event.showSinGameStart, new Ext().setGameId(cVar.f47637a.getCrc_link_type_val()).setGameFlag(1));
                } else {
                    com.papa.sim.statistic.p.l(e.this.getContext()).K1(Event.showSinGameStart, new Ext().setGameId(cVar.f47637a.getCrc_link_type_val()));
                }
                textView.setText("安装完成");
            }
            MyImageLoader.h(simpleDraweeView, cVar.f47637a.getPortraitURL());
            textView2.setText(cVar.f47637a.getShowName());
            view.findViewById(R.id.tv_ok).setOnClickListener(new a(cVar));
            imageView.setOnClickListener(new b(cVar));
        }

        @Override // com.join.mgps.dialog.e.b
        public View a(int i2) {
            return this.f47640a.get(i2);
        }

        public void b(c cVar) {
            this.f47640a.add(null);
            this.f47641b.add(cVar);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
            viewGroup.removeView((View) obj);
            this.f47640a.set(i2, null);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f47641b.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i2) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_app_down_finish, viewGroup, false);
            viewGroup.addView(inflate);
            c(this.f47641b.get(i2), inflate);
            this.f47640a.set(i2, inflate);
            return inflate;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }
    }

    public e(Context context) {
        super(context, R.style.ActivityTransparentDialog_Bottom);
        this.f47636e = new ArrayList();
    }

    void a() {
        this.f47633b = (ViewPager) findViewById(R.id.viewPager);
        this.f47636e.clear();
        this.f47636e.add(this.f47635d);
        this.f47632a = new d();
        this.f47634c = (CircleIndicator) findViewById(R.id.indicator);
        this.f47633b.setAdapter(this.f47632a);
        this.f47634c.setViewPager(this.f47633b);
        this.f47633b.setOffscreenPageLimit(3);
    }

    public void b(String str) {
        if (this.f47636e.contains(str)) {
            return;
        }
        this.f47636e.add(str);
        DownloadTask B = g1.f.G().B(str);
        c cVar = new c();
        cVar.f47637a = B;
        this.f47632a.b(cVar);
        this.f47632a.notifyDataSetChanged();
        this.f47634c.setViewPager(this.f47633b);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        setOnDismissListener(this);
        setContentView(LayoutInflater.from(getContext()).inflate(R.layout.appdown_finish_activity, (ViewGroup) null));
        a();
    }

    public void onDismiss(DialogInterface dialogInterface) {
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        attributes.height = -2;
        getWindow().setAttributes(attributes);
        getWindow().setWindowAnimations(R.style.ActivityTransparentDialog_Bottom);
    }
}
