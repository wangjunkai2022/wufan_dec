package com.join.mgps.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.RecommendLabelTag;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_forum_posts_tag_select)
/* loaded from: classes3.dex */
public class ForumPostsTagSelectActivity extends BaseAppCompatActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f30315a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f30316b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f30317c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    XListView2 f30318d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ForumLoadingView f30319e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    Button f30320f;

    /* renamed from: g  reason: collision with root package name */
    com.join.mgps.rpc.h f30321g;
    @Extra

    /* renamed from: l  reason: collision with root package name */
    int f30326l;
    @Extra

    /* renamed from: m  reason: collision with root package name */
    int f30327m;
    @Extra

    /* renamed from: n  reason: collision with root package name */
    int f30328n;

    /* renamed from: o  reason: collision with root package name */
    private ForumBaseAdapter f30329o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f30330p;

    /* renamed from: r  reason: collision with root package name */
    com.join.android.app.component.video.c f30332r;

    /* renamed from: h  reason: collision with root package name */
    List<RecommendLabelTag> f30322h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    List<RecommendLabelTag> f30323i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    List<RecommendLabelTag> f30324j = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    List<Integer> f30325k = new ArrayList();

    /* renamed from: q  reason: collision with root package name */
    String f30331q = "ForumPostsTagSelectActivity";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            ForumPostsTagSelectActivity.this.H0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends ForumBaseAdapter.y0 {
        b() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.y0, com.join.mgps.adapter.ForumBaseAdapter.r0
        public void i(RecommendLabelTag recommendLabelTag) {
            super.i(recommendLabelTag);
            if (ForumPostsTagSelectActivity.this.f30322h.contains(recommendLabelTag)) {
                ForumPostsTagSelectActivity.this.f30322h.remove(recommendLabelTag);
            } else {
                ForumPostsTagSelectActivity.this.f30322h.add(recommendLabelTag);
            }
            ForumPostsTagSelectActivity.this.I0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends ForumLoadingView.e {
        c(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumPostsTagSelectActivity.this.H0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends ForumLoadingView.e {
        d(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            ForumPostsTagSelectActivity.this.H0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends ForumLoadingView.e {
        e(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumPostsTagSelectActivity.this.H0();
        }
    }

    private void G0() {
        this.f30318d.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
        this.f30318d.setPullRefreshEnable(new a());
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(this, this.f30332r);
        this.f30329o = forumBaseAdapter;
        forumBaseAdapter.p0(this.f30331q);
        this.f30329o.v0(new b());
        this.f30318d.setAdapter((ListAdapter) this.f30329o);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D0(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E0(int i2) {
        ForumLoadingView forumLoadingView = this.f30319e;
        if (forumLoadingView == null) {
            return;
        }
        if (i2 == 1) {
            forumLoadingView.j(1);
        } else if (i2 == 2) {
            forumLoadingView.j(2);
        } else if (i2 == 4) {
            forumLoadingView.j(4);
        } else if (i2 == 16) {
            forumLoadingView.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView2 = this.f30319e;
            forumLoadingView2.setListener(new e(forumLoadingView2));
            this.f30319e.j(16);
        } else if (i2 == 9) {
            forumLoadingView.setListener(new c(forumLoadingView));
            this.f30319e.j(9);
        } else if (i2 != 10) {
        } else {
            forumLoadingView.setFailedMsg("没有更多话题哦~");
            ForumLoadingView forumLoadingView3 = this.f30319e;
            forumLoadingView3.setListener(new d(forumLoadingView3));
            this.f30319e.setReloadingVisibility(0);
            this.f30319e.j(10);
        }
    }

    String F0() {
        String str = "";
        if (this.f30322h == null) {
            return "";
        }
        for (int i2 = 0; i2 < this.f30322h.size(); i2++) {
            str = str + this.f30322h.get(i2).getTag_id();
            if (i2 != this.f30322h.size() - 1 && i2 > 0) {
                str = str + ",";
            }
        }
        return str;
    }

    void H0() {
        if (this.f30326l == 1) {
            M0();
        } else {
            N0();
        }
    }

    synchronized void I0() {
        ForumBaseAdapter forumBaseAdapter = this.f30329o;
        if (forumBaseAdapter == null) {
            return;
        }
        forumBaseAdapter.r().clear();
        if (this.f30323i == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f30323i.size(); i2++) {
            L0(this.f30323i.get(i2));
        }
        this.f30329o.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void J0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        ForumBaseAdapter forumBaseAdapter = this.f30329o;
        if (forumBaseAdapter != null) {
            forumBaseAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K0() {
        if (TextUtils.isEmpty(F0())) {
            D0("未勾选任何标签哟~");
            return;
        }
        this.f30330p = true;
        onBackPressed();
    }

    void L0(RecommendLabelTag recommendLabelTag) {
        if (recommendLabelTag == null) {
            return;
        }
        this.f30329o.e(new ForumBaseAdapter.n1(ForumBaseAdapter.ViewType.TAG_ITEM, new ForumBaseAdapter.n1.b0(recommendLabelTag, this.f30322h.contains(recommendLabelTag))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void M0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ForumResponse<List<RecommendLabelTag>> u3 = this.f30321g.u(AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).getToken(), this.f30327m);
                if (u3 != null && u3.getError() == 0) {
                    if (u3.getData() == null) {
                        E0(4);
                        return;
                    } else {
                        O0(u3.getData());
                        return;
                    }
                }
                E0(4);
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                E0(4);
                return;
            }
        }
        D0(getString(R.string.net_connect_failed));
        E0(9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void N0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ForumResponse<List<RecommendLabelTag>> w3 = this.f30321g.w(this.f30328n, AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).getToken(), this.f30327m);
                if (w3 != null && w3.getError() == 0) {
                    if (w3.getData() == null) {
                        E0(4);
                        return;
                    } else {
                        O0(w3.getData());
                        return;
                    }
                }
                E0(4);
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                E0(4);
                return;
            }
        }
        D0(getString(R.string.net_connect_failed));
        E0(9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0(List<RecommendLabelTag> list) {
        if (list != null && list.size() != 0) {
            E0(2);
            this.f30323i.clear();
            this.f30323i.addAll(list);
            for (int i2 = 0; i2 < this.f30323i.size(); i2++) {
                RecommendLabelTag recommendLabelTag = this.f30323i.get(i2);
                if (this.f30325k.contains(Integer.valueOf(recommendLabelTag.getTag_id()))) {
                    this.f30322h.add(recommendLabelTag);
                }
            }
            I0();
            return;
        }
        E0(10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f30321g = com.join.mgps.rpc.impl.f.A0();
        TextView textView = this.f30317c;
        StringBuilder sb = new StringBuilder();
        sb.append("选择");
        sb.append(this.f30326l == 1 ? "收录" : "删除");
        sb.append("话题");
        textView.setText(sb.toString());
        this.f30320f.setVisibility(0);
        this.f30320f.setText("完成");
        this.f30332r = new com.join.android.app.component.video.c(this, this.f30331q);
        String stringExtra = getIntent().getStringExtra("selectedTags");
        if (!TextUtils.isEmpty(stringExtra)) {
            this.f30324j.addAll((List) JsonMapper.getInstance().fromJson(stringExtra, JsonMapper.getInstance().createCollectionType(ArrayList.class, RecommendLabelTag.class)));
            for (int i2 = 0; i2 < this.f30324j.size(); i2++) {
                this.f30325k.add(Integer.valueOf(this.f30324j.get(i2).getTag_id()));
            }
        }
        G0();
        E0(1);
        H0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f30330p) {
            String json = JsonMapper.getInstance().toJson(this.f30322h);
            if (!TextUtils.isEmpty(json)) {
                Intent intent = new Intent();
                Bundle bundle = new Bundle();
                bundle.putInt("action", this.f30326l);
                bundle.putString("ids", json);
                intent.putExtras(bundle);
                setResult(-1, intent);
            }
        }
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.android.app.component.video.c cVar = this.f30332r;
        if (cVar != null) {
            cVar.z();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        com.join.android.app.component.video.c cVar = this.f30332r;
        if (cVar != null) {
            cVar.A();
        }
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.join.android.app.component.video.c cVar = this.f30332r;
        if (cVar != null) {
            cVar.B();
        }
    }
}
