package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.adapter.ForumSearchHintAdapter;
import com.join.mgps.adapter.n5;
import com.join.mgps.customview.LoadingImageView;
import com.join.mgps.customview.MarqueeTextView;
import com.join.mgps.customview.NoScrollListView;
import com.join.mgps.customview.WrapContentGridView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.ForumSearchRecordTable;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.SearchAutoDataBean;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.EditorAction;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ItemClick;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
@EActivity(R.layout.forum_search_hint_activity)
/* loaded from: classes3.dex */
public class ForumSearchHintActivity extends BaseFragmentActivity implements AbsListView.OnScrollListener {
    @ViewById
    NoScrollListView A;
    private n5 A0;
    @ViewById
    XListView2 B;
    List<ForumBean.ForumSearchIndexBean> B0;
    @ViewById
    TextView C;
    List<ForumBean.ForumSearchQueryBean> C0;
    @ViewById
    LinearLayout D;
    private List<ForumSearchHintAdapter.f> D0;
    @ViewById
    LinearLayout E;
    private ForumSearchHintAdapter E0;
    @ViewById
    ImageView F;
    @ViewById
    LoadingImageView G;
    private int G0;
    @ViewById
    TextView H;
    @ViewById
    Button I;
    @ViewById
    TextView J;
    @ViewById
    TextView K;

    /* renamed from: a  reason: collision with root package name */
    public Context f30700a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    EditText f30701b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ImageView f30702c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ImageView f30703d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f30704e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f30705f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    GridView f30706g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f30707h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    RelativeLayout f30708i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    RelativeLayout f30709j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    RelativeLayout f30710k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    RelativeLayout f30711l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    RelativeLayout f30712m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    RelativeLayout f30713n;
    @ViewById

    /* renamed from: n0  reason: collision with root package name */
    ImageView f30714n0;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    TextView f30715o;
    @ViewById

    /* renamed from: o0  reason: collision with root package name */
    WrapContentGridView f30716o0;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    TextView f30717p;

    /* renamed from: p0  reason: collision with root package name */
    private i f30718p0;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    TextView f30719q;
    @Extra

    /* renamed from: q0  reason: collision with root package name */
    String f30720q0;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    TextView f30721r;

    /* renamed from: r0  reason: collision with root package name */
    com.join.mgps.rpc.h f30722r0;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    TextView f30723s;
    @StringRes(resName = "net_excption")

    /* renamed from: s0  reason: collision with root package name */
    String f30724s0;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    TextView f30725t;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: t0  reason: collision with root package name */
    String f30726t0;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    MarqueeTextView f30727u;
    @Extra

    /* renamed from: u0  reason: collision with root package name */
    int f30728u0;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    MarqueeTextView f30729v;

    /* renamed from: v0  reason: collision with root package name */
    com.join.mgps.customview.j f30730v0;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    MarqueeTextView f30731w;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    MarqueeTextView f30733x;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    MarqueeTextView f30735y;

    /* renamed from: y0  reason: collision with root package name */
    private List<SearchAutoDataBean> f30736y0;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    MarqueeTextView f30737z;

    /* renamed from: z0  reason: collision with root package name */
    private ArrayList<String> f30738z0;

    /* renamed from: w0  reason: collision with root package name */
    private int f30732w0 = 0;

    /* renamed from: x0  reason: collision with root package name */
    private int f30734x0 = 0;
    private ForumSearchHintAdapter.b F0 = new a();
    Handler H0 = new f();

    /* loaded from: classes3.dex */
    class a implements ForumSearchHintAdapter.b {
        a() {
        }

        @Override // com.join.mgps.adapter.ForumSearchHintAdapter.b
        public void c(String str) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(Integer.parseInt(str));
            com.join.mgps.Util.i0.v0(ForumSearchHintActivity.this.f30700a, forumPostsBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnKeyListener {
        b() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i2, KeyEvent keyEvent) {
            Activity activity = (Activity) view.getContext();
            if (i2 == 66) {
                ((InputMethodManager) ForumSearchHintActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 2);
                ForumSearchHintActivity.this.S0();
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            String obj = ForumSearchHintActivity.this.f30701b.getText().toString();
            if (charSequence.length() > 0) {
                ForumSearchHintActivity.this.f1(true);
                ForumSearchHintActivity.this.f30732w0 = 0;
                ForumSearchHintActivity.this.f30734x0 = 0;
                ForumSearchHintActivity.this.Y0(obj, 1);
                return;
            }
            ForumSearchHintActivity.this.f1(false);
            ForumSearchHintActivity.this.f30701b.setHint("");
            ForumSearchHintActivity.this.W0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements com.join.mgps.customview.i {
        d() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (!com.join.android.app.common.utils.f.j(ForumSearchHintActivity.this.f30700a)) {
                ForumSearchHintActivity forumSearchHintActivity = ForumSearchHintActivity.this;
                forumSearchHintActivity.showToast(forumSearchHintActivity.getString(R.string.net_connect_failed));
                ForumSearchHintActivity.this.p1();
                return;
            }
            if (ForumSearchHintActivity.this.U0()) {
                ForumSearchHintActivity forumSearchHintActivity2 = ForumSearchHintActivity.this;
                forumSearchHintActivity2.Y0(forumSearchHintActivity2.f30701b.getText().toString(), ForumSearchHintActivity.this.f30732w0 + 1);
            }
            if (ForumSearchHintActivity.this.f30734x0 == -1) {
                ForumSearchHintActivity.this.p1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements com.join.mgps.customview.j {
        e() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (com.join.android.app.common.utils.f.j(ForumSearchHintActivity.this.f30700a)) {
                ForumSearchHintActivity.this.f30734x0 = 0;
                ForumSearchHintActivity.this.V0();
                return;
            }
            ForumSearchHintActivity forumSearchHintActivity = ForumSearchHintActivity.this;
            forumSearchHintActivity.showToast(forumSearchHintActivity.getString(R.string.net_connect_failed));
            ForumSearchHintActivity.this.p1();
        }
    }

    /* loaded from: classes3.dex */
    class f extends Handler {
        f() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            ForumSearchHintActivity.this.B.u();
            ForumSearchHintActivity.this.B.t();
            if (ForumSearchHintActivity.this.f30734x0 == -1) {
                ForumSearchHintActivity.this.B.setNoMore();
            }
            if (ForumSearchHintActivity.this.B.getFirstVisiblePosition() == 0 && ForumSearchHintActivity.this.B.getLastVisiblePosition() + 1 == ForumSearchHintActivity.this.G0) {
                ForumSearchHintActivity.this.B.j();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goWirelessSettings(view.getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumSearchHintActivity.this.S0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        List<ForumBean.ForumSearchIndexBean> f30747a = new ArrayList();

        /* loaded from: classes3.dex */
        class a {

            /* renamed from: a  reason: collision with root package name */
            public TextView f30749a;

            /* renamed from: b  reason: collision with root package name */
            public TextView f30750b;

            /* renamed from: c  reason: collision with root package name */
            public TextView f30751c;

            a() {
            }
        }

        public i() {
        }

        public List<ForumBean.ForumSearchIndexBean> a(ForumBean.ForumSearchIndexBean forumSearchIndexBean) {
            if (forumSearchIndexBean == null) {
                return this.f30747a;
            }
            if (this.f30747a == null) {
                this.f30747a = new ArrayList();
            }
            this.f30747a.add(forumSearchIndexBean);
            return this.f30747a;
        }

        public List<ForumBean.ForumSearchIndexBean> b(List<ForumBean.ForumSearchIndexBean> list) {
            if (list == null) {
                return this.f30747a;
            }
            if (this.f30747a == null) {
                this.f30747a = new ArrayList();
            }
            this.f30747a.addAll(list);
            return this.f30747a;
        }

        public List<ForumBean.ForumSearchIndexBean> c() {
            return this.f30747a;
        }

        public void d(List<ForumBean.ForumSearchIndexBean> list) {
            this.f30747a = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<ForumBean.ForumSearchIndexBean> list = this.f30747a;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            List<ForumBean.ForumSearchIndexBean> list = this.f30747a;
            if (list != null) {
                return list.get(i2);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i2) {
            return super.getItemViewType(i2);
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            a aVar;
            if (view != null) {
                aVar = (a) view.getTag();
            } else {
                aVar = new a();
                view = LayoutInflater.from(ForumSearchHintActivity.this).inflate(R.layout.search_hint_hot_item, (ViewGroup) null);
                aVar.f30749a = (TextView) view.findViewById(R.id.icon);
                aVar.f30750b = (TextView) view.findViewById(R.id.rank);
                aVar.f30751c = (TextView) view.findViewById(R.id.name);
                view.setTag(aVar);
            }
            ForumBean.ForumSearchIndexBean forumSearchIndexBean = (ForumBean.ForumSearchIndexBean) getItem(i2);
            int[] iArr = {R.drawable.search_rank_1, R.drawable.search_rank_2, R.drawable.search_rank_3};
            if (i2 < 3) {
                aVar.f30749a.setVisibility(0);
                aVar.f30750b.setVisibility(8);
                aVar.f30749a.setBackgroundResource(iArr[i2]);
            } else {
                aVar.f30749a.setVisibility(8);
                aVar.f30750b.setVisibility(0);
                TextView textView = aVar.f30750b;
                textView.setText("" + (i2 + 1));
            }
            aVar.f30751c.setText(forumSearchIndexBean.getKeyword());
            aVar.f30751c.setTextColor(com.join.mgps.Util.h.d(com.join.mgps.Util.d2.g(forumSearchIndexBean.getColor())));
            view.setOnClickListener(new j(forumSearchIndexBean.getKeyword()));
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return super.getViewTypeCount();
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        String f30753a;

        public j(String str) {
            this.f30753a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumSearchHintActivity.this.c1(this.f30753a);
            ForumSearchHintActivity.this.f30701b.setText(this.f30753a);
            if (TextUtils.isEmpty(this.f30753a)) {
                return;
            }
            ForumSearchHintActivity.this.f30701b.setSelection(this.f30753a.length());
            ForumSearchHintActivity.this.O0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c1(String str) {
        List<ForumSearchRecordTable> d4 = n1.s.n().d();
        if (d4 == null && d4.size() == 0) {
            ForumSearchRecordTable forumSearchRecordTable = new ForumSearchRecordTable();
            forumSearchRecordTable.setName(str);
            forumSearchRecordTable.setCreate_time(System.currentTimeMillis());
            n1.s.n().m(forumSearchRecordTable);
        } else if (d4.size() > 100) {
            n1.s.n().delete((Collection) n1.s.n().i(10L, d4.size(), "create_time", false));
        } else {
            for (ForumSearchRecordTable forumSearchRecordTable2 : d4) {
                if (forumSearchRecordTable2.getName().equals(str)) {
                    n1.s.n().delete((n1.s) forumSearchRecordTable2);
                }
            }
            ForumSearchRecordTable forumSearchRecordTable3 = new ForumSearchRecordTable();
            forumSearchRecordTable3.setName(str);
            forumSearchRecordTable3.setCreate_time(System.currentTimeMillis());
            n1.s.n().m(forumSearchRecordTable3);
        }
    }

    private void e1(ForumBean.ForumSearchQueryBean forumSearchQueryBean) {
        boolean z3;
        String M0 = M0();
        if (forumSearchQueryBean.getSubject() == null || com.join.mgps.Util.d2.h(forumSearchQueryBean.getSubject().trim())) {
            z3 = true;
        } else {
            this.D0.add(new ForumSearchHintAdapter.f(ForumSearchHintAdapter.ViewType.POST_SUBJECT, new ForumSearchHintAdapter.f.c(M0, forumSearchQueryBean.getPid(), forumSearchQueryBean.getSubject())));
            z3 = false;
        }
        if (!com.join.mgps.Util.d2.h(forumSearchQueryBean.getMessage()) && !com.join.mgps.Util.d2.h(forumSearchQueryBean.getMessage().trim())) {
            this.D0.add(new ForumSearchHintAdapter.f(ForumSearchHintAdapter.ViewType.POST_MESSAGE, new ForumSearchHintAdapter.f.b(M0, forumSearchQueryBean.getPid(), forumSearchQueryBean.getMessage(), z3)));
        }
        this.D0.add(new ForumSearchHintAdapter.f(ForumSearchHintAdapter.ViewType.POST_FOOTER, new ForumSearchHintAdapter.f.a(M0, forumSearchQueryBean.getPid(), forumSearchQueryBean.getView(), forumSearchQueryBean.getComment(), forumSearchQueryBean.getPraise())));
    }

    private void q1(List<ForumBean.ForumSearchQueryBean> list, int i2) {
        if (this.C0 == null) {
            this.C0 = new ArrayList();
        }
        if (list != null && list.size() != 0) {
            if (i2 == 1) {
                this.C0.clear();
                this.f30732w0 = 1;
                p1();
            }
            this.C0.addAll(list);
        }
        notifyUi();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        X0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void K0() {
        n1.s.n().a();
        this.f30736y0.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        K0();
        this.f30736y0.clear();
        notifyUi();
    }

    String M0() {
        return this.f30701b.getText().toString();
    }

    void N0() {
        g1(this.B, 8);
        g1(this.f30707h, 8);
        g1(this.f30705f, 8);
        g1(this.D, 8);
        g1(this.E, 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0() {
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P0() {
        XListView2 xListView2 = this.B;
        if (xListView2 != null) {
            xListView2.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ItemClick
    public void Q0(int i2) {
        if (i2 >= this.f30736y0.size() || i2 < 0) {
            return;
        }
        String str = this.f30736y0.get(i2).getGame_name().toString();
        c1(str);
        this.f30701b.setText(str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f30701b.setSelection(str.length());
        O0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void R0() {
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
        if (U0()) {
            this.f30701b.setText("");
            notifyUi();
            return;
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void S0() {
        String g4 = com.join.mgps.Util.d2.g(this.f30701b.getText().toString());
        if (g4.length() > 0) {
            O0();
            c1(g4);
            Y0(g4, 1);
        }
    }

    void T0() {
        this.f30701b.setOnKeyListener(new b());
        this.f30701b.addTextChangedListener(new c());
        if (com.join.mgps.Util.d2.i(this.f30720q0)) {
            this.f30701b.setText(this.f30720q0);
            this.f30701b.setSelection(this.f30720q0.length());
        }
        this.f30738z0 = new ArrayList<>();
        this.f30736y0 = new ArrayList();
        this.A0 = new n5(this.f30700a, this.f30736y0);
        this.D0 = new ArrayList();
        ForumSearchHintAdapter forumSearchHintAdapter = new ForumSearchHintAdapter(this.f30700a);
        this.E0 = forumSearchHintAdapter;
        forumSearchHintAdapter.f(this.F0);
        this.B.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
        this.B.setAdapter((ListAdapter) this.E0);
        this.B.setPullLoadEnable(new d());
        e eVar = new e();
        this.f30730v0 = eVar;
        this.B.setPullRefreshEnable(eVar);
        this.B.e();
        this.B.setOnScrollListener(this);
        P0();
        g1(this.D, 8);
        if (this.f30718p0 == null) {
            this.f30718p0 = new i();
        }
        this.f30716o0.setAdapter((ListAdapter) this.f30718p0);
    }

    boolean U0() {
        return com.join.mgps.Util.d2.i(this.f30701b.getText().toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void V0() {
        try {
            W0();
            if (com.join.android.app.common.utils.f.j(this.f30700a)) {
                X0();
            } else {
                showToast(getString(R.string.net_connect_failed));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void W0() {
        ArrayList arrayList = new ArrayList();
        List<ForumSearchRecordTable> i2 = n1.s.n().i(0L, 10L, "create_time", false);
        this.f30738z0.clear();
        if (i2 != null) {
            for (ForumSearchRecordTable forumSearchRecordTable : i2) {
                this.f30738z0.add(forumSearchRecordTable.getName());
            }
        }
        ArrayList<String> arrayList2 = this.f30738z0;
        if (arrayList2 != null && arrayList2.size() > 0) {
            for (int i4 = 0; i4 < this.f30738z0.size(); i4++) {
                SearchAutoDataBean searchAutoDataBean = new SearchAutoDataBean();
                searchAutoDataBean.setCrc_sign_id("");
                searchAutoDataBean.setGame_name(this.f30738z0.get(i4));
                arrayList.add(searchAutoDataBean);
            }
        }
        this.f30736y0.clear();
        this.f30736y0.addAll(arrayList);
        notifyUi();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void X0() {
        if (com.join.android.app.common.utils.f.j(this.f30700a)) {
            try {
                ForumResponse<ForumData.ForumSearchIndexData> e4 = this.f30722r0.e("");
                if (e4 != null && e4.getError() == 0 && e4.getData() != null) {
                    this.B0 = e4.getData().getRecommend();
                } else {
                    this.B0 = null;
                }
                notifyUi();
                return;
            } catch (Exception e5) {
                e5.printStackTrace();
                serverConnectionException();
                notifyUi();
                return;
            }
        }
        notifyUi();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0063, code lost:
        if (r11 == 1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0072, code lost:
        if (r11 == 1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0074, code lost:
        m1();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0077, code lost:
        p1();
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:?, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Y0(java.lang.String r10, int r11) {
        /*
            r9 = this;
            android.content.Context r0 = r9.f30700a
            boolean r0 = com.join.android.app.common.utils.f.j(r0)
            if (r0 == 0) goto L8a
            int r0 = r9.f30734x0
            if (r11 != r0) goto Ld
            return
        Ld:
            r1 = -1
            if (r0 != r1) goto L11
            return
        L11:
            r9.f30734x0 = r11
            r0 = 0
            r2 = 1
            if (r11 != r2) goto L1e
            java.util.List<com.join.mgps.dto.ForumBean$ForumSearchQueryBean> r3 = r9.C0     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            if (r3 == 0) goto L1e
            r3.clear()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
        L1e:
            java.lang.String r7 = ""
            int r8 = r9.f30728u0     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            if (r8 <= 0) goto L2f
            com.join.mgps.rpc.h r3 = r9.f30722r0     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            int r5 = com.join.mgps.Util.i0.f27592d     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r4 = r11
            r6 = r10
            com.join.mgps.dto.ForumResponse r10 = r3.N(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            goto L37
        L2f:
            com.join.mgps.rpc.h r3 = r9.f30722r0     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            int r4 = com.join.mgps.Util.i0.f27592d     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            com.join.mgps.dto.ForumResponse r10 = r3.l(r11, r4, r10, r7)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
        L37:
            r3 = 0
            if (r10 == 0) goto L41
            java.lang.Object r10 = r10.getData()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            com.join.mgps.dto.ForumData$ForumSearchQueryData r10 = (com.join.mgps.dto.ForumData.ForumSearchQueryData) r10     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            goto L44
        L41:
            r9.f30734x0 = r0     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r10 = r3
        L44:
            if (r10 == 0) goto L4a
            java.util.List r3 = r10.getRes()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
        L4a:
            if (r3 == 0) goto L55
            int r10 = r3.size()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            if (r10 == 0) goto L55
            r9.f30732w0 = r11     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            goto L5a
        L55:
            r9.f30734x0 = r1     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r9.h1()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
        L5a:
            r9.q1(r3, r11)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            int r10 = r9.f30734x0
            if (r10 == r1) goto L63
            r9.f30734x0 = r0
        L63:
            if (r11 != r2) goto L77
            goto L74
        L66:
            r10 = move-exception
            goto L7b
        L68:
            r10 = move-exception
            r10.printStackTrace()     // Catch: java.lang.Throwable -> L66
            int r10 = r9.f30734x0
            if (r10 == r1) goto L72
            r9.f30734x0 = r0
        L72:
            if (r11 != r2) goto L77
        L74:
            r9.m1()
        L77:
            r9.p1()
            goto L97
        L7b:
            int r3 = r9.f30734x0
            if (r3 == r1) goto L81
            r9.f30734x0 = r0
        L81:
            if (r11 != r2) goto L86
            r9.m1()
        L86:
            r9.p1()
            throw r10
        L8a:
            r10 = 2131821062(0x7f110206, float:1.9274857E38)
            java.lang.String r10 = r9.getString(r10)
            r9.showToast(r10)
            r9.p1()
        L97:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ForumSearchHintActivity.Y0(java.lang.String, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z0() {
        com.join.android.app.common.manager.a.h().j(this.f30700a, this.f30724s0, 1);
    }

    void a1() {
        N0();
        r1(this.B0, Boolean.TRUE);
        this.f30705f.setVisibility(0);
        List<SearchAutoDataBean> list = this.f30736y0;
        if (list != null && list.size() > 0) {
            this.C.setVisibility(8);
            this.A.setAdapter((ListAdapter) this.A0);
        } else {
            this.C.setVisibility(0);
        }
        this.A0.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f30722r0 = com.join.mgps.rpc.impl.f.A0();
        this.f30700a = this;
        T0();
        V0();
    }

    void b1() {
        if (this.C0 == null) {
            this.C0 = new ArrayList();
        }
        if (this.D0 == null) {
            this.D0 = new ArrayList();
        }
        this.D0.clear();
        for (ForumBean.ForumSearchQueryBean forumSearchQueryBean : this.C0) {
            e1(forumSearchQueryBean);
        }
        this.E0.h(this.D0);
        this.E0.notifyDataSetChanged();
        this.B.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @EditorAction
    public boolean d1(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 == 6) {
            ((InputMethodManager) textView.getContext().getSystemService("input_method")).toggleSoftInput(1, 2);
            S0();
            return true;
        }
        return false;
    }

    void f1(boolean z3) {
        List<ForumBean.ForumSearchQueryBean> list;
        N0();
        if (z3) {
            if (this.f30732w0 == 0 && !com.join.android.app.common.utils.f.j(this)) {
                k1();
                return;
            } else if (this.f30734x0 == -1 && this.f30732w0 == 0 && ((list = this.C0) == null || list.size() == 0)) {
                l1();
                return;
            } else {
                n1();
                return;
            }
        }
        i1();
    }

    void g1(View view, int i2) {
        if (view == null || i2 == view.getVisibility()) {
            return;
        }
        view.setVisibility(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h1() {
        this.B.setNoMore();
    }

    void i1() {
        N0();
        g1(this.f30707h, 0);
        g1(this.f30705f, 0);
    }

    void j1() {
        N0();
        g1(this.D, 0);
    }

    void k1() {
        N0();
        g1(this.E, 0);
        this.F.setImageResource(R.drawable.reload_butn_selector);
        this.J.setText("网络连接失败，再试试吧~");
        this.K.setVisibility(8);
        this.I.setVisibility(0);
        this.f30714n0.setVisibility(0);
        this.I.setOnClickListener(new g());
        this.F.setOnClickListener(new h());
    }

    void l1() {
        N0();
        g1(this.E, 0);
        this.F.setImageResource(R.drawable.papa_loading_null);
        this.J.setText("未搜索到相应帖子");
        this.K.setVisibility(8);
        this.I.setVisibility(8);
        this.f30714n0.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void m1() {
        this.B.p();
    }

    void n1() {
        N0();
        g1(this.B, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyUi() {
        boolean U0 = U0();
        try {
            if (U0) {
                f1(U0);
                b1();
            } else {
                a1();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o1() {
        this.B.t();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.G0 = i5;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void p1() {
        if (this.B.i()) {
            this.H0.sendEmptyMessageDelayed(0, 2000L);
        } else {
            this.H0.sendEmptyMessage(0);
        }
    }

    void r1(List<ForumBean.ForumSearchIndexBean> list, Boolean bool) {
        if (bool.booleanValue()) {
            if (list != null && list.size() != 0) {
                this.f30707h.setVisibility(0);
                i iVar = this.f30718p0;
                if (iVar != null) {
                    if (iVar.c() != null) {
                        this.f30718p0.c().clear();
                    }
                    this.f30718p0.b(list);
                    this.f30718p0.notifyDataSetChanged();
                    return;
                }
                return;
            }
            this.f30707h.setVisibility(8);
            return;
        }
        this.f30707h.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void s1() {
        this.f30705f.setVisibility(0);
        this.C.setVisibility(0);
        this.A.setAdapter((ListAdapter) this.A0);
        this.A0.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void serverConnectionException() {
        com.join.android.app.common.manager.a.h().j(this.f30700a, this.f30726t0, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }
}
