package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FightADDialog.java */
/* loaded from: classes3.dex */
public class h0 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private SimpleDraweeView f47709a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f47710b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f47711c;

    /* renamed from: d  reason: collision with root package name */
    private String f47712d;

    /* renamed from: e  reason: collision with root package name */
    private String f47713e;

    /* renamed from: f  reason: collision with root package name */
    private c f47714f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f47715g;

    /* compiled from: FightADDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (h0.this.f47714f != null) {
                h0.this.f47714f.a(h0.this);
            } else {
                h0.this.dismiss();
            }
        }
    }

    /* compiled from: FightADDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (h0.this.f47714f != null) {
                h0.this.f47714f.b(h0.this);
            } else {
                h0.this.dismiss();
            }
        }
    }

    /* compiled from: FightADDialog.java */
    /* loaded from: classes3.dex */
    public interface c {
        void a(h0 h0Var);

        void b(h0 h0Var);
    }

    public h0(Context context) {
        super(context);
        this.f47715g = false;
    }

    public h0 b(boolean z3) {
        setCancelable(z3);
        return this;
    }

    public h0 c(c cVar) {
        this.f47714f = cVar;
        return this;
    }

    public h0 d(String str) {
        this.f47712d = str;
        return this;
    }

    public h0 e(String str) {
        this.f47713e = str;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(this.f47715g);
        setContentView(R.layout.fight_ad_dialog);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        this.f47709a = (SimpleDraweeView) findViewById(R.id.ad_iv_icon);
        this.f47710b = (TextView) findViewById(R.id.ad_title_tv);
        this.f47711c = (ImageView) findViewById(R.id.ad_cancel_iv);
        this.f47710b.setText(this.f47713e);
        MyImageLoader.d(this.f47709a, R.drawable.iv_default_newarena_item, this.f47712d);
        this.f47711c.setOnClickListener(new a());
        this.f47709a.setOnClickListener(new b());
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && keyEvent.getAction() == 0 && this.f47715g) {
            dismiss();
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public h0(Context context, int i2) {
        super(context, i2);
        this.f47715g = false;
    }

    protected h0(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f47715g = false;
    }
}
