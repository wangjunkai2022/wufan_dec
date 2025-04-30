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
import com.join.mgps.dto.CollectionCommentRequest;
import com.join.mgps.dto.InformationCommentBack;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.InformationSendBack;
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
public class CollectionCommentActivity extends BaseActivity {
    private InformationAdapter A;
    private List<InformationCommentBean> B;
    private AccountBean D;
    private int F;
    private ViewTreeObserver G;
    private List<InformationAdapter.n> I;
    com.join.mgps.dialog.x0 J;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f28767a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f28768b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f28769c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f28770d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    XListView2 f28771e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f28772f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f28773g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    FrameLayout f28774h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    ClearEditText f28775i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    Button f28776j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    Button f28777k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f28778l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    ImageView f28779m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    TextView f28780n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    Button f28781o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    LinearLayout f28782p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    View f28783q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    LinearLayout f28784r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    HListView f28785s;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    TextView f28786t;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    KeyboardListenLayout f28787u;

    /* renamed from: v  reason: collision with root package name */
    com.join.mgps.rpc.d f28788v;
    @Extra

    /* renamed from: w  reason: collision with root package name */
    String f28789w;
    @Extra

    /* renamed from: x  reason: collision with root package name */
    InformationCommentBean f28790x;

    /* renamed from: z  reason: collision with root package name */
    private Context f28792z;

    /* renamed from: y  reason: collision with root package name */
    private int f28791y = 1;
    private boolean C = false;
    Handler E = new a();
    private boolean H = true;
    com.join.mgps.customview.t K = null;

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                if (CollectionCommentActivity.this.D == null) {
                    IntentUtil.getInstance().goLoginInteractive(CollectionCommentActivity.this.f28792z);
                    return;
                }
                CollectionCommentActivity.this.Q0((InformationCommentBean) message.obj);
            } else if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                CollectionCommentActivity.this.f28775i.setFocusable(true);
                CollectionCommentActivity.this.f28775i.setFocusableInTouchMode(true);
                CollectionCommentActivity.this.f28775i.requestFocus();
                ((InputMethodManager) CollectionCommentActivity.this.f28775i.getContext().getSystemService("input_method")).showSoftInput(CollectionCommentActivity.this.f28775i, 0);
            } else {
                InformationCommentBean informationCommentBean = (InformationCommentBean) message.obj;
                if (informationCommentBean.isTitle()) {
                    return;
                }
                CollectionCommentActivity collectionCommentActivity = CollectionCommentActivity.this;
                collectionCommentActivity.f28790x = informationCommentBean;
                collectionCommentActivity.f28775i.setFocusable(true);
                CollectionCommentActivity.this.f28775i.setFocusableInTouchMode(true);
                CollectionCommentActivity.this.f28775i.requestFocus();
                ((InputMethodManager) CollectionCommentActivity.this.f28775i.getContext().getSystemService("input_method")).showSoftInput(CollectionCommentActivity.this.f28775i, 0);
                ClearEditText clearEditText = CollectionCommentActivity.this.f28775i;
                clearEditText.setHint("@" + CollectionCommentActivity.this.f28790x.getUser_name() + ":");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements InformationAdapter.l {
        b() {
        }

        @Override // com.join.mgps.adapter.InformationAdapter.l
        public void a(InformationCommentBean informationCommentBean) {
            Message obtainMessage = CollectionCommentActivity.this.E.obtainMessage();
            obtainMessage.what = 1;
            obtainMessage.obj = informationCommentBean;
            obtainMessage.sendToTarget();
        }

        @Override // com.join.mgps.adapter.InformationAdapter.l
        public void b(InformationCommentBean.Sub sub) {
            ClearEditText clearEditText = CollectionCommentActivity.this.f28775i;
            clearEditText.setHint("@" + sub.getUser_name() + "：");
            CollectionCommentActivity.this.f28775i.setFocusable(true);
            CollectionCommentActivity.this.f28775i.setFocusableInTouchMode(true);
            CollectionCommentActivity.this.f28775i.requestFocus();
            ((InputMethodManager) CollectionCommentActivity.this.f28775i.getContext().getSystemService("input_method")).showSoftInput(CollectionCommentActivity.this.f28775i, 0);
            CollectionCommentActivity collectionCommentActivity = CollectionCommentActivity.this;
            if (collectionCommentActivity.f28790x == null) {
                collectionCommentActivity.f28790x = new InformationCommentBean();
            }
            CollectionCommentActivity.this.f28790x.setComment_id(sub.getComment_id());
            CollectionCommentActivity.this.f28790x.setUser_id(sub.getUser_id());
            CollectionCommentActivity.this.f28790x.setUser_name(sub.getUser_name());
        }

        @Override // com.join.mgps.adapter.InformationAdapter.l
        public void c(InformationCommentBean informationCommentBean) {
            ClearEditText clearEditText = CollectionCommentActivity.this.f28775i;
            clearEditText.setHint("@" + informationCommentBean.getUser_name() + "：");
            CollectionCommentActivity.this.f28775i.setFocusable(true);
            CollectionCommentActivity.this.f28775i.setFocusableInTouchMode(true);
            CollectionCommentActivity.this.f28775i.requestFocus();
            ((InputMethodManager) CollectionCommentActivity.this.f28775i.getContext().getSystemService("input_method")).showSoftInput(CollectionCommentActivity.this.f28775i, 0);
            CollectionCommentActivity.this.f28790x = informationCommentBean;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements com.join.mgps.customview.i {
        c() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (CollectionCommentActivity.this.C) {
                return;
            }
            CollectionCommentActivity.this.L0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements com.join.mgps.customview.j {
        d() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (CollectionCommentActivity.this.C) {
                return;
            }
            CollectionCommentActivity.this.f28791y = 1;
            CollectionCommentActivity.this.L0();
        }
    }

    private void J0() {
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
    public void I0() {
        AccountBean accountData = AccountUtil_.getInstance_(this.f28792z).getAccountData();
        if (accountData == null) {
            ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this.f28792z).flags(268435456)).start();
            return;
        }
        String obj = this.f28775i.getText().toString();
        if (obj.length() == 0) {
            com.join.mgps.Util.i2.a(this.f28792z).b("不能发表空字符串");
        } else if (obj.length() < 4) {
            com.join.mgps.Util.i2.a(this.f28792z).b("发表评论不能小于4个");
        } else {
            ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
            if (IntentUtil.getInstance().goLoginInteractive(this)) {
                return;
            }
            this.f28775i.setText("");
            P0(accountData, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0() {
        this.J.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0() {
        if (com.join.android.app.common.utils.f.j(this.f28792z) && !this.C) {
            this.C = true;
            List<InformationCommentBean> arrayList = new ArrayList<>();
            try {
                try {
                    CollectionCommentRequest collectionCommentRequest = new CollectionCommentRequest();
                    collectionCommentRequest.setComment_type(new int[]{1, 2});
                    collectionCommentRequest.setCollection_id(this.f28789w);
                    collectionCommentRequest.setPn(this.f28791y);
                    collectionCommentRequest.setPc(20);
                    AccountBean accountBean = this.D;
                    if (accountBean != null) {
                        collectionCommentRequest.setUid(accountBean.getUid());
                    }
                    InformationCommentBack data = this.f28788v.f(RequestBeanUtil.getInstance(this).getGameInformationComment(collectionCommentRequest)).getMessages().getData();
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
                            if (this.f28791y == 1) {
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
                            N0();
                        } else {
                            this.f28791y++;
                        }
                        T0(arrayList);
                        V0();
                    } else {
                        if (this.f28791y == 1) {
                            T0(arrayList);
                        }
                        V0();
                        N0();
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
    public void M0() {
        this.f28791y = 1;
        L0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N0() {
        this.f28771e.setNoMore();
    }

    void O0() {
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
    public void P0(AccountBean accountBean, String str) {
        ResultMainBean<InformationSendBack> w12;
        if (com.join.android.app.common.utils.f.j(this.f28792z)) {
            if (IntentUtil.getInstance().goLoginInteractive(this)) {
                return;
            }
            S0();
            InformationSendRequestBean informationSendRequestBean = new InformationSendRequestBean();
            informationSendRequestBean.setCollection_id(this.f28789w);
            informationSendRequestBean.setType(2);
            informationSendRequestBean.setUid(accountBean.getUid());
            informationSendRequestBean.setContent(str);
            informationSendRequestBean.setHead_portrait(accountBean.getAvatarSrc());
            informationSendRequestBean.setUser_name(accountBean.getAccount());
            informationSendRequestBean.setRandom_num(this.F);
            informationSendRequestBean.setIp_address(UtilsMy.r1());
            informationSendRequestBean.setMobile_phone_model(com.join.android.app.common.utils.j.n(this.f28792z).q());
            informationSendRequestBean.setIs_anonymous(0);
            InformationCommentBean informationCommentBean = this.f28790x;
            if (informationCommentBean != null) {
                informationSendRequestBean.setReply_comment_id(informationCommentBean.getComment_id());
                informationSendRequestBean.setReply_comment_user_name(this.f28790x.getUser_name());
                informationSendRequestBean.setReply_comment_user_id(this.f28790x.getUser_id());
            }
            try {
                try {
                    w12 = this.f28788v.w1(RequestBeanUtil.getInstance(this).sendInformationComment(informationSendRequestBean));
                } catch (Exception e4) {
                    e4.printStackTrace();
                    showMessage("评论失败");
                }
                if (w12 != null && w12.getCode() == 706) {
                    showMessage(getString(R.string.tour_perfect_info_for_comment_toast));
                    IntentUtil.getInstance().goLoginInteractive(this);
                    return;
                }
                if (w12.getCode() == 806) {
                    showMessage(w12.getError_info());
                }
                if (w12.getFlag() == 1) {
                    R0();
                    showMessage("评论成功");
                    toastData(w12.getMessages().getData().getIs_reward());
                } else {
                    showMessage("评论失败");
                }
                return;
            } finally {
                K0();
            }
        }
        showMessage("没有网络，请先检查网络。");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Q0(InformationCommentBean informationCommentBean) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                if (IntentUtil.getInstance().goLoginInteractive(this)) {
                    return;
                }
                PariseRequest pariseRequest = new PariseRequest();
                pariseRequest.setCollection_id(informationCommentBean.getCollection_id());
                pariseRequest.setComment_id(informationCommentBean.getComment_id());
                pariseRequest.setUid(this.D.getUid());
                ResultMainBean<List<PariseBackData>> u12 = this.f28788v.u1(RequestBeanUtil.getInstance(this).getGameInformationParis(pariseRequest));
                if (u12 != null && u12.getCode() == 706) {
                    showMessage("完善资料后就可点赞哦");
                    IntentUtil.getInstance().goLoginInteractive(this);
                    return;
                } else if (u12 != null && u12.getFlag() == 1) {
                    List<PariseBackData> data = u12.getMessages().getData();
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
                            U0(informationCommentBean);
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
    public void R0() {
        this.f28775i.setHint("添加评论");
        this.f28790x = null;
        this.f28771e.k();
        this.f28791y = 1;
        L0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S0() {
        this.J.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T0(List<InformationCommentBean> list) {
        if (list != null && list.size() != 0) {
            this.f28770d.setVisibility(8);
            this.f28773g.setVisibility(8);
            this.f28772f.setVisibility(8);
            this.f28774h.setVisibility(0);
            if (this.f28791y == 2) {
                this.B.clear();
            }
            this.B.addAll(list);
            O0();
            if (this.f28790x == null || !this.H) {
                return;
            }
            this.H = false;
            Message message = new Message();
            message.what = 3;
            this.E.sendMessageDelayed(message, 300L);
            if (com.join.mgps.Util.d2.h(this.f28790x.getCollection_id())) {
                return;
            }
            ClearEditText clearEditText = this.f28775i;
            clearEditText.setHint("@" + this.f28790x.getUser_name() + ":");
        } else if (this.f28791y == 1) {
            this.f28773g.setVisibility(8);
            this.f28772f.setVisibility(8);
            this.f28774h.setVisibility(0);
            this.f28770d.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U0(InformationCommentBean informationCommentBean) {
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
        O0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V0() {
        this.f28771e.t();
        this.f28771e.u();
    }

    boolean W0() {
        if (accountBean(this.f28792z) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f28788v = com.join.mgps.rpc.impl.c.P1();
        this.f28792z = this;
        this.D = AccountUtil_.getInstance_(this).getAccountData();
        this.J = com.join.mgps.Util.a0.c0(this.f28792z).x(this.f28792z);
        showLoding();
        L0();
        this.f28769c.setText("评论");
        this.f28775i.setHint("评论一下吧");
        this.f28769c.setVisibility(0);
        this.f28776j.setVisibility(8);
        this.f28781o.setVisibility(8);
        this.f28778l.setVisibility(8);
        this.B = new ArrayList();
        this.I = new ArrayList();
        b bVar = new b();
        InformationAdapter informationAdapter = new InformationAdapter(this.f28792z, this.E, this.I);
        this.A = informationAdapter;
        informationAdapter.m(bVar);
        this.f28771e.setAdapter((ListAdapter) this.A);
        this.f28771e.setPreLoadCount(5);
        this.f28771e.setVerticalScrollBarEnabled(false);
        this.f28771e.setPullLoadEnable(new c());
        this.f28771e.setPullRefreshEnable(new d());
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
        this.D = AccountUtil_.getInstance_(this.f28792z).getAccountData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f28791y = 1;
        showLoding();
        L0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f28772f.setVisibility(0);
        this.f28773g.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<InformationCommentBean> list = this.B;
        if (list != null && list.size() != 0) {
            Toast.makeText(this, getString(R.string.net_connect_failed), 0).show();
            return;
        }
        this.f28773g.setVisibility(0);
        this.f28772f.setVisibility(8);
        this.f28774h.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this.f28792z).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.f28792z).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void toastData(RewardBean rewardBean) {
        if (rewardBean != null) {
            rewardBean.getOn_off();
        }
    }
}
