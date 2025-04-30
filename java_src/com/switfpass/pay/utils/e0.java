package com.switfpass.pay.utils;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
/* loaded from: classes4.dex */
public class e0 {
    static {
        new Handler();
        new y0();
    }

    public void a(Context context, String str) {
        View inflate = View.inflate(context, com.join.android.app.mgsim.wufun.R.array.smssdk_country_group_e, null);
        ((TextView) inflate.findViewById(com.join.android.app.mgsim.wufun.R.dimen.bottomsheet_default_sheet_width)).setText(str);
        Toast toast = new Toast(context);
        toast.setGravity(17, 0, 0);
        toast.setDuration(1);
        toast.setView(inflate);
        toast.show();
    }
}
