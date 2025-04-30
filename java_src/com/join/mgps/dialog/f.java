package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.i2;
import com.join.mgps.dto.VersionDto;
import com.join.mgps.service.UpdateService_;
import java.io.File;
/* compiled from: AppUpdateDialog.java */
/* loaded from: classes3.dex */
public class f extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    Context f47652a;

    /* renamed from: b  reason: collision with root package name */
    TextView f47653b;

    /* renamed from: c  reason: collision with root package name */
    WebView f47654c;

    /* renamed from: d  reason: collision with root package name */
    VersionDto f47655d;

    /* renamed from: e  reason: collision with root package name */
    boolean f47656e;

    /* renamed from: f  reason: collision with root package name */
    boolean f47657f;

    /* renamed from: g  reason: collision with root package name */
    private long f47658g;

    /* compiled from: AppUpdateDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f.this.dismiss();
        }
    }

    /* compiled from: AppUpdateDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f.this.dismiss();
            f fVar = f.this;
            if (fVar.f47657f) {
                fVar.a(new File(f.this.f47655d.getFilepath()), f.this.f47652a);
            } else {
                ((UpdateService_.a) UpdateService_.p(fVar.f47652a).extra("url", f.this.f47655d.getAndroidUrl())).a();
            }
        }
    }

    /* compiled from: AppUpdateDialog.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ContextCompat.checkSelfPermission(f.this.f47652a, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                UtilsMy.c2(f.this.f47652a, "android.permission.WRITE_EXTERNAL_STORAGE");
            }
            f fVar = f.this;
            if (fVar.f47657f) {
                fVar.a(new File(f.this.f47655d.getFilepath()), f.this.f47652a);
            } else {
                ((UpdateService_.a) UpdateService_.p(fVar.f47652a).extra("url", f.this.f47655d.getAndroidUrl())).a();
            }
            f fVar2 = f.this;
            if (!fVar2.f47656e) {
                fVar2.dismiss();
            }
            i2.a(f.this.f47652a).b("更新包开始下载");
        }
    }

    /* compiled from: AppUpdateDialog.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f.this.dismiss();
        }
    }

    public f(Context context, int i2, VersionDto versionDto, boolean z3) {
        super(context, R.style.Dialog_Fullscreen);
        this.f47657f = false;
        this.f47658g = 0L;
        this.f47652a = context;
        this.f47655d = versionDto;
        this.f47656e = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(File file, Context context) {
        com.join.android.app.common.utils.a.g0(context).x(context, file);
    }

    public void c(String str) {
        this.f47653b.setText(str);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() != 1) {
            if (this.f47656e) {
                if (System.currentTimeMillis() - this.f47658g > 2000) {
                    Toast.makeText(this.f47652a, "再按一次退出程序", 0).show();
                    this.f47658g = System.currentTimeMillis();
                    show();
                    return true;
                }
                ((Activity) this.f47652a).finish();
                System.exit(0);
                return true;
            }
            dismiss();
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        requestWindowFeature(-1);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View inflate = LayoutInflater.from(this.f47652a).inflate(R.layout.dialog_app_update, (ViewGroup) null);
        this.f47654c = (WebView) inflate.findViewById(R.id.info);
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R.id.oldVersion);
        RelativeLayout relativeLayout2 = (RelativeLayout) inflate.findViewById(R.id.newVersion);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) inflate.findViewById(R.id.newUpdateImage);
        Button button = (Button) inflate.findViewById(R.id.newClosed);
        if (this.f47655d.getTpl_type() == 2) {
            relativeLayout.setVisibility(8);
            relativeLayout2.setVisibility(0);
            button.setOnClickListener(new a());
            if (this.f47656e) {
                button.setVisibility(8);
            } else {
                button.setVisibility(0);
                setCancelable(true);
            }
            MyImageLoader.h(simpleDraweeView, this.f47655d.getTow_tpl_back_ground_pic());
            simpleDraweeView.setOnClickListener(new b());
        } else {
            relativeLayout.setVisibility(0);
            relativeLayout2.setVisibility(8);
        }
        this.f47654c.loadDataWithBaseURL(null, this.f47655d.getInfo(), "text/html", "utf-8", null);
        if (this.f47656e) {
            inflate.findViewById(R.id.cancel).setVisibility(8);
        } else {
            inflate.findViewById(R.id.cancel).setVisibility(0);
        }
        if (this.f47657f) {
            inflate.findViewById(R.id.cancel).setVisibility(8);
            ((TextView) inflate.findViewById(R.id.installNotice)).setVisibility(0);
            ((TextView) inflate.findViewById(R.id.updateNow)).setText("免流量安装");
        }
        inflate.findViewById(R.id.updateNow).setOnClickListener(new c());
        inflate.findViewById(R.id.cancel).setOnClickListener(new d());
        setContentView(inflate);
    }

    public f(Context context, int i2, VersionDto versionDto) {
        super(context, R.style.Dialog_Fullscreen);
        this.f47657f = false;
        this.f47658g = 0L;
        this.f47652a = context;
        this.f47655d = versionDto;
        this.f47657f = true;
    }

    public f(Context context) {
        super(context, R.style.Dialog_Fullscreen);
        this.f47657f = false;
        this.f47658g = 0L;
        this.f47652a = context;
    }
}
