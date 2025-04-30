package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.MApplication;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.SingleGameAdBean;
import com.join.mgps.dto.SingleGameRunAdTextCfgBean;
import com.join.mgps.pref.PrefDef_;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import m.framework.ui.widget.asyncview.AsyncImageView;
/* compiled from: AdVipMainDialog.java */
/* loaded from: classes3.dex */
public class c extends AlertDialog {

    /* renamed from: a  reason: collision with root package name */
    private LinearLayout f47560a;

    /* renamed from: b  reason: collision with root package name */
    private SimpleDraweeView f47561b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f47562c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f47563d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f47564e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f47565f;

    /* renamed from: g  reason: collision with root package name */
    private Context f47566g;

    /* renamed from: h  reason: collision with root package name */
    private String f47567h;

    /* renamed from: i  reason: collision with root package name */
    private String f47568i;

    /* renamed from: j  reason: collision with root package name */
    private String f47569j;

    /* renamed from: k  reason: collision with root package name */
    private String f47570k;

    /* renamed from: l  reason: collision with root package name */
    private String f47571l;

    /* renamed from: m  reason: collision with root package name */
    private String f47572m;

    /* renamed from: n  reason: collision with root package name */
    private String f47573n;

    /* renamed from: o  reason: collision with root package name */
    private PrefDef_ f47574o;

    /* compiled from: AdVipMainDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f47575a;

        a(DownloadTask downloadTask) {
            this.f47575a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String d4 = c.this.f47574o.singleGameShowDialog().d();
            if (com.join.mgps.Util.d2.h(d4)) {
                HashMap hashMap = new HashMap();
                hashMap.put(c.this.f47567h, new SingleGameAdBean(MApplication.f9234v0, System.currentTimeMillis()));
                c.this.f47574o.singleGameShowDialog().g(JsonMapper.getInstance().toJson(hashMap));
            } else {
                new HashMap();
                Map map = (Map) JsonMapper.getInstance().fromJson(d4, JsonMapper.getInstance().getTypeFactory().constructParametricType(HashMap.class, String.class, SingleGameAdBean.class));
                map.put(c.this.f47567h, new SingleGameAdBean(MApplication.f9234v0, System.currentTimeMillis()));
                c.this.f47574o.singleGameShowDialog().g(JsonMapper.getInstance().toJson(map));
            }
            c.this.dismiss();
            Bitmap m4 = ImageLoader.q().m(this.f47575a.getPortraitURL());
            if (m4 == null) {
                m4 = c.this.g(this.f47575a.getPortraitURL());
            }
            com.join.mgps.Util.t1.a(c.this.f47566g, this.f47575a.getShowName(), this.f47575a.getCrc_link_type_val(), m4);
        }
    }

    public c(@NonNull Context context) {
        super(context);
        this.f47566g = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap g(String str) {
        a0.c cVar = (a0.c) Fresco.getImagePipelineFactory().l().c(new com.facebook.cache.common.i(Uri.parse(str).toString()));
        if (cVar == null) {
            return null;
        }
        File c4 = cVar.c();
        if (c4.exists()) {
            return BitmapFactory.decodeFile(c4.getPath());
        }
        return null;
    }

    public String e() {
        return this.f47572m;
    }

    public String f() {
        return this.f47573n;
    }

    public void h(View.OnClickListener onClickListener) {
        this.f47564e.setOnClickListener(onClickListener);
    }

    public void i(View.OnClickListener onClickListener) {
        this.f47561b.setOnClickListener(onClickListener);
    }

    public void j(View.OnClickListener onClickListener) {
        this.f47565f.setOnClickListener(onClickListener);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
        Window window = getWindow();
        window.setBackgroundDrawableResource(AsyncImageView.DEFAULT_TRANSPARENT);
        window.setGravity(17);
        Display defaultDisplay = window.getWindowManager().getDefaultDisplay();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = defaultDisplay.getWidth();
        attributes.height = defaultDisplay.getHeight();
        window.setAttributes(attributes);
        setContentView(R.layout.dialog_vip_app_vertical_view);
        this.f47560a = (LinearLayout) findViewById(R.id.rootLl);
        this.f47561b = (SimpleDraweeView) findViewById(R.id.mainDialogAdImg);
        this.f47562c = (TextView) findViewById(R.id.mainDialogContenTv);
        this.f47563d = (TextView) findViewById(R.id.mainDialogTopTv);
        this.f47564e = (TextView) findViewById(R.id.mainDialogCancelTv);
        this.f47565f = (TextView) findViewById(R.id.mainDialogOkIv);
        SingleGameRunAdTextCfgBean singleGameRunAdTextCfgBean = MApplication.f9230t0;
        if (singleGameRunAdTextCfgBean != null) {
            this.f47573n = singleGameRunAdTextCfgBean.getUrl();
            this.f47568i = MApplication.f9230t0.getPic();
            this.f47569j = MApplication.f9230t0.getTitle();
            this.f47570k = MApplication.f9230t0.getBtn_l();
            this.f47571l = MApplication.f9230t0.getBtn_r();
            this.f47572m = MApplication.f9230t0.getBtn_url();
        }
        if (!com.join.mgps.Util.d2.h(this.f47568i)) {
            this.f47561b.setImageURI(this.f47568i);
        }
        if (!com.join.mgps.Util.d2.h(this.f47569j)) {
            this.f47562c.setText(this.f47569j);
        }
        if (!com.join.mgps.Util.d2.h(this.f47570k)) {
            this.f47564e.setText(this.f47570k);
        }
        if (!com.join.mgps.Util.d2.h(this.f47571l)) {
            this.f47565f.setText(this.f47571l);
        }
        if (com.join.mgps.Util.d2.h(this.f47567h)) {
            return;
        }
        DownloadTask B = g1.f.G().B(this.f47567h);
        if (B.getUrl().endsWith(".apk") || "androidobb".equals(B.getRomType()) || "46".equals(B.getRomType())) {
            String url = B.getUrl();
            char[] charArray = url.substring(url.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1).replace(".apk", "").toCharArray();
            String.valueOf(charArray[charArray.length - 1]);
            String packageName = B.getPackageName();
            if (com.join.mgps.Util.t1.c(this.f47566g, B.getCrc_link_type_val())) {
                this.f47563d.setVisibility(8);
            } else if (!com.join.mgps.Util.d2.h(packageName) && com.join.mgps.Util.g.d(this.f47566g, packageName)) {
                this.f47563d.setVisibility(0);
            } else {
                this.f47563d.setVisibility(8);
            }
        }
        this.f47563d.setOnClickListener(new a(B));
    }

    public c(@NonNull Context context, String str) {
        super(context);
        this.f47566g = context;
        this.f47567h = str;
        this.f47574o = new PrefDef_(context);
    }
}
