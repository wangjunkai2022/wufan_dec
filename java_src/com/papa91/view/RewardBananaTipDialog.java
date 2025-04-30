package com.papa91.view;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.papa91.arc.MarketUtil;
import com.papa91.mix.R;
import com.papa91.utils.HttpUtils;
import com.yatoooon.screenadaptation.e;
/* loaded from: classes4.dex */
public class RewardBananaTipDialog extends BaseDialog implements View.OnClickListener {
    TextView close;
    View gift;
    ImageView imageView2;
    TextView tip;

    public RewardBananaTipDialog(@NonNull Context context) {
        super(context);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.close) {
            dismiss();
        } else if (id == R.id.gift) {
            Context context = view.getContext();
            MarketUtil.intent(context, "4", "", HttpUtils.REWARD_CONFIG_URL + "/user/activity/banana_peel/exchange_center", "", "");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa91.view.BaseDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCanceledOnTouchOutside(false);
        setContentView(R.layout.dialog_receive_banana_tip);
        this.close = (TextView) findViewById(R.id.close);
        this.gift = findViewById(R.id.gift);
        this.tip = (TextView) findViewById(R.id.textView3);
        ImageView imageView = (ImageView) findViewById(R.id.imageView2);
        this.imageView2 = imageView;
        imageView.setImageResource(R.drawable.gif_cd_animation);
        ((AnimationDrawable) this.imageView2.getDrawable()).start();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) "玩游戏可得香蕉\n");
        SpannableString spannableString = new SpannableString("香蕉可兑换饭票\n");
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#FFF05E")), spannableString.toString().indexOf("饭票"), spannableString.toString().length(), 33);
        SpannableString spannableString2 = new SpannableString("饭票可兑换奖品");
        spannableString2.setSpan(new ForegroundColorSpan(Color.parseColor("#FFF05E")), 0, 2, 33);
        spannableStringBuilder.append((CharSequence) spannableString);
        spannableStringBuilder.append((CharSequence) spannableString2);
        this.tip.setText(spannableStringBuilder);
        this.close.setOnClickListener(this);
        this.gift.setOnClickListener(this);
        setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.papa91.view.RewardBananaTipDialog.1
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

    public RewardBananaTipDialog(@NonNull Context context, int i2) {
        super(context, i2);
    }
}
