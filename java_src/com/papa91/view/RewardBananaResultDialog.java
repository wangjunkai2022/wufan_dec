package com.papa91.view;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.papa91.arc.MarketUtil;
import com.papa91.mix.R;
import com.papa91.utils.HttpUtils;
import com.yatoooon.screenadaptation.e;
/* loaded from: classes4.dex */
public class RewardBananaResultDialog extends BaseDialog implements View.OnClickListener {
    TextView close;
    TextView count;
    View gift;
    Handler mHandler;
    View ok;
    TextView total;

    public RewardBananaResultDialog(@NonNull Context context) {
        super(context);
        this.mHandler = new Handler();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.close && id != R.id.doubleReward) {
            if (id == R.id.gift) {
                Context context = view.getContext();
                MarketUtil.intent(context, "4", "", HttpUtils.REWARD_CONFIG_URL + "/user/activity/banana_peel/exchange_center", "", "");
                return;
            }
            return;
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa91.view.BaseDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCanceledOnTouchOutside(false);
        setContentView(R.layout.dialog_receive_banana_result);
        this.close = (TextView) findViewById(R.id.close);
        this.gift = findViewById(R.id.gift);
        this.count = (TextView) findViewById(R.id.count3);
        this.total = (TextView) findViewById(R.id.remain3);
        this.ok = findViewById(R.id.doubleReward);
        this.close.setOnClickListener(this);
        this.gift.setOnClickListener(this);
        this.ok.setOnClickListener(this);
        setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.papa91.view.RewardBananaResultDialog.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                return i2 == 4 && keyEvent.getRepeatCount() == 0;
            }
        });
    }

    @Override // com.papa91.view.BaseDialog, android.app.Dialog
    public void show() {
        e.a().f(getWindow().getDecorView());
        super.show();
        if (getContext().getResources().getConfiguration().orientation == 2) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.gravity = 17;
            attributes.width = -1;
            attributes.height = -1;
            getWindow().getDecorView().setPadding(0, 0, 0, 0);
            getWindow().setAttributes(attributes);
        }
    }

    public RewardBananaResultDialog(@NonNull Context context, int i2) {
        super(context, i2);
        this.mHandler = new Handler();
    }

    public void show(int i2, int i4) {
        show();
        TextView textView = this.total;
        if (textView != null) {
            textView.setText("累计获得香蕉" + i4 + "个");
        }
        TextView textView2 = this.count;
        if (textView2 != null) {
            textView2.setText("" + i2);
        }
    }
}
