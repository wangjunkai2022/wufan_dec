package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.FightWifiInputDialogActivity_;
/* compiled from: WifiFightServerDisconnectDialog.java */
/* loaded from: classes3.dex */
public class d2 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    Context f47627a;

    /* renamed from: b  reason: collision with root package name */
    ImageView f47628b;

    /* renamed from: c  reason: collision with root package name */
    Button f47629c;

    /* compiled from: WifiFightServerDisconnectDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d2.this.dismiss();
        }
    }

    /* compiled from: WifiFightServerDisconnectDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FightWifiInputDialogActivity_.G0(d2.this.f47627a).startForResult(9001);
            d2.this.dismiss();
        }
    }

    public d2(Context context, int i2) {
        super(context, i2);
        this.f47627a = context;
    }

    public void a(int i2) {
        this.f47628b.setVisibility(i2);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        requestWindowFeature(-1);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View inflate = LayoutInflater.from(this.f47627a).inflate(R.layout.dialog_fight_server_disconnect, (ViewGroup) null);
        this.f47628b = (ImageView) inflate.findViewById(R.id.cancel);
        this.f47629c = (Button) inflate.findViewById(R.id.reJoin);
        this.f47628b.setOnClickListener(new a());
        this.f47629c.setOnClickListener(new b());
        setContentView(inflate);
    }

    public d2(Context context) {
        super(context);
        this.f47627a = context;
    }
}
