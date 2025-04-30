package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.i2;
import com.join.mgps.dto.Filepath;
import java.util.List;
/* compiled from: DownloadPathSetDialog.java */
/* loaded from: classes3.dex */
public class g0 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private Context f47687a;

    /* renamed from: b  reason: collision with root package name */
    private String f47688b;

    /* renamed from: c  reason: collision with root package name */
    private String f47689c;

    /* renamed from: d  reason: collision with root package name */
    private Filepath f47690d;

    /* renamed from: e  reason: collision with root package name */
    private Filepath f47691e;

    /* renamed from: f  reason: collision with root package name */
    private d f47692f;

    /* compiled from: DownloadPathSetDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(8);
            intentDateBean.setLink_type_val("12410");
            IntentUtil.getInstance().intentActivity(g0.this.f47687a, intentDateBean);
        }
    }

    /* compiled from: DownloadPathSetDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g0.this.f47692f.b(g0.this.f47690d);
            try {
                if (g0.this.f47690d.getAvailable() < 10485760) {
                    i2.a(g0.this.f47687a).b("存储空间小于10M可能存储空间不足");
                }
                com.join.mgps.pref.h.n(g0.this.f47687a).V(g0.this.f47688b);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            g0.this.dismiss();
        }
    }

    /* compiled from: DownloadPathSetDialog.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g0.this.f47692f.a(g0.this.f47691e);
            if (g0.this.f47691e.getAvailable() < 10485760) {
                i2.a(g0.this.f47687a).b("存储空间小于10M可能存储空间不足");
            }
            com.join.mgps.pref.h.n(g0.this.f47687a).V(g0.this.f47689c);
            g0.this.dismiss();
        }
    }

    /* compiled from: DownloadPathSetDialog.java */
    /* loaded from: classes3.dex */
    public interface d {
        void a(Filepath filepath);

        void b(Filepath filepath);
    }

    public g0(Context context) {
        super(context);
        this.f47688b = "";
        this.f47689c = "";
        this.f47687a = context;
    }

    public void g(d dVar) {
        this.f47692f = dVar;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.download_path_set_dialog_layout);
        CheckBox checkBox = (CheckBox) findViewById(R.id.checkBoxlocal);
        CheckBox checkBox2 = (CheckBox) findViewById(R.id.checkBoxSd);
        TextView textView = (TextView) findViewById(R.id.localpath);
        TextView textView2 = (TextView) findViewById(R.id.localsize);
        TextView textView3 = (TextView) findViewById(R.id.changeSdkard);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.noticelayout);
        TextView textView4 = (TextView) findViewById(R.id.sdpath);
        TextView textView5 = (TextView) findViewById(R.id.sdSize);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.localPathLayout);
        RelativeLayout relativeLayout2 = (RelativeLayout) findViewById(R.id.sdPathLayout);
        relativeLayout2.setVisibility(8);
        String g4 = com.join.mgps.pref.h.n(this.f47687a).g();
        List<Filepath> a4 = com.join.mgps.Util.q1.a(this.f47687a);
        if (a4 != null && a4.size() != 0) {
            for (Filepath filepath : a4) {
                if (filepath.isIslocal()) {
                    this.f47690d = filepath;
                    if (g4.equals(filepath.getPathHome())) {
                        checkBox.setChecked(true);
                        checkBox2.setChecked(false);
                    }
                    textView.setText(filepath.getPathHome());
                    this.f47688b = filepath.getPathHome();
                    textView2.setText("可用:" + UtilsMy.a(filepath.getAvailable()) + "/总" + UtilsMy.a(filepath.getAllsize()));
                } else {
                    this.f47691e = filepath;
                    if (g4.equals(filepath.getPathHome())) {
                        checkBox.setChecked(false);
                        checkBox2.setChecked(true);
                    }
                    relativeLayout2.setVisibility(0);
                    textView4.setText(filepath.getPathHome());
                    this.f47689c = filepath.getPathHome();
                    textView5.setText("可用:" + UtilsMy.a(filepath.getAvailable()) + "/总" + UtilsMy.a(filepath.getAllsize()));
                    if (this.f47689c.contains("/Android/data")) {
                        linearLayout.setVisibility(0);
                    } else {
                        linearLayout.setVisibility(8);
                    }
                }
            }
            linearLayout.setOnClickListener(new a());
            relativeLayout.setOnClickListener(new b());
            relativeLayout2.setOnClickListener(new c());
            return;
        }
        relativeLayout.setVisibility(8);
        linearLayout.setVisibility(0);
        textView3.setText("没有可选下载位置", TextView.BufferType.SPANNABLE);
    }

    public g0(Context context, int i2) {
        super(context, i2);
        this.f47688b = "";
        this.f47689c = "";
        this.f47687a = context;
    }

    protected g0(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f47688b = "";
        this.f47689c = "";
        this.f47687a = context;
    }
}
