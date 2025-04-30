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
import com.join.mgps.adapter.InformationAdapter;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommitContextDataBean;
import com.join.mgps.dto.GameInformationCommentRequest;
import com.join.mgps.dto.InformationCommentBack;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.InformationSendRequestBean;
import com.join.mgps.dto.PariseBackData;
import com.join.mgps.dto.PariseRequest;
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
public class GameInformationCommentActivity extends BaseActivity {
    private InformationAdapter A;
    private List<InformationCommentBean> B;
    private AccountBean D;
    private int F;
    private ViewTreeObserver G;
    private List<InformationAdapter.n> I;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f31580a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f31581b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f31582c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f31583d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    XListView2 f31584e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f31585f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f31586g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    FrameLayout f31587h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    ClearEditText f31588i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    Button f31589j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    Button f31590k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f31591l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    ImageView f31592m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    TextView f31593n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    Button f31594o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    LinearLayout f31595p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    View f31596q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    LinearLayout f31597r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    HListView f31598s;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    TextView f31599t;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    KeyboardListenLayout f31600u;

    /* renamed from: v  reason: collision with root package name */
    com.join.mgps.rpc.d f31601v;
    @Extra

    /* renamed from: w  reason: collision with root package name */
    String f31602w;
    @Extra

    /* renamed from: x  reason: collision with root package name */
    InformationCommentBean f31603x;

    /* renamed from: z  reason: collision with root package name */
    private Context f31605z;

    /* renamed from: y  reason: collision with root package name */
    private int f31604y = 1;
    private boolean C = false;
    Handler E = new a();
    private boolean H = true;
    private com.join.mgps.dialog.x0 J = null;
    com.join.mgps.customview.t K = null;

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                if (IntentUtil.getInstance().goLoginInteractive(GameInformationCommentActivity.this.f31605z)) {
                    return;
                }
                GameInformationCommentActivity.this.P0((InformationCommentBean) message.obj);
            } else if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                GameInformationCommentActivity.this.f31588i.setFocusable(true);
                GameInformationCommentActivity.this.f31588i.setFocusableInTouchMode(true);
                GameInformationCommentActivity.this.f31588i.requestFocus();
                ((InputMethodManager) GameInformationCommentActivity.this.f31588i.getContext().getSystemService("input_method")).showSoftInput(GameInformationCommentActivity.this.f31588i, 0);
            } else {
                InformationCommentBean informationCommentBean = (InformationCommentBean) message.obj;
                if (informationCommentBean.isTitle()) {
                    return;
                }
                GameInformationCommentActivity gameInformationCommentActivity = GameInformationCommentActivity.this;
                gameInformationCommentActivity.f31603x = informationCommentBean;
                gameInformationCommentActivity.f31588i.setFocusable(true);
                GameInformationCommentActivity.this.f31588i.setFocusableInTouchMode(true);
                GameInformationCommentActivity.this.f31588i.requestFocus();
                ((InputMethodManager) GameInformationCommentActivity.this.f31588i.getContext().getSystemService("input_method")).showSoftInput(GameInformationCommentActivity.this.f31588i, 0);
                ClearEditText clearEditText = GameInformationCommentActivity.this.f31588i;
                clearEditText.setHint("@" + GameInformationCommentActivity.this.f31603x.getUser_name() + ":");
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements InformationAdapter.l {
        b() {
        }

        @Override // com.join.mgps.adapter.InformationAdapter.l
        public void a(InformationCommentBean informationCommentBean) {
            Message obtainMessage = GameInformationCommentActivity.this.E.obtainMessage();
            obtainMessage.what = 1;
            obtainMessage.obj = informationCommentBean;
            obtainMessage.sendToTarget();
        }

        @Override // com.join.mgps.adapter.InformationAdapter.l
        public void b(InformationCommentBean.Sub sub) {
            ClearEditText clearEditText = GameInformationCommentActivity.this.f31588i;
            clearEditText.setHint("@" + sub.getUser_name() + "：");
            GameInformationCommentActivity.this.f31588i.setFocusable(true);
            GameInformationCommentActivity.this.f31588i.setFocusableInTouchMode(true);
            GameInformationCommentActivity.this.f31588i.requestFocus();
            ((InputMethodManager) GameInformationCommentActivity.this.f31588i.getContext().getSystemService("input_method")).showSoftInput(GameInformationCommentActivity.this.f31588i, 0);
            GameInformationCommentActivity gameInformationCommentActivity = GameInformationCommentActivity.this;
            if (gameInformationCommentActivity.f31603x == null) {
                gameInformationCommentActivity.f31603x = new InformationCommentBean();
            }
            GameInformationCommentActivity.this.f31603x.setComment_id(sub.getComment_id());
            GameInformationCommentActivity.this.f31603x.setUser_id(sub.getUser_id());
            GameInformationCommentActivity.this.f31603x.setUser_name(sub.getUser_name());
        }

        @Override // com.join.mgps.adapter.InformationAdapter.l
        public void c(InformationCommentBean informationCommentBean) {
            ClearEditText clearEditText = GameInformationCommentActivity.this.f31588i;
            clearEditText.setHint("@" + informationCommentBean.getUser_name() + "：");
            GameInformationCommentActivity.this.f31588i.setFocusable(true);
            GameInformationCommentActivity.this.f31588i.setFocusableInTouchMode(true);
            GameInformationCommentActivity.this.f31588i.requestFocus();
            ((InputMethodManager) GameInformationCommentActivity.this.f31588i.getContext().getSystemService("input_method")).showSoftInput(GameInformationCommentActivity.this.f31588i, 0);
            GameInformationCommentActivity.this.f31603x = informationCommentBean;
        }
    }

    /* loaded from: classes3.dex */
    class c implements com.join.mgps.customview.i {
        c() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (GameInformationCommentActivity.this.C) {
                return;
            }
            GameInformationCommentActivity.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements com.join.mgps.customview.j {
        d() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (GameInformationCommentActivity.this.C) {
                return;
            }
            GameInformationCommentActivity.this.f31604y = 1;
            GameInformationCommentActivity.this.K0();
        }
    }

    private void I0() {
        com.join.mgps.customview.t tVar = this.K;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.K.dismiss();
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    private boolean isLogined(Context context) {
        AccountBean accountBean = accountBean(context);
        return accountBean != null && com.join.mgps.Util.d2.i(accountBean.getToken());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        AccountBean accountData = AccountUtil_.getInstance_(this.f31605z).getAccountData();
        if (accountData == null) {
            ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this.f31605z).flags(268435456)).start();
            return;
        }
        String obj = this.f31588i.getText().toString();
        if (obj.length() == 0) {
            com.join.mgps.Util.i2.a(this.f31605z).b("不能发表空字符串");
        } else if (obj.length() < 4) {
            com.join.mgps.Util.i2.a(this.f31605z).b("发表评论不能小于4个");
        } else {
            ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
            if (IntentUtil.getInstance().goLoginInteractive(this)) {
                return;
            }
            this.f31588i.setText("");
            O0(accountData, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0() {
        this.J.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void K0() {
        if (com.join.android.app.common.utils.f.j(this.f31605z) && !this.C) {
            this.C = true;
            List<InformationCommentBean> arrayList = new ArrayList<>();
            try {
                try {
                    GameInformationCommentRequest gameInformationCommentRequest = new GameInformationCommentRequest();
                    gameInformationCommentRequest.setComment_type(new int[]{1, 2});
                    gameInformationCommentRequest.setInformation_id(this.f31602w);
                    gameInformationCommentRequest.setPn(this.f31604y);
                    gameInformationCommentRequest.setPc(20);
                    AccountBean accountBean = this.D;
                    if (accountBean != null) {
                        gameInformationCommentRequest.setUid(accountBean.getUid());
                    }
                    InformationCommentBack data = this.f31601v.k0(RequestBeanUtil.getInstance(this).getGameInformationComment(gameInformationCommentRequest)).getMessages().getData();
                    if (data != null) {
                        List<InformationCommentBean> hot = data.getHot();
                        List<InformationCommentBean> all = data.getAll();
                        if (hot != null && hot.size() > 0) {
                            InformationCommentBean informationCommentBean = new InformationCommentBean();
                            informationCommentBean.setIs_hot(1);
                            informationCommentBean.setTitle(true);
                            arrayList.add(informationCommentBean);
                            arrayList.addAll(hot);
                        }
                        if (all != null && all.size() > 0) {
                            if (this.f31604y == 1) {
                                InformationCommentBean informationCommentBean2 = new InformationCommentBean();
                                informationCommentBean2.setIs_hot(2);
                                informationCommentBean2.setTitle(true);
                                arrayList.add(informationCommentBean2);
                            }
                            arrayList.addAll(all);
                        }
                    }
                    if (arrayList.size() > 0) {
                        if (arrayList.size() == 0) {
                            M0();
                        } else {
                            this.f31604y++;
                        }
                        S0(arrayList);
                        V0();
                    } else {
                        if (this.f31604y == 1) {
                            S0(arrayList);
                        }
                        V0();
                        M0();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    V0();
                    showLodingFailed();
                }
                return;
            } finally {
                this.C = false;
            }
        }
        V0();
        showLodingFailed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        this.f31604y = 1;
        K0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0() {
        this.f31584e.setNoMore();
    }

    void N0() {
        this.I.clear();
        if (this.B == null) {
            return;
        }
        for (int i2 = 0; i2 < this.B.size(); i2++) {
            InformationCommentBean informationCommentBean = this.B.get(i2);
            if (informationCommentBean.isTitle()) {
                this.I.add(new InformationAdapter.n(InformationAdapter.ViewType.TITLE, new InformationAdapter.n.a(informationCommentBean)));
            } else {
                this.I.add(new InformationAdapter.n(InformationAdapter.ViewType.COMMENT, new InformationAdapter.n.a(informationCommentBean)));
                List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
                if (sub != null && sub.size() > 0) {
                    this.I.add(new InformationAdapter.n(InformationAdapter.ViewType.REPLY, new InformationAdapter.n.b(informationCommentBean.getComment_id(), informationCommentBean, 0, true)));
                }
            }
        }
        this.A.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O0(AccountBean accountBean, String str) {
        ResultMainBean<CommitContextDataBean> m12;
        if (com.join.android.app.common.utils.f.j(this.f31605z)) {
            if (IntentUtil.getInstance().goLoginInteractive(this)) {
                return;
            }
            R0();
            InformationSendRequestBean informationSendRequestBean = new InformationSendRequestBean();
            informationSendRequestBean.setInformation_id(this.f31602w);
            informationSendRequestBean.setType(2);
            informationSendRequestBean.setUid(accountBean.getUid());
            informationSendRequestBean.setContent(str);
            informationSendRequestBean.setHead_portrait(accountBean.getAvatarSrc());
            informationSendRequestBean.setUser_name(accountBean.getAccount());
            informationSendRequestBean.setRandom_num(this.F);
            informationSendRequestBean.setIp_address(UtilsMy.r1());
            informationSendRequestBean.setMobile_phone_model(com.join.android.app.common.utils.j.n(this.f31605z).q());
            informationSendRequestBean.setIs_anonymous(0);
            InformationCommentBean informationCommentBean = this.f31603x;
            if (informationCommentBean != null) {
                informationSendRequestBean.setReply_comment_id(informationCommentBean.getComment_id());
                informationSendRequestBean.setReply_comment_user_name(this.f31603x.getUser_name());
                informationSendRequestBean.setReply_comment_user_id(this.f31603x.getUser_id());
            }
            try {
                try {
                    m12 = this.f31601v.m1(RequestBeanUtil.getInstance(this).sendInformationComment(informationSendRequestBean));
                } catch (Exception e4) {
                    e4.printStackTrace();
                    showMessage("评论失败");
                }
                if (m12 != null && m12.getCode() == 706) {
                    showMessage(getString(R.string.tour_perfect_info_for_comment_toast));
                    IntentUtil.getInstance().goLoginInteractive(this);
                    return;
                }
                if (m12.getCode() == 806) {
                    showMessage(m12.getError_info());
                }
                if (m12.getFlag() == 1) {
                    showMessage("评论成功");
                    U0();
                    toastData(m12.getMessages().getData().getIs_reward());
                } else {
                    showMessage("评论失败");
                }
                return;
            } finally {
                J0();
            }
        }
        showMessage("没有网络，请先检查网络。");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void P0(InformationCommentBean informationCommentBean) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                if (IntentUtil.getInstance().goLoginInteractive(this)) {
                    return;
                }
                PariseRequest pariseRequest = new PariseRequest();
                pariseRequest.setInformation_id(informationCommentBean.getInformation_id());
                pariseRequest.setComment_id(informationCommentBean.getComment_id());
                pariseRequest.setUid(this.D.getUid());
                ResultMainBean<List<PariseBackData>> p02 = this.f31601v.p0(RequestBeanUtil.getInstance(this).getGameInformationParis(pariseRequest));
                if (p02 != null && p02.getCode() == 706) {
                    showMessage("完善资料后就可点赞哦");
                    IntentUtil.getInstance().goLoginInteractive(this);
                    return;
                } else if (p02 != null && p02.getFlag() == 1) {
                    List<PariseBackData> data = p02.getMessages().getData();
                    if (data.size() > 0) {
                        int i2 = 0;
                        if (data.get(0).isVal()) {
                            informationCommentBean.setHasPraised(true);
                            try {
                                i2 = Integer.parseInt(informationCommentBean.getPraise_count());
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                            informationCommentBean.setPraise_count((i2 + 1) + "");
                            T0(informationCommentBean);
                            return;
                        }
                        showToast("你已赞过");
                        return;
                    }
                    showToast("你已赞过");
                    return;
                } else {
                    showToast("点赞失败");
                    return;
                }
            } catch (Exception e5) {
                e5.printStackTrace();
                showToast("点赞失败");
                return;
            }
        }
        showToast("没有网络");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q0() {
        this.f31588i.setHint("添加评论");
        this.f31603x = null;
        this.f31584e.k();
        this.f31604y = 1;
        K0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R0() {
        this.J.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S0(List<InformationCommentBean> list) {
        if (list != null && list.size() != 0) {
            this.f31583d.setVisibility(8);
            this.f31586g.setVisibility(8);
            this.f31585f.setVisibility(8);
            this.f31587h.setVisibility(0);
            if (this.f31604y == 2) {
                this.B.clear();
            }
            this.B.addAll(list);
            N0();
            if (this.f31603x == null || !this.H) {
                return;
            }
            this.H = false;
            Message message = new Message();
            message.what = 3;
            this.E.sendMessageDelayed(message, 300L);
            if (com.join.mgps.Util.d2.h(this.f31603x.getInformation_id())) {
                return;
            }
            ClearEditText clearEditText = this.f31588i;
            clearEditText.setHint("@" + this.f31603x.getUser_name() + ":");
        } else if (this.f31604y == 1) {
            this.f31586g.setVisibility(8);
            this.f31585f.setVisibility(8);
            this.f31587h.setVisibility(0);
            this.f31583d.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T0(InformationCommentBean informationCommentBean) {
        Iterator<InformationCommentBean> it2 = this.B.iterator();
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
        N0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U0() {
        this.f31603x = null;
        this.f31588i.setHint("添加评论");
        this.f31604y = 1;
        K0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V0() {
        this.f31584e.t();
        this.f31584e.u();
    }

    boolean W0() {
        if (accountBean(this.f31605z) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f31601v = com.join.mgps.rpc.impl.c.P1();
        this.D = AccountUtil_.getInstance_(this.f31605z).getAccountData();
        this.f31605z = this;
        showLoding();
        this.J = com.join.mgps.Util.a0.c0(this.f31605z).x(this.f31605z);
        K0();
        this.f31582c.setText("评论");
        this.f31588i.setHint("评论一下吧");
        this.f31582c.setVisibility(0);
        this.f31589j.setVisibility(8);
        this.f31594o.setVisibility(8);
        this.f31591l.setVisibility(8);
        this.B = new ArrayList();
        this.I = new ArrayList();
        b bVar = new b();
        if (this.f31603x != null) {
            ClearEditText clearEditText = this.f31588i;
            clearEditText.setHint("@" + this.f31603x.getUser_name() + "：");
            this.f31588i.setFocusable(true);
            this.f31588i.setFocusableInTouchMode(true);
            this.f31588i.requestFocus();
            ((InputMethodManager) this.f31588i.getContext().getSystemService("input_method")).showSoftInput(this.f31588i, 0);
        }
        InformationAdapter informationAdapter = new InformationAdapter(this.f31605z, this.E, this.I);
        this.A = informationAdapter;
        informationAdapter.m(bVar);
        this.f31584e.setAdapter((ListAdapter) this.A);
        this.f31584e.setPreLoadCount(5);
        this.f31584e.setVerticalScrollBarEnabled(false);
        this.f31584e.setPullLoadEnable(new c());
        this.f31584e.setPullRefreshEnable(new d());
        this.F = new Random(2000L).nextInt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
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
        this.D = AccountUtil_.getInstance_(this.f31605z).getAccountData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f31604y = 1;
        showLoding();
        K0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f31585f.setVisibility(0);
        this.f31586g.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<InformationCommentBean> list = this.B;
        if (list != null && list.size() != 0) {
            Toast.makeText(this, getString(R.string.net_connect_failed), 0).show();
            return;
        }
        this.f31586g.setVisibility(0);
        this.f31585f.setVisibility(8);
        this.f31587h.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this.f31605z).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.f31605z).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void toastData(RewardBean rewardBean) {
        if (rewardBean != null) {
            rewardBean.getOn_off();
        }
    }
}
