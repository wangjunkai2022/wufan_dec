package com.join.mgps.activity;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.BaseAppCompatActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.z;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommentCreateArgs;
import com.join.mgps.dto.CommentCreateBean;
import com.join.mgps.dto.CommentModifyArgs;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.comment_creat_activity)
/* loaded from: classes3.dex */
public class CommentCreatActivity extends BaseAppCompatActivity {

    /* renamed from: a  reason: collision with root package name */
    private Context f29123a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f29124b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f29125c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f29126d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    MStarBar f29127e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f29128f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f29129g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    EditText f29130h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    CheckBox f29131i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    TextView f29132j;
    @Extra

    /* renamed from: k  reason: collision with root package name */
    String f29133k;
    @Extra

    /* renamed from: l  reason: collision with root package name */
    String f29134l;
    @Extra

    /* renamed from: m  reason: collision with root package name */
    float f29135m;
    @Extra

    /* renamed from: n  reason: collision with root package name */
    String f29136n;
    @Extra

    /* renamed from: o  reason: collision with root package name */
    String f29137o;
    @Extra

    /* renamed from: p  reason: collision with root package name */
    int f29138p;
    @Extra

    /* renamed from: q  reason: collision with root package name */
    String f29139q;
    @Extra

    /* renamed from: r  reason: collision with root package name */
    boolean f29140r;
    @Extra

    /* renamed from: s  reason: collision with root package name */
    String f29141s;
    @Extra

    /* renamed from: t  reason: collision with root package name */
    String f29142t;
    @Extra

    /* renamed from: u  reason: collision with root package name */
    int f29143u;

    /* renamed from: v  reason: collision with root package name */
    com.join.mgps.rpc.e f29144v;
    @Pref

    /* renamed from: w  reason: collision with root package name */
    PrefDef_ f29145w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f29146x = false;

    /* renamed from: y  reason: collision with root package name */
    private AccountBean f29147y;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements MStarBar.a {
        a() {
        }

        @Override // com.join.mgps.customview.MStarBar.a
        public void a(float f4) {
            CommentCreatActivity.this.L0(f4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends ClickableSpan {
        b() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@NonNull View view) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type_val("8794114");
            intentDateBean.setLink_type(8);
            IntentUtil.getInstance().intentActivity(CommentCreatActivity.this, intentDateBean);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@NonNull TextPaint textPaint) {
            textPaint.setUnderlineText(false);
        }
    }

    /* loaded from: classes3.dex */
    class c implements z.o0 {
        c() {
        }

        @Override // com.join.mgps.Util.z.o0
        public void a() {
            CommentCreatActivity.this.finish();
        }
    }

    public static String G0() {
        return Build.MODEL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L0(float f4) {
        int i2 = (int) f4;
        if (i2 == 1) {
            this.f29129g.setText("浪费生命");
        } else if (i2 == 2) {
            this.f29129g.setText("打发时间");
        } else if (i2 == 3) {
            this.f29129g.setText("值得一玩");
        } else if (i2 == 4) {
            this.f29129g.setText("强烈推荐");
        } else if (i2 != 5) {
            this.f29129g.setText("点击星星评分");
        } else {
            this.f29129g.setText("必玩神作");
        }
    }

    public CommentCreateArgs E0(float f4, String str, String str2) {
        String str3;
        String str4;
        String str5;
        int i2;
        String d4 = this.f29145w.commentToken().d();
        boolean isChecked = this.f29131i.isChecked();
        AccountBean accountData = AccountUtil_.getInstance_(this.f29123a).getAccountData();
        this.f29147y = accountData;
        if (accountData != null) {
            int uid = accountData.getUid();
            String nickname = this.f29147y.getNickname();
            i2 = uid;
            str3 = nickname;
            str4 = this.f29147y.getAvatarSrc();
            str5 = this.f29147y.getToken();
        } else {
            str3 = "";
            str4 = str3;
            str5 = str4;
            i2 = -1;
        }
        return RequestBeanUtil.getInstance(this.f29123a).getCreateCommentBean(this.f29136n, f4, str, d4, str2, 1, "0", str3, str4, str5, i2, 1, isChecked ? 1 : 0);
    }

    public CommentModifyArgs F0(float f4, String str, String str2) {
        String str3;
        int i2;
        String d4 = this.f29145w.commentToken().d();
        boolean isChecked = this.f29131i.isChecked();
        AccountBean accountData = AccountUtil_.getInstance_(this.f29123a).getAccountData();
        this.f29147y = accountData;
        if (accountData != null) {
            i2 = accountData.getUid();
            str3 = this.f29147y.getToken();
        } else {
            str3 = "";
            i2 = -1;
        }
        return RequestBeanUtil.getInstance(this.f29123a).getModifyCommentBean(d4, str2, this.f29136n, i2, this.f29133k, str3, str, f4, isChecked ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void H0() {
        if (com.join.android.app.common.utils.f.j(this.f29123a)) {
            try {
                CommentResponse<CommentTokenBean> c4 = this.f29144v.c(RequestBeanUtil.getInstance(this).getTokenRequestBean(AccountUtil_.getInstance_(this).getUid(), ""));
                if (c4 == null || c4.getCode() != 0 || c4.getData_info() == null || TextUtils.isEmpty(c4.getData_info().getToken())) {
                    return;
                }
                this.f29145w.commentToken().g(AESUtils.f(c4.getData_info().getToken() + "|" + c4.getData_info().getTimes()));
                this.f29145w.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(int i2, double d4, String str, String str2) {
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.h(i2, str, d4, System.currentTimeMillis() / 1000, str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0(String str, boolean z3) {
        com.join.mgps.Util.i2.a(this.f29123a).b(str);
        if (z3) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0(CommentResponse commentResponse) {
        if (commentResponse.getCode() == 801) {
            H0();
            com.join.mgps.Util.i2.a(this.f29123a).b("数据访问失败，请稍候再试！");
            return;
        }
        com.join.mgps.Util.i2.a(this.f29123a).b(commentResponse.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void M0() {
        float starMark = this.f29127e.getStarMark();
        String str = this.f29142t;
        if (str == null || !str.equals("1")) {
            starMark = 0.0f;
        } else if (starMark == 0.0f) {
            com.join.mgps.Util.i2.a(this.f29123a).b("请点击星星评分");
            return;
        }
        String trim = this.f29130h.getText().toString().trim();
        if (trim.length() >= 3 && trim.length() <= 800) {
            N0(starMark, trim, this.f29131i.getText().toString());
        } else {
            com.join.mgps.Util.i2.a(this.f29123a).b("请填写3~800个字");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void N0(float f4, String str, String str2) {
        CommentResponse<CommentCreateBean> a4;
        if (com.join.android.app.common.utils.f.j(this.f29123a)) {
            try {
                if (this.f29133k == null) {
                    a4 = this.f29144v.d(E0(f4, str, str2));
                } else {
                    a4 = this.f29144v.a(F0(f4, str, str2));
                }
                if (a4 != null) {
                    if (a4.getCode() != 0) {
                        if (a4.getCode() == 801) {
                            K0(a4);
                            return;
                        } else {
                            J0(a4.getMsg(), false);
                            return;
                        }
                    } else if (a4.getData_info().getInfo() != null) {
                        if (!this.f29131i.isChecked()) {
                            str2 = "";
                        }
                        String str3 = str2;
                        if (this.f29133k == null) {
                            I0(0, f4, str, str3);
                            J0("点评创建成功,内容将在审核后显示！", true);
                            return;
                        }
                        I0(2, f4, str, str3);
                        J0("点评修改成功,内容将在审核后显示！", true);
                        return;
                    } else {
                        return;
                    }
                } else if (this.f29133k == null) {
                    J0("点评创建失败，请稍候再试~", true);
                    return;
                } else {
                    J0("点评修改失败，请稍候再试~", true);
                    return;
                }
            } catch (Exception e4) {
                J0(e4.getMessage(), false);
                e4.printStackTrace();
                return;
            }
        }
        J0("网络连接失败，再试试吧~", false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.f29144v = com.join.mgps.rpc.impl.d.m();
        this.f29123a = this;
        String str = this.f29142t;
        if (str != null && str.equals("1")) {
            this.f29128f.setVisibility(0);
        } else {
            this.f29128f.setVisibility(8);
        }
        String str2 = this.f29134l;
        if (str2 != null) {
            this.f29130h.setText(str2);
        }
        this.f29127e.setStarMark(this.f29135m);
        L0(this.f29135m);
        if (this.f29143u == 1) {
            this.f29146x = true;
        } else if (this.f29136n != null && this.f29137o != null) {
            DownloadTask B = g1.f.G().B(this.f29136n);
            if (!this.f29137o.equals(Dtype.H5.name()) && !this.f29137o.equals("102") && !this.f29137o.equals("green")) {
                if (B != null && B.getStatus() == 5) {
                    if (B.getFileType().equals(Dtype.android.name())) {
                        if (com.join.android.app.common.utils.a.g0(this.f29123a).c(this.f29123a, this.f29139q)) {
                            this.f29146x = true;
                        } else {
                            this.f29146x = false;
                        }
                    } else {
                        this.f29146x = true;
                    }
                } else {
                    this.f29146x = false;
                }
            } else if (B == null && this.f29138p != 1) {
                this.f29146x = false;
            } else {
                this.f29146x = true;
            }
        }
        this.f29146x = true;
        String G0 = G0();
        if (G0 != null && !G0.isEmpty()) {
            this.f29131i.setText(G0);
        } else {
            com.join.mgps.Util.i2.a(this.f29123a).b("手机型号获取失败！");
        }
        if (this.f29140r) {
            String str3 = this.f29141s;
            if (str3 != null && !str3.isEmpty()) {
                this.f29131i.setChecked(true);
            } else {
                this.f29131i.setChecked(false);
            }
        } else {
            this.f29131i.setChecked(true);
        }
        this.f29127e.setOnStarChangeListener(new a());
        TextView textView = this.f29132j;
        if (textView != null) {
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            SpannableString spannableString = new SpannableString("请按照《悟饭评价规则》发布点评");
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#3CA4FD")), 3, 11, 0);
            spannableString.setSpan(new b(), 3, 11, 0);
            this.f29132j.setText(spannableString);
            this.f29132j.setHighlightColor(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (IntentUtil.getInstance().goLoginInteractive(this) || this.f29146x) {
            return;
        }
        com.join.mgps.Util.a0.c0(this).B(this, new c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this.f29123a).b(str);
    }
}
