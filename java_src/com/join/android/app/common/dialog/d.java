package com.join.android.app.common.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.papa.sim.statistic.p;
import com.umeng.analytics.MobclickAgent;
import m.framework.ui.widget.asyncview.AsyncImageView;
/* compiled from: AddShortcutResultDialog.java */
/* loaded from: classes.dex */
public class d extends AlertDialog {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f16918a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f16919b;

    /* renamed from: c  reason: collision with root package name */
    private Context f16920c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f16921d;

    /* renamed from: e  reason: collision with root package name */
    private String f16922e;

    /* compiled from: AddShortcutResultDialog.java */
    /* loaded from: classes.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.dismiss();
        }
    }

    /* compiled from: AddShortcutResultDialog.java */
    /* loaded from: classes.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.dismiss();
            if (d.this.f16921d) {
                return;
            }
            d.this.f16921d = true;
            MApplication.f9226r0 = true;
            new com.join.android.app.common.utils.g(d.this.f16920c).n();
            p.l(d.this.f16920c).p("clickAuthButton", "0", AccountUtil_.getInstance_(d.this.f16920c).getUid());
            MobclickAgent.onEvent(d.this.f16920c, "clickAuthButton");
        }
    }

    public d(@NonNull Context context) {
        super(context);
        this.f16921d = false;
        this.f16922e = "0";
        this.f16920c = context;
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
        Window window = getWindow();
        window.setBackgroundDrawableResource(AsyncImageView.DEFAULT_TRANSPARENT);
        window.setGravity(17);
        setContentView(R.layout.dialog_add_shortcut_result_view);
        this.f16918a = (ImageView) findViewById(R.id.shortcutCloseIv);
        this.f16919b = (TextView) findViewById(R.id.shortcutCreateTv);
        MobclickAgent.onEvent(this.f16920c, "showGuideAddIconModal");
        p.l(this.f16920c).p("showGuideAddIconModal", this.f16922e, AccountUtil_.getInstance_(this.f16920c).getUid());
        this.f16918a.setOnClickListener(new a());
        this.f16919b.setOnClickListener(new b());
    }

    public d(@NonNull Context context, String str) {
        super(context);
        this.f16921d = false;
        this.f16922e = "0";
        this.f16920c = context;
        this.f16922e = str;
    }
}
