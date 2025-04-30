package com.papa91.arc.view;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class BaseDialog extends Dialog {
    private String TAG;
    private int animResId;
    private DialogInterface.OnDismissListener dismissListener;
    private float mBackgroundDimAmount;
    private boolean mBackgroundDimEnabled;
    protected Context mContext;
    private int mGravity;
    private int mHeight;
    private int mWidth;

    public BaseDialog(@NonNull Context context) {
        this(context, R.style.PspDialog);
    }

    private void applyCompat() {
        try {
            Window window = getWindow();
            window.setFlags(1024, 1024);
            window.getDecorView().setSystemUiVisibility(Build.VERSION.SDK_INT >= 19 ? 5894 : 1799);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void fullScreenImmersive(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setSystemUiVisibility(5894);
        }
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(14)
    private void updateSystemUiVisibility() {
        boolean useLowProfileButtons = useLowProfileButtons();
        int i2 = useLowProfileButtons;
        if (useImmersive()) {
            i2 = (useLowProfileButtons ? 1 : 0) | 5126;
        }
        if (getWindow().getDecorView() != null) {
            getWindow().getDecorView().setSystemUiVisibility(i2);
        }
    }

    private boolean useImmersive() {
        return Build.VERSION.SDK_INT >= 19;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        updateSystemUiVisibility();
        DialogInterface.OnDismissListener onDismissListener = this.dismissListener;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(this);
        }
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getWidth() {
        return this.mWidth;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        window.setAttributes(attributes);
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        applyCompat();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        super.onWindowAttributesChanged(layoutParams);
        if (Build.VERSION.SDK_INT <= 29) {
            updateSystemUiVisibility();
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z3) {
        if (getWindow() != null) {
            getWindow().setFlags(8, 8);
            fullScreenImmersive(getWindow().getDecorView());
            getWindow().clearFlags(8);
        }
        super.onWindowFocusChanged(z3);
    }

    public void setAnimResId(int i2) {
        this.animResId = i2;
    }

    public void setBackgroundDimAmount(float f4) {
        this.mBackgroundDimAmount = f4;
    }

    public void setBackgroundDimEnabled(boolean z3) {
        this.mBackgroundDimEnabled = z3;
    }

    public void setHeight(int i2) {
        this.mHeight = i2;
    }

    @Override // android.app.Dialog
    public void setOnDismissListener(@Nullable DialogInterface.OnDismissListener onDismissListener) {
        this.dismissListener = onDismissListener;
    }

    public void setWidth(int i2) {
        this.mWidth = i2;
    }

    @Override // android.app.Dialog
    public void show() {
        if (getWindow() != null) {
            getWindow().setFlags(8, 8);
        }
        super.show();
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = this.mWidth;
            attributes.height = this.mHeight;
            attributes.gravity = this.mGravity;
            attributes.windowAnimations = this.animResId;
            window.setAttributes(attributes);
            if (this.mBackgroundDimEnabled) {
                window.addFlags(2);
                window.setDimAmount(this.mBackgroundDimAmount);
            } else {
                window.clearFlags(2);
            }
        }
        fullScreenImmersive(getWindow().getDecorView());
        getWindow().clearFlags(8);
    }

    public boolean useLowProfileButtons() {
        return true;
    }

    public BaseDialog(@NonNull Context context, int i2) {
        super(context, i2);
        this.TAG = getClass().getSimpleName();
        this.mBackgroundDimEnabled = false;
        this.mGravity = 0;
        this.mBackgroundDimAmount = 0.5f;
        this.animResId = R.style.AlphaAnimStyle;
        this.mWidth = -1;
        this.mHeight = -1;
        this.mContext = context;
    }
}
