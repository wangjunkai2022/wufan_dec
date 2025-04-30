package com.join.mgps.activity;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.activity.HavenDownActivity;
import com.join.mgps.dto.HavenForumListGameItem;
import com.join.mgps.dto.HavenForumListbean;
import com.join.mgps.dto.HomeViewSwich;
import com.join.mgps.pref.PrefDef_;
import com.umeng.analytics.MobclickAgent;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.activity_haven_down)
/* loaded from: classes3.dex */
public class HavenDownActivity extends BaseAppCompatActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    View f32606a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    View f32607b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    View f32608c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    View f32609d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    View f32610e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    View f32611f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f32612g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f32613h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    RecyclerView f32614i;
    @Extra

    /* renamed from: j  reason: collision with root package name */
    DownloadTask f32615j;
    @Pref

    /* renamed from: k  reason: collision with root package name */
    PrefDef_ f32616k;

    /* renamed from: m  reason: collision with root package name */
    com.join.mgps.dialog.x0 f32618m;

    /* renamed from: n  reason: collision with root package name */
    com.join.mgps.rpc.h f32619n;

    /* renamed from: o  reason: collision with root package name */
    Context f32620o;

    /* renamed from: p  reason: collision with root package name */
    a f32621p;

    /* renamed from: q  reason: collision with root package name */
    com.join.mgps.rpc.d f32622q;

    /* renamed from: r  reason: collision with root package name */
    String f32623r;

    /* renamed from: l  reason: collision with root package name */
    int f32617l = 1;

    /* renamed from: s  reason: collision with root package name */
    List<HavenForumListbean> f32624s = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends RecyclerView.Adapter<b> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.join.mgps.activity.HavenDownActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class View$OnClickListenerC0149a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ HavenForumListbean f32626a;

            View$OnClickListenerC0149a(HavenForumListbean havenForumListbean) {
                this.f32626a = havenForumListbean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MobclickAgent.onEvent(HavenDownActivity.this.f32620o, "onSourceH5");
                IntentUtil.getInstance().goShareWebActivity(HavenDownActivity.this.f32620o, this.f32626a.getResourceUrl());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ HavenForumListbean f32628a;

            b(HavenForumListbean havenForumListbean) {
                this.f32628a = havenForumListbean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IntentUtil intentUtil = IntentUtil.getInstance();
                Context context = HavenDownActivity.this.f32620o;
                intentUtil.goFormDetial(context, this.f32628a.getPid() + "");
            }
        }

        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(HavenForumListbean havenForumListbean, View view) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            Context context = HavenDownActivity.this.f32620o;
            intentUtil.goFormDetial(context, havenForumListbean.getPid() + "");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: c */
        public void onBindViewHolder(@NonNull b bVar, int i2) {
            final HavenForumListbean havenForumListbean = HavenDownActivity.this.f32624s.get(i2);
            bVar.f32630a.setText(havenForumListbean.getSubject());
            bVar.f32631b.setText(HavenDownActivity.this.f32623r);
            if (havenForumListbean.getGameSimple() != null) {
                HavenForumListGameItem gameSimple = havenForumListbean.getGameSimple();
                if (gameSimple != null) {
                    bVar.f32631b.setText(gameSimple.getName());
                    SimpleDraweeView simpleDraweeView = bVar.f32633d;
                    if (simpleDraweeView != null) {
                        MyImageLoader.h(simpleDraweeView, gameSimple.getIcon());
                    }
                }
                View view = bVar.f32634e;
                if (view != null) {
                    view.setVisibility(0);
                    bVar.f32634e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.p0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            HavenDownActivity.a.this.b(havenForumListbean, view2);
                        }
                    });
                }
                bVar.f32632c.setVisibility(0);
                bVar.f32632c.setOnClickListener(new View$OnClickListenerC0149a(havenForumListbean));
            } else {
                View view2 = bVar.f32634e;
                if (view2 != null) {
                    view2.setVisibility(8);
                }
                bVar.f32632c.setVisibility(8);
            }
            bVar.f32635f.setOnClickListener(new b(havenForumListbean));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* renamed from: d */
        public b onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
            return new b(LayoutInflater.from(HavenDownActivity.this.f32620o).inflate(R.layout.haven_forum_list_item, viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return HavenDownActivity.this.f32624s.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        TextView f32630a;

        /* renamed from: b  reason: collision with root package name */
        TextView f32631b;

        /* renamed from: c  reason: collision with root package name */
        View f32632c;

        /* renamed from: d  reason: collision with root package name */
        SimpleDraweeView f32633d;

        /* renamed from: e  reason: collision with root package name */
        View f32634e;

        /* renamed from: f  reason: collision with root package name */
        View f32635f;

        public b(@NonNull View view) {
            super(view);
            this.f32630a = (TextView) view.findViewById(R.id.content);
            this.f32631b = (TextView) view.findViewById(R.id.appName);
            this.f32632c = view.findViewById(R.id.detail);
            this.f32633d = (SimpleDraweeView) view.findViewById(R.id.icon);
            this.f32634e = view.findViewById(R.id.gameLayout);
            this.f32635f = view.findViewById(R.id.main);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void D0() {
        if (this.f32617l != 0) {
            if (com.join.android.app.common.utils.f.j(this.f32620o)) {
                I0();
                return;
            } else {
                com.join.mgps.Util.i2.a(this.f32620o).b("请检查网络");
                return;
            }
        }
        IntentUtil.getInstance().goMainLabelActivity(this, 0, this.f32623r, 1);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void E0() {
        showLoding();
        try {
            try {
                String data = this.f32622q.Q0(RequestBeanUtil.getInstance(this.f32620o).getDetialmoreServer(this.f32615j.getCrc_link_type_val())).getMessages().getData();
                if (com.join.mgps.Util.d2.i(data)) {
                    this.f32623r = data;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } finally {
            H0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        if (AccountUtil_.getInstance_(this.f32620o).isTourist()) {
            IntentUtil.getInstance().goLogin(this.f32620o);
            return;
        }
        HavenWishActivity_.K0(this).a(this.f32615j).start();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        IntentUtil.getInstance().goMainLabelActivity(this, 0, this.f32623r, 1);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0() {
        this.f32618m.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0() {
        showLoding();
        try {
            try {
                List<HavenForumListbean> posts = this.f32619n.R(com.join.mgps.rpc.g.E + "/posts/tags", this.f32623r).getData().getPosts();
                if (posts != null && posts.size() > 0) {
                    updateUi(posts);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } finally {
            H0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterviews() {
        this.f32611f.setVisibility(8);
        this.f32620o = this;
        MobclickAgent.onEvent(this, "onFindSourceStart");
        this.f32619n = com.join.mgps.rpc.impl.f.A0();
        this.f32622q = com.join.mgps.rpc.impl.c.P1();
        this.f32618m = com.join.mgps.Util.a0.c0(this).x(this);
        this.f32614i.setLayoutManager(new LinearLayoutManager(this));
        a aVar = new a();
        this.f32621p = aVar;
        this.f32614i.setAdapter(aVar);
        HomeViewSwich homeViewSwich = MApplication.I;
        if (homeViewSwich != null) {
            try {
                this.f32612g.setText(homeViewSwich.getCommunity_entrance_title().getCfg_values());
            } catch (Exception unused) {
            }
        } else {
            this.f32612g.setText(this.f32616k.community_entrance_title().d());
        }
        if (com.join.mgps.Util.d2.h(this.f32623r)) {
            this.f32623r = this.f32615j.getShowName();
        }
        this.f32613h.setText(this.f32623r);
        E0();
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Rect rect = new Rect();
        View view = this.f32607b;
        if (view != null) {
            view.getGlobalVisibleRect(rect);
            if (rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return true;
            }
            finish();
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f32618m.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUi(List<HavenForumListbean> list) {
        this.f32624s.clear();
        this.f32624s.addAll(list);
        this.f32621p.notifyDataSetChanged();
        this.f32610e.setVisibility(8);
        this.f32609d.setVisibility(0);
        MobclickAgent.onEvent(this.f32620o, "onSourceList");
    }
}
