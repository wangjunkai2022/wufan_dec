package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
/* compiled from: FightWifiErrorDialog.java */
/* loaded from: classes3.dex */
public class o0 extends AlertDialog {

    /* renamed from: a  reason: collision with root package name */
    Context f47838a;

    /* renamed from: b  reason: collision with root package name */
    TextView f47839b;

    /* renamed from: c  reason: collision with root package name */
    TextView f47840c;

    /* renamed from: d  reason: collision with root package name */
    ImageView f47841d;

    /* renamed from: e  reason: collision with root package name */
    Button f47842e;

    /* compiled from: FightWifiErrorDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o0.this.dismiss();
        }
    }

    /* compiled from: FightWifiErrorDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UtilsMy.I2(o0.this.f47838a);
            o0.this.dismiss();
        }
    }

    public o0(Context context, int i2) {
        super(context, i2);
        this.f47838a = context;
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        View inflate = LayoutInflater.from(this.f47838a).inflate(R.layout.dialog_fight_wifi_error, (ViewGroup) null);
        this.f47839b = (TextView) inflate.findViewById(R.id.title);
        this.f47840c = (TextView) inflate.findViewById(R.id.info);
        this.f47841d = (ImageView) inflate.findViewById(R.id.cancel);
        this.f47842e = (Button) inflate.findViewById(R.id.setting);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        setContentView(inflate);
        this.f47841d.setOnClickListener(new a());
        this.f47842e.setOnClickListener(new b());
    }

    public o0(Context context) {
        super(context);
        this.f47838a = context;
    }
}
