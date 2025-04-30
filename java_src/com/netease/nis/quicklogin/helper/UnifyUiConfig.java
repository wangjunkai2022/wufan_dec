package com.netease.nis.quicklogin.helper;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import com.cmic.sso.sdk.auth.AuthnHelper;
import com.cmic.sso.sdk.view.AuthThemeConfig;
import com.cmic.sso.sdk.view.LoginClickListener;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.R;
import com.netease.nis.quicklogin.listener.ActivityLifecycleCallbacks;
import com.netease.nis.quicklogin.listener.ActivityResultCallbacks;
import com.netease.nis.quicklogin.listener.ClickEventListener;
import com.netease.nis.quicklogin.listener.LoginListener;
import com.netease.nis.quicklogin.listener.MaskNumberListener;
import com.netease.nis.quicklogin.utils.LoginUiHelper;
import com.netease.nis.quicklogin.utils.h;
import com.netease.nis.quicklogin.utils.i;
import java.util.ArrayList;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class UnifyUiConfig {
    public static final int CHECKBOX_CHECKED = 1;
    public static final int CHECKBOX_UNCHECKED = 0;
    public static final int CLICK_CHECKBOX = 2;
    public static final int CLICK_LOGIN_BUTTON = 4;
    public static final int CLICK_PRIVACY = 1;
    public static final int CLICK_TOP_LEFT_BACK_BUTTON = 3;
    public static final int POSITION_IN_BODY = 0;
    public static final int POSITION_IN_ROOT = 2;
    public static final int POSITION_IN_TITLE_BAR = 1;
    private final String activityEnterAnimation;
    private final String activityExitAnimation;
    private final ActivityLifecycleCallbacks activityLifecycleCallbacks;
    private final ActivityResultCallbacks activityResultCallbacks;
    private final boolean backPressedAvailable;
    private final String backgroundGif;
    private final Drawable backgroundGifDrawable;
    private final String backgroundImage;
    private final Drawable backgroundImageDrawable;
    private final View backgroundShadow;
    private final String backgroundVideo;
    private final String backgroundVideoImage;
    private final Drawable backgroundVideoImageDrawable;
    private final int checkBoxGravity;
    private final Drawable checkedImageDrawable;
    private final String checkedImageName;
    private final ClickEventListener clickEventListener;
    private AuthThemeConfig cmAuthThemeConfig;
    private final String cmProtocolNavTitle;
    private final Context context;
    private final String ctProtocolNavTitle;
    private final String cuProtocolNavTitle;
    private final String customProtocol2NavTitle;
    private final String customProtocol3NavTitle;
    private final String customProtocolNavTitle;
    private final ArrayList<LoginUiHelper.g> customViewHolders;
    private final int dialogHeight;
    private final int dialogWidth;
    private final int dialogX;
    private final int dialogY;
    private final boolean isBottomDialog;
    private final boolean isDialogMode;
    private final boolean isHideBackIcon;
    private final boolean isHideLogo;
    private final boolean isHideNav;
    private final boolean isHidePrivacyCheckBox;
    private final boolean isHidePrivacySmh;
    private final boolean isLandscape;
    private final boolean isNavTitleBold;
    private final boolean isPrivacyTextGravityCenter;
    private final boolean isProtocolDialogMode;
    private final boolean isStatusBarDarkColor;
    private final ViewGroup loadingView;
    private final boolean loadingVisible;
    private final Drawable loginBtnBackgroundDrawable;
    private final String loginBtnBackgroundRes;
    private final int loginBtnBottomYOffset;
    private final int loginBtnHeight;
    private final String loginBtnText;
    private final int loginBtnTextColor;
    private final int loginBtnTextDpSize;
    private final int loginBtnTextSize;
    private final int loginBtnTopYOffset;
    private final int loginBtnWidth;
    private final int loginBtnXOffset;
    private final LoginListener loginListener;
    private final int logoBottomYOffset;
    private final int logoHeight;
    private final Drawable logoIconDrawable;
    private final String logoIconName;
    private final int logoTopYOffset;
    private final int logoWidth;
    private final int logoXOffset;
    private final String maskNumberBackgroundRes;
    private final int maskNumberBottomYOffset;
    private final int maskNumberColor;
    private final int maskNumberDpSize;
    private final MaskNumberListener maskNumberListener;
    private final int maskNumberSize;
    private final Typeface maskNumberTf;
    private final int maskNumberTopYOffset;
    private final int maskNumberXOffset;
    private final String navBackIcon;
    private final Drawable navBackIconDrawable;
    private final int navBackIconGravity;
    private final int navBackIconHeight;
    private final int navBackIconMargin;
    private final int navBackIconWidth;
    private final int navBackgroundColor;
    private final int navHeight;
    private final String navTitle;
    private final int navTitleColor;
    private final int navTitleDpSize;
    private final Drawable navTitleDrawable;
    private final int navTitleDrawablePadding;
    private final int navTitleSize;
    private final int privacyBottomYOffset;
    private final int privacyCheckBoxHeight;
    private final int privacyCheckBoxWidth;
    private final boolean privacyDialogAuto;
    private final String privacyDialogText;
    private final float privacyDialogTextSize;
    private final int privacyDpSize;
    private final float privacyLineSpacingAdd;
    private final float privacyLineSpacingMul;
    private final int privacyMarginLeft;
    private final int privacyMarginRight;
    private final int privacyProtocolColor;
    private final int privacySize;
    private final boolean privacyState;
    private final int privacyTextColor;
    private final String privacyTextEnd;
    private final int privacyTextLayoutGravity;
    private final int privacyTextMarginLeft;
    private final String privacyTextStart;
    private final float privacyTextStartSize;
    private final int privacyTopYOffset;
    private final String protocol2Link;
    private final String protocol2Text;
    private final String protocol3Link;
    private final String protocol3Text;
    private final String protocolBackgroundImage;
    private final String protocolConnect;
    private final String protocolLink;
    private final String protocolNavBackIcon;
    private final Drawable protocolNavBackIconDrawable;
    private final int protocolNavBackIconHeight;
    private final int protocolNavBackIconWidth;
    private final int protocolNavColor;
    private final int protocolNavHeight;
    private final String protocolNavTitle;
    private final int protocolNavTitleColor;
    private final int protocolNavTitleDpSize;
    private final int protocolNavTitleSize;
    private final String protocolText;
    private final int sloganBottomYOffset;
    private final int sloganColor;
    private final int sloganDpSize;
    private final int sloganSize;
    private final int sloganTopYOffset;
    private final int sloganXOffset;
    private final int statusBarColor;
    private final String unCheckedImageName;
    private final Drawable unCheckedImageNameDrawable;

    /* loaded from: classes4.dex */
    public static class Builder {
        private ViewGroup A1;
        private int B;
        private int C;
        private String C0;
        private int D;
        private String D0;
        private Typeface E;
        private int F;
        private String F0;
        private int G;
        private String G0;
        private int H;
        private String H0;
        private String I;
        private String I0;
        private int J;
        private int K;
        private String K0;
        private String L0;
        private int M;
        private String M0;
        private int N;
        private String N0;
        private int O;
        private String O0;
        private String P0;
        private int Q;
        private String Q0;
        private int R;
        private int R0;
        private int S0;
        private int T;
        private int T0;
        private int U;
        private int U0;
        private String V;
        private Drawable W;
        private int X;
        private String X0;
        private int Y;
        private Drawable Y0;
        private int Z;
        private int Z0;

        /* renamed from: a1  reason: collision with root package name */
        private boolean f54135a1;

        /* renamed from: b1  reason: collision with root package name */
        private int f54138b1;

        /* renamed from: c  reason: collision with root package name */
        private String f54139c;

        /* renamed from: c0  reason: collision with root package name */
        private int f54140c0;

        /* renamed from: c1  reason: collision with root package name */
        private int f54141c1;

        /* renamed from: d  reason: collision with root package name */
        private Drawable f54142d;

        /* renamed from: d0  reason: collision with root package name */
        private int f54143d0;

        /* renamed from: d1  reason: collision with root package name */
        private int f54144d1;

        /* renamed from: e  reason: collision with root package name */
        private boolean f54145e;

        /* renamed from: e0  reason: collision with root package name */
        private int f54146e0;

        /* renamed from: e1  reason: collision with root package name */
        private int f54147e1;

        /* renamed from: f0  reason: collision with root package name */
        private int f54149f0;

        /* renamed from: f1  reason: collision with root package name */
        private boolean f54150f1;

        /* renamed from: g0  reason: collision with root package name */
        private int f54152g0;

        /* renamed from: g1  reason: collision with root package name */
        private boolean f54153g1;

        /* renamed from: h  reason: collision with root package name */
        private int f54154h;

        /* renamed from: h0  reason: collision with root package name */
        private int f54155h0;

        /* renamed from: h1  reason: collision with root package name */
        private String f54156h1;

        /* renamed from: i  reason: collision with root package name */
        private int f54157i;

        /* renamed from: i1  reason: collision with root package name */
        private String f54159i1;
        public boolean isLandscape;

        /* renamed from: j  reason: collision with root package name */
        private int f54160j;

        /* renamed from: j1  reason: collision with root package name */
        private Drawable f54162j1;

        /* renamed from: k  reason: collision with root package name */
        private String f54163k;

        /* renamed from: k1  reason: collision with root package name */
        private String f54165k1;

        /* renamed from: l  reason: collision with root package name */
        private int f54166l;

        /* renamed from: l1  reason: collision with root package name */
        private Drawable f54168l1;

        /* renamed from: m  reason: collision with root package name */
        private int f54169m;

        /* renamed from: m0  reason: collision with root package name */
        private int f54170m0;

        /* renamed from: m1  reason: collision with root package name */
        private String f54171m1;

        /* renamed from: n  reason: collision with root package name */
        private int f54172n;

        /* renamed from: n0  reason: collision with root package name */
        private int f54173n0;

        /* renamed from: n1  reason: collision with root package name */
        private String f54174n1;

        /* renamed from: o  reason: collision with root package name */
        private int f54175o;

        /* renamed from: o0  reason: collision with root package name */
        private int f54176o0;

        /* renamed from: o1  reason: collision with root package name */
        private Drawable f54177o1;

        /* renamed from: p0  reason: collision with root package name */
        private int f54179p0;

        /* renamed from: p1  reason: collision with root package name */
        private String f54180p1;

        /* renamed from: q  reason: collision with root package name */
        private boolean f54181q;

        /* renamed from: q0  reason: collision with root package name */
        private int f54182q0;

        /* renamed from: q1  reason: collision with root package name */
        private String f54183q1;

        /* renamed from: r  reason: collision with root package name */
        private Drawable f54184r;

        /* renamed from: r1  reason: collision with root package name */
        private MaskNumberListener f54186r1;

        /* renamed from: s  reason: collision with root package name */
        private int f54187s;

        /* renamed from: s0  reason: collision with root package name */
        private Drawable f54188s0;

        /* renamed from: s1  reason: collision with root package name */
        private LoginListener f54189s1;

        /* renamed from: t  reason: collision with root package name */
        private String f54190t;

        /* renamed from: t1  reason: collision with root package name */
        private ClickEventListener f54192t1;

        /* renamed from: u  reason: collision with root package name */
        private Drawable f54193u;

        /* renamed from: u0  reason: collision with root package name */
        private Drawable f54194u0;

        /* renamed from: u1  reason: collision with root package name */
        private View f54195u1;

        /* renamed from: v  reason: collision with root package name */
        private int f54196v;

        /* renamed from: v0  reason: collision with root package name */
        private String f54197v0;

        /* renamed from: v1  reason: collision with root package name */
        private ArrayList<LoginUiHelper.g> f54198v1;

        /* renamed from: w  reason: collision with root package name */
        private int f54199w;

        /* renamed from: w0  reason: collision with root package name */
        private boolean f54200w0;

        /* renamed from: w1  reason: collision with root package name */
        private ActivityLifecycleCallbacks f54201w1;

        /* renamed from: x  reason: collision with root package name */
        private int f54202x;

        /* renamed from: x1  reason: collision with root package name */
        private ActivityResultCallbacks f54204x1;

        /* renamed from: y  reason: collision with root package name */
        private int f54205y;

        /* renamed from: z  reason: collision with root package name */
        private int f54208z;

        /* renamed from: a  reason: collision with root package name */
        private int f54133a = -1;

        /* renamed from: b  reason: collision with root package name */
        private boolean f54136b = false;

        /* renamed from: f  reason: collision with root package name */
        private int f54148f = 25;

        /* renamed from: g  reason: collision with root package name */
        private int f54151g = 25;

        /* renamed from: p  reason: collision with root package name */
        private boolean f54178p = false;
        private boolean A = false;
        private int L = -16776961;
        private String P = "本机号码一键登录";
        private int S = -1;

        /* renamed from: a0  reason: collision with root package name */
        private int f54134a0 = -16777216;

        /* renamed from: b0  reason: collision with root package name */
        private int f54137b0 = -7829368;

        /* renamed from: i0  reason: collision with root package name */
        private boolean f54158i0 = true;

        /* renamed from: j0  reason: collision with root package name */
        private boolean f54161j0 = false;

        /* renamed from: k0  reason: collision with root package name */
        private boolean f54164k0 = false;

        /* renamed from: l0  reason: collision with root package name */
        private boolean f54167l0 = false;

        /* renamed from: r0  reason: collision with root package name */
        private String f54185r0 = "yd_checkbox_checked";

        /* renamed from: t0  reason: collision with root package name */
        private String f54191t0 = "yd_checkbox_unchecked";

        /* renamed from: x0  reason: collision with root package name */
        private float f54203x0 = 0.0f;

        /* renamed from: y0  reason: collision with root package name */
        private String f54206y0 = "登录即同意";

        /* renamed from: z0  reason: collision with root package name */
        private float f54209z0 = 0.0f;
        private float A0 = 0.0f;
        private float B0 = 0.0f;
        private String E0 = "和";
        private String J0 = "且授权使用本机号码登录";
        private int V0 = 25;
        private int W0 = 25;

        /* renamed from: y1  reason: collision with root package name */
        private boolean f54207y1 = true;

        /* renamed from: z1  reason: collision with root package name */
        private boolean f54210z1 = true;

        public Builder addCustomView(View view, String str, int i2, LoginUiHelper.CustomViewListener customViewListener) {
            if (view == null) {
                return this;
            }
            if (this.f54198v1 == null) {
                this.f54198v1 = new ArrayList<>();
            }
            LoginUiHelper.g gVar = new LoginUiHelper.g();
            gVar.f54302a = view;
            gVar.f54303b = i2;
            gVar.f54304c = customViewListener;
            this.f54198v1.add(gVar);
            return this;
        }

        public UnifyUiConfig build(Context context) {
            return new UnifyUiConfig(this, context, null);
        }

        public Builder setActivityLifecycleCallbacks(ActivityLifecycleCallbacks activityLifecycleCallbacks) {
            this.f54201w1 = activityLifecycleCallbacks;
            return this;
        }

        public Builder setActivityResultCallbacks(ActivityResultCallbacks activityResultCallbacks) {
            this.f54204x1 = activityResultCallbacks;
            return this;
        }

        public Builder setActivityTranslateAnimation(String str, String str2) {
            this.f54180p1 = str;
            this.f54183q1 = str2;
            return this;
        }

        public Builder setBackPressedAvailable(boolean z3) {
            this.f54207y1 = z3;
            return this;
        }

        public Builder setBackgroundGif(String str) {
            this.f54165k1 = str;
            return this;
        }

        public Builder setBackgroundGifDrawable(Drawable drawable) {
            this.f54168l1 = drawable;
            return this;
        }

        public Builder setBackgroundImage(String str) {
            this.f54156h1 = str;
            return this;
        }

        public Builder setBackgroundImageDrawable(Drawable drawable) {
            this.f54162j1 = drawable;
            return this;
        }

        public Builder setBackgroundShadowView(View view) {
            this.f54195u1 = view;
            return this;
        }

        public Builder setBackgroundVideo(String str, String str2) {
            this.f54171m1 = str;
            this.f54174n1 = str2;
            return this;
        }

        public Builder setBottomDialog(boolean z3) {
            this.f54150f1 = z3;
            return this;
        }

        public Builder setCheckBoxGravity(int i2) {
            this.f54176o0 = i2;
            return this;
        }

        public Builder setCheckedImageDrawable(Drawable drawable) {
            this.f54188s0 = drawable;
            return this;
        }

        public Builder setCheckedImageName(String str) {
            this.f54185r0 = str;
            return this;
        }

        public Builder setClickEventListener(ClickEventListener clickEventListener) {
            this.f54192t1 = clickEventListener;
            return this;
        }

        public Builder setDialogHeight(int i2) {
            this.f54141c1 = i2;
            return this;
        }

        public Builder setDialogMode(boolean z3) {
            this.f54135a1 = z3;
            return this;
        }

        public Builder setDialogWidth(int i2) {
            this.f54138b1 = i2;
            return this;
        }

        public Builder setDialogX(int i2) {
            this.f54144d1 = i2;
            return this;
        }

        public Builder setDialogY(int i2) {
            this.f54147e1 = i2;
            return this;
        }

        public Builder setHideLogo(boolean z3) {
            this.A = z3;
            return this;
        }

        public Builder setHideNavigation(boolean z3) {
            this.f54178p = z3;
            return this;
        }

        public Builder setHideNavigationBackIcon(boolean z3) {
            this.f54145e = z3;
            return this;
        }

        public Builder setHidePrivacyCheckBox(boolean z3) {
            this.f54161j0 = z3;
            return this;
        }

        public Builder setHidePrivacySmh(boolean z3) {
            this.f54164k0 = z3;
            return this;
        }

        public Builder setLandscape(boolean z3) {
            this.isLandscape = z3;
            return this;
        }

        public Builder setLoadingView(ViewGroup viewGroup) {
            this.A1 = viewGroup;
            return this;
        }

        public Builder setLoadingVisible(boolean z3) {
            this.f54210z1 = z3;
            return this;
        }

        public Builder setLoginBtnBackgroundDrawable(Drawable drawable) {
            this.W = drawable;
            return this;
        }

        public Builder setLoginBtnBackgroundRes(String str) {
            this.V = str;
            return this;
        }

        public Builder setLoginBtnBottomYOffset(int i2) {
            this.Y = i2;
            return this;
        }

        public Builder setLoginBtnHeight(int i2) {
            this.U = i2;
            return this;
        }

        public Builder setLoginBtnText(String str) {
            this.P = str;
            return this;
        }

        public Builder setLoginBtnTextColor(int i2) {
            this.S = i2;
            return this;
        }

        public Builder setLoginBtnTextDpSize(int i2) {
            this.R = i2;
            return this;
        }

        public Builder setLoginBtnTextSize(int i2) {
            this.Q = i2;
            return this;
        }

        public Builder setLoginBtnTopYOffset(int i2) {
            this.X = i2;
            return this;
        }

        public Builder setLoginBtnWidth(int i2) {
            this.T = i2;
            return this;
        }

        public Builder setLoginBtnXOffset(int i2) {
            this.Z = i2;
            return this;
        }

        public Builder setLoginListener(LoginListener loginListener) {
            this.f54189s1 = loginListener;
            return this;
        }

        public Builder setLogoBottomYOffset(int i2) {
            this.f54205y = i2;
            return this;
        }

        public Builder setLogoHeight(int i2) {
            this.f54199w = i2;
            return this;
        }

        public Builder setLogoIconDrawable(Drawable drawable) {
            this.f54193u = drawable;
            return this;
        }

        public Builder setLogoIconName(String str) {
            this.f54190t = str;
            return this;
        }

        public Builder setLogoTopYOffset(int i2) {
            this.f54202x = i2;
            return this;
        }

        public Builder setLogoWidth(int i2) {
            this.f54196v = i2;
            return this;
        }

        public Builder setLogoXOffset(int i2) {
            this.f54208z = i2;
            return this;
        }

        public Builder setMaskNumberBackgroundRes(String str) {
            this.I = str;
            return this;
        }

        public Builder setMaskNumberBottomYOffset(int i2) {
            this.G = i2;
            return this;
        }

        public Builder setMaskNumberColor(int i2) {
            this.B = i2;
            return this;
        }

        public Builder setMaskNumberDpSize(int i2) {
            this.D = i2;
            return this;
        }

        public Builder setMaskNumberListener(MaskNumberListener maskNumberListener) {
            this.f54186r1 = maskNumberListener;
            return this;
        }

        public Builder setMaskNumberSize(int i2) {
            this.C = i2;
            return this;
        }

        public Builder setMaskNumberTopYOffset(int i2) {
            this.F = i2;
            return this;
        }

        public Builder setMaskNumberTypeface(Typeface typeface) {
            this.E = typeface;
            return this;
        }

        public Builder setMaskNumberXOffset(int i2) {
            this.H = i2;
            return this;
        }

        public Builder setNavTitleBold(boolean z3) {
            this.f54181q = z3;
            return this;
        }

        public Builder setNavTitleDpSize(int i2) {
            this.f54175o = i2;
            return this;
        }

        public Builder setNavTitleDrawable(Drawable drawable) {
            this.f54184r = drawable;
            return this;
        }

        public Builder setNavTitleDrawablePadding(int i2) {
            this.f54187s = i2;
            return this;
        }

        public Builder setNavTitleSize(int i2) {
            this.f54172n = i2;
            return this;
        }

        public Builder setNavigationBackIconHeight(int i2) {
            this.f54151g = i2;
            return this;
        }

        public Builder setNavigationBackIconWidth(int i2) {
            this.f54148f = i2;
            return this;
        }

        public Builder setNavigationBackgroundColor(int i2) {
            this.f54160j = i2;
            return this;
        }

        public Builder setNavigationHeight(int i2) {
            this.f54166l = i2;
            return this;
        }

        public Builder setNavigationIcon(String str) {
            this.f54139c = str;
            return this;
        }

        public Builder setNavigationIconDrawable(Drawable drawable) {
            this.f54142d = drawable;
            return this;
        }

        public Builder setNavigationIconGravity(int i2) {
            this.f54154h = i2;
            return this;
        }

        public Builder setNavigationIconMargin(int i2) {
            this.f54157i = i2;
            return this;
        }

        public Builder setNavigationTitle(String str) {
            this.f54163k = str;
            return this;
        }

        public Builder setNavigationTitleColor(int i2) {
            this.f54169m = i2;
            return this;
        }

        public Builder setPrivacyBottomYOffset(int i2) {
            this.f54149f0 = i2;
            return this;
        }

        public Builder setPrivacyCheckBoxHeight(int i2) {
            this.f54182q0 = i2;
            return this;
        }

        public Builder setPrivacyCheckBoxWidth(int i2) {
            this.f54179p0 = i2;
            return this;
        }

        public Builder setPrivacyDialogAuto(boolean z3) {
            this.f54200w0 = z3;
            return this;
        }

        public Builder setPrivacyDialogText(String str) {
            this.f54197v0 = str;
            return this;
        }

        public Builder setPrivacyDialogTextSize(float f4) {
            this.f54203x0 = f4;
            return this;
        }

        public Builder setPrivacyDpSize(int i2) {
            this.f54143d0 = i2;
            return this;
        }

        public Builder setPrivacyLineSpacing(float f4, float f5) {
            this.A0 = f4;
            this.B0 = f5;
            return this;
        }

        public Builder setPrivacyMarginLeft(int i2) {
            this.f54152g0 = i2;
            return this;
        }

        public Builder setPrivacyMarginRight(int i2) {
            this.f54155h0 = i2;
            return this;
        }

        public Builder setPrivacyProtocolColor(int i2) {
            this.f54137b0 = i2;
            return this;
        }

        public Builder setPrivacySize(int i2) {
            this.f54140c0 = i2;
            return this;
        }

        public Builder setPrivacyState(boolean z3) {
            this.f54158i0 = z3;
            return this;
        }

        public Builder setPrivacyTextColor(int i2) {
            this.f54134a0 = i2;
            return this;
        }

        public Builder setPrivacyTextEnd(String str) {
            this.J0 = str;
            return this;
        }

        public Builder setPrivacyTextGravityCenter(boolean z3) {
            this.f54167l0 = z3;
            return this;
        }

        public Builder setPrivacyTextLayoutGravity(int i2) {
            this.f54170m0 = i2;
            return this;
        }

        public Builder setPrivacyTextMarginLeft(int i2) {
            this.f54173n0 = i2;
            return this;
        }

        public Builder setPrivacyTextStart(String str) {
            this.f54206y0 = str;
            return this;
        }

        public Builder setPrivacyTextStartSize(float f4) {
            this.f54209z0 = f4;
            return this;
        }

        public Builder setPrivacyTopYOffset(int i2) {
            this.f54146e0 = i2;
            return this;
        }

        public Builder setProtocol2Link(String str) {
            this.G0 = str;
            return this;
        }

        public Builder setProtocol2Text(String str) {
            this.F0 = str;
            return this;
        }

        public Builder setProtocol3Link(String str) {
            this.I0 = str;
            return this;
        }

        public Builder setProtocol3Text(String str) {
            this.H0 = str;
            return this;
        }

        public Builder setProtocolBackgroundImage(String str) {
            this.f54159i1 = str;
            return this;
        }

        public Builder setProtocolConnect(String str) {
            this.E0 = str;
            return this;
        }

        public Builder setProtocolDialogMode(boolean z3) {
            this.f54153g1 = z3;
            return this;
        }

        public Builder setProtocolLink(String str) {
            this.D0 = str;
            return this;
        }

        public Builder setProtocolPageNavBackIcon(String str) {
            this.X0 = str;
            return this;
        }

        public Builder setProtocolPageNavBackIconDrawable(Drawable drawable) {
            this.Y0 = drawable;
            return this;
        }

        public Builder setProtocolPageNavBackIconHeight(int i2) {
            this.W0 = i2;
            return this;
        }

        public Builder setProtocolPageNavBackIconWidth(int i2) {
            this.V0 = i2;
            return this;
        }

        public Builder setProtocolPageNavColor(int i2) {
            this.Z0 = i2;
            return this;
        }

        public Builder setProtocolPageNavHeight(int i2) {
            this.R0 = i2;
            return this;
        }

        @Deprecated
        public Builder setProtocolPageNavTitle(String str) {
            this.K0 = str;
            return this;
        }

        public Builder setProtocolPageNavTitleColor(int i2) {
            this.S0 = i2;
            return this;
        }

        public Builder setProtocolPageNavTitleDpSize(int i2) {
            this.U0 = i2;
            return this;
        }

        public Builder setProtocolPageNavTitleSize(int i2) {
            this.T0 = i2;
            return this;
        }

        public Builder setProtocolText(String str) {
            this.C0 = str;
            return this;
        }

        public Builder setSloganBottomYOffset(int i2) {
            this.N = i2;
            return this;
        }

        public Builder setSloganColor(int i2) {
            this.L = i2;
            return this;
        }

        public Builder setSloganDpSize(int i2) {
            this.K = i2;
            return this;
        }

        public Builder setSloganSize(int i2) {
            this.J = i2;
            return this;
        }

        public Builder setSloganTopYOffset(int i2) {
            this.M = i2;
            return this;
        }

        public Builder setSloganXOffset(int i2) {
            this.O = i2;
            return this;
        }

        public Builder setStatusBarColor(int i2) {
            this.f54133a = i2;
            return this;
        }

        public Builder setStatusBarDarkColor(boolean z3) {
            this.f54136b = z3;
            return this;
        }

        public Builder setUnCheckedImageDrawable(Drawable drawable) {
            this.f54194u0 = drawable;
            return this;
        }

        public Builder setUnCheckedImageName(String str) {
            this.f54191t0 = str;
            return this;
        }

        public Builder setDialogMode(boolean z3, int i2, int i4, int i5, int i6, boolean z4) {
            this.f54135a1 = z3;
            this.f54138b1 = i2;
            this.f54141c1 = i4;
            this.f54144d1 = i5;
            this.f54147e1 = i6;
            this.f54150f1 = z4;
            return this;
        }

        public Builder setProtocolPageNavTitle(String str, String str2, String str3) {
            this.L0 = str;
            this.N0 = str2;
            this.M0 = str3;
            return this;
        }

        public Builder setBackgroundVideo(String str, Drawable drawable) {
            this.f54171m1 = str;
            this.f54177o1 = drawable;
            return this;
        }

        public Builder setProtocolPageNavTitle(String str, String str2, String str3, String str4, String str5, String str6) {
            this.L0 = str;
            this.N0 = str2;
            this.M0 = str3;
            this.O0 = str4;
            this.P0 = str5;
            this.Q0 = str6;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements LoginClickListener {
        a(UnifyUiConfig unifyUiConfig) {
        }

        @Override // com.cmic.sso.sdk.view.LoginClickListener
        public void onLoginClickComplete(Context context, JSONObject jSONObject) {
        }

        @Override // com.cmic.sso.sdk.view.LoginClickListener
        public void onLoginClickStart(Context context, JSONObject jSONObject) {
        }
    }

    /* synthetic */ UnifyUiConfig(Builder builder, Context context, a aVar) {
        this(builder, context);
    }

    private void createCmAuthUiBuilder() {
        AuthThemeConfig.Builder builder = new AuthThemeConfig.Builder();
        int i2 = this.navHeight;
        if (i2 == 0) {
            i2 = i.b(this.context);
        }
        int i4 = this.maskNumberSize;
        if (i4 != 0) {
            builder.setNumberSize(i4, false);
        }
        int i5 = this.maskNumberColor;
        if (i5 != 0) {
            builder.setNumberColor(i5);
        }
        int i6 = this.maskNumberTopYOffset;
        if (i6 != 0) {
            builder.setNumFieldOffsetY(i6 + i2);
        }
        int i7 = this.maskNumberBottomYOffset;
        if (i7 != 0) {
            builder.setNumFieldOffsetY_B(i7);
        }
        builder.setLogBtn(this.loginBtnWidth, this.loginBtnHeight).setLogBtnMargin(0, 0).setLogBtnText(this.loginBtnText, this.loginBtnTextColor, this.loginBtnTextSize, false);
        int i8 = this.loginBtnTopYOffset;
        if (i8 != 0) {
            builder.setLogBtnOffsetY(i8 + i2);
        }
        int i9 = this.loginBtnBottomYOffset;
        if (i9 != 0) {
            builder.setLogBtnOffsetY_B(i9);
        }
        builder.setLogBtnClickListener(new a(this));
        String str = this.activityEnterAnimation;
        builder.setAuthPageActIn(str, str);
        String str2 = this.activityExitAnimation;
        builder.setAuthPageActOut(str2, str2);
        builder.setAuthLayoutResID(h.a(this.context).d("yd_activity_quick_login_cm") == 0 ? R.layout.yd_activity_quick_login_cm : h.a(this.context).d("yd_activity_quick_login_cm"));
        this.cmAuthThemeConfig = builder.build();
        AuthnHelper.getInstance(this.context).setAuthThemeConfig(this.cmAuthThemeConfig);
    }

    public String getActivityEnterAnimation() {
        return this.activityEnterAnimation;
    }

    public String getActivityExitAnimation() {
        return this.activityExitAnimation;
    }

    public ActivityLifecycleCallbacks getActivityLifecycleCallbacks() {
        return this.activityLifecycleCallbacks;
    }

    public ActivityResultCallbacks getActivityResultCallbacks() {
        return this.activityResultCallbacks;
    }

    public boolean getBackPressedAvailable() {
        return this.backPressedAvailable;
    }

    public String getBackgroundGif() {
        return this.backgroundGif;
    }

    public Drawable getBackgroundGifDrawable() {
        return this.backgroundGifDrawable;
    }

    public String getBackgroundImage() {
        return this.backgroundImage;
    }

    public Drawable getBackgroundImageDrawable() {
        return this.backgroundImageDrawable;
    }

    public View getBackgroundShadow() {
        return this.backgroundShadow;
    }

    public String getBackgroundVideo() {
        return this.backgroundVideo;
    }

    public String getBackgroundVideoImage() {
        return this.backgroundVideoImage;
    }

    public Drawable getBackgroundVideoImageDrawable() {
        return this.backgroundVideoImageDrawable;
    }

    public int getCheckBoxGravity() {
        return this.checkBoxGravity;
    }

    public Drawable getCheckedImageDrawable() {
        return this.checkedImageDrawable;
    }

    public String getCheckedImageName() {
        return this.checkedImageName;
    }

    public ClickEventListener getClickEventListener() {
        return this.clickEventListener;
    }

    public AuthThemeConfig getCmAuthThemeConfig() {
        AuthThemeConfig authThemeConfig = this.cmAuthThemeConfig;
        return authThemeConfig == null ? new AuthThemeConfig.Builder().build() : authThemeConfig;
    }

    public String getCmProtocolNavTitle() {
        return this.cmProtocolNavTitle;
    }

    public String getCtProtocolNavTitle() {
        return this.ctProtocolNavTitle;
    }

    public String getCuProtocolNavTitle() {
        return this.cuProtocolNavTitle;
    }

    public String getCustomProtocol2NavTitle() {
        return this.customProtocol2NavTitle;
    }

    public String getCustomProtocol3NavTitle() {
        return this.customProtocol3NavTitle;
    }

    public String getCustomProtocolNavTitle() {
        return this.customProtocolNavTitle;
    }

    public ArrayList<LoginUiHelper.g> getCustomViewHolders() {
        return this.customViewHolders;
    }

    public int getDialogHeight() {
        return this.dialogHeight;
    }

    public int getDialogWidth() {
        return this.dialogWidth;
    }

    public int getDialogX() {
        return this.dialogX;
    }

    public int getDialogY() {
        return this.dialogY;
    }

    public ViewGroup getLoadingView() {
        return this.loadingView;
    }

    public boolean getLoadingVisible() {
        return this.loadingVisible;
    }

    public Drawable getLoginBtnBackgroundDrawable() {
        return this.loginBtnBackgroundDrawable;
    }

    public String getLoginBtnBackgroundRes() {
        return this.loginBtnBackgroundRes;
    }

    public int getLoginBtnBottomYOffset() {
        return this.loginBtnBottomYOffset;
    }

    public int getLoginBtnHeight() {
        return this.loginBtnHeight;
    }

    public String getLoginBtnText() {
        return this.loginBtnText;
    }

    public int getLoginBtnTextColor() {
        return this.loginBtnTextColor;
    }

    public int getLoginBtnTextDpSize() {
        return this.loginBtnTextDpSize;
    }

    public int getLoginBtnTextSize() {
        return this.loginBtnTextSize;
    }

    public int getLoginBtnTopYOffset() {
        return this.loginBtnTopYOffset;
    }

    public int getLoginBtnWidth() {
        return this.loginBtnWidth;
    }

    public int getLoginBtnXOffset() {
        return this.loginBtnXOffset;
    }

    public LoginListener getLoginListener() {
        return this.loginListener;
    }

    public int getLogoBottomYOffset() {
        return this.logoBottomYOffset;
    }

    public int getLogoHeight() {
        return this.logoHeight;
    }

    public Drawable getLogoIconDrawable() {
        return this.logoIconDrawable;
    }

    public String getLogoIconName() {
        return this.logoIconName;
    }

    public int getLogoTopYOffset() {
        return this.logoTopYOffset;
    }

    public int getLogoWidth() {
        return this.logoWidth;
    }

    public int getLogoXOffset() {
        return this.logoXOffset;
    }

    public String getMaskNumberBackgroundRes() {
        return this.maskNumberBackgroundRes;
    }

    public int getMaskNumberBottomYOffset() {
        return this.maskNumberBottomYOffset;
    }

    public int getMaskNumberColor() {
        return this.maskNumberColor;
    }

    public int getMaskNumberDpSize() {
        return this.maskNumberDpSize;
    }

    public MaskNumberListener getMaskNumberListener() {
        return this.maskNumberListener;
    }

    public int getMaskNumberSize() {
        return this.maskNumberSize;
    }

    public int getMaskNumberTopYOffset() {
        return this.maskNumberTopYOffset;
    }

    public Typeface getMaskNumberTypeface() {
        return this.maskNumberTf;
    }

    public int getMaskNumberXOffset() {
        return this.maskNumberXOffset;
    }

    public String getNavBackIcon() {
        return this.navBackIcon;
    }

    public Drawable getNavBackIconDrawable() {
        return this.navBackIconDrawable;
    }

    public int getNavBackIconGravity() {
        return this.navBackIconGravity;
    }

    public int getNavBackIconHeight() {
        return this.navBackIconHeight;
    }

    public int getNavBackIconMargin() {
        return this.navBackIconMargin;
    }

    public int getNavBackIconWidth() {
        return this.navBackIconWidth;
    }

    public int getNavBackgroundColor() {
        return this.navBackgroundColor;
    }

    public int getNavHeight() {
        return this.navHeight;
    }

    public String getNavTitle() {
        return this.navTitle;
    }

    public int getNavTitleColor() {
        return this.navTitleColor;
    }

    public int getNavTitleDpSize() {
        return this.navTitleDpSize;
    }

    public Drawable getNavTitleDrawable() {
        return this.navTitleDrawable;
    }

    public int getNavTitleDrawablePadding() {
        return this.navTitleDrawablePadding;
    }

    public int getNavTitleSize() {
        return this.navTitleSize;
    }

    public int getPrivacyBottomYOffset() {
        return this.privacyBottomYOffset;
    }

    public int getPrivacyCheckBoxHeight() {
        return this.privacyCheckBoxHeight;
    }

    public int getPrivacyCheckBoxWidth() {
        return this.privacyCheckBoxWidth;
    }

    public boolean getPrivacyDialogAuto() {
        return this.privacyDialogAuto;
    }

    public String getPrivacyDialogText() {
        return this.privacyDialogText;
    }

    public float getPrivacyDialogTextSize() {
        return this.privacyDialogTextSize;
    }

    public int getPrivacyDpSize() {
        return this.privacyDpSize;
    }

    public float getPrivacyLineSpacingAdd() {
        return this.privacyLineSpacingAdd;
    }

    public float getPrivacyLineSpacingMul() {
        return this.privacyLineSpacingMul;
    }

    public int getPrivacyMarginLeft() {
        return this.privacyMarginLeft;
    }

    public int getPrivacyMarginRight() {
        return this.privacyMarginRight;
    }

    public int getPrivacyProtocolColor() {
        return this.privacyProtocolColor;
    }

    public int getPrivacySize() {
        return this.privacySize;
    }

    public int getPrivacyTextColor() {
        return this.privacyTextColor;
    }

    public String getPrivacyTextEnd() {
        return this.privacyTextEnd;
    }

    public int getPrivacyTextLayoutGravity() {
        return this.privacyTextLayoutGravity;
    }

    public int getPrivacyTextMarginLeft() {
        return this.privacyTextMarginLeft;
    }

    public String getPrivacyTextStart() {
        return this.privacyTextStart;
    }

    public float getPrivacyTextStartSize() {
        return this.privacyTextStartSize;
    }

    public int getPrivacyTopYOffset() {
        return this.privacyTopYOffset;
    }

    public String getProtocol2Link() {
        return this.protocol2Link;
    }

    public String getProtocol2Text() {
        return this.protocol2Text;
    }

    public String getProtocol3Link() {
        return this.protocol3Link;
    }

    public String getProtocol3Text() {
        return this.protocol3Text;
    }

    public String getProtocolBackgroundImage() {
        return this.protocolBackgroundImage;
    }

    public String getProtocolConnect() {
        return this.protocolConnect;
    }

    public String getProtocolLink() {
        return this.protocolLink;
    }

    public String getProtocolNavBackIcon() {
        return this.protocolNavBackIcon;
    }

    public Drawable getProtocolNavBackIconDrawable() {
        return this.protocolNavBackIconDrawable;
    }

    public int getProtocolNavBackIconHeight() {
        return this.protocolNavBackIconHeight;
    }

    public int getProtocolNavBackIconWidth() {
        return this.protocolNavBackIconWidth;
    }

    public int getProtocolNavColor() {
        return this.protocolNavColor;
    }

    public int getProtocolNavHeight() {
        return this.protocolNavHeight;
    }

    public String getProtocolNavTitle() {
        return this.protocolNavTitle;
    }

    public int getProtocolNavTitleColor() {
        return this.protocolNavTitleColor;
    }

    public int getProtocolNavTitleDpSize() {
        return this.protocolNavTitleDpSize;
    }

    public int getProtocolNavTitleSize() {
        return this.protocolNavTitleSize;
    }

    public String getProtocolText() {
        return this.protocolText;
    }

    public int getSloganBottomYOffset() {
        return this.sloganBottomYOffset;
    }

    public int getSloganColor() {
        return this.sloganColor;
    }

    public int getSloganDpSize() {
        return this.sloganDpSize;
    }

    public int getSloganSize() {
        return this.sloganSize;
    }

    public int getSloganTopYOffset() {
        return this.sloganTopYOffset;
    }

    public int getSloganXOffset() {
        return this.sloganXOffset;
    }

    public int getStatusBarColor() {
        return this.statusBarColor;
    }

    public String getUnCheckedImageName() {
        return this.unCheckedImageName;
    }

    public Drawable getUnCheckedImageNameDrawable() {
        return this.unCheckedImageNameDrawable;
    }

    public boolean isBottomDialog() {
        return this.isBottomDialog;
    }

    public boolean isDialogMode() {
        return this.isDialogMode;
    }

    public boolean isHideBackIcon() {
        return this.isHideBackIcon;
    }

    public boolean isHideLogo() {
        return this.isHideLogo;
    }

    public boolean isHideNav() {
        return this.isHideNav;
    }

    public boolean isHidePrivacyCheckBox() {
        return this.isHidePrivacyCheckBox;
    }

    public boolean isHidePrivacySmh() {
        return this.isHidePrivacySmh;
    }

    public boolean isLandscape() {
        return this.isLandscape;
    }

    public boolean isNavTitleBold() {
        return this.isNavTitleBold;
    }

    public boolean isPrivacyState() {
        return this.privacyState;
    }

    public boolean isPrivacyTextGravityCenter() {
        return this.isPrivacyTextGravityCenter;
    }

    public boolean isProtocolDialogMode() {
        return this.isProtocolDialogMode;
    }

    public boolean isStatusBarDarkColor() {
        return this.isStatusBarDarkColor;
    }

    private UnifyUiConfig(Builder builder, Context context) {
        this.statusBarColor = builder.f54133a;
        this.isStatusBarDarkColor = builder.f54136b;
        this.navBackIcon = builder.f54139c;
        this.navBackIconDrawable = builder.f54142d;
        this.navBackIconWidth = builder.f54148f;
        this.navBackIconHeight = builder.f54151g;
        this.navBackIconGravity = builder.f54154h;
        this.navBackIconMargin = builder.f54157i;
        this.isHideBackIcon = builder.f54145e;
        this.navBackgroundColor = builder.f54160j;
        this.navTitle = builder.f54163k;
        this.navHeight = builder.f54166l;
        this.navTitleColor = builder.f54169m;
        this.navTitleSize = builder.f54172n;
        this.navTitleDpSize = builder.f54175o;
        this.isHideNav = builder.f54178p;
        this.isNavTitleBold = builder.f54181q;
        this.navTitleDrawable = builder.f54184r;
        this.navTitleDrawablePadding = builder.f54187s;
        this.logoIconName = builder.f54190t;
        this.logoIconDrawable = builder.f54193u;
        this.logoWidth = builder.f54196v;
        this.logoHeight = builder.f54199w;
        this.logoTopYOffset = builder.f54202x;
        this.logoBottomYOffset = builder.f54205y;
        this.logoXOffset = builder.f54208z;
        this.isHideLogo = builder.A;
        this.maskNumberColor = builder.B;
        this.maskNumberSize = builder.C;
        this.maskNumberTf = builder.E;
        this.maskNumberDpSize = builder.D;
        this.maskNumberTopYOffset = builder.F;
        this.maskNumberBottomYOffset = builder.G;
        this.maskNumberXOffset = builder.H;
        this.maskNumberBackgroundRes = builder.I;
        this.sloganSize = builder.J;
        this.sloganDpSize = builder.K;
        this.sloganColor = builder.L;
        this.sloganTopYOffset = builder.M;
        this.sloganBottomYOffset = builder.N;
        this.sloganXOffset = builder.O;
        this.loginBtnText = builder.P;
        this.loginBtnTextSize = builder.Q;
        this.loginBtnTextDpSize = builder.R;
        this.loginBtnTextColor = builder.S;
        this.loginBtnWidth = builder.T;
        this.loginBtnHeight = builder.U;
        this.loginBtnBackgroundRes = builder.V;
        this.loginBtnBackgroundDrawable = builder.W;
        this.loginBtnTopYOffset = builder.X;
        this.loginBtnBottomYOffset = builder.Y;
        this.loginBtnXOffset = builder.Z;
        this.privacyTextColor = builder.f54134a0;
        this.privacyProtocolColor = builder.f54137b0;
        this.privacySize = builder.f54140c0;
        this.privacyDpSize = builder.f54143d0;
        this.privacyTopYOffset = builder.f54146e0;
        this.privacyBottomYOffset = builder.f54149f0;
        this.privacyTextMarginLeft = builder.f54173n0;
        this.privacyMarginLeft = builder.f54152g0;
        this.privacyMarginRight = builder.f54155h0;
        this.privacyState = builder.f54158i0;
        this.isHidePrivacySmh = builder.f54164k0;
        this.isHidePrivacyCheckBox = builder.f54161j0;
        this.isPrivacyTextGravityCenter = builder.f54167l0;
        this.privacyTextLayoutGravity = builder.f54170m0;
        this.checkBoxGravity = builder.f54176o0;
        this.privacyCheckBoxWidth = builder.f54179p0;
        this.privacyCheckBoxHeight = builder.f54182q0;
        this.checkedImageName = builder.f54185r0;
        this.checkedImageDrawable = builder.f54188s0;
        this.unCheckedImageName = builder.f54191t0;
        this.unCheckedImageNameDrawable = builder.f54194u0;
        this.privacyDialogText = builder.f54197v0;
        this.privacyDialogAuto = builder.f54200w0;
        this.privacyDialogTextSize = builder.f54203x0;
        this.privacyTextStart = builder.f54206y0;
        this.privacyLineSpacingAdd = builder.A0;
        this.privacyLineSpacingMul = builder.B0;
        this.privacyTextStartSize = builder.f54209z0;
        this.protocolText = builder.C0;
        this.protocolLink = builder.D0;
        this.protocolConnect = builder.E0;
        this.protocol2Text = builder.F0;
        this.protocol2Link = builder.G0;
        this.protocol3Text = builder.H0;
        this.protocol3Link = builder.I0;
        this.privacyTextEnd = builder.J0;
        this.customViewHolders = builder.f54198v1;
        this.backgroundImage = builder.f54156h1;
        this.protocolBackgroundImage = builder.f54159i1;
        this.backgroundImageDrawable = builder.f54162j1;
        this.backgroundGif = builder.f54165k1;
        this.backgroundGifDrawable = builder.f54168l1;
        this.backgroundVideo = builder.f54171m1;
        this.backgroundVideoImage = builder.f54174n1;
        this.backgroundVideoImageDrawable = builder.f54177o1;
        this.activityEnterAnimation = builder.f54180p1;
        this.activityExitAnimation = builder.f54183q1;
        this.protocolNavTitle = builder.K0;
        this.cmProtocolNavTitle = builder.L0;
        this.ctProtocolNavTitle = builder.M0;
        this.cuProtocolNavTitle = builder.N0;
        this.customProtocolNavTitle = builder.O0;
        this.customProtocol2NavTitle = builder.P0;
        this.customProtocol3NavTitle = builder.Q0;
        this.protocolNavBackIcon = builder.X0;
        this.protocolNavBackIconDrawable = builder.Y0;
        this.protocolNavColor = builder.Z0;
        this.protocolNavHeight = builder.R0;
        this.protocolNavTitleColor = builder.S0;
        this.protocolNavTitleSize = builder.T0;
        this.protocolNavTitleDpSize = builder.U0;
        this.protocolNavBackIconWidth = builder.V0;
        this.protocolNavBackIconHeight = builder.W0;
        this.isDialogMode = builder.f54135a1;
        this.dialogWidth = builder.f54138b1;
        this.dialogHeight = builder.f54141c1;
        this.dialogX = builder.f54144d1;
        this.dialogY = builder.f54147e1;
        this.isBottomDialog = builder.f54150f1;
        this.isProtocolDialogMode = builder.f54153g1;
        this.isLandscape = builder.isLandscape;
        this.context = context;
        this.maskNumberListener = builder.f54186r1;
        this.loginListener = builder.f54189s1;
        this.clickEventListener = builder.f54192t1;
        this.backgroundShadow = builder.f54195u1;
        this.activityLifecycleCallbacks = builder.f54201w1;
        this.activityResultCallbacks = builder.f54204x1;
        this.backPressedAvailable = builder.f54207y1;
        this.loadingVisible = builder.f54210z1;
        this.loadingView = builder.A1;
        try {
            createCmAuthUiBuilder();
        } catch (Exception e4) {
            Logger.e(e4.getMessage());
        }
    }
}
