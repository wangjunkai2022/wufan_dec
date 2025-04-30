package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FightClientLoadingDialog2.java */
/* loaded from: classes3.dex */
public class i0 extends AlertDialog {

    /* renamed from: a  reason: collision with root package name */
    Context f47721a;

    /* renamed from: b  reason: collision with root package name */
    TextView f47722b;

    public i0(Context context, int i2) {
        super(context, i2);
        this.f47721a = context;
    }

    public void a(String str) {
        TextView textView = this.f47722b;
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        View inflate = LayoutInflater.from(this.f47721a).inflate(R.layout.dialog_fight_connect_server2, (ViewGroup) null);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.fightLoadingIcon);
        AnimationDrawable animationDrawable = (AnimationDrawable) this.f47721a.getResources().getDrawable(R.drawable.net_invite_dialog_loading);
        if (Build.VERSION.SDK_INT >= 16) {
            imageView.setBackground(animationDrawable);
        } else {
            imageView.setBackgroundDrawable(animationDrawable);
        }
        animationDrawable.start();
        this.f47722b = (TextView) inflate.findViewById(R.id.hint);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        setContentView(inflate);
    }

    public i0(Context context) {
        super(context);
        this.f47721a = context;
    }
}
