package com.switfpass.pay.utils;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.switfpass.pay.lib.Resourcemap;
/* loaded from: classes4.dex */
public class g0 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private ViewGroup f58991a;

    /* renamed from: b  reason: collision with root package name */
    private Activity f58992b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f58993c;

    public g0(Activity activity, String str, f0 f0Var) {
        super(activity, Resourcemap.getStyle_dialog());
        this.f58992b = activity;
        requestWindowFeature(1);
        getWindow().setBackgroundDrawableResource(Resourcemap.getById_clor());
        ViewGroup viewGroup = (ViewGroup) getLayoutInflater().inflate(Resourcemap.getLayout_dialog(), (ViewGroup) null);
        this.f58991a = viewGroup;
        setContentView(viewGroup);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        setCanceledOnTouchOutside(false);
        ImageView imageView = (ImageView) findViewById(Resourcemap.getById_pay_stop());
        this.f58993c = imageView;
        if (f0Var == null) {
            imageView.setVisibility(8);
        }
        this.f58993c.setOnClickListener(new z0(f0Var));
        TextView textView = (TextView) this.f58991a.findViewById(Resourcemap.getById_tv_dialog());
        if (str != null) {
            textView.setText(str);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            this.f58992b.moveTaskToBack(false);
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }
}
