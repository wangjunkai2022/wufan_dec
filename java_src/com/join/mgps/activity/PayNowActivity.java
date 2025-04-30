package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.text.TextUtils;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.MApplication;
import com.alipay.sdk.app.PayTask;
import com.heepay.plugin.api.HPlugin;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccountUserInfoRequestBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.Constant;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.IntentDataMain;
import com.join.mgps.dto.PapayOrder;
import com.join.mgps.dto.PapayResult;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.PayCenterOrderResponse;
import com.join.mgps.dto.PayGameDataRequest;
import com.join.mgps.dto.PayGamepayData;
import com.join.mgps.dto.PayResult;
import com.join.mgps.dto.PaygameResponse;
import com.join.mgps.dto.PaymentInfo;
import com.join.mgps.pref.PrefDef_;
import com.qq.e.comm.pi.ACTD;
import com.switfpass.pay.MainApplication;
import com.switfpass.pay.activity.PayPlugin;
import com.switfpass.pay.bean.RequestMsg;
import com.tencent.mm.opensdk.modelpay.PayReq;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.json.JSONException;
import org.json.JSONObject;
@EActivity(R.layout.activity_pay_now)
/* loaded from: classes3.dex */
public class PayNowActivity extends BaseActivity {
    public static final String K = "";

    /* renamed from: n0  reason: collision with root package name */
    public static final String f34875n0 = "";

    /* renamed from: o0  reason: collision with root package name */
    public static final String f34876o0 = "";

    /* renamed from: p0  reason: collision with root package name */
    public static final String f34877p0 = "";

    /* renamed from: q0  reason: collision with root package name */
    private static final int f34878q0 = 1;

    /* renamed from: r0  reason: collision with root package name */
    private static final int f34879r0 = 2;

    /* renamed from: s0  reason: collision with root package name */
    private static final int f34880s0 = 3;
    Activity A;
    PayCenterOrderRequest B;
    private String D;
    IWXAPI F;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    LinearLayout f34881a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f34882b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f34883c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    HorizontalScrollView f34884d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f34885e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f34886f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f34887g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f34888h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    Button f34889i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ImageView f34890j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    ImageView f34891k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    ImageView f34892l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    ImageView f34893m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    LinearLayout f34894n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    LinearLayout f34895o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    LinearLayout f34896p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    LinearLayout f34897q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    LinearLayout f34898r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    LinearLayout f34899s;
    @Pref

    /* renamed from: t  reason: collision with root package name */
    PrefDef_ f34900t;
    @Extra

    /* renamed from: u  reason: collision with root package name */
    PapayOrder f34901u;
    @Extra

    /* renamed from: v  reason: collision with root package name */
    IntentDataMain f34902v;
    @Extra

    /* renamed from: w  reason: collision with root package name */
    ExtBean f34903w;

    /* renamed from: x  reason: collision with root package name */
    MApplication f34904x;

    /* renamed from: y  reason: collision with root package name */
    com.join.mgps.rpc.n f34905y;

    /* renamed from: z  reason: collision with root package name */
    private String f34906z = "";
    private boolean C = false;
    private int E = 0;
    private Handler G = new a();
    private int H = 5;
    Handler I = new b();
    private long J = 0;

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                PayNowActivity.this.X0((PaymentInfo) message.obj);
            } else if (i2 != 2) {
            } else {
                PayResult payResult = new PayResult((String) message.obj);
                payResult.getResult();
                String resultStatus = payResult.getResultStatus();
                if (TextUtils.equals(resultStatus, "9000")) {
                    PapayResult papayResult = new PapayResult();
                    papayResult.setStatus(1);
                    papayResult.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                    papayResult.setMessage("");
                    PayNowActivity.this.U0(papayResult);
                } else if (TextUtils.equals(resultStatus, "8000")) {
                    PapayResult papayResult2 = new PapayResult();
                    papayResult2.setStatus(4);
                    papayResult2.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                    papayResult2.setMessage("支付结果确认中");
                    PayNowActivity.this.U0(papayResult2);
                } else {
                    PapayResult papayResult3 = new PapayResult();
                    papayResult3.setStatus(2);
                    papayResult3.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                    papayResult3.setMessage("支付失败");
                    PayNowActivity.this.U0(papayResult3);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            PayNowActivity.this.checkToken();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements com.join.android.app.common.http.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PayCenterOrderRequest f34909a;

        c(PayCenterOrderRequest payCenterOrderRequest) {
            this.f34909a = payCenterOrderRequest;
        }

        @Override // com.join.android.app.common.http.b
        public void a(Object obj) {
            PayNowActivity.this.P0();
        }

        @Override // com.join.android.app.common.http.b
        public void onSuccess(Object obj) {
            PayNowActivity.this.P0();
            CommentResponse commentResponse = (CommentResponse) obj;
            if (commentResponse == null || commentResponse.getCode() != 0) {
                if (commentResponse != null) {
                    com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(PayNowActivity.this.A);
                    a4.b(commentResponse.getMsg() + "");
                    PapayResult papayResult = new PapayResult();
                    papayResult.setStatus(2);
                    papayResult.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                    papayResult.setMessage("");
                    PayNowActivity.this.U0(papayResult);
                    return;
                }
                com.join.mgps.Util.i2.a(PayNowActivity.this.A).b("获取游戏数据失败");
                com.join.mgps.Util.i2 a5 = com.join.mgps.Util.i2.a(PayNowActivity.this.A);
                a5.b(commentResponse.getMsg() + "");
                PapayResult papayResult2 = new PapayResult();
                papayResult2.setStatus(2);
                papayResult2.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                papayResult2.setMessage("");
                PayNowActivity.this.U0(papayResult2);
                return;
            }
            PaygameResponse paygameResponse = (PaygameResponse) commentResponse.getData_info();
            if (paygameResponse != null) {
                PayGamepayData order = paygameResponse.getOrder();
                this.f34909a.setApp_callback_url(order.getCallbackURL());
                PayCenterOrderRequest payCenterOrderRequest = this.f34909a;
                payCenterOrderRequest.setPay_rmb((Float.parseFloat(order.getAmount()) / 100.0f) + "");
                this.f34909a.setApp_key(order.getSdkAppKey());
                this.f34909a.setApp_order_id(order.getOrderId());
                com.join.mgps.rpc.g.f51545r = order.getSdkPayURL();
                if (order.getPayMode() == 2) {
                    PayNowActivity.this.b1(this.f34909a);
                    return;
                }
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setCrc_link_type_val(order.getWebPaymentURL());
                ShareWebActivity_.O2(PayNowActivity.this.A).b(intentDateBean).startForResult(10000);
                return;
            }
            com.join.mgps.Util.i2 a6 = com.join.mgps.Util.i2.a(PayNowActivity.this.A);
            a6.b(commentResponse.getMsg() + "");
            PapayResult papayResult3 = new PapayResult();
            papayResult3.setStatus(2);
            papayResult3.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
            papayResult3.setMessage("");
            PayNowActivity.this.U0(papayResult3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements com.join.android.app.common.http.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PayCenterOrderRequest f34911a;

        d(PayCenterOrderRequest payCenterOrderRequest) {
            this.f34911a = payCenterOrderRequest;
        }

        @Override // com.join.android.app.common.http.b
        public void a(Object obj) {
            PayNowActivity.this.P0();
            PapayResult papayResult = new PapayResult();
            com.join.mgps.Util.t0.c("orderId =" + PayNowActivity.this.f34906z);
            papayResult.setStatus(2);
            papayResult.setPayType(this.f34911a.getAction());
            papayResult.setMessage("获取订单号失败");
            PayNowActivity.this.U0(papayResult);
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:87:0x0396 -> B:92:0x03ad). Please submit an issue!!! */
        @Override // com.join.android.app.common.http.b
        public void onSuccess(Object obj) {
            int i2;
            PayNowActivity.this.P0();
            PayCenterOrderResponse payCenterOrderResponse = (PayCenterOrderResponse) obj;
            if (!PayCenterOrderRequest.ACTION_UNION_PAY.equals(payCenterOrderResponse.getAction()) && !PayCenterOrderRequest.ACTION_CREDIT_PAY.equals(payCenterOrderResponse.getAction())) {
                if (PayCenterOrderRequest.ACTION_ALI_PAY.equals(payCenterOrderResponse.getAction())) {
                    try {
                        JSONObject jSONObject = new JSONObject(payCenterOrderResponse.getJson());
                        if (jSONObject.getInt("ret") == 0) {
                            String string = jSONObject.getString("f_id");
                            String string2 = jSONObject.getJSONObject("extra_data").getString("alipay_sign");
                            PayNowActivity.this.f34906z = string;
                            if (!com.join.mgps.Util.d2.h(string2)) {
                                PayNowActivity.this.Z0(string2);
                            }
                        } else {
                            PapayResult papayResult = new PapayResult();
                            papayResult.setStatus(2);
                            papayResult.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                            papayResult.setMessage(jSONObject.getString("msg"));
                            PayNowActivity.this.U0(papayResult);
                        }
                    } catch (JSONException e4) {
                        e4.printStackTrace();
                        PapayResult papayResult2 = new PapayResult();
                        papayResult2.setStatus(2);
                        papayResult2.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                        papayResult2.setMessage("获取订单号失败");
                        PayNowActivity.this.U0(papayResult2);
                    }
                } else if (PayCenterOrderRequest.ACTION_PABI.equals(payCenterOrderResponse.getAction())) {
                    try {
                        JSONObject jSONObject2 = new JSONObject(payCenterOrderResponse.getJson());
                        int i4 = jSONObject2.getInt("ret");
                        String str = "余额不足";
                        if (i4 == 0) {
                            PayNowActivity.this.f34906z = jSONObject2.getString("f_id");
                            str = jSONObject2.getString("msg");
                            i2 = 1;
                        } else {
                            if (i4 == 10001) {
                                str = "验证失败";
                            } else if (i4 == 10002) {
                                str = "token验证失败";
                            } else if (i4 == 10003) {
                                com.join.mgps.Util.i2.a(PayNowActivity.this).b("余额不足");
                            } else if (i4 == 10004) {
                                str = "服务器繁忙";
                            } else if (i4 == 10006) {
                                str = "代金券错误";
                            } else {
                                str = i4 == 10007 ? "不支持红包支付" : jSONObject2.getString("msg");
                            }
                            i2 = 2;
                        }
                        PapayResult papayResult3 = new PapayResult();
                        papayResult3.setStatus(i2);
                        papayResult3.setPayType(PayCenterOrderRequest.ACTION_PABI);
                        papayResult3.setMessage(str);
                        PayNowActivity.this.U0(papayResult3);
                    } catch (JSONException e5) {
                        e5.printStackTrace();
                        PapayResult papayResult4 = new PapayResult();
                        papayResult4.setStatus(2);
                        papayResult4.setPayType(PayCenterOrderRequest.ACTION_PABI);
                        papayResult4.setMessage("获取订单号失败");
                        PayNowActivity.this.U0(papayResult4);
                    }
                } else if (!PayCenterOrderRequest.ACTION_ZIWEI_WECHAT.equals(payCenterOrderResponse.getAction())) {
                    if (PayCenterOrderRequest.ACTION_WECHAT_SWIFT.equals(payCenterOrderResponse.getAction())) {
                        try {
                            JSONObject jSONObject3 = new JSONObject(payCenterOrderResponse.getJson());
                            if (jSONObject3.getInt("code") == 0) {
                                JSONObject jSONObject4 = new JSONObject(jSONObject3.getString("data"));
                                PayNowActivity.this.f34906z = jSONObject4.getString("order_id");
                                String string3 = jSONObject4.getString("token_id");
                                if (!TextUtils.isEmpty(string3)) {
                                    PayNowActivity.this.E = 8;
                                    RequestMsg requestMsg = new RequestMsg();
                                    requestMsg.N(string3);
                                    requestMsg.P(MainApplication.f58619u);
                                    PayPlugin.k(PayNowActivity.this.A, requestMsg);
                                } else {
                                    PapayResult papayResult5 = new PapayResult();
                                    papayResult5.setStatus(2);
                                    papayResult5.setPayType(PayCenterOrderRequest.ACTION_WECHAT_SWIFT);
                                    papayResult5.setMessage(jSONObject3.getString("msg"));
                                    PayNowActivity.this.U0(papayResult5);
                                }
                            } else {
                                PapayResult papayResult6 = new PapayResult();
                                papayResult6.setStatus(2);
                                papayResult6.setPayType(PayCenterOrderRequest.ACTION_WECHAT_SWIFT);
                                papayResult6.setMessage(jSONObject3.getString("msg"));
                                PayNowActivity.this.U0(papayResult6);
                            }
                        } catch (Exception e6) {
                            e6.printStackTrace();
                            PapayResult papayResult7 = new PapayResult();
                            papayResult7.setStatus(2);
                            papayResult7.setPayType(PayCenterOrderRequest.ACTION_WECHAT_SWIFT);
                            papayResult7.setMessage("获取订单号失败");
                            PayNowActivity.this.U0(papayResult7);
                        }
                    } else if (PayCenterOrderRequest.ACTION_WECHAT.equals(payCenterOrderResponse.getAction())) {
                        try {
                            JSONObject jSONObject5 = new JSONObject(payCenterOrderResponse.getJson());
                            if (jSONObject5.getInt("code") == 0) {
                                JSONObject jSONObject6 = jSONObject5.getJSONObject("data");
                                this.f34911a.setKingnet_order_id(jSONObject6.getString("order_id"));
                                PaymentInfo paymentInfo = new PaymentInfo();
                                paymentInfo.setTokenID(jSONObject6.getString("token_id"));
                                paymentInfo.setAgentId(jSONObject6.getString(Constant.AGENT_ID));
                                paymentInfo.setBillNo(jSONObject6.getString("order_id"));
                                PayNowActivity.this.f34906z = jSONObject6.getString("order_id");
                                Message message = new Message();
                                message.what = 1;
                                message.obj = paymentInfo;
                                PayNowActivity.this.G.sendMessage(message);
                            } else {
                                PapayResult papayResult8 = new PapayResult();
                                papayResult8.setStatus(2);
                                papayResult8.setPayType(PayCenterOrderRequest.ACTION_WECHAT);
                                papayResult8.setMessage(jSONObject5.getString("msg"));
                                PayNowActivity.this.U0(papayResult8);
                            }
                        } catch (JSONException e7) {
                            e7.printStackTrace();
                            PapayResult papayResult9 = new PapayResult();
                            papayResult9.setStatus(2);
                            papayResult9.setPayType(PayCenterOrderRequest.ACTION_WECHAT);
                            papayResult9.setMessage("获取订单号失败");
                            PayNowActivity.this.U0(papayResult9);
                        }
                    } else if (PayCenterOrderRequest.ACTION_WECHAT_OFFICIAL.equals(payCenterOrderResponse.getAction())) {
                        try {
                            JSONObject jSONObject7 = new JSONObject(payCenterOrderResponse.getJson());
                            if (jSONObject7.getInt("code") == 0) {
                                JSONObject jSONObject8 = jSONObject7.getJSONObject("data");
                                this.f34911a.setKingnet_order_id(jSONObject8.getString("orderId"));
                                PayNowActivity.this.f34906z = jSONObject8.getString("orderId");
                                jSONObject8.toString();
                                PayReq payReq = new PayReq();
                                payReq.appId = jSONObject8.getString(ACTD.APPID_KEY);
                                payReq.partnerId = jSONObject8.getString("partnerid");
                                payReq.prepayId = jSONObject8.getString("prepayid");
                                payReq.nonceStr = jSONObject8.getString("noncestr");
                                payReq.timeStamp = jSONObject8.getString("timestamp");
                                payReq.packageValue = jSONObject8.getString("package");
                                HashMap hashMap = new HashMap();
                                hashMap.put(ACTD.APPID_KEY, payReq.appId);
                                hashMap.put("partnerid", payReq.partnerId);
                                hashMap.put("prepayid", payReq.prepayId);
                                hashMap.put("package", payReq.packageValue);
                                hashMap.put("noncestr", payReq.nonceStr);
                                hashMap.put("timestamp", payReq.timeStamp);
                                payReq.sign = jSONObject8.getString(Constant.MD5);
                                PayNowActivity.this.F.sendReq(payReq);
                            } else {
                                PapayResult papayResult10 = new PapayResult();
                                papayResult10.setStatus(2);
                                papayResult10.setPayType(PayCenterOrderRequest.ACTION_WECHAT);
                                papayResult10.setMessage(jSONObject7.getString("msg"));
                                PayNowActivity.this.U0(papayResult10);
                            }
                        } catch (Exception e8) {
                            e8.printStackTrace();
                            PapayResult papayResult11 = new PapayResult();
                            papayResult11.setStatus(2);
                            papayResult11.setPayType(PayCenterOrderRequest.ACTION_WECHAT);
                            papayResult11.setMessage("获取订单号失败");
                            PayNowActivity.this.U0(papayResult11);
                        }
                    }
                }
            } else {
                try {
                    JSONObject jSONObject9 = new JSONObject(payCenterOrderResponse.getJson());
                    String string4 = jSONObject9.getString("extra_data");
                    if (jSONObject9.getInt("ret") == 0) {
                        String string5 = new JSONObject(string4).getString("tn");
                        PayNowActivity.this.f34906z = jSONObject9.getString("f_id");
                        com.join.mgps.Util.d2.h(string5);
                    } else {
                        PapayResult papayResult12 = new PapayResult();
                        papayResult12.setStatus(2);
                        papayResult12.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                        papayResult12.setMessage(jSONObject9.getString("msg"));
                        PayNowActivity.this.U0(papayResult12);
                    }
                } catch (JSONException e9) {
                    e9.printStackTrace();
                    PapayResult papayResult13 = new PapayResult();
                    papayResult13.setStatus(2);
                    papayResult13.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                    papayResult13.setMessage("获取订单号失败");
                    PayNowActivity.this.U0(papayResult13);
                }
            }
            PayNowActivity.this.P0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34913a;

        e(String str) {
            this.f34913a = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                String pay = new PayTask(PayNowActivity.this.A).pay(com.join.mgps.Util.v.a(this.f34913a), true);
                Message message = new Message();
                message.what = 2;
                message.obj = pay;
                PayNowActivity.this.G.sendMessage(message);
            } catch (Exception e4) {
                e4.printStackTrace();
                PapayResult papayResult = new PapayResult();
                com.join.mgps.Util.t0.c("orderId =" + PayNowActivity.this.f34906z);
                papayResult.setStatus(2);
                papayResult.setPayType(PayNowActivity.this.B.getAction());
                papayResult.setMessage("签名验证失败");
                PayNowActivity.this.U0(papayResult);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0() {
        this.f34885e.setVisibility(0);
        this.f34883c.setVisibility(8);
        this.f34884d.setVisibility(8);
    }

    public static boolean S0(Context context) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void U0(PapayResult papayResult) {
        papayResult.setPayProduct(this.B.getProduct_name());
        papayResult.setPayOrderId(this.f34906z);
        com.join.mgps.Util.t0.c("orderId =" + this.f34906z);
        if (papayResult.getStatus() == 1 && this.f34901u.ORDERTYPE == 1) {
            checkToken();
        }
        com.join.mgps.listener.b.b().c();
        int i2 = this.f34901u.ORDERTYPE;
        if (i2 == 1) {
            PapayFinishActivity_.F0(this.A).a(papayResult).b(true).start();
        } else if (i2 == 2) {
            int status = papayResult.getStatus();
            if (status == 1) {
                papayResult.setGameid(this.f34901u.PRODUCT_ID);
                PayFinishActivity_.J0(this).a(papayResult).start();
            } else if (status == 2) {
                com.join.mgps.Util.i2.a(this).b("支付失败");
                finish();
            } else if (status == 3) {
                com.join.mgps.Util.i2.a(this).b("支付取消");
                finish();
            } else if (status != 4) {
                com.join.mgps.Util.i2.a(this).b("支付失败");
                finish();
            } else {
                com.join.mgps.Util.i2.a(this).b("支付等待");
                finish();
            }
            finish();
        } else if (i2 == 3) {
            int status2 = papayResult.getStatus();
            if (status2 == 1) {
                sendBroadcast(new Intent("com.join,mgps.sim.sdkgamePayfinish"));
                ExtBean extBean = this.f34903w;
                if (extBean != null && "1".equals(extBean.getFrom())) {
                    com.join.mgps.Util.k1.c().e(this, this.f34903w.getFrom_id(), this.f34903w.getPosition());
                }
            } else if (status2 == 2) {
                com.join.mgps.Util.i2.a(this).b("支付失败");
            } else if (status2 == 3) {
                com.join.mgps.Util.i2.a(this).b("支付取消");
            } else if (status2 != 4) {
                com.join.mgps.Util.i2.a(this).b("支付失败");
            } else {
                com.join.mgps.Util.i2.a(this).b("支付等待");
            }
            finish();
        } else {
            PapayFinishActivity_.F0(this.A).a(papayResult).start();
        }
        int i4 = this.f34901u.PAYORRECHARGE;
        if (i4 == 1 || i4 == 2) {
            org.greenrobot.eventbus.c.f().o(papayResult);
        }
    }

    private void V0(Intent intent) {
        String string = intent.getExtras().getString("respCode");
        String string2 = intent.getExtras().getString("respMessage");
        if ("1".equals(string)) {
            PapayResult papayResult = new PapayResult();
            papayResult.setStatus(1);
            papayResult.setPayType(this.B.getAction());
            papayResult.setMessage("支付成功");
            U0(papayResult);
        }
        if ("0".equals(string) || "-2".equals(string) || "-3".equals(string)) {
            PapayResult papayResult2 = new PapayResult();
            papayResult2.setStatus(2);
            papayResult2.setPayType(this.B.getAction());
            papayResult2.setMessage("支付失败 " + string2);
            U0(papayResult2);
        }
        if ("-1".equals(string)) {
            PapayResult papayResult3 = new PapayResult();
            papayResult3.setStatus(2);
            papayResult3.setPayType(this.B.getAction());
            papayResult3.setMessage("支付失败");
            U0(papayResult3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X0(PaymentInfo paymentInfo) {
        HPlugin.pay(this, paymentInfo.getTokenID() + "," + paymentInfo.getAgentId() + "," + paymentInfo.getBillNo() + ",30");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z0(String str) {
        new e(str).start();
    }

    private void a1() {
        this.f34881a.startAnimation(AnimationUtils.loadAnimation(this, R.anim.bill_dialog_enter));
    }

    private void showLoding() {
        this.f34885e.setVisibility(0);
        this.f34883c.setVisibility(8);
        this.f34884d.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void M0() {
        this.B.setAction(PayCenterOrderRequest.ACTION_ALI_PAY);
        this.f34900t.getLastPayType().g(PayCenterOrderRequest.ACTION_ALI_PAY);
        Y0(this.B);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void N0() {
        this.f34883c.setVisibility(8);
        this.f34884d.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void O0() {
        this.B.setAction(PayCenterOrderRequest.ACTION_CREDIT_PAY);
        this.f34900t.getLastPayType().g(PayCenterOrderRequest.ACTION_CREDIT_PAY);
        Y0(this.B);
    }

    public String Q0() {
        return "sign_type=\"RSA\"";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void R0() {
        this.B.setAction(PayCenterOrderRequest.ACTION_PABI);
        this.f34900t.getLastPayType().g(PayCenterOrderRequest.PAY_TYPE_RED_ENVELOPE);
        this.B.setWallet_type(PayCenterOrderRequest.PAY_TYPE_RED_ENVELOPE);
        Y0(this.B);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void T0() {
        this.B.setAction(PayCenterOrderRequest.ACTION_PABI);
        this.f34900t.getLastPayType().g(PayCenterOrderRequest.PAY_TYPE_WALLET);
        this.B.setWallet_type(PayCenterOrderRequest.PAY_TYPE_WALLET);
        Y0(this.B);
    }

    public String W0(String str) {
        return com.join.mgps.Util.v1.a(str, "");
    }

    public void Y0(PayCenterOrderRequest payCenterOrderRequest) {
        int i2 = this.f34901u.ORDERTYPE;
        if (i2 != 2 && i2 != 3) {
            b1(payCenterOrderRequest);
            return;
        }
        PayGameDataRequest payGameDataRequest = new PayGameDataRequest();
        payGameDataRequest.setConsole_app_key(payCenterOrderRequest.getApp_key());
        payGameDataRequest.setDevice_id("");
        payGameDataRequest.setPay_type(payCenterOrderRequest.getAction());
        payGameDataRequest.setUid(payCenterOrderRequest.getOpenuid() + "");
        payGameDataRequest.setApp_ver(com.join.android.app.common.utils.j.n(this).y() + "");
        showLoding();
        com.join.mgps.rpc.m.g(payGameDataRequest, new c(payCenterOrderRequest));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f34905y = com.join.mgps.rpc.impl.m.h();
        this.A = this;
        MApplication mApplication = (MApplication) getApplication();
        this.f34904x = mApplication;
        mApplication.k(this);
        IWXAPI createWXAPI = WXAPIFactory.createWXAPI(this, null);
        this.F = createWXAPI;
        createWXAPI.registerApp("wx5e0a2e02d261de17");
        TextView textView = this.f34886f;
        textView.setText(Html.fromHtml("商品：<font color='0x3b3b3b' >" + this.f34901u.PRODUCT_NAME + "</font>"), TextView.BufferType.SPANNABLE);
        this.B = new PayCenterOrderRequest();
        String d4 = this.f34900t.getLastPayType().d();
        if (d4.equals(PayCenterOrderRequest.ACTION_ALI_PAY)) {
            TextView textView2 = this.f34888h;
            textView2.setText(Html.fromHtml("使用支付宝支付<font color='#fa8819' >" + getString(R.string.pay_ad_type) + "</font>"));
            this.f34897q.setSelected(true);
        } else if (!d4.equals(PayCenterOrderRequest.ACTION_ZIWEI_WECHAT) && !d4.equals(PayCenterOrderRequest.ACTION_WECHAT) && !d4.equals(PayCenterOrderRequest.ACTION_WECHAT_SWIFT)) {
            if (d4.equals(PayCenterOrderRequest.ACTION_UNION_PAY)) {
                TextView textView3 = this.f34888h;
                textView3.setText(Html.fromHtml("使用银行卡支付<font color='#fa8819' >" + getString(R.string.pay_ad_type) + "</font>"));
                this.f34898r.setSelected(true);
            } else if (d4.equals(PayCenterOrderRequest.ACTION_CREDIT_PAY)) {
                TextView textView4 = this.f34888h;
                textView4.setText(Html.fromHtml("使用信用卡支付<font color='#fa8819' >" + getString(R.string.pay_ad_type) + "</font>"));
                this.f34899s.setSelected(true);
            } else if (d4.equals(PayCenterOrderRequest.PAY_TYPE_WALLET)) {
                if (this.f34901u.PAYORRECHARGE == 1) {
                    TextView textView5 = this.f34888h;
                    textView5.setText(Html.fromHtml("使用饭票支付<font color='#fa8819' >" + getString(R.string.pay_ad_type) + "</font>"));
                    this.f34894n.setSelected(true);
                } else {
                    TextView textView6 = this.f34888h;
                    textView6.setText(Html.fromHtml("使用支付宝支付<font color='#fa8819' >" + getString(R.string.pay_ad_type) + "</font>"));
                    this.f34897q.setSelected(true);
                }
            } else if (d4.equals(PayCenterOrderRequest.PAY_TYPE_RED_ENVELOPE)) {
                if (this.f34901u.PAYORRECHARGE == 1) {
                    TextView textView7 = this.f34888h;
                    textView7.setText(Html.fromHtml("使用红包支付<font color='#fa8819' >" + getString(R.string.pay_ad_type) + "</font>"));
                    this.f34895o.setSelected(true);
                } else {
                    TextView textView8 = this.f34888h;
                    textView8.setText(Html.fromHtml("使用支付宝支付<font color='#fa8819' >" + getString(R.string.pay_ad_type) + "</font>"));
                    this.f34897q.setSelected(true);
                }
            }
        } else {
            TextView textView9 = this.f34888h;
            textView9.setText(Html.fromHtml("使用微信支付<font color='#fa8819' >" + getString(R.string.pay_ad_type) + "</font>"));
            this.f34896p.setSelected(true);
        }
        try {
            String format = new DecimalFormat("##0.00").format(Float.parseFloat(this.f34901u.MONEY_AMOUNT));
            this.B.setPay_rmb(format);
            this.f34901u.MONEY_AMOUNT = format;
            TextView textView10 = this.f34887g;
            textView10.setText(Html.fromHtml("金额：<font color='0xfc3f5e' > " + this.f34901u.MONEY_AMOUNT + "元</font>"), TextView.BufferType.SPANNABLE);
            this.B.setApp_callback_url(this.f34901u.NOTIFY_URI);
            this.B.setApp_extra1(this.f34901u.APP_EXT1);
            this.B.setApp_extra2(this.f34901u.APP_EXT2);
            this.B.setApp_key(this.f34901u.APPKEY);
            this.B.setApp_name(this.f34901u.APP_NAME);
            this.B.setApp_order_id(this.f34901u.APP_ORDER_ID);
            this.B.setApp_user_name(this.f34901u.APP_USER_NAME);
            this.B.setImei("");
            this.B.setUid(this.f34901u.APP_USER_ID);
            this.B.setOpenuid(this.f34901u.PA_OPEN_UID);
            this.B.setPackage_name(getPackageName());
            this.B.setToken(this.f34901u.TOKEN);
            PapayOrder papayOrder = this.f34901u;
            int i2 = papayOrder.APP_SERVER;
            int i4 = i2 > 0 ? 100000000 + i2 : 100000000;
            int i5 = papayOrder.APP_DISTRICT;
            if (i5 > 0) {
                i4 += i5 * 10000;
            }
            this.B.setSid(i4);
            this.B.setProduct_id(this.f34901u.PRODUCT_ID);
            this.B.setProduct_name(this.f34901u.PRODUCT_NAME);
            a1();
            PapayOrder papayOrder2 = this.f34901u;
            if (papayOrder2.PAYORRECHARGE == 1) {
                int i6 = papayOrder2.PAYSHOWTYPE;
                if (i6 == 0) {
                    this.f34894n.setVisibility(8);
                    this.f34895o.setVisibility(8);
                } else if (i6 == 1) {
                    this.f34894n.setVisibility(0);
                    this.f34895o.setVisibility(8);
                } else if (i6 == 2) {
                    this.f34894n.setVisibility(8);
                    this.f34895o.setVisibility(0);
                } else if (i6 == 3) {
                    this.f34894n.setVisibility(0);
                    this.f34895o.setVisibility(0);
                }
                this.B.setResource_id(com.join.mgps.rpc.a.f51498e);
            } else {
                this.B.setResource_id(com.join.mgps.rpc.a.f51499f);
            }
            switch (this.f34901u.PAYTYPE) {
                case 1:
                    M0();
                    return;
                case 2:
                    g1();
                    return;
                case 3:
                    d1();
                    return;
                case 4:
                    O0();
                    return;
                case 5:
                    T0();
                    return;
                case 6:
                    R0();
                    return;
                case 7:
                    h1();
                    return;
                case 8:
                    c1();
                    return;
                default:
                    return;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            com.join.mgps.Util.i2.a(this).b("充值金额不合法");
        }
    }

    public void b1(PayCenterOrderRequest payCenterOrderRequest) {
        long currentTimeMillis = System.currentTimeMillis();
        com.join.mgps.Util.t0.d("paytime", "paytime1" + currentTimeMillis + "    " + this.J);
        if (currentTimeMillis - this.J < 500) {
            com.join.mgps.Util.t0.d("paytime", "paytime222" + currentTimeMillis + "    " + this.J);
            return;
        }
        payCenterOrderRequest.getAction().equals(PayCenterOrderRequest.ACTION_ZIWEI_WECHAT);
        this.J = currentTimeMillis;
        if (!com.join.android.app.common.utils.f.j(this.A)) {
            com.join.mgps.Util.i2.a(this.A).b(getResources().getString(R.string.net_connect_failed));
        }
        showLoding();
        com.join.mgps.rpc.m.f(payCenterOrderRequest, new d(payCenterOrderRequest));
    }

    void c1() {
        this.B.setAction(PayCenterOrderRequest.ACTION_WECHAT_SWIFT);
        Y0(this.B);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkToken() {
        int i2 = this.H;
        if (i2 > 0) {
            this.H = i2 - 1;
            try {
                com.join.mgps.rpc.b b02 = com.join.mgps.rpc.impl.a.b0();
                AccountBean accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
                if (accountData != null && accountData.getAccount_type() != 2) {
                    AccountUserInfoRequestBean accountUserInfoRequestBean = new AccountUserInfoRequestBean();
                    accountUserInfoRequestBean.setUid(accountData.getUid() + "");
                    accountUserInfoRequestBean.setToken(accountData.getToken());
                    accountUserInfoRequestBean.setDevice_id("");
                    accountUserInfoRequestBean.setSign(com.join.mgps.Util.u1.f(accountUserInfoRequestBean));
                    AccountResultMainBean<AccountTokenSuccess> h4 = b02.h(accountUserInfoRequestBean.getParams());
                    if (h4 != null && h4.getData() != null && h4.getData().getUser_info() != null) {
                        AccountBean user_info = h4.getData().getUser_info();
                        if (user_info.getVip_level() > 0) {
                            this.H = 0;
                            AccountBean accountData2 = AccountUtil_.getInstance_(this).getAccountData();
                            accountData2.setVip_level(user_info.getVip_level());
                            accountData2.setSvip_level(user_info.getSvip_level());
                            accountData2.setVip_exp_time(user_info.getVip_exp_time());
                            accountData2.setIs_anchor(user_info.getIs_anchor());
                            AccountUtil_.getInstance_(this).saveAccountData(accountData2, this);
                            UtilsMy.L(this);
                        } else {
                            this.I.sendEmptyMessageDelayed(1, com.join.mgps.data.c.f47286a);
                        }
                    } else {
                        this.I.sendEmptyMessageDelayed(1, com.join.mgps.data.c.f47286a);
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                this.I.sendEmptyMessageDelayed(1, com.join.mgps.data.c.f47286a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void d1() {
        this.B.setAction(PayCenterOrderRequest.ACTION_UNION_PAY);
        this.f34900t.getLastPayType().g(PayCenterOrderRequest.ACTION_UNION_PAY);
        Y0(this.B);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.K})
    public void e1(Intent intent) {
        String stringExtra = intent.getStringExtra("out_trade_no");
        String stringExtra2 = intent.getStringExtra("return_code");
        String stringExtra3 = intent.getStringExtra("return_msg");
        StringBuilder sb = new StringBuilder();
        sb.append(stringExtra);
        sb.append("  ");
        sb.append(stringExtra2);
        sb.append("  ");
        sb.append(stringExtra3);
        if (getPackageName().equals(stringExtra)) {
            if ("SUCCESS".equals(stringExtra2)) {
                PapayResult papayResult = new PapayResult();
                papayResult.setStatus(1);
                papayResult.setPayType(PayCenterOrderRequest.ACTION_ZIWEI_WECHAT);
                papayResult.setMessage("支付成功");
                U0(papayResult);
            } else if ("CANCEL".equals(stringExtra2)) {
                PapayResult papayResult2 = new PapayResult();
                papayResult2.setStatus(2);
                papayResult2.setPayType(PayCenterOrderRequest.ACTION_ZIWEI_WECHAT);
                papayResult2.setMessage("获取订单号失败");
                U0(papayResult2);
            } else {
                PapayResult papayResult3 = new PapayResult();
                papayResult3.setStatus(2);
                papayResult3.setPayType(PayCenterOrderRequest.ACTION_ZIWEI_WECHAT);
                papayResult3.setMessage(stringExtra3);
                U0(papayResult3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void f1() {
        this.B.setAction(PayCenterOrderRequest.ACTION_WECHAT);
        this.f34900t.getLastPayType().g(PayCenterOrderRequest.ACTION_WECHAT);
        int i2 = this.f34901u.PAYTYPE;
        if (i2 == 2) {
            this.B.setAction(PayCenterOrderRequest.ACTION_WECHAT);
            this.f34900t.getLastPayType().g(PayCenterOrderRequest.ACTION_WECHAT);
        } else if (i2 == 7) {
            this.B.setAction(PayCenterOrderRequest.ACTION_ZIWEI_WECHAT);
            this.f34900t.getLastPayType().g(PayCenterOrderRequest.ACTION_ZIWEI_WECHAT);
        } else if (i2 == 8) {
            this.B.setAction(PayCenterOrderRequest.ACTION_WECHAT_SWIFT);
            this.f34900t.getLastPayType().g(PayCenterOrderRequest.ACTION_WECHAT_SWIFT);
        } else if (i2 == 9) {
            this.B.setAction(PayCenterOrderRequest.ACTION_WECHAT_OFFICIAL);
            this.f34900t.getLastPayType().g(PayCenterOrderRequest.ACTION_WECHAT_OFFICIAL);
        }
        Y0(this.B);
    }

    void g1() {
        this.B.setAction(PayCenterOrderRequest.ACTION_WECHAT);
        Y0(this.B);
    }

    void h1() {
        this.B.setAction(PayCenterOrderRequest.ACTION_ZIWEI_WECHAT);
        Y0(this.B);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void ok() {
        String d4 = this.f34900t.getLastPayType().d();
        if (this.f34901u.PAYORRECHARGE == 1) {
            if (d4.equals(PayCenterOrderRequest.PAY_TYPE_WALLET)) {
                this.B.setAction(PayCenterOrderRequest.ACTION_PABI);
                this.B.setWallet_type(PayCenterOrderRequest.PAY_TYPE_WALLET);
            } else if (d4.equals(PayCenterOrderRequest.PAY_TYPE_RED_ENVELOPE)) {
                this.B.setAction(PayCenterOrderRequest.ACTION_PABI);
                this.B.setWallet_type(PayCenterOrderRequest.PAY_TYPE_RED_ENVELOPE);
            } else {
                this.B.setAction(this.f34900t.getLastPayType().d());
            }
        } else if (d4.equals(PayCenterOrderRequest.PAY_TYPE_WALLET)) {
            this.B.setAction(PayCenterOrderRequest.ACTION_ALI_PAY);
        } else if (d4.equals(PayCenterOrderRequest.PAY_TYPE_RED_ENVELOPE)) {
            this.B.setAction(PayCenterOrderRequest.ACTION_ALI_PAY);
        } else {
            this.B.setAction(this.f34900t.getLastPayType().d());
        }
        Y0(this.B);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        if (i2 == 10000) {
            if (i4 == 10010) {
                PapayResult papayResult = new PapayResult();
                papayResult.setStatus(1);
                papayResult.setPayType(this.B.getAction());
                papayResult.setMessage("支付成功");
                U0(papayResult);
                return;
            } else if (i4 == 10011) {
                PapayResult papayResult2 = new PapayResult();
                papayResult2.setStatus(2);
                papayResult2.setPayType(this.B.getAction());
                papayResult2.setMessage("支付失败");
                U0(papayResult2);
                return;
            } else {
                PapayResult papayResult3 = new PapayResult();
                papayResult3.setStatus(2);
                papayResult3.setPayType(this.B.getAction());
                papayResult3.setMessage("支付失败");
                U0(papayResult3);
                return;
            }
        }
        if (intent != null) {
            String string = intent.getExtras().getString("resultCode");
            if (com.join.mgps.Util.d2.i(string) && this.E == 8) {
                if (!TextUtils.isEmpty(string) && string.equalsIgnoreCase("success")) {
                    PapayResult papayResult4 = new PapayResult();
                    papayResult4.setStatus(1);
                    papayResult4.setPayType(this.B.getAction());
                    papayResult4.setMessage("支付成功");
                    U0(papayResult4);
                } else {
                    PapayResult papayResult5 = new PapayResult();
                    papayResult5.setStatus(2);
                    papayResult5.setPayType(this.B.getAction());
                    papayResult5.setMessage("支付失败");
                    U0(papayResult5);
                }
            } else if (this.E == 8) {
                PapayResult papayResult6 = new PapayResult();
                papayResult6.setStatus(2);
                papayResult6.setPayType(this.B.getAction());
                papayResult6.setMessage("支付失败");
                U0(papayResult6);
            }
        } else if (this.E == 8) {
            PapayResult papayResult7 = new PapayResult();
            papayResult7.setStatus(2);
            papayResult7.setPayType(this.B.getAction());
            papayResult7.setMessage("支付失败");
            U0(papayResult7);
        }
        if (i4 == 0) {
            PapayResult papayResult8 = new PapayResult();
            papayResult8.setStatus(2);
            papayResult8.setPayType(this.B.getAction());
            papayResult8.setMessage("支付失败");
            U0(papayResult8);
        }
        if (i4 == 4128) {
            V0(intent);
        }
        if (intent == null) {
            return;
        }
        String string2 = intent.getExtras().getString("pay_result");
        if (com.join.mgps.Util.d2.h(string2)) {
            return;
        }
        if (string2.equalsIgnoreCase("success")) {
            PapayResult papayResult9 = new PapayResult();
            papayResult9.setStatus(1);
            papayResult9.setPayType(this.B.getAction());
            papayResult9.setMessage("支付成功");
            U0(papayResult9);
        } else if (string2.equalsIgnoreCase("fail")) {
            PapayResult papayResult10 = new PapayResult();
            papayResult10.setStatus(2);
            papayResult10.setPayType(this.B.getAction());
            papayResult10.setMessage("支付失败");
            U0(papayResult10);
        } else if (string2.equalsIgnoreCase("cancel")) {
            PapayResult papayResult11 = new PapayResult();
            papayResult11.setStatus(3);
            papayResult11.setPayType(this.B.getAction());
            papayResult11.setMessage("支付取消");
            U0(papayResult11);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        int i2 = this.f34901u.PAYORRECHARGE;
        if (i2 == 1 || i2 == 2) {
            PapayResult papayResult = new PapayResult();
            papayResult.setStatus(3);
            org.greenrobot.eventbus.c.f().o(papayResult);
        }
        finish();
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            if (this.f34902v != null) {
                moveTaskToBack(true);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
