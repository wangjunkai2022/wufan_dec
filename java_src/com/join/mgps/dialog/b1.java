package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
/* compiled from: ModFeedBackDialog.java */
/* loaded from: classes3.dex */
public class b1 extends AlertDialog implements View.OnClickListener, DialogInterface.OnShowListener, DialogInterface.OnDismissListener {

    /* renamed from: a  reason: collision with root package name */
    private TextView f47547a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f47548b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f47549c;

    /* renamed from: d  reason: collision with root package name */
    private SimpleDraweeView f47550d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f47551e;

    /* renamed from: f  reason: collision with root package name */
    a f47552f;

    /* compiled from: ModFeedBackDialog.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a(b1 b1Var);

        void b(b1 b1Var);
    }

    public b1(@NonNull Context context) {
        super(context, R.style.Dialog);
    }

    public void a(String str, String str2, String str3) {
        com.papa.sim.statistic.p.l(getContext()).K1(Event.showmodRunNormal, new Ext().setGameId(str3));
        MyImageLoader.h(this.f47550d, str);
        this.f47547a.setText(str2);
    }

    public void b(a aVar) {
        this.f47552f = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a aVar;
        int id = view.getId();
        if (id == R.id.iv_close) {
            dismiss();
        } else if (id == R.id.tv_opt_1) {
            a aVar2 = this.f47552f;
            if (aVar2 != null) {
                aVar2.b(this);
            }
        } else if (id != R.id.tv_opt_2 || (aVar = this.f47552f) == null) {
        } else {
            aVar.a(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_mod_feed_back);
        this.f47547a = (TextView) findViewById(R.id.tv_name);
        this.f47548b = (TextView) findViewById(R.id.tv_opt_1);
        this.f47549c = (TextView) findViewById(R.id.tv_opt_2);
        this.f47550d = (SimpleDraweeView) findViewById(R.id.sdv_image);
        this.f47551e = (ImageView) findViewById(R.id.iv_close);
        setCanceledOnTouchOutside(false);
        setOnShowListener(this);
        setOnDismissListener(this);
        this.f47551e.setOnClickListener(this);
        this.f47548b.setOnClickListener(this);
        this.f47549c.setOnClickListener(this);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
    }
}
