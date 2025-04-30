package com.join.mgps.activity;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.BaseActivity;
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.adapter.GameCommentAdapter;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommitContextDataBean;
import com.join.mgps.dto.CommitDataBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.InformationCommentBack;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.PariseBackData;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.RewardBean;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.information_comment_activity)
/* loaded from: classes3.dex */
public class GameCommentActivity extends BaseActivity {
    private Context B;
    private GameCommentAdapter C;
    private List<InformationCommentBean> D;
    private AccountBean F;
    private int G;
    private String H;
    private String I;
    int J;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f30939a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f30940b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f30941c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f30942d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    XListView2 f30943e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f30944f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f30945g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    FrameLayout f30946h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    ClearEditText f30947i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    Button f30948j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    Button f30949k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f30950l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    ImageView f30951m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    TextView f30952n;

    /* renamed from: n0  reason: collision with root package name */
    private ViewTreeObserver f30953n0;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    Button f30954o;

    /* renamed from: o0  reason: collision with root package name */
    private List<GameCommentAdapter.l> f30955o0;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    LinearLayout f30956p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    View f30958q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    LinearLayout f30960r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    HListView f30961s;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    TextView f30962t;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    KeyboardListenLayout f30963u;

    /* renamed from: v  reason: collision with root package name */
    com.join.mgps.rpc.d f30964v;
    @Extra

    /* renamed from: w  reason: collision with root package name */
    String f30965w;
    @Extra

    /* renamed from: x  reason: collision with root package name */
    String f30966x;
    @Extra

    /* renamed from: y  reason: collision with root package name */
    boolean f30967y;
    @Extra

    /* renamed from: z  reason: collision with root package name */
    InformationCommentBean f30968z;
    private int A = 1;
    private boolean E = false;
    Handler K = new a();

    /* renamed from: p0  reason: collision with root package name */
    com.join.mgps.dialog.x0 f30957p0 = null;

    /* renamed from: q0  reason: collision with root package name */
    com.join.mgps.customview.t f30959q0 = null;

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                if (IntentUtil.getInstance().goLoginInteractive(GameCommentActivity.this.B)) {
                    return;
                }
                GameCommentActivity.this.U0((InformationCommentBean) message.obj);
            } else if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                GameCommentActivity.this.f30947i.setFocusable(true);
                GameCommentActivity.this.f30947i.setFocusableInTouchMode(true);
                GameCommentActivity.this.f30947i.requestFocus();
                ((InputMethodManager) GameCommentActivity.this.f30947i.getContext().getSystemService("input_method")).showSoftInput(GameCommentActivity.this.f30947i, 0);
            } else {
                CommitDataBean commitDataBean = (CommitDataBean) message.obj;
                if (commitDataBean.isHas_praised()) {
                    return;
                }
                GameCommentActivity.this.f30947i.setFocusable(true);
                GameCommentActivity.this.f30947i.setFocusableInTouchMode(true);
                GameCommentActivity.this.f30947i.requestFocus();
                ((InputMethodManager) GameCommentActivity.this.f30947i.getContext().getSystemService("input_method")).showSoftInput(GameCommentActivity.this.f30947i, 0);
                ClearEditText clearEditText = GameCommentActivity.this.f30947i;
                clearEditText.setHint("@" + commitDataBean.getUser_name() + ":");
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements GameCommentAdapter.j {
        b() {
        }

        @Override // com.join.mgps.adapter.GameCommentAdapter.j
        public void a(InformationCommentBean informationCommentBean) {
            Message obtainMessage = GameCommentActivity.this.K.obtainMessage();
            obtainMessage.what = 1;
            obtainMessage.obj = informationCommentBean;
            obtainMessage.sendToTarget();
        }

        @Override // com.join.mgps.adapter.GameCommentAdapter.j
        public void b(InformationCommentBean.Sub sub) {
            ClearEditText clearEditText = GameCommentActivity.this.f30947i;
            clearEditText.setHint("@" + sub.getUser_name() + "：");
            GameCommentActivity.this.f30947i.setFocusable(true);
            GameCommentActivity.this.f30947i.setFocusableInTouchMode(true);
            GameCommentActivity.this.f30947i.requestFocus();
            ((InputMethodManager) GameCommentActivity.this.f30947i.getContext().getSystemService("input_method")).showSoftInput(GameCommentActivity.this.f30947i, 0);
            GameCommentActivity.this.H = sub.getComment_id();
            GameCommentActivity.this.J = Integer.parseInt(sub.getUser_id());
            GameCommentActivity.this.I = sub.getUser_name();
        }

        @Override // com.join.mgps.adapter.GameCommentAdapter.j
        public void c(InformationCommentBean informationCommentBean) {
            ClearEditText clearEditText = GameCommentActivity.this.f30947i;
            clearEditText.setHint("@" + informationCommentBean.getUser_name() + "：");
            GameCommentActivity.this.f30947i.setFocusable(true);
            GameCommentActivity.this.f30947i.setFocusableInTouchMode(true);
            GameCommentActivity.this.f30947i.requestFocus();
            ((InputMethodManager) GameCommentActivity.this.f30947i.getContext().getSystemService("input_method")).showSoftInput(GameCommentActivity.this.f30947i, 0);
            GameCommentActivity.this.H = informationCommentBean.getComment_id();
            GameCommentActivity.this.J = Integer.parseInt(informationCommentBean.getUser_id());
            GameCommentActivity.this.I = informationCommentBean.getUser_name();
        }

        @Override // com.join.mgps.adapter.GameCommentAdapter.j
        public void d() {
        }
    }

    /* loaded from: classes3.dex */
    class c implements com.join.mgps.customview.i {
        c() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (GameCommentActivity.this.E) {
                return;
            }
            GameCommentActivity.this.M0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements com.join.mgps.customview.j {
        d() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (GameCommentActivity.this.E) {
                return;
            }
            GameCommentActivity.this.A = 1;
            GameCommentActivity.this.M0();
        }
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    private boolean isLogined(Context context) {
        AccountBean accountBean = accountBean(context);
        return accountBean != null && com.join.mgps.Util.d2.i(accountBean.getToken());
    }

    void J0(List<InformationCommentBean> list) {
        for (int i2 = 0; list != null && i2 < list.size(); i2++) {
            InformationCommentBean informationCommentBean = list.get(i2);
            if (informationCommentBean.isTitle()) {
                this.f30955o0.add(new GameCommentAdapter.l(GameCommentAdapter.ViewType.TITLE, new GameCommentAdapter.l.a(informationCommentBean)));
            } else {
                this.f30955o0.add(new GameCommentAdapter.l(GameCommentAdapter.ViewType.COMMENT, new GameCommentAdapter.l.a(informationCommentBean)));
                List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
                if (sub != null && sub.size() > 0) {
                    this.f30955o0.add(new GameCommentAdapter.l(GameCommentAdapter.ViewType.REPLY, new GameCommentAdapter.l.b(informationCommentBean.getComment_id(), informationCommentBean, 0, true)));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K0() {
        AccountBean accountData = AccountUtil_.getInstance_(this.B).getAccountData();
        if (accountData == null) {
            ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this.B).flags(268435456)).start();
            return;
        }
        String obj = this.f30947i.getText().toString();
        if (obj.length() == 0) {
            com.join.mgps.Util.i2.a(this.B).b("不能发表空字符串");
        } else if (obj.length() < 4) {
            com.join.mgps.Util.i2.a(this.B).b("发表评论不能小于4个");
        } else {
            ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
            if (IntentUtil.getInstance().goLoginInteractive(this)) {
                return;
            }
            this.f30947i.setText("");
            S0(accountData, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0() {
        this.f30957p0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void M0() {
        InformationCommentBack data;
        if (com.join.android.app.common.utils.f.j(this.B)) {
            this.E = true;
            try {
                try {
                    data = this.f30964v.y0(N0()).getMessages().getData();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                if (data != null) {
                    List<InformationCommentBean> hot = data.getHot();
                    List<InformationCommentBean> all = data.getAll();
                    List<InformationCommentBean> arrayList = new ArrayList<>();
                    if (hot != null && hot.size() > 0) {
                        InformationCommentBean informationCommentBean = new InformationCommentBean();
                        informationCommentBean.setIs_hot(1);
                        informationCommentBean.setTitle(true);
                        arrayList.add(informationCommentBean);
                        arrayList.addAll(hot);
                    }
                    if (all != null && all.size() > 0) {
                        if (this.A == 1) {
                            InformationCommentBean informationCommentBean2 = new InformationCommentBean();
                            informationCommentBean2.setIs_hot(2);
                            informationCommentBean2.setTitle(true);
                            arrayList.add(informationCommentBean2);
                        }
                        arrayList.addAll(all);
                    }
                    Z0(arrayList);
                    this.E = false;
                    return;
                }
                b1();
                showLodingFailed();
                this.E = false;
                return;
            } catch (Throwable th) {
                b1();
                showLodingFailed();
                this.E = false;
                throw th;
            }
        }
        b1();
        showLodingFailed();
    }

    public CommonRequestBean N0() {
        AccountBean accountData = AccountUtil_.getInstance_(this.B).getAccountData();
        this.F = accountData;
        if (accountData != null) {
            this.G = accountData.getUid();
        }
        return RequestBeanUtil.getInstance(this.B).getGameCommentListRequestBean(this.A, 10, this.G, this.f30966x, new int[]{1, 2});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void O0() {
        this.A = 1;
        M0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P0(InformationCommentBean informationCommentBean) {
        a1(informationCommentBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Q0(AccountBean accountBean, String str) {
        if (com.join.android.app.common.utils.f.j(this.B)) {
            Y0();
            try {
                try {
                } catch (Exception e4) {
                    e4.printStackTrace();
                    showMessage("评论失败");
                }
                if (IntentUtil.getInstance().goLoginInteractive(this)) {
                    return;
                }
                R0(accountBean, str);
                showMessage("评论失败");
                return;
            } finally {
                L0();
            }
        }
        showMessage("没有网络，请先检查网络。");
    }

    public CommonRequestBean R0(AccountBean accountBean, String str) {
        Random random = new Random(2000L);
        return RequestBeanUtil.getInstance(this.B).postGameCommentRequestBean(this.f30966x, this.G, accountBean.getAvatarSrc(), accountBean.getAccount(), com.join.android.app.common.utils.j.n(this.B).q(), UtilsMy.r1(), random.nextInt(), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void S0(AccountBean accountBean, String str) {
        if (com.join.android.app.common.utils.f.j(this.B)) {
            Y0();
            try {
                try {
                } catch (Exception e4) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("异常");
                    sb.append(e4.getMessage());
                    sb.append(e4.toString());
                    e4.printStackTrace();
                    showMessage("评论失败");
                }
                if (IntentUtil.getInstance().goLoginInteractive(this)) {
                    return;
                }
                ResultMainBean<CommitContextDataBean> n4 = this.f30964v.n(T0(accountBean, str));
                if (n4 != null) {
                    if (n4.getCode() == 706) {
                        showMessage(getString(R.string.tour_perfect_info_for_comment_toast));
                        IntentUtil.getInstance().goLoginInteractive(this);
                        return;
                    }
                    if (n4.getCode() == 806) {
                        showMessage(n4.getError_info());
                    }
                    if (n4.getFlag() == 1) {
                        showMessage("评论成功");
                        X0();
                        toastData(n4.getMessages().getData().getIs_reward());
                    } else {
                        showMessage("评论失败");
                    }
                } else {
                    showMessage("评论失败");
                }
                return;
            } finally {
                L0();
            }
        }
        showMessage("没有网络，请先检查网络。");
    }

    public CommonRequestBean T0(AccountBean accountBean, String str) {
        Random random = new Random(2000L);
        return RequestBeanUtil.getInstance(this.B).postGameCommentRelpyRequestBean(this.G, this.f30966x, accountBean.getAvatarSrc(), accountBean.getAccount(), com.join.android.app.common.utils.j.n(this.B).q(), UtilsMy.r1(), random.nextInt(), str, this.H, this.I, this.J);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void U0(InformationCommentBean informationCommentBean) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                if (IntentUtil.getInstance().goLoginInteractive(this)) {
                    return;
                }
                ResultMainBean<List<PariseBackData>> b4 = this.f30964v.b(V0(informationCommentBean.getComment_id()));
                if (b4 != null && b4.getFlag() == 1) {
                    List<PariseBackData> data = b4.getMessages().getData();
                    if (data.size() > 0) {
                        int i2 = 0;
                        if (data.get(0).isVal()) {
                            informationCommentBean.setHasPraised(true);
                            try {
                                i2 = Integer.parseInt(informationCommentBean.getPraise_count()) + 1;
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                            informationCommentBean.setPraise_count(i2 + "");
                            a1(informationCommentBean);
                            return;
                        }
                        showMessage("你已赞过");
                        return;
                    }
                    showMessage("你已赞过");
                    return;
                }
                P0(informationCommentBean);
                showMessage("点赞失败");
                return;
            } catch (Exception e5) {
                e5.printStackTrace();
                P0(informationCommentBean);
                showMessage("点赞失败");
                return;
            }
        }
        showMessage("没有网络");
    }

    public CommonRequestBean V0(String str) {
        AccountBean accountData = AccountUtil_.getInstance_(this.B).getAccountData();
        this.F = accountData;
        if (accountData != null) {
            this.G = accountData.getUid();
        }
        return RequestBeanUtil.getInstance(this.B).postPraisedRequestBean(str, this.G, this.f30966x);
    }

    void W0() {
        this.f30955o0.clear();
        J0(this.D);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X0() {
        this.f30947i.setHint("添加评论");
        this.H = "0";
        this.J = 0;
        this.I = "";
        this.A = 1;
        this.f30943e.k();
        M0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y0() {
        this.f30957p0.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z0(List<InformationCommentBean> list) {
        if (this.A == 1) {
            this.f30945g.setVisibility(8);
            this.f30944f.setVisibility(8);
            this.f30946h.setVisibility(0);
            this.f30942d.setVisibility(0);
            this.D.clear();
            this.f30955o0.clear();
        }
        this.A++;
        this.D.addAll(list);
        J0(list);
        this.f30943e.t();
        this.f30943e.u();
        if (list.size() < 10) {
            this.f30943e.setNoMore();
        }
        this.C.notifyDataSetChanged();
        if (this.f30967y) {
            this.f30967y = false;
            Message message = new Message();
            message.what = 3;
            this.K.sendMessageDelayed(message, 300L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a1(InformationCommentBean informationCommentBean) {
        Iterator<InformationCommentBean> it2 = this.D.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            InformationCommentBean next = it2.next();
            if (informationCommentBean.getComment_id() == next.getComment_id()) {
                next.setHasPraised(informationCommentBean.isHasPraised());
                break;
            }
        }
        this.C.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f30964v = com.join.mgps.rpc.impl.c.P1();
        this.B = this;
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.F = accountData;
        if (accountData != null) {
            this.G = accountData.getUid();
        }
        this.f30957p0 = com.join.mgps.Util.a0.c0(this.B).x(this.B);
        showLoding();
        M0();
        this.f30941c.setText("评论");
        this.f30947i.setHint("评论一下吧");
        this.f30941c.setVisibility(0);
        this.f30948j.setVisibility(8);
        this.f30954o.setVisibility(8);
        this.f30950l.setVisibility(8);
        this.f30955o0 = new ArrayList();
        this.D = new ArrayList();
        b bVar = new b();
        if (this.f30968z != null) {
            ClearEditText clearEditText = this.f30947i;
            clearEditText.setHint("@" + this.f30968z.getUser_name() + "：");
            this.f30947i.setFocusable(true);
            this.f30947i.setFocusableInTouchMode(true);
            this.f30947i.requestFocus();
            ((InputMethodManager) this.f30947i.getContext().getSystemService("input_method")).showSoftInput(this.f30947i, 0);
            this.H = this.f30968z.getComment_id();
            this.J = Integer.parseInt(this.f30968z.getUser_id());
            this.I = this.f30968z.getUser_name();
        }
        GameCommentAdapter gameCommentAdapter = new GameCommentAdapter(this.B, this.f30955o0, bVar);
        this.C = gameCommentAdapter;
        this.f30943e.setAdapter((ListAdapter) gameCommentAdapter);
        this.f30943e.setPreLoadCount(10);
        this.f30943e.setVerticalScrollBarEnabled(false);
        this.f30943e.setPullLoadEnable(new c());
        this.f30943e.setPullRefreshEnable(new d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b1() {
        this.f30943e.t();
        this.f30943e.u();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
            if (inputMethodManager != null && getCurrentFocus() != null) {
                inputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        finish();
    }

    boolean c1() {
        if (accountBean(this.B) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        AccountBean accountData = AccountUtil_.getInstance_(this.B).getAccountData();
        this.F = accountData;
        if (accountData != null) {
            this.G = accountData.getUid();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.A = 1;
        showLoding();
        M0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f30944f.setVisibility(0);
        this.f30945g.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<InformationCommentBean> list = this.D;
        if (list != null && list.size() != 0) {
            Toast.makeText(this, getString(R.string.net_connect_failed), 0).show();
            return;
        }
        this.f30946h.setVisibility(8);
        this.f30945g.setVisibility(0);
        this.f30944f.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this.B).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void toastData(RewardBean rewardBean) {
        if (rewardBean != null) {
            rewardBean.getOn_off();
        }
    }
}
