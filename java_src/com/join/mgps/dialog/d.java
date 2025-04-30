package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: AndroidPermissDialog.java */
/* loaded from: classes3.dex */
public class d extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private Context f47599a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f47600b;

    /* renamed from: c  reason: collision with root package name */
    private h f47601c;

    /* renamed from: d  reason: collision with root package name */
    private f f47602d;

    /* renamed from: e  reason: collision with root package name */
    private g f47603e;

    /* renamed from: f  reason: collision with root package name */
    private String f47604f;

    /* renamed from: g  reason: collision with root package name */
    private Bitmap f47605g;

    /* renamed from: h  reason: collision with root package name */
    private String f47606h;

    /* renamed from: i  reason: collision with root package name */
    private String f47607i;

    /* renamed from: j  reason: collision with root package name */
    private TextView f47608j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f47609k;

    /* compiled from: AndroidPermissDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.dismiss();
        }
    }

    /* compiled from: AndroidPermissDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (d.this.f47603e != null) {
                d.this.f47603e.a();
            }
        }
    }

    /* compiled from: AndroidPermissDialog.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (d.this.f47601c != null) {
                d.this.f47601c.a();
            }
        }
    }

    /* compiled from: AndroidPermissDialog.java */
    /* renamed from: com.join.mgps.dialog.d$d  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class View$OnClickListenerC0202d implements View.OnClickListener {
        View$OnClickListenerC0202d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (d.this.f47602d != null) {
                d.this.f47602d.a();
            }
        }
    }

    /* compiled from: AndroidPermissDialog.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (d.this.f47601c != null) {
                d.this.f47601c.a();
            }
        }
    }

    /* compiled from: AndroidPermissDialog.java */
    /* loaded from: classes3.dex */
    public interface f {
        void a();
    }

    /* compiled from: AndroidPermissDialog.java */
    /* loaded from: classes3.dex */
    public interface g {
        void a();
    }

    /* compiled from: AndroidPermissDialog.java */
    /* loaded from: classes3.dex */
    public interface h {
        void a();
    }

    protected d(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f47604f = "";
    }

    public void d(String str) {
        this.f47606h = str;
    }

    public void e(f fVar) {
        this.f47602d = fVar;
    }

    public void f(g gVar) {
        this.f47603e = gVar;
    }

    public void g(h hVar) {
        this.f47601c = hVar;
    }

    public void h(String str) {
        this.f47607i = str;
    }

    public void i(Bitmap bitmap) {
        this.f47605g = bitmap;
    }

    public void j(String str) {
        this.f47604f = str;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.android_permiss_dialog);
        this.f47600b = (ImageView) findViewById(R.id.dialog_title_image);
        this.f47608j = (TextView) findViewById(R.id.dialog_content);
        findViewById(R.id.llBtn).setVisibility(this.f47609k ? 8 : 0);
        findViewById(R.id.llBtnIKnow).setVisibility(this.f47609k ? 0 : 8);
        this.f47600b.setScaleType(ImageView.ScaleType.CENTER_CROP);
        Bitmap bitmap = this.f47605g;
        if (bitmap != null) {
            this.f47600b.setImageBitmap(bitmap);
        }
        this.f47608j.setText(this.f47607i);
        Button button = (Button) findViewById(R.id.dialog_button_keep);
        Button button2 = (Button) findViewById(R.id.dialog_button_close);
        Button button3 = (Button) findViewById(R.id.dialog_button_i_know);
        String str = this.f47606h;
        if (str != null && !str.equals("")) {
            button.setText(this.f47606h);
        }
        findViewById(R.id.closed).setOnClickListener(new a());
        this.f47600b.setOnClickListener(new b());
        button2.setOnClickListener(new c());
        button.setOnClickListener(new View$OnClickListenerC0202d());
        button3.setOnClickListener(new e());
    }

    public d(Context context) {
        super(context);
        this.f47604f = "";
    }

    public d(Context context, int i2) {
        super(context, i2);
        this.f47604f = "";
        this.f47599a = context;
    }

    public d(Context context, int i2, boolean z3) {
        super(context, i2);
        this.f47604f = "";
        this.f47599a = context;
        this.f47609k = z3;
    }
}
