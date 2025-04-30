package com.cmic.sso.sdk.view;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class AuthThemeConfig {
    public static final String PLACEHOLDER = "$$运营商条款$$";
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private String F;
    private boolean G;
    private BackPressedListener H;
    private LoginClickListener I;
    private CheckBoxListener J;
    private String K;
    private String L;
    private int M;
    private int N;
    private boolean O;
    private String P;
    private String Q;
    private String R;
    private String S;
    private String T;
    private String U;
    private String V;
    private String W;
    private String X;
    private int Y;
    private boolean Z;

    /* renamed from: a  reason: collision with root package name */
    private int f10950a;
    private int aa;
    private int ab;
    private boolean ac;
    private int ad;
    private int ae;
    private int af;
    private int ag;
    private int ah;
    private boolean ai;
    private String aj;
    private String ak;
    private String al;
    private String am;
    private int an;
    private int ao;
    private int ap;
    private int aq;
    private int ar;
    private int as;
    private int at;
    private boolean au;
    private boolean av;
    private String aw;

    /* renamed from: b  reason: collision with root package name */
    private boolean f10951b;

    /* renamed from: c  reason: collision with root package name */
    private View f10952c;

    /* renamed from: d  reason: collision with root package name */
    private int f10953d;

    /* renamed from: e  reason: collision with root package name */
    private int f10954e;

    /* renamed from: f  reason: collision with root package name */
    private String f10955f;

    /* renamed from: g  reason: collision with root package name */
    private int f10956g;

    /* renamed from: h  reason: collision with root package name */
    private int f10957h;

    /* renamed from: i  reason: collision with root package name */
    private int f10958i;

    /* renamed from: j  reason: collision with root package name */
    private String f10959j;

    /* renamed from: k  reason: collision with root package name */
    private int f10960k;

    /* renamed from: l  reason: collision with root package name */
    private int f10961l;

    /* renamed from: m  reason: collision with root package name */
    private ImageView.ScaleType f10962m;

    /* renamed from: n  reason: collision with root package name */
    private int f10963n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f10964o;

    /* renamed from: p  reason: collision with root package name */
    private int f10965p;

    /* renamed from: q  reason: collision with root package name */
    private int f10966q;

    /* renamed from: r  reason: collision with root package name */
    private int f10967r;

    /* renamed from: s  reason: collision with root package name */
    private int f10968s;

    /* renamed from: t  reason: collision with root package name */
    private String f10969t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f10970u;

    /* renamed from: v  reason: collision with root package name */
    private int f10971v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f10972w;

    /* renamed from: x  reason: collision with root package name */
    private int f10973x;

    /* renamed from: y  reason: collision with root package name */
    private String f10974y;

    /* renamed from: z  reason: collision with root package name */
    private int f10975z;

    public String getActivityIn() {
        return this.am;
    }

    public String getActivityOut() {
        return this.ak;
    }

    public int getAppLanguageType() {
        return this.at;
    }

    public String getAuthPageActIn() {
        return this.aj;
    }

    public String getAuthPageActOut() {
        return this.al;
    }

    public BackPressedListener getBackPressedListener() {
        return this.H;
    }

    public CheckBoxListener getCheckBoxListener() {
        return this.J;
    }

    public int getCheckBoxLocation() {
        return this.ad;
    }

    public String getCheckTipText() {
        if (this.G) {
            int i2 = this.at;
            this.F = i2 == 1 ? "請勾選同意服務條款" : i2 == 2 ? "Please check to agree to the terms of service" : "请勾选同意服务条款";
        }
        return this.F;
    }

    public int getCheckedImgHeight() {
        return this.N;
    }

    public String getCheckedImgPath() {
        return this.K;
    }

    public int getCheckedImgWidth() {
        return this.M;
    }

    public int getClauseBaseColor() {
        return this.aa;
    }

    public int getClauseColor() {
        return this.ab;
    }

    public int getClauseLayoutResID() {
        return this.f10954e;
    }

    public String getClauseLayoutReturnID() {
        return this.f10955f;
    }

    public String getClauseName() {
        return this.Q;
    }

    public String getClauseName2() {
        return this.S;
    }

    public String getClauseName3() {
        return this.U;
    }

    public String getClauseName4() {
        return this.W;
    }

    public String getClauseUrl() {
        return this.R;
    }

    public String getClauseUrl2() {
        return this.T;
    }

    public String getClauseUrl3() {
        return this.V;
    }

    public String getClauseUrl4() {
        return this.X;
    }

    public View getContentView() {
        return this.f10952c;
    }

    public int getLayoutResID() {
        return this.f10953d;
    }

    public String getLogBtnBackgroundPath() {
        return this.f10974y;
    }

    public int getLogBtnHeight() {
        return this.A;
    }

    public int getLogBtnMarginLeft() {
        return this.B;
    }

    public int getLogBtnMarginRight() {
        return this.C;
    }

    public int getLogBtnOffsetY() {
        return this.D;
    }

    public int getLogBtnOffsetY_B() {
        return this.E;
    }

    public String getLogBtnText() {
        if (this.f10970u) {
            int i2 = this.at;
            this.f10969t = i2 == 1 ? "本機號碼登錄" : i2 == 2 ? "Login" : this.f10969t;
        }
        return this.f10969t;
    }

    public int getLogBtnTextColor() {
        return this.f10973x;
    }

    public int getLogBtnTextSize() {
        return this.f10971v;
    }

    public int getLogBtnWidth() {
        return this.f10975z;
    }

    public LoginClickListener getLoginClickListener() {
        return this.I;
    }

    public int getNavColor() {
        return this.f10958i;
    }

    public int getNavReturnImgHeight() {
        return this.f10961l;
    }

    public String getNavReturnImgPath() {
        return this.f10959j;
    }

    public ImageView.ScaleType getNavReturnImgScaleType() {
        return this.f10962m;
    }

    public int getNavReturnImgWidth() {
        return this.f10960k;
    }

    public int getNavTextColor() {
        return this.f10957h;
    }

    public int getNavTextSize() {
        return this.f10956g;
    }

    public int getNumFieldOffsetY() {
        return this.f10967r;
    }

    public int getNumFieldOffsetY_B() {
        return this.f10968s;
    }

    public int getNumberColor() {
        return this.f10965p;
    }

    public int getNumberOffsetX() {
        return this.f10966q;
    }

    public int getNumberSize() {
        return this.f10963n;
    }

    public String getPrivacy() {
        return this.P;
    }

    public String getPrivacyAnimation() {
        return this.aw;
    }

    public int getPrivacyMarginLeft() {
        return this.ae;
    }

    public int getPrivacyMarginRight() {
        return this.af;
    }

    public int getPrivacyOffsetY() {
        return this.ag;
    }

    public int getPrivacyOffsetY_B() {
        return this.ah;
    }

    public int getPrivacyTextSize() {
        return this.Y;
    }

    public int getStatusBarColor() {
        return this.f10950a;
    }

    public int getThemeId() {
        return this.as;
    }

    public String getUncheckedImgPath() {
        return this.L;
    }

    public int getWindowBottom() {
        return this.ar;
    }

    public int getWindowHeight() {
        return this.ao;
    }

    public int getWindowWidth() {
        return this.an;
    }

    public int getWindowX() {
        return this.ap;
    }

    public int getWindowY() {
        return this.aq;
    }

    public boolean isBackButton() {
        return this.av;
    }

    public boolean isFitsSystemWindows() {
        return this.au;
    }

    public boolean isLightColor() {
        return this.f10951b;
    }

    public boolean isLogBtnTextBold() {
        return this.f10972w;
    }

    public boolean isNumberBold() {
        return this.f10964o;
    }

    public boolean isPrivacyBookSymbol() {
        return this.ai;
    }

    public boolean isPrivacyState() {
        return this.O;
    }

    public boolean isPrivacyTextBold() {
        return this.Z;
    }

    public boolean isPrivacyTextGravityCenter() {
        return this.ac;
    }

    private AuthThemeConfig(Builder builder) {
        this.f10970u = true;
        this.U = null;
        this.V = null;
        this.W = null;
        this.X = null;
        this.f10950a = builder.f10976a;
        this.f10951b = builder.f10977b;
        this.f10952c = builder.f10978c;
        this.f10953d = builder.f10979d;
        this.f10954e = builder.f10980e;
        this.f10955f = builder.f10981f;
        this.f10956g = builder.f10982g;
        this.f10957h = builder.f10983h;
        this.f10958i = builder.f10984i;
        this.f10959j = builder.f10985j;
        this.f10960k = builder.f10986k;
        this.f10961l = builder.f10987l;
        this.f10962m = builder.f10988m;
        this.f10963n = builder.f10989n;
        this.f10964o = builder.f10990o;
        this.f10965p = builder.f10991p;
        this.f10966q = builder.f10992q;
        this.f10967r = builder.f10993r;
        this.f10968s = builder.f10994s;
        this.f10969t = builder.f10995t;
        this.f10970u = builder.f10996u;
        this.f10971v = builder.f10997v;
        this.f10972w = builder.f10998w;
        this.f10973x = builder.f10999x;
        this.f10974y = builder.f11000y;
        this.f10975z = builder.f11001z;
        this.A = builder.A;
        this.B = builder.B;
        this.C = builder.C;
        this.D = builder.D;
        this.E = builder.E;
        this.F = builder.F;
        this.G = builder.G;
        this.H = builder.H;
        this.I = builder.I;
        this.J = builder.J;
        this.K = builder.K;
        this.L = builder.L;
        this.M = builder.M;
        this.N = builder.N;
        this.O = builder.O;
        this.P = builder.P;
        this.Q = builder.Q;
        this.R = builder.R;
        this.S = builder.S;
        this.T = builder.T;
        this.U = builder.U;
        this.V = builder.V;
        this.W = builder.W;
        this.X = builder.X;
        this.Y = builder.Y;
        this.Z = builder.Z;
        this.aa = builder.aa;
        this.ab = builder.ab;
        this.ac = builder.ac;
        this.ae = builder.ad;
        this.af = builder.ae;
        this.ag = builder.af;
        this.ah = builder.ag;
        this.ai = builder.ah;
        this.ad = builder.ai;
        this.aj = builder.aj;
        this.ak = builder.ak;
        this.al = builder.al;
        this.am = builder.am;
        this.an = builder.an;
        this.ao = builder.ao;
        this.ap = builder.ap;
        this.aq = builder.aq;
        this.ar = builder.ar;
        this.as = builder.as;
        this.at = builder.at;
        this.au = builder.au;
        this.av = builder.av;
        this.aw = builder.aw;
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private String F;
        private boolean G;
        private BackPressedListener H;
        private LoginClickListener I;
        private CheckBoxListener J;
        private int ai;
        private String aj;
        private String ak;
        private String al;
        private String am;
        private int an;
        private int ao;
        private int ap;
        private int aq;
        private String aw;

        /* renamed from: f  reason: collision with root package name */
        private String f10981f;

        /* renamed from: a  reason: collision with root package name */
        private int f10976a = 0;

        /* renamed from: b  reason: collision with root package name */
        private boolean f10977b = false;

        /* renamed from: c  reason: collision with root package name */
        private View f10978c = null;

        /* renamed from: d  reason: collision with root package name */
        private int f10979d = -1;

        /* renamed from: e  reason: collision with root package name */
        private int f10980e = -1;

        /* renamed from: g  reason: collision with root package name */
        private int f10982g = 17;

        /* renamed from: h  reason: collision with root package name */
        private int f10983h = -1;

        /* renamed from: i  reason: collision with root package name */
        private int f10984i = -16742704;

        /* renamed from: j  reason: collision with root package name */
        private String f10985j = "return_bg";

        /* renamed from: k  reason: collision with root package name */
        private int f10986k = -2;

        /* renamed from: l  reason: collision with root package name */
        private int f10987l = -2;

        /* renamed from: m  reason: collision with root package name */
        private ImageView.ScaleType f10988m = ImageView.ScaleType.CENTER;

        /* renamed from: n  reason: collision with root package name */
        private int f10989n = 18;

        /* renamed from: o  reason: collision with root package name */
        private boolean f10990o = false;

        /* renamed from: p  reason: collision with root package name */
        private int f10991p = -16742704;

        /* renamed from: q  reason: collision with root package name */
        private int f10992q = 0;

        /* renamed from: r  reason: collision with root package name */
        private int f10993r = 184;

        /* renamed from: s  reason: collision with root package name */
        private int f10994s = 0;

        /* renamed from: t  reason: collision with root package name */
        private String f10995t = "本机号码一键登录";

        /* renamed from: u  reason: collision with root package name */
        private boolean f10996u = true;

        /* renamed from: v  reason: collision with root package name */
        private int f10997v = 15;

        /* renamed from: w  reason: collision with root package name */
        private boolean f10998w = false;

        /* renamed from: x  reason: collision with root package name */
        private int f10999x = -1;

        /* renamed from: y  reason: collision with root package name */
        private String f11000y = "umcsdk_login_btn_bg";

        /* renamed from: z  reason: collision with root package name */
        private int f11001z = -1;
        private int A = 36;
        private int B = 46;
        private int C = 46;
        private int D = 254;
        private int E = 0;
        private String K = "umcsdk_check_image";
        private String L = "umcsdk_uncheck_image";
        private int M = 9;
        private int N = 9;
        private boolean O = false;
        private String P = "登录即同意$$运营商条款$$并使用本机号码登录";
        private String Q = null;
        private String R = null;
        private String S = null;
        private String T = null;
        private String U = null;
        private String V = null;
        private String W = null;
        private String X = null;
        private int Y = 10;
        private boolean Z = false;
        private int aa = -10066330;
        private int ab = -16007674;
        private boolean ac = false;
        private int ad = 52;
        private int ae = 52;
        private int af = 0;
        private int ag = 30;
        private boolean ah = true;
        private int ar = 0;
        private int as = -1;
        private int at = 0;
        private boolean au = true;
        private boolean av = true;

        public AuthThemeConfig build() {
            return new AuthThemeConfig(this);
        }

        public Builder setAppLanguageType(int i2) {
            this.at = i2;
            return this;
        }

        public Builder setAuthContentView(View view) {
            this.f10978c = view;
            this.f10979d = -1;
            return this;
        }

        public Builder setAuthLayoutResID(int i2) {
            this.f10979d = i2;
            this.f10978c = null;
            return this;
        }

        public Builder setAuthPageActIn(String str, String str2) {
            this.aj = str;
            this.ak = str2;
            return this;
        }

        public Builder setAuthPageActOut(String str, String str2) {
            this.al = str2;
            this.am = str;
            return this;
        }

        public Builder setAuthPageWindowMode(int i2, int i4) {
            this.an = i2;
            this.ao = i4;
            return this;
        }

        public Builder setAuthPageWindowOffset(int i2, int i4) {
            this.ap = i2;
            this.aq = i4;
            return this;
        }

        public Builder setBackButton(boolean z3) {
            this.av = z3;
            return this;
        }

        public Builder setBackPressedListener(BackPressedListener backPressedListener) {
            this.H = backPressedListener;
            return this;
        }

        public Builder setCheckBoxImgPath(String str, String str2, int i2, int i4) {
            this.K = str;
            this.L = str2;
            this.M = i2;
            this.N = i4;
            return this;
        }

        public Builder setCheckBoxListener(CheckBoxListener checkBoxListener) {
            this.J = checkBoxListener;
            return this;
        }

        public Builder setCheckBoxLocation(int i2) {
            this.ai = i2;
            return this;
        }

        public Builder setCheckTipText(String str) {
            boolean z3 = TextUtils.isEmpty(str) || str.length() > 100;
            this.G = z3;
            if (z3) {
                str = "请勾选同意服务条款";
            }
            this.F = str;
            return this;
        }

        public Builder setCheckedImgPath(String str) {
            this.K = str;
            return this;
        }

        public Builder setClauseColor(int i2, int i4) {
            this.aa = i2;
            this.ab = i4;
            return this;
        }

        public Builder setClauseLayoutResID(int i2, String str) {
            this.f10980e = i2;
            this.f10981f = str;
            return this;
        }

        public Builder setFitsSystemWindows(boolean z3) {
            this.au = z3;
            return this;
        }

        public Builder setLogBtn(int i2, int i4) {
            this.f11001z = i2;
            this.A = i4;
            return this;
        }

        public Builder setLogBtnClickListener(LoginClickListener loginClickListener) {
            this.I = loginClickListener;
            return this;
        }

        public Builder setLogBtnImgPath(String str) {
            this.f11000y = str;
            return this;
        }

        public Builder setLogBtnMargin(int i2, int i4) {
            this.B = i2;
            this.C = i4;
            return this;
        }

        public Builder setLogBtnOffsetY(int i2) {
            this.D = i2;
            this.E = 0;
            return this;
        }

        public Builder setLogBtnOffsetY_B(int i2) {
            this.E = i2;
            this.D = 0;
            return this;
        }

        public Builder setLogBtnText(String str) {
            if (!TextUtils.isEmpty(str) && !Pattern.compile("^\\s*\\n*$").matcher(str).matches()) {
                this.f10995t = str;
                this.f10996u = false;
            }
            return this;
        }

        public Builder setLogBtnTextColor(int i2) {
            this.f10999x = i2;
            return this;
        }

        public Builder setNavColor(int i2) {
            this.f10984i = i2;
            return this;
        }

        public Builder setNavTextColor(int i2) {
            this.f10983h = i2;
            return this;
        }

        public Builder setNavTextSize(int i2) {
            this.f10982g = i2;
            return this;
        }

        public Builder setNumFieldOffsetY(int i2) {
            this.f10993r = i2;
            this.f10994s = 0;
            return this;
        }

        public Builder setNumFieldOffsetY_B(int i2) {
            this.f10994s = i2;
            this.f10993r = 0;
            return this;
        }

        public Builder setNumberColor(int i2) {
            this.f10991p = i2;
            return this;
        }

        public Builder setNumberOffsetX(int i2) {
            this.f10992q = i2;
            return this;
        }

        public Builder setNumberSize(int i2, boolean z3) {
            if (i2 > 8) {
                this.f10989n = i2;
                this.f10990o = z3;
            }
            return this;
        }

        public Builder setPrivacyAlignment(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            if (str.contains(AuthThemeConfig.PLACEHOLDER)) {
                this.P = str;
                this.Q = str2;
                this.R = str3;
                this.S = str4;
                this.T = str5;
                this.U = str6;
                this.V = str7;
                this.W = str8;
                this.X = str9;
            }
            return this;
        }

        public Builder setPrivacyAnimation(String str) {
            this.aw = str;
            return this;
        }

        public Builder setPrivacyBookSymbol(boolean z3) {
            this.ah = z3;
            return this;
        }

        public Builder setPrivacyMargin(int i2, int i4) {
            this.ad = i2;
            this.ae = i4;
            return this;
        }

        public Builder setPrivacyOffsetY(int i2) {
            this.af = i2;
            this.ag = 0;
            return this;
        }

        public Builder setPrivacyOffsetY_B(int i2) {
            this.ag = i2;
            this.af = 0;
            return this;
        }

        public Builder setPrivacyState(boolean z3) {
            this.O = z3;
            return this;
        }

        public Builder setPrivacyText(int i2, int i4, int i5, boolean z3, boolean z4) {
            this.Y = i2;
            this.aa = i4;
            this.ab = i5;
            this.ac = z3;
            this.Z = z4;
            return this;
        }

        public Builder setStatusBar(int i2, boolean z3) {
            this.f10976a = i2;
            this.f10977b = z3;
            return this;
        }

        public Builder setThemeId(int i2) {
            this.as = i2;
            return this;
        }

        public Builder setUncheckedImgPath(String str) {
            this.L = str;
            return this;
        }

        public Builder setWindowBottom(int i2) {
            this.ar = i2;
            return this;
        }

        public Builder setLogBtnText(String str, int i2, int i4, boolean z3) {
            if (!TextUtils.isEmpty(str) && !Pattern.compile("^\\s*\\n*$").matcher(str).matches()) {
                this.f10995t = str;
                this.f10996u = false;
            }
            this.f10999x = i2;
            this.f10997v = i4;
            this.f10998w = z3;
            return this;
        }
    }
}
