package com.switfpass.pay.utils;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.PopupWindow;
import com.switfpass.pay.MainApplication;
import m.framework.ui.widget.asyncview.AsyncImageView;
/* loaded from: classes4.dex */
public class y implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private x f59083a;

    /* renamed from: b  reason: collision with root package name */
    private Context f59084b;

    /* renamed from: c  reason: collision with root package name */
    public String f59085c = "pay.qq.jspay";

    public y(Context context, x xVar) {
        this.f59084b = context;
        this.f59083a = xVar;
    }

    public PopupWindow a(String str, int i2) {
        Resources resources;
        int i4;
        View inflate = View.inflate(this.f59084b, com.join.android.app.mgsim.wufun.R.array.materia_colors, null);
        PopupWindow popupWindow = new PopupWindow(inflate, i2, -1);
        ImageView imageView = (ImageView) inflate.findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_dialog_list_padding_bottom_no_buttons);
        if (str.equals(MainApplication.f58608j) || str.equalsIgnoreCase(this.f59085c)) {
            resources = this.f59084b.getResources();
            i4 = 2130837549;
        } else if (str.startsWith(MainApplication.f58611m)) {
            resources = this.f59084b.getResources();
            i4 = 2130837551;
        } else {
            resources = this.f59084b.getResources();
            i4 = 2130837550;
        }
        imageView.setImageDrawable(resources.getDrawable(i4));
        imageView.setOnClickListener(new j1(popupWindow));
        popupWindow.setWidth(i2);
        popupWindow.setAnimationStyle(16973826);
        popupWindow.update();
        popupWindow.setBackgroundDrawable(this.f59084b.getResources().getDrawable(AsyncImageView.DEFAULT_TRANSPARENT));
        popupWindow.setFocusable(true);
        popupWindow.setTouchable(true);
        popupWindow.setOutsideTouchable(false);
        return popupWindow;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        x xVar = this.f59083a;
        if (xVar != null) {
            xVar.a(view);
        }
    }
}
