package com.join.mgps.activity.vipzone.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i2;
import com.join.mgps.activity.vipzone.bean.LuckAddressrequest;
import com.join.mgps.activity.vipzone.bean.PrizeBean;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.h;
import f.d;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* loaded from: classes3.dex */
public class LuckDrawAddressDialog extends Activity {
    TextView address1;
    EditText address2;
    ImageView closed;
    Context context;
    EditText name;
    TextView ok;
    EditText phoneNumber;
    PrizeBean prizeBean;
    View selectAddress;

    private void commitAddress(String str, String str2, String str3, String str4) {
        AccountBean accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        RequestModel<LuckAddressrequest> requestModel = new RequestModel<>(this.context);
        LuckAddressrequest luckAddressrequest = new LuckAddressrequest();
        luckAddressrequest.setName(str);
        luckAddressrequest.setAddress(str4);
        luckAddressrequest.setCity(str3);
        luckAddressrequest.setMobilePhone(Long.parseLong(str2));
        luckAddressrequest.setLotteryId(this.prizeBean.getId());
        luckAddressrequest.setUid(accountData.getUid());
        luckAddressrequest.setUserToken(accountData.getToken());
        requestModel.setArgs(luckAddressrequest);
        h.L().J().o0(requestModel).enqueue(new Callback<ResponseModel<PrizeBean>>() { // from class: com.join.mgps.activity.vipzone.dialog.LuckDrawAddressDialog.2
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<PrizeBean>> call, Throwable th) {
                i2.a(LuckDrawAddressDialog.this.context).b("提交信息失败");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<PrizeBean>> call, Response<ResponseModel<PrizeBean>> response) {
                if (response == null || response.body() == null) {
                    return;
                }
                if (response.body().getCode() == 200) {
                    i2.a(LuckDrawAddressDialog.this.context).b("提交成功");
                    LuckDrawAddressDialog.this.finish();
                } else if (response.body().getCode() == 500) {
                    i2.a(LuckDrawAddressDialog.this.context).b(response.body().getMessage());
                }
            }
        });
    }

    /* renamed from: onClickAddressSelecter */
    public void lambda$onCreate$0(View view) {
        y1.a.b(this.phoneNumber);
        com.airsaid.pickerviewlibrary.b bVar = new com.airsaid.pickerviewlibrary.b(this.context);
        bVar.l(true);
        bVar.I(20.0f);
        bVar.J("选择城市");
        bVar.p("取消");
        bVar.q(-7829368);
        bVar.r(15.0f);
        bVar.F("确定");
        bVar.G(-16776961);
        bVar.H(15.0f);
        bVar.u(-1);
        bVar.S(new d() { // from class: com.join.mgps.activity.vipzone.dialog.LuckDrawAddressDialog.1
            @Override // f.d, f.a
            public void onCitySelect(String str, String str2, String str3) {
                TextView textView = LuckDrawAddressDialog.this.address1;
                textView.setText(str + "、" + str2 + "、" + str3);
            }

            @Override // f.d, f.a
            public void onCitySelect(String str) {
                LuckDrawAddressDialog.this.address1.setText(str);
            }
        });
        bVar.n();
    }

    /* renamed from: onClickClosed */
    public void lambda$onCreate$1(View view) {
        y1.a.b(this.phoneNumber);
        finish();
    }

    public void onClickOk(View view) {
        String obj = this.name.getText().toString();
        String obj2 = this.phoneNumber.getText().toString();
        String charSequence = this.address1.getText().toString();
        String obj3 = this.address2.getText().toString();
        if (d2.h(obj.trim())) {
            i2.a(this.context).b("请输入姓名");
        } else if (d2.h(obj2.trim())) {
            i2.a(this.context).b("请输入手机号");
        } else if (d2.h(charSequence.trim())) {
            i2.a(this.context).b("请输入城市");
        } else if (d2.h(obj3.trim())) {
            i2.a(this.context).b("请输详细地址");
        } else {
            commitAddress(obj, obj2, charSequence, obj3);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        getWindow().setSoftInputMode(32);
        setContentView(R.layout.luck_draw_address_dialog_layout);
        this.ok = (TextView) findViewById(R.id.ok);
        this.phoneNumber = (EditText) findViewById(R.id.phoneNumber);
        this.address2 = (EditText) findViewById(R.id.address2);
        this.address1 = (TextView) findViewById(R.id.address1);
        this.name = (EditText) findViewById(R.id.name);
        this.closed = (ImageView) findViewById(R.id.closed);
        View findViewById = findViewById(R.id.selectAddress);
        this.selectAddress = findViewById;
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.dialog.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LuckDrawAddressDialog.this.lambda$onCreate$0(view);
            }
        });
        this.closed.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.dialog.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LuckDrawAddressDialog.this.lambda$onCreate$1(view);
            }
        });
        this.prizeBean = (PrizeBean) getIntent().getSerializableExtra("datas");
    }
}
