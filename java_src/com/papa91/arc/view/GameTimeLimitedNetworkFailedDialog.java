package com.papa91.arc.view;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.papa91.arc.EmuActivity_psp;
import com.papa91.wrapper.UserPrefs;
import com.yatoooon.screenadaptation.e;
import org.ppsspp.ppsspp.NativeApp;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class GameTimeLimitedNetworkFailedDialog extends BaseDialog implements View.OnClickListener {
    View close;
    Context context;
    OnTimeLimitedListener onTimeLimitedListener;
    private UserPrefs pref;
    TextView tip;
    View video;
    View vip;

    /* loaded from: classes4.dex */
    public interface OnTimeLimitedListener {
        void onBuyVip();

        void onExit();
    }

    public GameTimeLimitedNetworkFailedDialog(@NonNull Context context) {
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
        this.vip = findViewById(R.id.vip);
        View findViewById = findViewById(R.id.close);
        this.close = findViewById;
        setOnListener(this.video, this.vip, findViewById);
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
            return;
        }
        if (id == R.id.vip) {
            OnTimeLimitedListener onTimeLimitedListener = this.onTimeLimitedListener;
            if (onTimeLimitedListener != null) {
                onTimeLimitedListener.onExit();
            }
            EmuActivity_psp.sendLimitStat("PSPLimitQuit");
        } else if (id == R.id.video) {
            if (!isNetworkConnected()) {
                ToastUtil.show(getContext(), "请联网继续游戏");
            } else {
                EmuActivity_psp.startVideo();
            }
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
        setCancelable(false);
        setContentView(R.layout.dialog_time_limited_network_failed);
        initViews();
        e.a().f(getWindow().getDecorView());
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

    public GameTimeLimitedNetworkFailedDialog(@NonNull Context context, int i2) {
        super(context, R.style.PspDialog);
        this.context = context;
        init();
    }
}
