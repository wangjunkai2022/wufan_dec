package com.join.mgps.customview;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.ModGameIndexActivity_;
/* compiled from: ModStandInstallPopupWindow.java */
/* loaded from: classes3.dex */
public class s extends u implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    SimpleDraweeView f47106a;

    /* renamed from: b  reason: collision with root package name */
    TextView f47107b;

    /* renamed from: c  reason: collision with root package name */
    View f47108c;

    /* renamed from: d  reason: collision with root package name */
    View f47109d;

    /* renamed from: e  reason: collision with root package name */
    private String f47110e;

    /* renamed from: f  reason: collision with root package name */
    DownloadTask f47111f;

    /* renamed from: g  reason: collision with root package name */
    private String f47112g;

    public s(Context context) {
        super(context);
        init();
    }

    private void c() {
        if (APKUtils.I(this.f47111f)) {
            APKUtils.s(this.mContext, this.f47111f);
        } else if (com.join.android.app.common.utils.j.w() instanceof ModGameIndexActivity_) {
            Intent intent = new Intent(f1.a.f65499r0);
            intent.putExtra("from", "modStdDialog");
            this.mContext.sendBroadcast(intent);
        } else {
            ModGameIndexActivity_.H2(this.mContext).a("modStdDialog").b(this.f47110e).c(this.f47112g).start();
        }
    }

    public void a(View view, String str) {
        b(view, str, str);
    }

    public void b(View view, String str, String str2) {
        this.f47110e = str;
        this.f47112g = str2;
        showAtLocation(view, 80, 0, 0);
        this.f47112g = str;
        DownloadTask B = g1.f.G().B(str);
        this.f47111f = B;
        if (B == null) {
            return;
        }
        MyImageLoader.h(this.f47106a, B.getPortraitURL());
        this.f47107b.setText("是否重新安装标准模式至本地？");
    }

    void init() {
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_mod_stand_install, (ViewGroup) null);
        this.parentView = inflate;
        setContentView(inflate);
        setWidth(-1);
        setHeight(-2);
        this.f47106a = (SimpleDraweeView) this.parentView.findViewById(R.id.icon);
        this.f47107b = (TextView) this.parentView.findViewById(R.id.name);
        this.f47108c = this.parentView.findViewById(R.id.install);
        this.f47109d = this.parentView.findViewById(R.id.cancel);
        this.f47108c.setOnClickListener(this);
        this.f47109d.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.install) {
            dismiss();
            c();
        } else if (id == R.id.cancel) {
            dismiss();
        }
    }
}
