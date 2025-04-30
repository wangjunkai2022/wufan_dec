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
/* compiled from: NoticeDialog.java */
/* loaded from: classes3.dex */
public class n1 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private Context f47798a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f47799b;

    /* renamed from: c  reason: collision with root package name */
    private f f47800c;

    /* renamed from: d  reason: collision with root package name */
    private d f47801d;

    /* renamed from: e  reason: collision with root package name */
    private e f47802e;

    /* renamed from: f  reason: collision with root package name */
    private String f47803f;

    /* renamed from: g  reason: collision with root package name */
    private Bitmap f47804g;

    /* renamed from: h  reason: collision with root package name */
    private String f47805h;

    /* renamed from: i  reason: collision with root package name */
    private String f47806i;

    /* renamed from: j  reason: collision with root package name */
    private TextView f47807j;

    /* compiled from: NoticeDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n1.this.f47802e.a();
        }
    }

    /* compiled from: NoticeDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n1.this.f47800c.a();
        }
    }

    /* compiled from: NoticeDialog.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n1.this.f47801d.a();
        }
    }

    /* compiled from: NoticeDialog.java */
    /* loaded from: classes3.dex */
    public interface d {
        void a();
    }

    /* compiled from: NoticeDialog.java */
    /* loaded from: classes3.dex */
    public interface e {
        void a();
    }

    /* compiled from: NoticeDialog.java */
    /* loaded from: classes3.dex */
    public interface f {
        void a();
    }

    protected n1(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f47803f = "";
    }

    public void d(String str) {
        this.f47805h = str;
    }

    public void e(d dVar) {
        this.f47801d = dVar;
    }

    public void f(e eVar) {
        this.f47802e = eVar;
    }

    public void g(f fVar) {
        this.f47800c = fVar;
    }

    public void h(String str) {
        this.f47806i = str;
    }

    public void i(Bitmap bitmap) {
        this.f47804g = bitmap;
    }

    public void j(String str) {
        this.f47803f = str;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.notice_dialog);
        this.f47799b = (ImageView) findViewById(R.id.dialog_title_image);
        this.f47807j = (TextView) findViewById(R.id.dialog_content);
        this.f47799b.setScaleType(ImageView.ScaleType.CENTER_CROP);
        Bitmap bitmap = this.f47804g;
        if (bitmap != null) {
            this.f47799b.setImageBitmap(bitmap);
        }
        this.f47807j.setText(this.f47806i);
        Button button = (Button) findViewById(R.id.dialog_button_keep);
        Button button2 = (Button) findViewById(R.id.dialog_button_close);
        String str = this.f47805h;
        if (str != null && !str.equals("")) {
            button.setText(this.f47805h);
        }
        this.f47799b.setOnClickListener(new a());
        button2.setOnClickListener(new b());
        button.setOnClickListener(new c());
    }

    public n1(Context context) {
        super(context);
        this.f47803f = "";
    }

    public n1(Context context, int i2) {
        super(context, i2);
        this.f47803f = "";
        this.f47798a = context;
    }
}
