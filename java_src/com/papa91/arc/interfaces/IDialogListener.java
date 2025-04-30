package com.papa91.arc.interfaces;

import android.app.Dialog;
import com.papa91.arc.bean.ButtonBean;
/* loaded from: classes4.dex */
public interface IDialogListener {
    void onCancel();

    void onCenterClick(Dialog dialog);

    void onCenterClick(Dialog dialog, ButtonBean buttonBean);

    void onClose();

    void onCloseClick(Dialog dialog);

    void onCloseClick(Dialog dialog, ButtonBean buttonBean);

    void onConfirm();

    void onLeftClick(Dialog dialog);

    void onLeftClick(Dialog dialog, ButtonBean buttonBean);

    void onRightClick(Dialog dialog);

    void onRightClick(Dialog dialog, ButtonBean buttonBean);
}
