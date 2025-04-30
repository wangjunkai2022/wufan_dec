package com.join.mgps.fragment;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import androidx.fragment.app.Fragment;
import com.MApplication;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.ShareWebActivity_;
import com.join.mgps.activity.VoucherCodesBoxActivity_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccountUserInfoRequestBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.JumpInfoBean;
import com.join.mgps.dto.MessageRedPointBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.dto.UserCenterBean;
import com.join.mgps.pref.PrefDef_;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import q.rorbin.badgeview.QBadgeView;
/* compiled from: UserCenterFragment.java */
@EFragment(R.layout.fragment_usercenter)
/* loaded from: classes.dex */
public class u4 extends Fragment {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    SimpleDraweeView f50452a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f50453b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f50454c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ImageView f50455d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f50456e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f50457f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f50458g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f50459h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f50460i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    LinearLayout f50461j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    LinearLayout f50462k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    LinearLayout f50463l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    GridView f50464m;

    /* renamed from: n  reason: collision with root package name */
    h f50465n;

    /* renamed from: p  reason: collision with root package name */
    private AccountBean f50467p;

    /* renamed from: q  reason: collision with root package name */
    private Activity f50468q;

    /* renamed from: r  reason: collision with root package name */
    com.join.mgps.rpc.b f50469r;

    /* renamed from: s  reason: collision with root package name */
    private q.rorbin.badgeview.a f50470s;
    @Pref

    /* renamed from: t  reason: collision with root package name */
    PrefDef_ f50471t;

    /* renamed from: u  reason: collision with root package name */
    com.join.mgps.rpc.d f50472u;

    /* renamed from: y  reason: collision with root package name */
    com.join.mgps.rpc.h f50476y;

    /* renamed from: o  reason: collision with root package name */
    View f50466o = null;

    /* renamed from: v  reason: collision with root package name */
    boolean f50473v = false;

    /* renamed from: w  reason: collision with root package name */
    private List<UserCenterBean.UserCenterItem> f50474w = Collections.synchronizedList(new ArrayList());

    /* renamed from: x  reason: collision with root package name */
    volatile boolean f50475x = false;

    /* compiled from: UserCenterFragment.java */
    /* loaded from: classes4.dex */
    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            synchronized (u4.this.f50474w) {
                if (u4.this.f50474w.size() <= 0) {
                    return;
                }
                try {
                    UserCenterBean.UserCenterItem userCenterItem = (UserCenterBean.UserCenterItem) u4.this.f50474w.get(i2);
                    JumpInfoBean jumpInfoBean = userCenterItem.getSub().get(0);
                    int parseInt = Integer.parseInt(jumpInfoBean.getJump_type());
                    int parseInt2 = Integer.parseInt(jumpInfoBean.getLink_type());
                    if (userCenterItem.getMain() != null && userCenterItem.getMain().getLabel() != null) {
                        u4.this.changeMgState(userCenterItem.getMain().getLabel(), parseInt);
                    }
                    if (parseInt2 != 3) {
                        u4.this.gotoTargetActivity(jumpInfoBean, parseInt2);
                    } else if (parseInt == 29) {
                        IntentUtil.getInstance().goMGSettingActivity(u4.this.f50468q);
                    } else if (parseInt == 32) {
                        IntentUtil.getInstance().goCommentSelfListActivity(u4.this.f50468q);
                    } else {
                        switch (parseInt) {
                            case 15:
                                MApplication.H = 0;
                                u4.this.hideRedPoint();
                                IntentUtil.getInstance().goForumProfileMessageActivity(u4.this.f50468q);
                                break;
                            case 16:
                                IntentUtil.getInstance().goForumMyDynamicActivity(u4.this.getActivity());
                                break;
                            case 17:
                                IntentUtil.getInstance().goForumAndPrfileActivity(0, u4.this.f50468q);
                                break;
                            case 18:
                                u4 u4Var = u4.this;
                                u4Var.f50467p = AccountUtil_.getInstance_(u4Var.f50468q).getAccountData();
                                if (!u4.this.goLogin()) {
                                    IntentUtil.getInstance().goPAPayCenterActivity(u4.this.f50468q);
                                    break;
                                }
                                break;
                            case 19:
                                if (!u4.this.goLogin()) {
                                    VoucherCodesBoxActivity_.G0(u4.this.f50468q).b(0).a(u4.this.f50467p.getUid()).start();
                                    break;
                                }
                                break;
                            case 20:
                                u4 u4Var2 = u4.this;
                                u4Var2.f50467p = AccountUtil_.getInstance_(u4Var2.f50468q).getAccountData();
                                if (!u4.this.goLogin()) {
                                    VoucherCodesBoxActivity_.G0(u4.this.f50468q).b(1).a(u4.this.f50467p.getUid()).start();
                                    break;
                                }
                                break;
                            case 21:
                                IntentUtil.getInstance().goFaceTransferHomePageActivity(u4.this.f50468q);
                                break;
                            case 22:
                                IntentUtil.getInstance().goJoystickManager(u4.this.f50468q);
                                break;
                            case 23:
                                IntentUtil intentUtil = IntentUtil.getInstance();
                                Activity activity = u4.this.f50468q;
                                intentUtil.goShareWebActivity(activity, com.join.mgps.rpc.g.f51563x + "/Auxiliary_tool");
                                break;
                            case 24:
                                IntentUtil.getInstance().goDownloadSettingActivity(u4.this.f50468q);
                                break;
                            case 25:
                                IntentUtil.getInstance().goFeedback(u4.this.f50468q);
                                break;
                            default:
                                u4.this.gotoTargetActivity(jumpInfoBean, parseInt2);
                                break;
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserCenterFragment.java */
    /* loaded from: classes4.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goVip(u4.this.f50468q);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserCenterFragment.java */
    /* loaded from: classes4.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goSvip(u4.this.f50468q);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserCenterFragment.java */
    /* loaded from: classes4.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (u4.this.goLogin()) {
                return;
            }
            CommentSelfListActivity_.n1(view.getContext()).a(u4.this.f50467p.getUid()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserCenterFragment.java */
    /* loaded from: classes4.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (u4.this.goLogin()) {
                return;
            }
            CommentSelfListActivity_.n1(view.getContext()).a(u4.this.f50467p.getUid()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserCenterFragment.java */
    /* loaded from: classes4.dex */
    public class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (u4.this.goLogin()) {
                return;
            }
            CommentSelfListActivity_.n1(view.getContext()).a(u4.this.f50467p.getUid()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserCenterFragment.java */
    /* loaded from: classes4.dex */
    public class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goVip(u4.this.f50468q);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UserCenterFragment.java */
    /* loaded from: classes4.dex */
    public class h extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private List<UserCenterBean.UserCenterItem> f50484a;

        /* renamed from: b  reason: collision with root package name */
        private int f50485b = 0;

        /* renamed from: c  reason: collision with root package name */
        private boolean f50486c = false;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: UserCenterFragment.java */
        /* loaded from: classes4.dex */
        public class a {

            /* renamed from: a  reason: collision with root package name */
            LinearLayout f50488a;

            /* renamed from: b  reason: collision with root package name */
            View f50489b;

            /* renamed from: c  reason: collision with root package name */
            SimpleDraweeView f50490c;

            /* renamed from: d  reason: collision with root package name */
            TextView f50491d;

            /* renamed from: e  reason: collision with root package name */
            TextView f50492e;

            /* renamed from: f  reason: collision with root package name */
            TextView f50493f;

            a() {
            }
        }

        public h(List<UserCenterBean.UserCenterItem> list) {
            this.f50484a = list;
        }

        public void a(int i2) {
            this.f50486c = !this.f50486c;
            this.f50485b = i2;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f50484a.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return this.f50484a.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            a aVar;
            if (view == null) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_usercenter, (ViewGroup) null);
                aVar = new a();
                u4.this.f50466o = aVar.f50490c;
                aVar.f50490c = (SimpleDraweeView) view.findViewById(R.id.iv_module_icon);
                aVar.f50491d = (TextView) view.findViewById(R.id.tv_module_name);
                aVar.f50492e = (TextView) view.findViewById(R.id.tv_module_doings);
                aVar.f50488a = (LinearLayout) view.findViewById(R.id.ll_content);
                aVar.f50489b = view.findViewById(R.id.emptyDivider);
                TextView textView = (TextView) view.findViewById(R.id.messageBadge);
                aVar.f50493f = textView;
                textView.setVisibility(8);
                view.setTag(aVar);
            } else {
                aVar = (a) view.getTag();
            }
            UserCenterBean.UserCenterItem userCenterItem = this.f50484a.get(i2);
            if (!AccountUtil_.getInstance_(u4.this.f50468q).isTourist()) {
                if (i2 == 0) {
                    if (this.f50485b > 0) {
                        aVar.f50493f.setVisibility(0);
                        if (this.f50485b > 99) {
                            aVar.f50493f.setText("+99");
                        } else {
                            TextView textView2 = aVar.f50493f;
                            textView2.setText("" + this.f50485b);
                        }
                    } else {
                        aVar.f50493f.setVisibility(8);
                    }
                } else {
                    aVar.f50493f.setVisibility(8);
                }
            }
            if (userCenterItem.isEmpty()) {
                aVar.f50489b.setVisibility(0);
                aVar.f50488a.setVisibility(8);
            } else {
                aVar.f50489b.setVisibility(8);
                if (userCenterItem.isPlaceHolder()) {
                    aVar.f50488a.setVisibility(4);
                } else {
                    aVar.f50488a.setVisibility(0);
                }
                if (userCenterItem.getMain() != null) {
                    MyImageLoader.i(aVar.f50490c, userCenterItem.getMain().getPic_remote(), r.c.f12140c);
                    aVar.f50491d.setText(userCenterItem.getMain().getSub_title());
                    aVar.f50492e.setText(userCenterItem.getMain().getLabel());
                }
            }
            return view;
        }
    }

    private void addDivider(List<UserCenterBean.UserCenterItem> list) {
        list.add(createItem());
        list.add(createItem());
        list.add(createItem());
    }

    private void addPlaceHolder(List<UserCenterBean.UserCenterItem> list, int i2) {
        for (int i4 = 0; i4 < i2; i4++) {
            UserCenterBean.UserCenterItem userCenterItem = new UserCenterBean.UserCenterItem();
            userCenterItem.setPlaceHolder(true);
            list.add(userCenterItem);
        }
    }

    private boolean isLogined(Context context) {
        AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
        return accountData != null && com.join.mgps.Util.d2.i(accountData.getToken());
    }

    private void showRedPoint(View view) {
        MessageRedPointBean.MessagesBean.DataBean dataBean;
        int community_praise_surplus_number;
        if (view == null || (dataBean = MApplication.D) == null || (community_praise_surplus_number = dataBean.getCommunity_praise_surplus_number() + MApplication.D.getCommunity_surplus_number() + MApplication.D.getNotice_surplus_number() + MApplication.D.getPraise_surplus_number() + MApplication.D.getReplay_surplus_number()) <= 0) {
            return;
        }
        try {
            Thread.sleep(200L);
            if (this.f50470s == null) {
                this.f50470s = new QBadgeView(this.f50468q).c(view).q(community_praise_surplus_number).g(SupportMenu.CATEGORY_MASK).v(getResources().getDimensionPixelSize(R.dimen.wdp20), false).o(8388693).l(-1);
            }
        } catch (InterruptedException e4) {
            e4.printStackTrace();
        }
    }

    private void testAddCommentSelf(List<UserCenterBean.UserCenterItem> list) {
    }

    List<UserCenterBean.UserCenterItem> Q(UserCenterBean userCenterBean) {
        ArrayList arrayList = new ArrayList();
        try {
            List<UserCenterBean.UserCenterItem> first_group = userCenterBean.getFirst_group();
            if (first_group != null) {
                arrayList.addAll(first_group);
                int size = first_group.size() % 3;
                if (size != 0) {
                    size = 3 - size;
                }
                addPlaceHolder(arrayList, size);
                addDivider(arrayList);
            }
            List<UserCenterBean.UserCenterItem> second_group = userCenterBean.getSecond_group();
            if (second_group != null) {
                arrayList.addAll(second_group);
                int size2 = second_group.size() % 3;
                if (size2 != 0) {
                    size2 = 3 - size2;
                }
                addPlaceHolder(arrayList, size2);
                addDivider(arrayList);
            }
            if (userCenterBean.getThird_group() != null) {
                arrayList.addAll(userCenterBean.getThird_group());
                int size3 = userCenterBean.getThird_group().size() % 3;
                if (size3 != 0) {
                    size3 = 3 - size3;
                }
                addPlaceHolder(arrayList, size3);
            }
            return arrayList;
        } catch (Exception e4) {
            e4.printStackTrace();
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        org.greenrobot.eventbus.c.f().t(this);
        this.f50472u = com.join.mgps.rpc.impl.c.P1();
        this.f50476y = com.join.mgps.rpc.impl.f.A0();
        UserCenterBean userCenterBean = (UserCenterBean) JsonMapper.getInstance().fromJson(this.f50471t.userCenterViewConfigsv2().d(), UserCenterBean.class);
        if (userCenterBean != null) {
            this.f50474w.clear();
            this.f50474w.addAll(Q(userCenterBean));
        }
        h hVar = new h(this.f50474w);
        this.f50465n = hVar;
        this.f50464m.setAdapter((ListAdapter) hVar);
        this.f50464m.setOnItemClickListener(new a());
        this.f50465n.notifyDataSetChanged();
        pullMyProfileInfo();
        showNotifUi();
    }

    void calculateVIPExpTime() {
        long vip_exp_time = this.f50467p.getVip_exp_time() * 1000;
        long currentTimeMillis = System.currentTimeMillis();
        long j4 = (vip_exp_time - currentTimeMillis) / 86400000;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f50459h.getLayoutParams();
        if (vip_exp_time > currentTimeMillis) {
            layoutParams.topMargin = com.join.mgps.Util.b0.a(this.f50468q, 2.0f);
            this.f50459h.setLayoutParams(layoutParams);
            int i2 = 0;
            this.f50455d.setVisibility(0);
            this.f50459h.setTextColor(Color.parseColor("#FFCC9C"));
            String str = com.join.mgps.Util.x.m(vip_exp_time) + "到期";
            try {
                i2 = Integer.parseInt(com.join.mgps.Util.x.q(vip_exp_time));
            } catch (Exception unused) {
            }
            if (j4 > 30) {
                if (i2 > 2037) {
                    this.f50459h.setText("终生会员");
                    return;
                } else {
                    this.f50459h.setText(str);
                    return;
                }
            }
            this.f50459h.setText(Html.fromHtml(str + "\n<font color=#FFFFFF>剩余" + j4 + "天</font>"));
            return;
        }
        layoutParams.topMargin = com.join.mgps.Util.b0.a(this.f50468q, 11.0f);
        this.f50459h.setLayoutParams(layoutParams);
        this.f50455d.setVisibility(8);
        this.f50459h.setTextColor(Color.parseColor("#FFD4A9"));
        this.f50459h.setText("去开通");
        this.f50463l.setOnClickListener(new g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void changeMgState(String str, int i2) {
        if (com.join.android.app.common.utils.f.j(this.f50468q)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.f50468q).getAccountData();
                this.f50467p = accountData;
                if (accountData != null && isOfficialAccount()) {
                    if (this.f50472u.W(RequestBeanUtil.getInstance(this.f50468q).getRequestMsgState(this.f50467p.getUid(), str, i2)).getMessages().getData().get(0).isVal()) {
                        com.join.mgps.Util.t0.b("UserCenter", "changeMgState success");
                    } else {
                        com.join.mgps.Util.t0.b("UserCenter", "changeMgState failure");
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    UserCenterBean.UserCenterItem createItem() {
        UserCenterBean.UserCenterItem userCenterItem = new UserCenterBean.UserCenterItem();
        userCenterItem.setEmpty(true);
        return userCenterItem;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getUserInfo() {
        if (this.f50475x) {
            return;
        }
        this.f50475x = true;
        this.f50467p = AccountUtil_.getInstance_(this.f50468q).getAccountData();
        if (com.join.android.app.common.utils.f.j(this.f50468q)) {
            AccountBean accountBean = this.f50467p;
            if (accountBean != null && !TextUtils.isEmpty(accountBean.getToken())) {
                try {
                    AccountUserInfoRequestBean accountUserInfoRequestBean = new AccountUserInfoRequestBean();
                    accountUserInfoRequestBean.setUid(this.f50467p.getUid() + "");
                    accountUserInfoRequestBean.setToken(this.f50467p.getToken());
                    accountUserInfoRequestBean.setDevice_id("");
                    accountUserInfoRequestBean.setSign(com.join.mgps.Util.u1.f(accountUserInfoRequestBean));
                    AccountResultMainBean<AccountBean> d4 = this.f50469r.d(accountUserInfoRequestBean.getParams());
                    if (d4 != null) {
                        if (d4.getError() == 0) {
                            AccountBean data = d4.getData();
                            if (data != null && data.getUid() != 0) {
                                this.f50467p.setSvip_level(data.getSvip_level());
                                this.f50467p.setVip_level(data.getVip_level());
                                this.f50467p.setLive_total_charm(data.getLive_total_charm());
                                this.f50467p.setIs_anchor(data.getIs_anchor());
                                this.f50467p.setPapaMoney(data.getPapaMoney());
                                this.f50467p.setMember_title(data.getMember_title());
                                if (com.join.mgps.Util.d2.i(data.getNickname())) {
                                    this.f50467p.setNickname(data.getNickname());
                                }
                            }
                            AccountUtil_.getInstance_(this.f50468q).saveAccountData(this.f50467p, this.f50468q);
                            this.f50475x = false;
                            refreshViews();
                            getViewConfigs();
                            return;
                        } else if (d4.getError() == 701) {
                            tokenFailure();
                            return;
                        } else {
                            this.f50475x = false;
                            getViewConfigs();
                            return;
                        }
                    }
                    this.f50475x = false;
                    getViewConfigs();
                    return;
                } catch (Exception e4) {
                    this.f50475x = false;
                    getViewConfigs();
                    e4.printStackTrace();
                    return;
                }
            }
            touristLogin();
            return;
        }
        this.f50475x = false;
        loadViewConfigsFromLocal();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getViewConfigs() {
        Activity activity;
        if (com.join.android.app.common.utils.f.j(this.f50468q)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.f50468q).getAccountData();
                this.f50467p = accountData;
                if (accountData == null || (activity = this.f50468q) == null || this.f50473v) {
                    return;
                }
                int i2 = 1;
                this.f50473v = true;
                RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(activity);
                int uid = this.f50467p.getUid();
                String token = this.f50467p.getToken();
                if (this.f50467p.getVip_level() != 1) {
                    i2 = 0;
                }
                ResultMainBean<UserCenterBean> Z0 = this.f50472u.Z0(requestBeanUtil.getUserCenterViewConfigs(uid, token, i2));
                if (Z0 != null && Z0.getCode() == 600) {
                    this.f50471t.userCenterViewConfigs().g(JsonMapper.toJsonString(Z0.getMessages().getData()));
                    loadViewConfigsFromLocal();
                } else {
                    loadViewConfigsFromLocal();
                }
                this.f50473v = false;
                return;
            } catch (Exception e4) {
                this.f50473v = false;
                e4.printStackTrace();
                loadViewConfigsFromLocal();
                return;
            }
        }
        loadViewConfigsFromLocal();
    }

    boolean goLogin() {
        return IntentUtil.getInstance().goLogin(getContext());
    }

    void gotoTargetActivity(JumpInfoBean jumpInfoBean, int i2) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setTpl_type(jumpInfoBean.getTpl_type());
        intentDateBean.setLink_type(i2);
        intentDateBean.setJump_type(Integer.parseInt(jumpInfoBean.getJump_type()));
        intentDateBean.setCrc_link_type_val(jumpInfoBean.getCrc_link_type_val());
        intentDateBean.setLink_type_val(jumpInfoBean.getLink_type_val());
        IntentUtil.getInstance().intentActivity(this.f50468q, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideRedPoint() {
        q.rorbin.badgeview.a aVar = this.f50470s;
        if (aVar != null) {
            aVar.hide(false);
        }
    }

    boolean isActivityFinish() {
        Activity activity = this.f50468q;
        if (activity != null) {
            if (activity.isFinishing()) {
                return true;
            }
            return Build.VERSION.SDK_INT >= 17 && this.f50468q.isDestroyed();
        }
        return false;
    }

    boolean isOfficialAccount() {
        if (AccountUtil_.getInstance_(this.f50468q).getAccountData() == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this.f50468q).isTourist();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void ll_copper() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(com.join.mgps.rpc.g.f51548s);
        ShareWebActivity_.P2(this).b(intentDateBean).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void loadViewConfigsFromLocal() {
        UserCenterBean userCenterBean;
        try {
            userCenterBean = (UserCenterBean) JsonMapper.getInstance().fromJson(this.f50471t.userCenterViewConfigs().d(), UserCenterBean.class);
        } catch (Exception e4) {
            com.join.mgps.Util.t0.b("UserCenter", "loadViewConfigsFromLocal exception:" + e4.getMessage());
        }
        if (userCenterBean != null && this.f50468q != null) {
            synchronized (this.f50474w) {
                this.f50474w.clear();
                this.f50474w.addAll(Q(userCenterBean));
                this.f50465n.notifyDataSetChanged();
                pullMyProfileInfo();
            }
            showNotifUi();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f50468q = (Activity) context;
        this.f50469r = com.join.mgps.rpc.impl.a.b0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().y(this);
        this.f50468q = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.n nVar) {
        if (((MGMainActivity) getActivity()).getPositionNum() == 1) {
            pullMyProfileInfo();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        refreshUserCenter();
        MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.D;
        if (dataBean != null) {
            int community_praise_surplus_number = dataBean.getCommunity_praise_surplus_number() + MApplication.D.getCommunity_surplus_number() + MApplication.D.getNotice_surplus_number() + MApplication.D.getPraise_surplus_number() + MApplication.D.getReplay_surplus_number();
            MApplication.H = community_praise_surplus_number;
            if (community_praise_surplus_number == 0) {
                hideRedPoint();
            } else {
                showNotifUi();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void pullMyProfileInfo() {
        ForumResponse<ForumData.ForumProfilePostsData> k4;
        ForumData.ForumProfilePostsData data;
        ForumBean.ForumProfilePostUserInfoBean user_info;
        if (com.join.android.app.common.utils.f.j(this.f50468q)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.f50468q).getAccountData();
                if (accountData == null || accountData.getUid() == 0 || (k4 = this.f50476y.k(accountData.getUid(), accountData.getToken(), 1, 0, "")) == null || (data = k4.getData()) == null || (user_info = data.getUser_info()) == null) {
                    return;
                }
                updateAdapterByNewMsgCount(user_info.getUnread_message());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public void refreshUserCenter() {
        if (this.f50468q == null) {
            return;
        }
        refreshViews();
        if (this.f50475x) {
            return;
        }
        getUserInfo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void refreshViews() {
        Activity activity = this.f50468q;
        if (activity == null) {
            return;
        }
        this.f50467p = AccountUtil_.getInstance_(activity).getAccountData();
        this.f50454c.setText("未登录");
        this.f50452a.getHierarchy().y(new com.facebook.drawee.drawable.n(Color.parseColor("#99BDC9")));
        this.f50452a.setImageResource(R.drawable.unloginstatus);
        this.f50457f.setText("");
        this.f50458g.setText("--");
        this.f50459h.setText("--");
        this.f50460i.setText("---");
        this.f50456e.setText("");
        this.f50456e.setVisibility(8);
        this.f50463l.setOnClickListener(null);
        this.f50462k.setOnClickListener(null);
        AccountBean accountBean = this.f50467p;
        if (accountBean != null) {
            this.f50454c.setText(accountBean.getNickname());
            MyImageLoader.s(this.f50452a, this.f50467p.getAvatarSrc());
            if (this.f50467p.getVip_level() == 1) {
                calculateVIPExpTime();
            } else {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f50459h.getLayoutParams();
                layoutParams.topMargin = com.join.mgps.Util.b0.a(this.f50468q, 11.0f);
                this.f50459h.setLayoutParams(layoutParams);
                this.f50459h.setTextColor(Color.parseColor("#FFD4A9"));
                this.f50459h.setText("去开通");
                this.f50455d.setVisibility(8);
            }
            if (this.f50467p.getVip_level() == 1 && this.f50467p.getMember_title() != null && !TextUtils.isEmpty(this.f50467p.getMember_title().getBattleTitle())) {
                this.f50456e.setVisibility(0);
                this.f50456e.setText(this.f50467p.getMember_title().getBattleTitle());
            }
            if (this.f50467p.getAccount_type() == 2) {
                this.f50457f.setTextColor(Color.parseColor("#F47500"));
                this.f50457f.setText("完善资料 / 领礼包 / 抢红包");
                this.f50457f.setTextSize(13.0f);
                this.f50457f.setBackgroundResource(R.drawable.account_msg_bg);
                int a4 = com.join.mgps.Util.b0.a(this.f50468q, 5.0f);
                int a5 = com.join.mgps.Util.b0.a(this.f50468q, 17.0f);
                this.f50457f.setPadding(a5, a4, a5, a4);
            } else {
                this.f50457f.setPadding(0, 0, 0, 0);
                this.f50457f.setBackgroundDrawable(null);
                this.f50457f.setTextSize(14.0f);
                this.f50457f.setTextColor(Color.parseColor("#FFFFFF"));
                this.f50457f.setText(this.f50467p.getAccount());
            }
            TextView textView = this.f50458g;
            textView.setText(this.f50467p.getPapaMoney() + "");
            if (this.f50467p.getSvip_level() == 0) {
                this.f50460i.setTextColor(Color.parseColor("#FFD4A9"));
                this.f50460i.setText("去开通");
            } else {
                this.f50460i.setTextColor(Color.parseColor("#FFFFFF"));
                this.f50460i.setBackgroundResource(R.drawable.bg_border_b65400_100);
                TextView textView2 = this.f50460i;
                textView2.setText("SVIP" + this.f50467p.getSvip_level());
            }
        } else {
            this.f50455d.setVisibility(8);
        }
        this.f50463l.setOnClickListener(new b());
        this.f50462k.setOnClickListener(new c());
        this.f50452a.setOnClickListener(new d());
        this.f50453b.setOnClickListener(new e());
        this.f50461j.setOnClickListener(new f());
    }

    public void showNotif() {
        showNotifUi();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showNotifUi() {
        View childAt;
        h hVar = this.f50465n;
        if (hVar != null) {
            hVar.a(MApplication.H);
            this.f50465n.notifyDataSetChanged();
        }
        GridView gridView = this.f50464m;
        if (gridView == null || (childAt = gridView.getChildAt(0)) == null || !(childAt.getTag() instanceof h.a)) {
            return;
        }
        h.a aVar = (h.a) childAt.getTag();
        aVar.f50493f.setVisibility(8);
        if (AccountUtil_.getInstance_(this.f50468q).isTourist() || MApplication.H <= 0) {
            return;
        }
        aVar.f50493f.setVisibility(0);
        if (MApplication.H > 99) {
            aVar.f50493f.setText("+99");
            return;
        }
        TextView textView = aVar.f50493f;
        textView.setText("" + MApplication.H);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        if (isActivityFinish()) {
            return;
        }
        com.join.mgps.Util.i2.a(this.f50468q).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void tokenFailure() {
        showToast(getString(R.string.pay_token_fail));
        AccountUtil_.getInstance_(this.f50468q).accountLoginOut(this.f50468q);
        touristLogin();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void touristLogin() {
        if (com.join.android.app.common.utils.f.j(this.f50468q)) {
            if (isLogined()) {
                return;
            }
            try {
                TouristLoginRequestBean touristLoginRequestBean = new TouristLoginRequestBean();
                touristLoginRequestBean.setVersion(com.join.android.app.common.utils.j.n(this.f50468q).z());
                touristLoginRequestBean.setDevice_id("");
                touristLoginRequestBean.setMac("");
                touristLoginRequestBean.setSource(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                touristLoginRequestBean.setTuid(this.f50471t.touriseTUID().d().longValue());
                touristLoginRequestBean.setSign(com.join.mgps.Util.u1.f(touristLoginRequestBean));
                AccountResultMainBean<AccountTokenSuccess> s3 = this.f50469r.s(touristLoginRequestBean.getParams());
                if (s3 != null && s3.getError() == 0) {
                    if (s3.getData().is_success()) {
                        AccountBean user_info = s3.getData().getUser_info();
                        if (user_info != null) {
                            AccountUtil_.getInstance_(this.f50468q).saveAccountData(user_info, this.f50468q);
                        }
                        this.f50475x = false;
                        refreshViews();
                        getUserInfo();
                        return;
                    }
                    this.f50475x = false;
                    showToast(s3.getData().getError_msg());
                    loadViewConfigsFromLocal();
                    return;
                }
                this.f50475x = false;
                loadViewConfigsFromLocal();
                return;
            } catch (Exception e4) {
                this.f50475x = false;
                e4.printStackTrace();
                loadViewConfigsFromLocal();
                return;
            }
        }
        this.f50475x = false;
        loadViewConfigsFromLocal();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateAdapterByNewMsgCount(int i2) {
        if (i2 < 1 || this.f50468q == null) {
            return;
        }
        synchronized (this.f50474w) {
            int i4 = -1;
            List<UserCenterBean.UserCenterItem> list = this.f50474w;
            if (list == null) {
                return;
            }
            int size = list.size();
            int i5 = 0;
            while (true) {
                if (i5 >= size) {
                    break;
                }
                UserCenterBean.UserCenterItem userCenterItem = this.f50474w.get(i5);
                if (userCenterItem.getSub() != null) {
                    JumpInfoBean jumpInfoBean = userCenterItem.getSub().get(0);
                    int parseInt = Integer.parseInt(jumpInfoBean.getJump_type());
                    if (Integer.parseInt(jumpInfoBean.getLink_type()) == 3 && parseInt == 15) {
                        i4 = i5;
                        break;
                    }
                }
                i5++;
            }
            if (i4 >= 0) {
                this.f50474w.get(i4).setUnReadCount(i2);
            }
            this.f50465n.notifyDataSetChanged();
            showNotifUi();
        }
    }

    @Receiver(actions = {f1.a.B})
    public void updateInfo(Context context) {
        this.f50467p = AccountUtil_.getInstance_(this.f50468q).getAccountData();
        refreshUserCenter();
    }

    private boolean isLogined() {
        AccountBean accountData = AccountUtil_.getInstance_(this.f50468q).getAccountData();
        return accountData != null && com.join.mgps.Util.d2.i(accountData.getToken());
    }
}
