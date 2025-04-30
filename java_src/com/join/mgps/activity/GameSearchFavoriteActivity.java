package com.join.mgps.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.r3;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.dto.SearchAppBean;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_game_search_favorite)
/* loaded from: classes3.dex */
public class GameSearchFavoriteActivity extends Activity {

    /* renamed from: s  reason: collision with root package name */
    public static final int f31956s = 1;

    /* renamed from: t  reason: collision with root package name */
    public static final int f31957t = 2;

    /* renamed from: u  reason: collision with root package name */
    private static final int f31958u = 10;
    @Extra

    /* renamed from: a  reason: collision with root package name */
    int f31959a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    EditText f31960b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    RelativeLayout f31961c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    RelativeLayout f31962d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ImageView f31963e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f31964f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f31965g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f31966h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    XListView2 f31967i;

    /* renamed from: j  reason: collision with root package name */
    r3 f31968j;
    @Bean

    /* renamed from: l  reason: collision with root package name */
    com.join.mgps.Util.b f31970l;

    /* renamed from: m  reason: collision with root package name */
    com.join.mgps.rpc.h f31971m;

    /* renamed from: n  reason: collision with root package name */
    com.join.mgps.rpc.d f31972n;

    /* renamed from: o  reason: collision with root package name */
    String f31973o;

    /* renamed from: k  reason: collision with root package name */
    List<Object> f31969k = new ArrayList();

    /* renamed from: p  reason: collision with root package name */
    private boolean f31974p = false;

    /* renamed from: q  reason: collision with root package name */
    private int f31975q = 1;

    /* renamed from: r  reason: collision with root package name */
    int f31976r = 20;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameSearchFavoriteActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (GameSearchFavoriteActivity.this.f31974p) {
                if (!com.join.android.app.common.utils.f.j(GameSearchFavoriteActivity.this)) {
                    GameSearchFavoriteActivity.this.f31967i.t();
                    GameSearchFavoriteActivity.this.n("网络连接异常，请检查网络连接");
                    return;
                }
                GameSearchFavoriteActivity.this.e();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                return;
            }
            if (com.join.android.app.common.utils.f.j(GameSearchFavoriteActivity.this)) {
                GameSearchFavoriteActivity.this.f31975q = 1;
                GameSearchFavoriteActivity.this.f31973o = editable.toString();
                GameSearchFavoriteActivity.this.e();
                return;
            }
            GameSearchFavoriteActivity.this.n("当前网络不可用");
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements com.join.mgps.customview.i {
        d() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (GameSearchFavoriteActivity.this.f31974p) {
                if (!com.join.android.app.common.utils.f.j(GameSearchFavoriteActivity.this)) {
                    GameSearchFavoriteActivity.this.f31967i.t();
                    GameSearchFavoriteActivity.this.n("网络连接异常，请检查网络连接");
                    return;
                }
                GameSearchFavoriteActivity.this.e();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements AdapterView.OnItemClickListener {
        e() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            Intent intent = new Intent();
            intent.putExtra("gameInfo", (CollectionBeanSub) GameSearchFavoriteActivity.this.f31969k.get(i2));
            GameSearchFavoriteActivity.this.setResult(-1, intent);
            GameSearchFavoriteActivity.this.finish();
        }
    }

    private void f() {
        if (com.join.android.app.common.utils.f.j(this)) {
            m();
            e();
            return;
        }
        l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void c() {
        this.f31971m = com.join.mgps.rpc.impl.f.A0();
        this.f31972n = com.join.mgps.rpc.impl.c.P1();
        if (this.f31959a == 2) {
            this.f31964f.setText("我的收藏");
            this.f31961c.setVisibility(0);
            this.f31962d.setVisibility(8);
            this.f31961c.findViewById(R.id.back_image).setOnClickListener(new a());
            this.f31967i.setPullLoadEnable(new b());
        } else {
            this.f31961c.setVisibility(8);
            this.f31962d.setVisibility(0);
            this.f31960b.addTextChangedListener(new c());
            this.f31967i.setPullLoadEnable(new d());
        }
        r3 r3Var = new r3(this.f31969k);
        this.f31968j = r3Var;
        this.f31967i.setAdapter((ListAdapter) r3Var);
        this.f31967i.setOnItemClickListener(new e());
        this.f31967i.setVisibility(8);
        if (this.f31959a == 2) {
            f();
            return;
        }
        this.f31965g.setVisibility(8);
        this.f31966h.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void d() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void e() {
        if (this.f31959a == 1) {
            try {
                SearchAppBean l02 = this.f31972n.l0(g(this.f31973o, this.f31975q));
                if (i()) {
                    return;
                }
                List<CollectionBeanSub> list = l02.getMessages().getData().getList();
                if (list != null && list.size() > 0) {
                    this.f31974p = list.size() >= this.f31976r;
                } else if (this.f31975q > 1) {
                    this.f31974p = false;
                }
                o(list);
                return;
            } catch (Exception unused) {
                if (this.f31975q <= 1) {
                    n("网络异常，请重试");
                    return;
                }
                return;
            }
        }
        try {
            ResultResMainBean<List<CollectionBeanSub>> o02 = this.f31971m.o0(this.f31970l.getUid(), this.f31975q);
            if (i()) {
                return;
            }
            if (o02 != null && o02.getData() != null) {
                List<CollectionBeanSub> data = o02.getData();
                if (data != null && data.size() > 0) {
                    this.f31974p = data.size() >= 10;
                } else {
                    this.f31974p = false;
                }
                if (this.f31975q <= 1) {
                    h();
                }
                o(data);
                return;
            }
            if (this.f31975q <= 1) {
                l();
            }
        } catch (Exception unused2) {
            if (this.f31975q <= 1) {
                l();
            }
        }
    }

    CommonRequestBean g(String str, int i2) {
        return RequestBeanUtil.getInstance(this).getSearchAutoRequestBean("searchInfo", str, i2, this.f31976r, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h() {
        this.f31965g.setVisibility(8);
        this.f31966h.setVisibility(8);
    }

    boolean i() {
        if (isFinishing()) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 17 && isDestroyed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void j() {
        f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void k() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l() {
        this.f31965g.setVisibility(8);
        this.f31966h.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void m() {
        this.f31965g.setVisibility(0);
        this.f31966h.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void n(String str) {
        if (i()) {
            return;
        }
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o(List<CollectionBeanSub> list) {
        if (this.f31967i.getVisibility() == 8) {
            this.f31967i.setVisibility(0);
        }
        if (this.f31975q <= 1) {
            this.f31969k.clear();
        }
        if (list != null && list.size() > 0) {
            this.f31969k.addAll(list);
        }
        this.f31967i.u();
        if (!this.f31974p) {
            this.f31967i.setNoMore();
        } else {
            this.f31975q++;
            this.f31967i.t();
        }
        this.f31968j.notifyDataSetChanged();
    }
}
