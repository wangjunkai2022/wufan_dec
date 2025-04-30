package com.join.mgps.activity;

import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.sina.weibo.SinaWeibo;
import cn.sharesdk.tencent.qq.QQ;
import cn.sharesdk.wechat.friends.Wechat;
import com.BaseActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.account.UnbindThirdPartyActivity;
import com.join.kotlin.ui.account.modle.UnBindPlatform;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dialog.b;
import com.join.mgps.dialog.r;
import com.join.mgps.dialog.s0;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountBindThirdwaiRequestBean;
import com.join.mgps.dto.AccountChangeUserinfoRequestBean;
import com.join.mgps.dto.AccountLoginresultData;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccountUserInfoRequestBean;
import com.join.mgps.dto.AccoutLoginOutRequest;
import com.join.mgps.dto.ShareDataBean;
import com.join.mgps.listener.a;
import com.join.mgps.pref.PrefDef_;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.my_account_detial_layout)
/* loaded from: classes3.dex */
public class MYAccountDetialActivity extends BaseActivity implements r.c, s0.c, a.InterfaceC0216a, PlatformActionListener, Handler.Callback {
    private static final int E = 2;
    private static final int F = 3;
    private static final int G = 4;
    private long B;
    private boolean D;

    /* renamed from: a  reason: collision with root package name */
    private Context f33558a;

    /* renamed from: b  reason: collision with root package name */
    com.join.mgps.rpc.b f33559b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f33560c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f33561d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f33562e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f33563f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f33564g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f33565h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    SimpleDraweeView f33566i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    TextView f33567j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f33568k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f33569l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    TextView f33570m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    TextView f33571n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    TextView f33572o;
    @Pref

    /* renamed from: p  reason: collision with root package name */
    PrefDef_ f33573p;
    @Extra

    /* renamed from: q  reason: collision with root package name */
    AccountBean f33574q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    TextView f33575r;

    /* renamed from: s  reason: collision with root package name */
    private com.join.mgps.dialog.x0 f33576s;

    /* renamed from: t  reason: collision with root package name */
    private com.join.mgps.dialog.s0 f33577t;

    /* renamed from: u  reason: collision with root package name */
    private com.join.mgps.dialog.r f33578u;

    /* renamed from: y  reason: collision with root package name */
    private com.join.mgps.dialog.l1 f33582y;

    /* renamed from: z  reason: collision with root package name */
    private Handler f33583z;

    /* renamed from: v  reason: collision with root package name */
    private String f33579v = "";

    /* renamed from: w  reason: collision with root package name */
    private String f33580w = "";

    /* renamed from: x  reason: collision with root package name */
    private boolean f33581x = false;
    boolean A = true;
    private boolean C = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
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
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ EditText f33585a;

        b(EditText editText) {
            this.f33585a = editText;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!TextUtils.isEmpty(this.f33585a.getText().toString().trim())) {
                MYAccountDetialActivity.this.f33574q.setNickname(this.f33585a.getText().toString());
                MYAccountDetialActivity.this.d1();
            } else {
                MYAccountDetialActivity.this.showToast("昵称不能为空！");
            }
            MYAccountDetialActivity.this.f33582y.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements b.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33587a;

        c(String str) {
            this.f33587a = str;
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b bVar) {
            bVar.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b bVar) {
            MYAccountDetialActivity mYAccountDetialActivity = MYAccountDetialActivity.this;
            if (!mYAccountDetialActivity.A) {
                MyAccountBindPhoneActivity_.V0(mYAccountDetialActivity.f33558a).a(MYAccountDetialActivity.this.f33574q).start();
            } else {
                Intent intent = new Intent(MYAccountDetialActivity.this.f33558a, UnbindThirdPartyActivity.class);
                intent.putExtra("type", this.f33587a);
                MYAccountDetialActivity.this.startActivity(intent);
            }
            bVar.dismiss();
        }
    }

    private void O0() {
        this.f33573p.lastCheckInTime().g(0L);
    }

    private void authorize(Platform platform) {
        if (System.currentTimeMillis() - this.B <= 1000) {
            return;
        }
        this.B = System.currentTimeMillis();
        if (!com.join.android.app.common.utils.f.j(this)) {
            com.join.mgps.Util.i2.a(this).b("没有网络，请检查网络设置。");
        } else if (platform != null && this.C) {
            this.C = false;
            if (platform.isAuthValid()) {
                platform.removeAccount(true);
            }
            platform.setPlatformActionListener(this);
            platform.SSOSetting(false);
            platform.showUser(null);
            Q0();
            if (platform.getName().equals(Wechat.NAME)) {
                this.f33576s.setCancelable(true);
                this.f33576s.setCanceledOnTouchOutside(false);
                this.C = true;
                this.D = true;
                return;
            }
            this.f33576s.setCancelable(true);
            this.f33576s.setCanceledOnTouchOutside(false);
            this.D = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        ((ClipboardManager) this.f33558a.getSystemService("clipboard")).setText(this.f33574q.getAccount());
        com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(this.f33558a);
        a4.b(this.f33574q.getAccount() + "已复制到剪贴板");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        if (this.f33574q.getIs_bind_qq() != 1) {
            authorize(ShareSDK.getPlatform(QQ.NAME));
        } else {
            L0(UnBindPlatform.QQ_OPENID.name());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0(String str, int i2) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                try {
                    AccountBindThirdwaiRequestBean accountBindThirdwaiRequestBean = new AccountBindThirdwaiRequestBean();
                    accountBindThirdwaiRequestBean.setUid(this.f33574q.getUid());
                    accountBindThirdwaiRequestBean.setToken(this.f33574q.getToken());
                    accountBindThirdwaiRequestBean.setUnique_id(str);
                    accountBindThirdwaiRequestBean.setType(i2);
                    accountBindThirdwaiRequestBean.setSign(com.join.mgps.Util.u1.f(accountBindThirdwaiRequestBean));
                    AccountResultMainBean<AccountLoginresultData> x3 = this.f33559b.x(accountBindThirdwaiRequestBean.getParams());
                    if (x3 != null && x3.getData() != null) {
                        if (x3.getData().is_success()) {
                            M0();
                            error("绑定成功");
                        } else {
                            error(x3.getData().getError_msg());
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            } finally {
                showLodingDismis();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        if (this.f33574q.getIs_bind_wx() != 1) {
            authorize(ShareSDK.getPlatform(Wechat.NAME));
        } else {
            L0(UnBindPlatform.WEIXIN_OPENID.name());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K0() {
        if (this.f33574q.getIs_bind_wb() != 1) {
            authorize(ShareSDK.getPlatform(SinaWeibo.NAME));
        } else {
            L0(UnBindPlatform.WB_OPENID.name());
        }
    }

    public void L0(String str) {
        String str2;
        String str3;
        String str4;
        String str5;
        if (str.equals(UnBindPlatform.QQ_OPENID.name())) {
            str2 = QQ.NAME;
        } else if (str.equals(UnBindPlatform.WEIXIN_OPENID.name())) {
            str2 = "微信";
        } else {
            str2 = str.equals(UnBindPlatform.WB_OPENID.name()) ? "微博" : "";
        }
        if (com.join.mgps.Util.d2.h(this.f33574q.getMobile())) {
            this.A = false;
            str5 = "无法解除绑定";
            str4 = "解除第三方帐号必须绑定手机号";
            str3 = "绑定手机";
        } else {
            String str6 = "是否解除" + str2 + "绑定？";
            this.A = true;
            str3 = "解除绑定";
            str4 = "解绑后将无法使用" + str2 + "帐号登录悟饭游戏厅";
            str5 = str6;
        }
        new com.join.mgps.dialog.b(this.f33558a, R.style.HKDialogLoading).d("取消").g(str4).j(str3).k(str5).i(new c(str)).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void M0() {
        AccountBean cloneNewAccountBean = AccountUtil_.getInstance_(getApplicationContext()).getAccountData().cloneNewAccountBean();
        this.f33574q = cloneNewAccountBean;
        if (cloneNewAccountBean != null && com.join.android.app.common.utils.f.j(this.f33558a)) {
            try {
                AccountUserInfoRequestBean accountUserInfoRequestBean = new AccountUserInfoRequestBean();
                accountUserInfoRequestBean.setUid(this.f33574q.getUid() + "");
                accountUserInfoRequestBean.setToken(this.f33574q.getToken());
                accountUserInfoRequestBean.setDevice_id("");
                accountUserInfoRequestBean.setSign(com.join.mgps.Util.u1.f(accountUserInfoRequestBean));
                AccountResultMainBean<AccountBean> d4 = this.f33559b.d(accountUserInfoRequestBean.getParams());
                if (d4 != null) {
                    if (d4.getError() == 0) {
                        N0(d4.getData());
                    } else if (d4.getError() == 701) {
                        AccountUtil_.getInstance_(getApplicationContext()).accountLoginOut(getApplicationContext());
                        finish();
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N0(AccountBean accountBean) {
        if (this.f33574q == null || accountBean == null || accountBean.getUid() == 0) {
            return;
        }
        this.f33574q.setAccount(accountBean.getAccount());
        this.f33574q.setAvatarSrc(accountBean.getAvatarSrc());
        this.f33574q.setPapaMoney(accountBean.getPapaMoney());
        this.f33574q.setMobile(accountBean.getMobile());
        this.f33574q.setGender(accountBean.getGender());
        this.f33574q.setUid(accountBean.getUid());
        this.f33574q.setLevel(accountBean.getLevel());
        this.f33574q.setAccount(accountBean.getAccount());
        this.f33574q.setNickname(accountBean.getNickname());
        this.f33574q.setExp(accountBean.getExp());
        this.f33574q.setPwd_set_up(accountBean.getPwd_set_up());
        this.f33574q.setIs_anchor(accountBean.getIs_anchor());
        this.f33574q.setIs_bind_wx(accountBean.getIs_bind_wx());
        this.f33574q.setIs_bind_wb(accountBean.getIs_bind_wb());
        this.f33574q.setIs_bind_qq(accountBean.getIs_bind_qq());
        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(this.f33574q, getApplicationContext());
        a1();
    }

    void P0() {
        try {
            String localUserIcon = AccountUtil_.getInstance_(this).getLocalUserIcon();
            if (com.join.mgps.Util.d2.i(localUserIcon)) {
                File file = new File(localUserIcon);
                if (file.exists()) {
                    file.delete();
                    Fresco.getImagePipeline().e(MyImageLoader.F(file));
                }
            }
            AccountUtil_.getInstance_(this).setLocalUserIcon(null);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q0() {
        this.f33576s.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R0(String str, String str2) {
        if (str.contains("一个月")) {
            this.f33574q.setNickname(this.f33579v);
            this.f33562e.setText(this.f33579v);
        }
        com.join.mgps.Util.i2.a(this.f33558a).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void S0() {
        P0();
        V0();
        AccountUtil_.getInstance_(getApplicationContext()).accountLoginOut(getApplicationContext());
        this.f33574q = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
        O0();
        com.join.mgps.broadcast.a.a(this.f33558a);
        com.join.mgps.Util.i2.a(this.f33558a).b("退出登录成功");
        this.f33573p.singleGameShowDialog().g("");
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void T0() {
        this.f33574q = AccountUtil_.getInstance_(getApplicationContext()).getAccountData().cloneNewAccountBean();
        MGChooseIconActivity_.V0(this.f33558a).a(this.f33574q).b(1).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U0() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(com.join.mgps.rpc.g.f51548s);
        ShareWebActivity_.O2(this).b(intentDateBean).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void V0() {
        if (com.join.android.app.common.utils.f.j(this.f33558a)) {
            try {
                AccoutLoginOutRequest accoutLoginOutRequest = new AccoutLoginOutRequest();
                accoutLoginOutRequest.setUid(this.f33574q.getUid() + "");
                accoutLoginOutRequest.setSign(com.join.mgps.Util.u1.f(accoutLoginOutRequest));
                AccountResultMainBean<AccountTokenSuccess> b4 = this.f33559b.b(accoutLoginOutRequest.getParams());
                if (b4 != null && b4.getError() == 0) {
                    if (b4.getData().is_success()) {
                        AccountUtil_.getInstance_(getApplicationContext()).accountLoginOut(getApplicationContext());
                        P0();
                    } else {
                        showToast(b4.getData().getError_msg());
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void W0() {
        this.f33582y.show();
        EditText editText = (EditText) this.f33582y.findViewById(R.id.name);
        editText.addTextChangedListener(new a());
        com.join.mgps.Util.n.g(editText);
        ((Button) this.f33582y.findViewById(R.id.ok)).setOnClickListener(new b(editText));
        ((TextView) this.f33582y.findViewById(R.id.changeNickNameNotice)).setText(new PrefDef_(this.f33558a).changeNickNameNotice().d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void X0() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(com.join.mgps.rpc.g.f51548s);
        ShareWebActivity_.O2(this).b(intentDateBean).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Y0() {
        MyAccountSettingPasswordActivity_.N0(this.f33558a).a(this.f33574q).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Z0() {
        if (com.join.mgps.Util.d2.h(this.f33574q.getMobile())) {
            MyAccountBindPhoneActivity_.V0(this.f33558a).a(this.f33574q).start();
        } else {
            MyAccountInsteadPhoneActivity_.H0(this.f33558a).a(this.f33574q).start();
        }
    }

    void a1() {
        this.f33580w = this.f33574q.getAvatarSrc();
        MyImageLoader.s(this.f33566i, this.f33574q.getAvatarSrc());
        if (this.f33574q.getIs_bind_wx() != 1) {
            this.f33570m.setText("未绑定");
            this.f33570m.setTextColor(SupportMenu.CATEGORY_MASK);
        } else {
            this.f33570m.setText("已绑定");
            this.f33570m.setTextColor(Color.parseColor("#8a8a8a"));
        }
        if (this.f33574q.getIs_bind_wb() != 1) {
            this.f33571n.setText("未绑定");
            this.f33571n.setTextColor(SupportMenu.CATEGORY_MASK);
        } else {
            this.f33571n.setText("已绑定");
            this.f33571n.setTextColor(Color.parseColor("#8a8a8a"));
        }
        if (this.f33574q.getIs_bind_qq() != 1) {
            this.f33572o.setText("未绑定");
            this.f33572o.setTextColor(SupportMenu.CATEGORY_MASK);
        } else {
            this.f33572o.setText("已绑定");
            this.f33572o.setTextColor(Color.parseColor("#8a8a8a"));
        }
        this.f33567j.setText(this.f33574q.getAccount());
        this.f33562e.setText(this.f33574q.getNickname());
        this.f33579v = this.f33574q.getNickname();
        TextView textView = this.f33563f;
        textView.setText(this.f33574q.getPapaMoney() + "");
        if (this.f33574q.getGender() == 1) {
            this.f33564g.setText("男");
        } else {
            this.f33564g.setText("女");
        }
        if (this.f33574q.getPwd_set_up() == 0) {
            this.f33569l.setText("未设置");
            this.f33569l.setTextColor(-49602);
        } else {
            this.f33569l.setText("点击修改");
            this.f33569l.setTextColor(-7697782);
        }
        if (com.join.mgps.Util.d2.i(this.f33574q.getMobile())) {
            if (this.f33574q.getMobile().length() == 11) {
                try {
                    TextView textView2 = this.f33568k;
                    textView2.setText(this.f33574q.getMobile().substring(0, 3) + "****" + this.f33574q.getMobile().substring(7, 11));
                } catch (Exception unused) {
                }
            }
            this.f33568k.setTextColor(-7697782);
        } else {
            this.f33568k.setText("未绑定");
            this.f33568k.setTextColor(-49602);
        }
        if (this.f33574q.getMember_title() != null && !TextUtils.isEmpty(this.f33574q.getMember_title().getBattleTitle())) {
            this.f33575r.setText(this.f33574q.getMember_title().getBattleTitle());
        } else {
            this.f33575r.setText("--");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f33559b = com.join.mgps.rpc.impl.a.b0();
        this.f33576s = com.join.mgps.Util.a0.c0(this).x(this);
        this.f33577t = com.join.mgps.Util.a0.c0(this).v(this);
        this.f33582y = new com.join.mgps.dialog.l1(this, R.style.HKDialogLoading);
        this.f33578u = com.join.mgps.Util.a0.c0(this).q(this);
        this.f33558a = this;
        this.f33560c.setText("个人信息");
        a1();
        com.join.mgps.listener.a.b().a(this);
        this.f33583z = new Handler(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void b1() {
        IntentUtil intentUtil = IntentUtil.getInstance();
        Context context = this.f33558a;
        intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.f51524k + "/static/cancelAccount/index.html");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c1() {
        AccountBean accountBean = this.f33574q;
        if (accountBean != null) {
            this.f33562e.setText(accountBean.getNickname());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void d1() {
        if (com.join.android.app.common.utils.f.j(this)) {
            Q0();
            try {
                AccountChangeUserinfoRequestBean accountChangeUserinfoRequestBean = new AccountChangeUserinfoRequestBean();
                accountChangeUserinfoRequestBean.setGender(this.f33574q.getGender());
                accountChangeUserinfoRequestBean.setAccount(this.f33574q.getAccount());
                accountChangeUserinfoRequestBean.setNick_name(this.f33574q.getNickname());
                accountChangeUserinfoRequestBean.setUid(this.f33574q.getUid());
                accountChangeUserinfoRequestBean.setToken(this.f33574q.getToken());
                accountChangeUserinfoRequestBean.setAvatar_src(this.f33574q.getAvatarSrc());
                accountChangeUserinfoRequestBean.setSign(com.join.mgps.Util.u1.f(accountChangeUserinfoRequestBean));
                AccountResultMainBean<AccountTokenSuccess> c4 = this.f33559b.c(accountChangeUserinfoRequestBean.getParams());
                if (c4 != null && c4.getError() == 0) {
                    if (c4.getData().is_success()) {
                        AccountUtil_.getInstance_(this.f33558a).saveAccountData(this.f33574q, this.f33558a);
                        c1();
                    } else {
                        R0(c4.getData().getError_msg(), this.f33574q.getNickname());
                    }
                } else {
                    showToast("连接失败，请稍后再试。");
                }
                showLodingDismis();
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                showLodingDismis();
                showToast("连接失败，请稍后再试。");
                return;
            }
        }
        showToast("没有网络，请先检查网络。");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void e1() {
        this.f33577t.b(this);
        this.f33577t.c(this.f33574q.getGender());
        this.f33577t.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i2 = message.what;
        int i4 = 2;
        if (i2 == 2) {
            com.join.mgps.Util.i2.a(this).b("取消授权");
        } else if (i2 == 4) {
            this.D = false;
            ShareDataBean shareDataBean = (ShareDataBean) message.obj;
            HashMap<String, Object> res = shareDataBean.getRes();
            Iterator<String> it2 = res.keySet().iterator();
            String type = shareDataBean.getType();
            int i5 = -1;
            if (type.equals(QQ.NAME)) {
                while (it2.hasNext()) {
                    String next = it2.next();
                    if (next.equals("nickname")) {
                        String str = (String) res.get(next);
                    }
                    if (next.equals("gender")) {
                        String str2 = (String) res.get(next);
                        if (com.join.mgps.Util.d2.i(str2)) {
                            str2.equals("男");
                        }
                    }
                }
                i5 = 1;
            }
            if (type.equals(Wechat.NAME)) {
                while (it2.hasNext()) {
                    String next2 = it2.next();
                    if (next2.equals("nickname")) {
                        String str3 = (String) res.get(next2);
                    }
                    if (next2.equals("sex")) {
                        ((Integer) res.get(next2)).intValue();
                    }
                }
            } else {
                i4 = i5;
            }
            if (type.equals(SinaWeibo.NAME)) {
                i4 = 3;
                while (it2.hasNext()) {
                    String next3 = it2.next();
                    if (next3.equals("name")) {
                        String str4 = (String) res.get(next3);
                    }
                    if (next3.equals("gender")) {
                        String str5 = (String) res.get(next3);
                        if (com.join.mgps.Util.d2.i(str5)) {
                            str5.equals("m");
                        }
                    }
                }
            }
            Q0();
            this.f33576s.setCancelable(true);
            this.f33576s.setCanceledOnTouchOutside(false);
            I0(shareDataBean.getUserId(), i4);
        }
        return false;
    }

    @Override // com.join.mgps.listener.a.InterfaceC0216a
    public void j() {
        N0(AccountUtil_.getInstance_(getApplicationContext()).getAccountData());
    }

    @Override // com.join.mgps.dialog.r.c
    public void l(String str) {
        this.f33562e.setText(str);
        if (this.f33574q.getNickname().equals(str)) {
            return;
        }
        this.f33574q.setNickname(str);
        d1();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        back_image();
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onCancel(Platform platform, int i2) {
        showLodingDismis();
        this.C = true;
        if (i2 == 8) {
            this.f33583z.sendEmptyMessage(2);
        }
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onComplete(Platform platform, int i2, HashMap<String, Object> hashMap) {
        this.C = true;
        showLodingDismis();
        if (i2 == 8) {
            String userId = platform.getDb().getUserId();
            String userName = platform.getDb().getUserName();
            String name = platform.getName();
            ShareDataBean shareDataBean = new ShareDataBean();
            shareDataBean.setType(name);
            shareDataBean.setUserId(userId);
            shareDataBean.setRes(hashMap);
            shareDataBean.setUserIcon(platform.getDb().getUserIcon());
            StringBuilder sb = new StringBuilder();
            sb.append(userId);
            sb.append("   ");
            sb.append(userName);
            Message message = new Message();
            message.what = 4;
            message.obj = shareDataBean;
            this.f33583z.sendMessage(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f33581x = true;
        super.onDestroy();
        com.join.mgps.listener.a.b().d(this);
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onError(Platform platform, int i2, Throwable th) {
        showLodingDismis();
        platform.removeAccount(true);
        this.C = true;
        String simpleName = th.getClass().getSimpleName();
        if (!"WechatClientNotExistException".equals(simpleName) && !"WechatTimelineNotSupportedException".equals(simpleName) && !"WechatFavoriteNotSupportedException".equals(simpleName)) {
            showMessage("授权失败");
        } else {
            showMessage("没有安装微信客端，请先安装微信客户端。");
        }
        if (i2 == 8) {
            this.f33583z.sendEmptyMessage(3);
        }
        th.printStackTrace();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        M0();
    }

    @Override // com.join.mgps.dialog.s0.c
    public void r0(int i2) {
        if (this.f33574q.getGender() == i2) {
            return;
        }
        this.f33574q.setGender(i2);
        if (i2 == 1) {
            this.f33564g.setText("男");
        } else {
            this.f33564g.setText("女");
        }
        d1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        com.join.mgps.dialog.x0 x0Var;
        if (this.f33581x || (x0Var = this.f33576s) == null) {
            return;
        }
        x0Var.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.f33558a).b(str);
    }
}
