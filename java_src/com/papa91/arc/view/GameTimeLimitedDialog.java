package com.papa91.arc.view;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.papa91.arc.EmuActivity_psp;
import com.papa91.wrapper.UserPrefs;
import com.yatoooon.screenadaptation.e;
import org.json.JSONObject;
import org.ppsspp.ppsspp.NativeActivity;
import org.ppsspp.ppsspp.NativeApp;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class GameTimeLimitedDialog extends BaseDialog implements View.OnClickListener {
    private String adConfig;
    View close;
    Context context;
    private String lBtnText;
    private String lBtnUrl;
    OnTimeLimitedListener onTimeLimitedListener;
    private UserPrefs pref;
    private String rBtnText;
    TextView textView17;
    TextView tip;
    private String tipText;
    View video;
    int viewType;
    TextView vip;

    /* loaded from: classes4.dex */
    public interface OnTimeLimitedListener {
        void onBuyVip(String str);

        void onExit();
    }

    public GameTimeLimitedDialog(@NonNull Context context) {
        super(context, R.style.PspDialog);
        this.context = context;
        init();
    }

    @Override // com.papa91.arc.view.BaseDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        NativeApp.resumeGame();
    }

    public OnTimeLimitedListener getOnTimeLimitedListener() {
        return this.onTimeLimitedListener;
    }

    void init() {
        this.pref = new UserPrefs(this.context);
    }

    void initViews() {
        this.tip = (TextView) findViewById(R.id.tip);
        this.video = findViewById(R.id.video);
        this.vip = (TextView) findViewById(R.id.vip);
        this.close = findViewById(R.id.close);
        TextView textView = (TextView) findViewById(R.id.textView17);
        this.textView17 = textView;
        textView.setText(this.lBtnText);
        this.vip.setText(this.rBtnText);
        if (this.viewType == 1) {
            UserPrefs userPrefs = this.pref;
            long remainTime = userPrefs.getRemainTime(userPrefs.getAdGamesConfig(NativeActivity.GameID, NativeActivity.UserID));
            TextView textView2 = this.tip;
            textView2.setText("您将在" + (remainTime / 1000) + "秒后" + this.tipText);
        }
        setOnListener(this.video, this.vip, this.close);
    }

    public boolean isNetworkConnected() {
        if (getContext() != null) {
            try {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    return activeNetworkInfo.isAvailable();
                }
                return false;
            } catch (Exception e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.close) {
            if (this.viewType == 1) {
                dismiss();
                return;
            }
            OnTimeLimitedListener onTimeLimitedListener = this.onTimeLimitedListener;
            if (onTimeLimitedListener != null) {
                onTimeLimitedListener.onExit();
            }
        } else if (id == R.id.vip) {
            OnTimeLimitedListener onTimeLimitedListener2 = this.onTimeLimitedListener;
            if (onTimeLimitedListener2 != null) {
                onTimeLimitedListener2.onBuyVip(this.lBtnUrl);
            }
            EmuActivity_psp.sendLimitStat("PSPLimitMember");
        } else if (id == R.id.video) {
            EmuActivity_psp.sendLimitStat("PSPLimitPlay");
            if (!isNetworkConnected()) {
                ToastUtil.show(getContext(), "请联网继续游戏");
            } else {
                EmuActivity_psp.startVideo();
            }
        }
    }

    public void setAdConfig(String str) {
        this.adConfig = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("tip_text")) {
                this.tipText = jSONObject.getString("tip_text");
            }
            if (jSONObject.has("l_btn_text")) {
                this.lBtnText = jSONObject.getString("l_btn_text");
            }
            if (jSONObject.has("l_btn_url")) {
                this.lBtnUrl = jSONObject.getString("l_btn_url");
            }
            if (jSONObject.has("r_btn_text")) {
                this.rBtnText = jSONObject.getString("r_btn_text");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void setOnListener(View... viewArr) {
        if (viewArr == null) {
            return;
        }
        for (View view : viewArr) {
            view.setOnClickListener(this);
        }
    }

    public void setOnTimeLimitedListener(OnTimeLimitedListener onTimeLimitedListener) {
        this.onTimeLimitedListener = onTimeLimitedListener;
    }

    @Override // com.papa91.arc.view.BaseDialog, android.app.Dialog
    public void show() {
        super.show();
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.gravity = 17;
        attributes.width = -1;
        attributes.height = -1;
        getWindow().getDecorView().setPadding(0, 0, 0, 0);
        getWindow().setAttributes(attributes);
        if (Build.VERSION.SDK_INT < 19) {
            getWindow().setFlags(1024, 1024);
        } else {
            getWindow().setFlags(67108864, 67108864);
            getWindow().setFlags(134217728, 134217728);
        }
        NativeApp.pauseGame();
    }

    public void show1() {
        this.viewType = 1;
        setContentView(R.layout.dialog_time_limited1);
        initViews();
        e.a().f(getWindow().getDecorView());
        show();
    }

    public void show2() {
        this.viewType = 2;
        setCancelable(false);
        setContentView(R.layout.dialog_time_limited2);
        initViews();
        e.a().f(getWindow().getDecorView());
        show();
    }

    public void updateTickTime(long j4) {
        if (this.viewType == 1) {
            TextView textView = this.tip;
            textView.setText("您将在" + (j4 / 1000) + "秒后，" + this.tipText);
        }
    }

    public GameTimeLimitedDialog(@NonNull Context context, int i2) {
        super(context, R.style.PspDialog);
        this.context = context;
        init();
    }
}
