package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogExit.java */
/* loaded from: classes3.dex */
public class d0 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private Context f47615a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f47616b;

    /* renamed from: c  reason: collision with root package name */
    private f f47617c;

    /* renamed from: d  reason: collision with root package name */
    private d f47618d;

    /* renamed from: e  reason: collision with root package name */
    private e f47619e;

    /* renamed from: f  reason: collision with root package name */
    private String f47620f;

    /* renamed from: g  reason: collision with root package name */
    private Bitmap f47621g;

    /* renamed from: h  reason: collision with root package name */
    private String f47622h;

    /* compiled from: DialogExit.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d0.this.f47619e.a();
        }
    }

    /* compiled from: DialogExit.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d0.this.f47617c.a();
        }
    }

    /* compiled from: DialogExit.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d0.this.f47618d.a();
        }
    }

    /* compiled from: DialogExit.java */
    /* loaded from: classes3.dex */
    public interface d {
        void a();
    }

    /* compiled from: DialogExit.java */
    /* loaded from: classes3.dex */
    public interface e {
        void a();
    }

    /* compiled from: DialogExit.java */
    /* loaded from: classes3.dex */
    public interface f {
        void a();
    }

    protected d0(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f47620f = "";
    }

    public void d(String str) {
        this.f47622h = str;
    }

    public void e(d dVar) {
        this.f47618d = dVar;
    }

    public void f(e eVar) {
        this.f47619e = eVar;
    }

    public void g(f fVar) {
        this.f47617c = fVar;
    }

    public void h(Bitmap bitmap) {
        this.f47621g = bitmap;
    }

    public void i(String str) {
        this.f47620f = str;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_exitlayout);
        ImageView imageView = (ImageView) findViewById(R.id.dialog_title_image);
        this.f47616b = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        Bitmap bitmap = this.f47621g;
        if (bitmap != null) {
            this.f47616b.setImageBitmap(bitmap);
        }
        Button button = (Button) findViewById(R.id.dialog_button_keep);
        Button button2 = (Button) findViewById(R.id.dialog_button_close);
        String str = this.f47622h;
        if (str != null && !str.equals("")) {
            button.setText(this.f47622h);
        }
        this.f47616b.setOnClickListener(new a());
        button2.setOnClickListener(new b());
        button.setOnClickListener(new c());
    }

    public d0(Context context) {
        super(context);
        this.f47620f = "";
    }

    public d0(Context context, int i2) {
        super(context, i2);
        this.f47620f = "";
        this.f47615a = context;
    }
}
