package com.join.mgps.activity;

import android.text.Editable;
import android.text.Html;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.BaseActivity;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.IntentDataMain;
import com.join.mgps.dto.PapayOrder;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.PayActivityBean;
import com.join.mgps.dto.PayActivityConfig;
import com.join.mgps.dto.PayActivityRebate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;
@EActivity(R.layout.activity_pay_start)
/* loaded from: classes3.dex */
public class PayStartActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    Button f34933a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f34934b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    FlowLayout f34935c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f34936d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f34937e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f34938f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    ImageView f34939g;

    /* renamed from: h  reason: collision with root package name */
    PapayOrder f34940h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f34941i;

    /* renamed from: j  reason: collision with root package name */
    com.join.mgps.rpc.n f34942j;
    @Extra

    /* renamed from: k  reason: collision with root package name */
    AccountBean f34943k;
    @Extra

    /* renamed from: l  reason: collision with root package name */
    IntentDataMain f34944l;

    /* renamed from: m  reason: collision with root package name */
    List<Integer> f34945m;

    /* renamed from: n  reason: collision with root package name */
    private d f34946n;

    /* renamed from: o  reason: collision with root package name */
    private EditText f34947o;

    /* renamed from: p  reason: collision with root package name */
    private PayActivityBean f34948p;

    /* renamed from: q  reason: collision with root package name */
    MApplication f34949q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnFocusChangeListener {
        a() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z3) {
            if (z3) {
                PayStartActivity.this.I0(null);
                PayStartActivity.this.f34941i.setVisibility(8);
                PayStartActivity.this.f34947o.setHint("");
                return;
            }
            PayStartActivity.this.f34947o.setHint(PayStartActivity.this.getString(R.string.papa_other));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String obj = editable.toString();
            if (obj == null || obj.equals("") || obj.equals(com.join.mgps.Util.g0.f27568a)) {
                return;
            }
            PayStartActivity.this.T0(obj);
            PayStartActivity.this.f34937e.setVisibility(Float.compare(Float.parseFloat(editable.toString()), 3000.0f) >= 0 ? 0 : 8);
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
    public class c implements Comparator<PayActivityRebate> {
        c() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(PayActivityRebate payActivityRebate, PayActivityRebate payActivityRebate2) {
            return payActivityRebate.getMin_money() > payActivityRebate2.getMin_money() ? 1 : -1;
        }
    }

    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayStartActivity.this.f34937e.setVisibility(8);
            PayStartActivity.this.I0(view);
            if (view instanceof Button) {
                PayStartActivity.this.T0(view.getTag().toString());
            }
            PayStartActivity.this.K0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I0(View view) {
        int childCount = this.f34935c.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (this.f34935c.getChildAt(i2) instanceof Button) {
                Button button = (Button) this.f34935c.getChildAt(i2);
                if (button == view) {
                    button.setSelected(true);
                } else {
                    button.setSelected(false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K0() {
        this.f34947o.setText("");
        this.f34947o.clearFocus();
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(this.f34947o.getWindowToken(), 0);
    }

    private void L0() {
        ArrayList arrayList = new ArrayList();
        this.f34945m = arrayList;
        arrayList.add(10);
        this.f34945m.add(30);
        this.f34945m.add(50);
        this.f34945m.add(100);
        this.f34945m.add(300);
        this.f34945m.add(500);
        this.f34945m.add(1000);
        this.f34945m.add(2000);
        this.f34946n = new d();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int a4 = com.join.mgps.Util.b0.a(this, 20.0f);
        int i2 = (displayMetrics.widthPixels - (a4 * 4)) / 3;
        int a5 = com.join.mgps.Util.b0.a(this, 40.0f);
        for (int i4 = 0; i4 < this.f34945m.size(); i4++) {
            Button button = new Button(this);
            button.setBackgroundResource(R.drawable.pay_papa_top);
            button.setText(this.f34945m.get(i4) + getString(R.string.papa_coin));
            if (this.f34945m.get(i4).intValue() == 100) {
                button.setSelected(true);
                PapayOrder papayOrder = this.f34940h;
                papayOrder.PRODUCT_NAME = this.f34945m.get(i4) + getString(R.string.papa_coin);
                PapayOrder papayOrder2 = this.f34940h;
                papayOrder2.MONEY_AMOUNT = this.f34945m.get(i4) + "";
                TextView textView = this.f34936d;
                String string = getResources().getString(R.string.papa_top_number);
                textView.setText(Html.fromHtml(String.format(string, "<font color = '#f2463b'>" + this.f34945m.get(i4) + "</font>")));
            }
            button.setTextColor(-899525);
            button.setTextSize(12.0f);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, a5);
            layoutParams.leftMargin = a4;
            layoutParams.bottomMargin = a4;
            button.setPadding(0, 0, 0, 0);
            button.setLayoutParams(layoutParams);
            button.setOnClickListener(this.f34946n);
            button.setTag(this.f34945m.get(i4));
            this.f34935c.addView(button);
        }
        this.f34947o = new EditText(this);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i2, a5);
        layoutParams2.leftMargin = a4;
        layoutParams2.bottomMargin = a4;
        this.f34947o.setLayoutParams(layoutParams2);
        this.f34947o.setHint(getString(R.string.papa_other));
        this.f34947o.setTextSize(12.0f);
        this.f34947o.setInputType(2);
        this.f34947o.setKeyListener(new DigitsKeyListener(false, true));
        this.f34947o.setBackgroundResource(R.drawable.pay_papa_edit_bg);
        this.f34947o.setHintTextColor(-6513508);
        this.f34947o.setTextColor(-899525);
        this.f34947o.setOnFocusChangeListener(new a());
        this.f34947o.addTextChangedListener(new b());
        this.f34947o.setGravity(17);
        this.f34935c.addView(this.f34947o);
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.f34935c.getLayoutParams();
        layoutParams3.bottomMargin = -com.join.mgps.Util.b0.a(this, 10.0f);
        this.f34935c.setLayoutParams(layoutParams3);
        this.f34938f.setText(Html.fromHtml(String.format(getString(R.string.papa_oto), "<font color = '#f2463b'>1</font>", "<font color = '#f2463b'>1</font>")));
    }

    private PayActivityRebate M0(int i2) {
        PayActivityBean payActivityBean = this.f34948p;
        if (payActivityBean == null || payActivityBean.getRebate_list() == null) {
            return null;
        }
        List<PayActivityRebate> rebate_list = this.f34948p.getRebate_list();
        for (int i4 = 0; i4 < rebate_list.size(); i4++) {
            PayActivityRebate payActivityRebate = rebate_list.get(i4);
            if (i4 == rebate_list.size() - 1 && payActivityRebate.getMin_money() <= i2) {
                return rebate_list.get(rebate_list.size() - 1);
            }
            if (i2 >= payActivityRebate.getMin_money() && i2 < rebate_list.get(i4 + 1).getMin_money()) {
                return rebate_list.get(i4);
            }
        }
        return null;
    }

    private void Q0() {
        if (this.f34939g.isSelected()) {
            this.f34939g.setSelected(false);
            this.f34933a.setBackgroundResource(R.drawable.acount_is_sign_bg);
            return;
        }
        this.f34939g.setSelected(true);
        this.f34933a.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
    }

    private void R0(PayActivityRebate payActivityRebate) {
        if (payActivityRebate != null) {
            TextView textView = this.f34941i;
            String string = getString(R.string.pay_ad_config);
            textView.setText(Html.fromHtml(String.format(string, "<h2>" + payActivityRebate.getMin_money() + "</h2>", "<h2>" + payActivityRebate.getRebate_money() + "</h2>")));
            this.f34941i.setVisibility(0);
            return;
        }
        this.f34941i.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T0(String str) {
        try {
            TextView textView = this.f34936d;
            String string = getResources().getString(R.string.papa_top_number);
            textView.setText(Html.fromHtml(String.format(string, "<font color = '#f2463b'>" + str + "</font>")));
            PapayOrder papayOrder = this.f34940h;
            papayOrder.PRODUCT_NAME = str + getString(R.string.papa_coin);
            this.f34940h.MONEY_AMOUNT = str;
            PayActivityRebate M0 = M0((int) Float.parseFloat(str));
            if (M0 != null) {
                TextView textView2 = this.f34941i;
                String string2 = getString(R.string.pay_ad_config);
                textView2.setText(Html.fromHtml(String.format(string2, "<h2>" + str + "</h2>", "<h2>" + M0.getRebate_money() + "</h2>")));
                this.f34941i.setVisibility(0);
            } else {
                this.f34941i.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void U0() {
        int childCount = this.f34935c.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (this.f34935c.getChildAt(i2) instanceof Button) {
                Button button = (Button) this.f34935c.getChildAt(i2);
                PayActivityRebate M0 = M0(((Integer) button.getTag()).intValue());
                if (M0 != null) {
                    float parseFloat = Float.parseFloat(button.getTag().toString());
                    String string = getString(R.string.papa_pabi_top);
                    button.setText(String.format(string, button.getTag().toString(), Math.round((M0.getRebate_money() / parseFloat) * 100.0f) + "%"));
                } else {
                    button.setText(button.getTag().toString() + getString(R.string.papa_coin));
                }
                if (button.isSelected()) {
                    T0(button.getTag().toString());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        Q0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void N0() {
        try {
            if (com.join.android.app.common.utils.f.j(getApplicationContext())) {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(getApplicationContext()).getUid());
                linkedMultiValueMap.add("token", AccountUtil_.getInstance_(getApplicationContext()).getToken());
                PapayVoucherResultMain<PayActivityConfig> g4 = this.f34942j.g(linkedMultiValueMap);
                if (g4 == null || g4.getError() != 0 || g4.getData() == null || g4.getData().getConfig() == null || g4.getData().getConfig().getActivity() == null) {
                    return;
                }
                this.f34948p = g4.getData().getConfig().getActivity();
                S0();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void O0() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val("http://h5.5fun.com/wf_pay_service.html");
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P0() {
        Q0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S0() {
        PayActivityBean payActivityBean = this.f34948p;
        if (payActivityBean != null && payActivityBean.getRebate_list() != null && this.f34948p.getRebate_list().size() > 0) {
            try {
                Collections.sort(this.f34948p.getRebate_list(), new c());
                U0();
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        this.f34941i.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void V0() {
        if (this.f34939g.isSelected()) {
            if (Float.compare(Float.parseFloat(this.f34940h.MONEY_AMOUNT), 1.0f) >= 0) {
                PayNowActivity_.j1(this).c(this.f34940h).start();
                return;
            } else {
                Toast.makeText(this, "充值金额不得小于1元", 0).show();
                return;
            }
        }
        com.join.mgps.Util.i2.a(this).b(getString(R.string.pay_talk_toast));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f34942j = com.join.mgps.rpc.impl.m.h();
        MApplication mApplication = (MApplication) getApplication();
        this.f34949q = mApplication;
        mApplication.k(this);
        this.f34940h = new PapayOrder();
        this.f34934b.setText(R.string.papa_coin_top);
        if (this.f34943k == null) {
            AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
            this.f34943k = accountData;
            if (accountData == null) {
                com.join.mgps.Util.i2.a(this).b("你还没有登录,请先登录");
                IntentUtil.getInstance().goAccountCenterActivity(this);
                return;
            }
        }
        this.f34940h.TOKEN = this.f34943k.getToken();
        this.f34940h.PA_OPEN_UID = this.f34943k.getUid();
        this.f34940h.APP_USER_NAME = this.f34943k.getAccount();
        this.f34939g.setSelected(true);
        L0();
        N0();
        TextView textView = this.f34937e;
        String string = getString(R.string.pay_money_big);
        textView.setText(Html.fromHtml(String.format(string, "<font color = '#000000'>" + getString(R.string.net_fight_room_exit_title) + "：</font>")));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        FlowLayout flowLayout = this.f34935c;
        if (flowLayout != null) {
            flowLayout.removeAllViews();
            this.f34935c = null;
        }
        List<Integer> list = this.f34945m;
        if (list != null) {
            list.clear();
            this.f34945m = null;
        }
        this.f34946n = null;
        try {
            if (this.f34944l != null) {
                moveTaskToBack(true);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
