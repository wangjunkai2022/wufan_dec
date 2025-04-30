package com.join.mgps.customview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.t1;
/* compiled from: MyGameGameOperatePopupWindow.java */
/* loaded from: classes3.dex */
public class a0 extends u implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    View f46759a;

    /* renamed from: b  reason: collision with root package name */
    View f46760b;

    /* renamed from: c  reason: collision with root package name */
    View f46761c;

    /* renamed from: d  reason: collision with root package name */
    View f46762d;

    /* renamed from: e  reason: collision with root package name */
    View f46763e;

    /* renamed from: f  reason: collision with root package name */
    View f46764f;

    /* renamed from: g  reason: collision with root package name */
    View f46765g;

    /* renamed from: h  reason: collision with root package name */
    private String f46766h;

    /* renamed from: i  reason: collision with root package name */
    a f46767i;

    /* compiled from: MyGameGameOperatePopupWindow.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a(String str);

        void b(String str);

        void c(String str);

        void d(String str);
    }

    public a0(Context context) {
        super(context);
        init();
    }

    public a a() {
        return this.f46767i;
    }

    public void b(a aVar) {
        this.f46767i = aVar;
    }

    public void c(View view, String str) {
        showAtLocation(view, 80, 0, 0);
        this.f46766h = str;
        DownloadTask B = g1.f.G().B(str);
        if (B == null) {
            return;
        }
        if (B.getStatus() == 5 || B.getStatus() == 9) {
            DownloadTask B2 = g1.f.G().B(B.getCrc_link_type_val());
            if ((B2 == null || !B2.getUrl().endsWith(".apk")) && !"androidobb".equals(B2.getRomType()) && !"46".equals(B2.getRomType())) {
                this.f46763e.setVisibility(0);
                this.f46762d.setVisibility(0);
            } else {
                String url = B2.getUrl();
                url.substring(url.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1).replace(".apk", "").toCharArray();
                String packageName = B2.getPackageName();
                if (!d2.h(packageName) && com.join.mgps.Util.g.d(this.mContext, packageName) && !B.getTips().contains("网游")) {
                    this.f46763e.setVisibility(0);
                    this.f46762d.setVisibility(0);
                } else if (APKUtils.E(B) && !t1.c(this.mContext, B.getRef_crc_sign_id())) {
                    this.f46763e.setVisibility(0);
                    this.f46762d.setVisibility(0);
                } else {
                    this.f46763e.setVisibility(8);
                    this.f46762d.setVisibility(8);
                }
            }
            if (APKUtils.I(B)) {
                if (com.join.android.app.common.utils.a.g0(this.mContext).d(this.mContext, B.getPackageName(), APKUtils.DEVICE_TYPE.REAL)) {
                    this.f46765g.setVisibility(8);
                    this.f46764f.setVisibility(8);
                } else {
                    this.f46765g.setVisibility(0);
                    this.f46764f.setVisibility(0);
                }
                this.f46764f.setOnClickListener(this);
            }
        }
    }

    void init() {
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_my_game_operate, (ViewGroup) null);
        this.parentView = inflate;
        setContentView(inflate);
        setWidth(-1);
        setHeight(-2);
        this.f46759a = this.parentView.findViewById(R.id.detail);
        this.f46760b = this.parentView.findViewById(R.id.delete);
        this.f46761c = this.parentView.findViewById(R.id.cancel);
        this.f46763e = this.parentView.findViewById(R.id.addShortcut);
        this.f46762d = this.parentView.findViewById(R.id.line);
        this.f46764f = this.parentView.findViewById(R.id.tv_stand_mode);
        this.f46765g = this.parentView.findViewById(R.id.v_line_1);
        this.f46759a.setOnClickListener(this);
        this.f46760b.setOnClickListener(this);
        this.f46761c.setOnClickListener(this);
        this.f46763e.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.detail) {
            a aVar = this.f46767i;
            if (aVar != null) {
                aVar.a(this.f46766h);
            }
            dismiss();
        } else if (id == R.id.delete) {
            a aVar2 = this.f46767i;
            if (aVar2 != null) {
                aVar2.c(this.f46766h);
            }
            dismiss();
        } else if (id == R.id.cancel) {
            dismiss();
        } else if (id == R.id.addShortcut) {
            a aVar3 = this.f46767i;
            if (aVar3 != null) {
                aVar3.b(this.f46766h);
            }
            dismiss();
        } else if (id == R.id.tv_stand_mode) {
            dismiss();
            a aVar4 = this.f46767i;
            if (aVar4 != null) {
                aVar4.d(this.f46766h);
            }
        }
    }
}
