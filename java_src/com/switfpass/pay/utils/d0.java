package com.switfpass.pay.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.MchBean;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
import com.switfpass.pay.lib.Resourcemap;
import com.tencent.mm.sdk.modelpay.PayReq;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import java.util.List;
/* loaded from: classes4.dex */
public class d0 extends Dialog {

    /* renamed from: v  reason: collision with root package name */
    private static String f58948v = MainApplication.f58611m;

    /* renamed from: a  reason: collision with root package name */
    private Activity f58949a;

    /* renamed from: b  reason: collision with root package name */
    private ViewGroup f58950b;

    /* renamed from: c  reason: collision with root package name */
    private RelativeLayout f58951c;

    /* renamed from: d  reason: collision with root package name */
    private RelativeLayout f58952d;

    /* renamed from: e  reason: collision with root package name */
    private RelativeLayout f58953e;

    /* renamed from: f  reason: collision with root package name */
    private RelativeLayout f58954f;

    /* renamed from: g  reason: collision with root package name */
    private RelativeLayout f58955g;

    /* renamed from: h  reason: collision with root package name */
    private RelativeLayout f58956h;

    /* renamed from: i  reason: collision with root package name */
    private RelativeLayout f58957i;

    /* renamed from: j  reason: collision with root package name */
    private RelativeLayout f58958j;

    /* renamed from: k  reason: collision with root package name */
    private g0 f58959k;

    /* renamed from: l  reason: collision with root package name */
    private RequestMsg f58960l;

    /* renamed from: m  reason: collision with root package name */
    private List f58961m;

    /* renamed from: n  reason: collision with root package name */
    private TextView f58962n;

    /* renamed from: o  reason: collision with root package name */
    private IWXAPI f58963o;

    /* renamed from: p  reason: collision with root package name */
    private f0 f58964p;

    /* renamed from: q  reason: collision with root package name */
    private AlertDialog f58965q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f58966r;

    /* renamed from: s  reason: collision with root package name */
    protected ProgressDialog f58967s;

    /* renamed from: t  reason: collision with root package name */
    protected boolean f58968t;

    /* renamed from: u  reason: collision with root package name */
    Handler f58969u;

    public d0(Activity activity) {
        super(activity);
        this.f58966r = true;
        this.f58967s = null;
        this.f58968t = false;
        this.f58969u = new k1();
        this.f58949a = activity;
    }

    public d0(Activity activity, List list) {
        super(activity);
        this.f58966r = true;
        this.f58967s = null;
        this.f58968t = false;
        this.f58969u = new k1();
        requestWindowFeature(1);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        ViewGroup viewGroup = (ViewGroup) getLayoutInflater().inflate(Resourcemap.getLayout_pay_dialog_check(), (ViewGroup) null);
        this.f58950b = viewGroup;
        setContentView(viewGroup);
        this.f58949a = activity;
        this.f58961m = list;
        w();
        this.f58956h.setOnClickListener(new q(this));
        this.f58951c.setOnClickListener(new s(this));
        this.f58952d.setOnClickListener(new t(this));
        this.f58954f.setOnClickListener(new u(this));
        this.f58955g.setOnClickListener(new v(this));
        this.f58953e.setOnClickListener(new z(this));
        this.f58957i.setOnClickListener(new b0(this));
        this.f58958j.setOnClickListener(new h0(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(d0 d0Var, OrderBena orderBena, RequestMsg requestMsg) {
        PayReq payReq = new PayReq();
        payReq.appId = requestMsg.b();
        payReq.prepayId = orderBena.o();
        payReq.partnerId = orderBena.m();
        payReq.nonceStr = orderBena.j();
        payReq.timeStamp = orderBena.u();
        payReq.packageValue = "Sign=WXPay";
        IWXAPI createWXAPI = WXAPIFactory.createWXAPI(d0Var.f58949a, requestMsg.b());
        d0Var.f58963o = createWXAPI;
        createWXAPI.registerApp(requestMsg.b());
        payReq.sign = orderBena.s();
        boolean z3 = d0Var.f58963o.getWXAppSupportAPI() >= 570425345;
        new StringBuilder("isPaySupported-->").append(z3);
        if (!d0Var.f58963o.openWXApp()) {
            Toast.makeText(d0Var.f58949a, "手机没有安装微信，请先安装微信", 0).show();
        } else if (z3) {
            d0Var.f58963o.sendReq(payReq);
        } else {
            Toast.makeText(d0Var.f58949a, "微信版本太低了，请升级后再使用", 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(d0 d0Var, RequestMsg requestMsg) {
        d0Var.cancel();
        requestMsg.O("微信支付");
        d0Var.f58959k = new g0(d0Var.f58949a, "请稍候，正在请求微信", new a2(d0Var));
        com.switfpass.pay.service.d.d().b(requestMsg, new b(d0Var, requestMsg));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean f(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            for (int i2 = 0; i2 < installedPackages.size(); i2++) {
                if (installedPackages.get(i2).packageName.equals(com.alipay.sdk.util.j.f9851b)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void h(d0 d0Var, RequestMsg requestMsg) {
        d0Var.cancel();
        requestMsg.O("支付宝支付");
        d0Var.f58959k = new g0(d0Var.f58949a, "请稍候，正在请求支付宝", new f(d0Var));
        com.switfpass.pay.service.d.d().c(requestMsg, MainApplication.f58613o, new m(d0Var));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean i(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            for (int i2 = 0; i2 < installedPackages.size(); i2++) {
                if (installedPackages.get(i2).packageName.equals("com.tencent.mm")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean o(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            for (int i2 = 0; i2 < installedPackages.size(); i2++) {
                if (installedPackages.get(i2).packageName.equals("com.tencent.mobileqq")) {
                    return true;
                }
            }
        }
        return false;
    }

    private void w() {
        RelativeLayout relativeLayout;
        this.f58958j = (RelativeLayout) this.f58950b.findViewById(Resourcemap.getLayout_pay_wx_wap());
        this.f58957i = (RelativeLayout) this.f58950b.findViewById(Resourcemap.getLayout_pay_qq_wap());
        this.f58962n = (TextView) this.f58950b.findViewById(Resourcemap.getLayout_dialog_prompt());
        this.f58951c = (RelativeLayout) this.f58950b.findViewById(Resourcemap.getLayout_wx_scan());
        this.f58952d = (RelativeLayout) this.f58950b.findViewById(Resourcemap.getLayout_qq_scan());
        this.f58953e = (RelativeLayout) this.f58950b.findViewById(Resourcemap.getLayout_zfb_scan());
        this.f58954f = (RelativeLayout) this.f58950b.findViewById(Resourcemap.getLayout_wx_app());
        this.f58955g = (RelativeLayout) this.f58950b.findViewById(Resourcemap.getLayout_zfb_app());
        this.f58956h = (RelativeLayout) this.f58950b.findViewById(Resourcemap.getById_pay_scan());
        if (this.f58961m.isEmpty() || this.f58961m == null) {
            this.f58962n.setVisibility(0);
            return;
        }
        for (int i2 = 0; i2 < this.f58961m.size(); i2++) {
            String k4 = ((MchBean) this.f58961m.get(i2)).k();
            if (((MchBean) this.f58961m.get(i2)).k().equals(MainApplication.f58608j)) {
                relativeLayout = this.f58952d;
            } else if (((MchBean) this.f58961m.get(i2)).k().equals(MainApplication.f58609k)) {
                relativeLayout = this.f58951c;
            } else if (((MchBean) this.f58961m.get(i2)).k().equals(MainApplication.f58610l)) {
                relativeLayout = this.f58954f;
            } else if (((MchBean) this.f58961m.get(i2)).k().equalsIgnoreCase(MainApplication.f58611m) || ((MchBean) this.f58961m.get(i2)).k().equalsIgnoreCase(MainApplication.f58612n)) {
                f58948v = ((MchBean) this.f58961m.get(i2)).k();
                relativeLayout = this.f58953e;
            } else if (((MchBean) this.f58961m.get(i2)).k().equalsIgnoreCase(MainApplication.f58613o)) {
                relativeLayout = this.f58955g;
            } else if (((MchBean) this.f58961m.get(i2)).k().equalsIgnoreCase(MainApplication.f58618t)) {
                relativeLayout = this.f58957i;
            } else if (((MchBean) this.f58961m.get(i2)).k().equalsIgnoreCase(MainApplication.f58619u)) {
                relativeLayout = this.f58958j;
            } else if (k4.contains(MainApplication.f58615q) || k4.contains(MainApplication.f58614p) || k4.contains(MainApplication.f58617s) || k4.contains(MainApplication.f58616r)) {
                relativeLayout = this.f58956h;
            }
            relativeLayout.setVisibility(0);
        }
    }

    public void A(RequestMsg requestMsg) {
        if (requestMsg.u() == null || "".equals(requestMsg.u())) {
            Toast.makeText(this.f58949a, "参数支付类型tradeType不能为空", 0).show();
        } else if (requestMsg.s() == null || "".equals(requestMsg.s())) {
            Toast.makeText(this.f58949a, "参数tokenId不能为空", 0).show();
        } else if (requestMsg.u().equalsIgnoreCase(MainApplication.f58608j)) {
            p(requestMsg);
        } else if (requestMsg.u().equalsIgnoreCase(MainApplication.f58609k)) {
            B(requestMsg);
        } else if (!requestMsg.u().equalsIgnoreCase(MainApplication.f58611m) && !requestMsg.u().equalsIgnoreCase(MainApplication.f58612n)) {
            Toast.makeText(this.f58949a, "支付类型错误,或者不支持此支付类型", 0).show();
        } else {
            f58948v = requestMsg.u();
            F(requestMsg);
        }
    }

    public void B(RequestMsg requestMsg) {
        this.f58964p = new j0(this);
        cancel();
        requestMsg.O("微信扫码支付");
        this.f58959k = new g0(this.f58949a, "请稍候，正在请求微信二维码", this.f58964p);
        com.switfpass.pay.service.d.d().a(requestMsg, MainApplication.f58609k, new l0(this));
    }

    public void C(RequestMsg requestMsg) {
        cancel();
        this.f58959k = new g0(this.f58949a, "请稍候，正在请求微信支付", new n1(this));
        requestMsg.O("微信WAP支付");
        com.switfpass.pay.service.d.d().f(requestMsg, MainApplication.f58619u, new o1(this, requestMsg));
    }

    public void D(RequestMsg requestMsg) {
        requestMsg.O("微信WAP支付");
        com.switfpass.pay.service.d.d().f(requestMsg, MainApplication.f58619u, new l1(this, requestMsg));
    }

    public void E(RequestMsg requestMsg) {
        com.switfpass.pay.service.d.d().a(requestMsg, MainApplication.f58611m, new t0(this, requestMsg));
    }

    public void F(RequestMsg requestMsg) {
        String str = MainApplication.f58611m;
        if (requestMsg.u() != null && !"".equals(requestMsg.u()) && !requestMsg.u().equals("null") && requestMsg.u().equals(MainApplication.f58612n)) {
            str = MainApplication.f58612n;
        }
        cancel();
        this.f58959k = new g0(this.f58949a, "请稍候，正在请求支付宝二维码", new v1(this));
        requestMsg.O("支付宝扫码支付");
        com.switfpass.pay.service.d.d().a(requestMsg, str, new w1(this));
    }

    public void G(RequestMsg requestMsg) {
        com.switfpass.pay.service.d.d().f(requestMsg, MainApplication.f58620v, new w0(this, requestMsg));
    }

    public void l() {
        try {
            ProgressDialog progressDialog = this.f58967s;
            if (progressDialog == null || !progressDialog.isShowing()) {
                return;
            }
            this.f58967s.dismiss();
            this.f58967s.cancel();
            this.f58967s = null;
        } catch (Exception e4) {
            new StringBuilder("dismissMyLoading ").append(e4);
        }
    }

    public RequestMsg n() {
        return this.f58960l;
    }

    public void p(RequestMsg requestMsg) {
        cancel();
        requestMsg.O("手Q扫码支付");
        this.f58959k = new g0(this.f58949a, "请稍候，正在请求手Q二维码", new p0(this));
        com.switfpass.pay.service.d.d().a(requestMsg, MainApplication.f58608j, new q0(this));
    }

    public void q(RequestMsg requestMsg) {
        cancel();
        this.f58959k = new g0(this.f58949a, "请稍候，正在请求QQ钱包H5支付", new s1(this));
        requestMsg.O("QQwap支付");
        com.switfpass.pay.service.d.d().f(requestMsg, MainApplication.f58618t, new t1(this, requestMsg));
    }

    public void r(RequestMsg requestMsg) {
        com.switfpass.pay.service.d.d().f(requestMsg, MainApplication.f58618t, new q1(this, requestMsg));
    }

    public void s(RequestMsg requestMsg) {
        this.f58960l = requestMsg;
    }

    public void t(c0 c0Var) {
    }

    public void u(String str, g0 g0Var) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f58949a);
        builder.setTitle("温馨提示");
        builder.setMessage(str);
        builder.setPositiveButton("确定", new a(this, g0Var));
        builder.setNegativeButton("取消", new a0());
        this.f58965q = builder.show();
    }

    public void v(Context context, boolean z3, String str) {
        try {
            if (this.f58967s == null) {
                ProgressDialog progressDialog = new ProgressDialog(context);
                this.f58967s = progressDialog;
                progressDialog.setCancelable(z3);
            }
            this.f58967s.show();
            this.f58967s.setMessage(str);
        } catch (Exception e4) {
            new StringBuilder("showLoading ").append(e4);
        }
    }

    public void y(RequestMsg requestMsg) {
        if (requestMsg.u() == null || "".equals(requestMsg.u())) {
            Toast.makeText(this.f58949a, "参数支付类型tradeType不能为空", 0).show();
        } else if (requestMsg.s() == null || "".equals(requestMsg.s())) {
            Toast.makeText(this.f58949a, "参数tokenId不能为空", 0).show();
        } else if (requestMsg.u().equalsIgnoreCase(MainApplication.f58613o)) {
            cancel();
            requestMsg.O("支付宝支付");
            com.switfpass.pay.service.d.d().c(requestMsg, MainApplication.f58613o, new o(this));
        } else if (!requestMsg.u().equalsIgnoreCase(MainApplication.f58610l)) {
            Toast.makeText(this.f58949a, "支付类型错误,或者不支持此支付类型", 0).show();
        } else {
            MainApplication.f58624z = requestMsg.b();
            com.switfpass.pay.service.d.d().b(requestMsg, new y1(this, requestMsg));
        }
    }

    public void z(RequestMsg requestMsg) {
        Activity activity;
        String str;
        if (requestMsg.u() == null || "".equals(requestMsg.u())) {
            activity = this.f58949a;
            str = "参数支付类型tradeType不能为空";
        } else if (requestMsg.s() == null || "".equals(requestMsg.s())) {
            activity = this.f58949a;
            str = "参数tokenId不能为空";
        } else if (requestMsg.u().equalsIgnoreCase(MainApplication.f58618t)) {
            r(requestMsg);
            return;
        } else if (requestMsg.u().equalsIgnoreCase(MainApplication.f58619u)) {
            D(requestMsg);
            return;
        } else if (requestMsg.u().equalsIgnoreCase(MainApplication.f58620v)) {
            G(requestMsg);
            return;
        } else if (requestMsg.u().equalsIgnoreCase(MainApplication.f58621w)) {
            E(requestMsg);
            return;
        } else {
            activity = this.f58949a;
            str = "支付类型错误,或者不支持此支付类型";
        }
        Toast.makeText(activity, str, 0).show();
    }
}
