package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
/* compiled from: CheckGBAPlugDialog.java */
/* loaded from: classes3.dex */
public class s extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private d f47935a;

    /* renamed from: b  reason: collision with root package name */
    private Context f47936b;

    /* renamed from: c  reason: collision with root package name */
    private String f47937c;

    /* compiled from: CheckGBAPlugDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            s.this.f47935a.a(view.getId());
        }
    }

    /* compiled from: CheckGBAPlugDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            s.this.f47935a.a(view.getId());
        }
    }

    /* compiled from: CheckGBAPlugDialog.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(8);
            intentDateBean.setLink_type_val("79707");
            IntentUtil.getInstance().intentActivity(s.this.f47936b, intentDateBean);
        }
    }

    /* compiled from: CheckGBAPlugDialog.java */
    /* loaded from: classes3.dex */
    public interface d {
        void a(int i2);
    }

    public s(Context context) {
        super(context);
        this.f47937c = "请选择启动插件";
        this.f47936b = context;
    }

    public void c(d dVar) {
        this.f47935a = dVar;
    }

    public void d(String str) {
        this.f47937c = str;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.gbaplug_choice_start_dialog_layout);
        ((LinearLayout) findViewById(R.id.newGBAOlug)).setOnClickListener(new a());
        ((LinearLayout) findViewById(R.id.oldGBAPlug)).setOnClickListener(new b());
        ((LinearLayout) findViewById(R.id.why)).setOnClickListener(new c());
        ((TextView) findViewById(R.id.titleText)).setText(this.f47937c);
    }

    public s(Context context, int i2) {
        super(context, i2);
        this.f47937c = "请选择启动插件";
        this.f47936b = context;
    }

    protected s(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f47937c = "请选择启动插件";
        this.f47936b = context;
    }
}
