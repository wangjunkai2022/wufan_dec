package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.FightWifiInputDialogActivity_;
/* compiled from: WifiFightEnteringRoomFailedDialog.java */
/* loaded from: classes3.dex */
public class b2 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    Context f47553a;

    /* renamed from: b  reason: collision with root package name */
    ImageView f47554b;

    /* renamed from: c  reason: collision with root package name */
    Button f47555c;

    /* renamed from: d  reason: collision with root package name */
    String f47556d;

    /* renamed from: e  reason: collision with root package name */
    TextView f47557e;

    /* compiled from: WifiFightEnteringRoomFailedDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b2.this.dismiss();
        }
    }

    /* compiled from: WifiFightEnteringRoomFailedDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FightWifiInputDialogActivity_.G0(b2.this.f47553a).startForResult(9001);
            b2.this.dismiss();
        }
    }

    public b2(Context context, int i2, String str) {
        super(context, i2);
        this.f47553a = context;
        this.f47556d = str;
    }

    public void a(int i2) {
        this.f47554b.setVisibility(i2);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        requestWindowFeature(-1);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View inflate = LayoutInflater.from(this.f47553a).inflate(R.layout.dialog_fight_enteringroom_failed, (ViewGroup) null);
        this.f47557e = (TextView) inflate.findViewById(R.id.title);
        this.f47554b = (ImageView) inflate.findViewById(R.id.cancel);
        this.f47555c = (Button) inflate.findViewById(R.id.reJoin);
        TextView textView = this.f47557e;
        textView.setText(textView.getText().toString().replace("$1", this.f47556d));
        this.f47554b.setOnClickListener(new a());
        this.f47555c.setOnClickListener(new b());
        setContentView(inflate);
    }

    public b2(Context context) {
        super(context);
        this.f47553a = context;
    }
}
