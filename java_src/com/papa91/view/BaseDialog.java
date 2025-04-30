package com.papa91.view;

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
/* loaded from: classes4.dex */
public class BaseDialog extends Dialog {
    private String TAG;
    private DialogInterface.OnDismissListener dismissListener;

    public BaseDialog(@NonNull Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
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
            i2 = (useLowProfileButtons ? 1 : 0) | 4098;
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
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
        updateSystemUiVisibility();
    }

    @Override // android.app.Dialog
    public void setOnDismissListener(@Nullable DialogInterface.OnDismissListener onDismissListener) {
        this.dismissListener = onDismissListener;
    }

    @Override // android.app.Dialog
    public void show() {
        if (getWindow() != null) {
            getWindow().setFlags(8, 8);
        }
        super.show();
        fullScreenImmersive(getWindow().getDecorView());
        getWindow().clearFlags(8);
    }

    public boolean useLowProfileButtons() {
        return true;
    }

    public BaseDialog(@NonNull Context context, int i2) {
        super(context, i2);
        this.TAG = getClass().getSimpleName();
    }
}
