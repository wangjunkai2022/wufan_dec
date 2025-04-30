package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.d2;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.enums.Dtype;
import java.util.List;
/* compiled from: ModGameDeleteGamePopupWindow.java */
/* loaded from: classes3.dex */
public class r extends u implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    SimpleDraweeView f47090a;

    /* renamed from: b  reason: collision with root package name */
    SimpleDraweeView f47091b;

    /* renamed from: c  reason: collision with root package name */
    TextView f47092c;

    /* renamed from: d  reason: collision with root package name */
    TextView f47093d;

    /* renamed from: e  reason: collision with root package name */
    TextView f47094e;

    /* renamed from: f  reason: collision with root package name */
    TextView f47095f;

    /* renamed from: g  reason: collision with root package name */
    private String f47096g;

    /* renamed from: h  reason: collision with root package name */
    private String f47097h;

    /* renamed from: i  reason: collision with root package name */
    private ImageView f47098i;

    /* renamed from: j  reason: collision with root package name */
    private ImageView f47099j;

    /* renamed from: k  reason: collision with root package name */
    private View f47100k;

    /* renamed from: l  reason: collision with root package name */
    private View f47101l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f47102m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f47103n;

    /* renamed from: o  reason: collision with root package name */
    a f47104o;

    /* compiled from: ModGameDeleteGamePopupWindow.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a(boolean z3, String str, boolean z4, String str2);
    }

    public r(Context context) {
        super(context);
        init();
    }

    private void d(boolean z3, ImageView imageView) {
        if (z3) {
            imageView.setImageResource(R.drawable.ic_mod_check_selected);
        } else {
            imageView.setImageResource(R.drawable.ic_mod_check_normal);
        }
        if (!this.f47102m && !this.f47103n) {
            this.f47094e.setTextColor(Color.parseColor("#FFB6B6B6"));
        } else {
            this.f47094e.setTextColor(Color.parseColor("#FFFF4E4E"));
        }
    }

    public a a() {
        return this.f47104o;
    }

    public void b(a aVar) {
        this.f47104o = aVar;
    }

    public void c(View view, DownloadTask downloadTask) {
        ModInfoBean modInfoBean;
        List<DownloadTask> C;
        showAtLocation(view, 80, 0, 0);
        if (downloadTask == null || !d2.i(downloadTask.getMod_info()) || (modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class)) == null || (C = g1.f.G().C(modInfoBean.getMain_game_id(), modInfoBean.getMod_game_id())) == null) {
            return;
        }
        for (DownloadTask downloadTask2 : C) {
            if (Dtype.MOD.name().equals(downloadTask2.getFileType())) {
                this.f47097h = downloadTask2.getCrc_link_type_val();
                this.f47100k.setVisibility(0);
                MyImageLoader.h(this.f47091b, downloadTask2.getPortraitURL());
            } else {
                this.f47101l.setVisibility(0);
                this.f47096g = downloadTask2.getCrc_link_type_val();
                MyImageLoader.h(this.f47090a, downloadTask2.getPortraitURL());
            }
        }
    }

    void init() {
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_mod_game_delete_game, (ViewGroup) null);
        this.parentView = inflate;
        setContentView(inflate);
        setWidth(-1);
        setHeight(-2);
        this.f47090a = (SimpleDraweeView) this.parentView.findViewById(R.id.icon);
        this.f47092c = (TextView) this.parentView.findViewById(R.id.name);
        this.f47091b = (SimpleDraweeView) this.parentView.findViewById(R.id.icon_mod);
        this.f47093d = (TextView) this.parentView.findViewById(R.id.name_mod);
        this.f47098i = (ImageView) this.parentView.findViewById(R.id.iv_mod_check);
        this.f47099j = (ImageView) this.parentView.findViewById(R.id.iv_stand_check);
        this.f47100k = this.parentView.findViewById(R.id.rl_mod);
        this.f47101l = this.parentView.findViewById(R.id.rl_stand);
        this.f47094e = (TextView) this.parentView.findViewById(R.id.delete);
        this.f47095f = (TextView) this.parentView.findViewById(R.id.cancel);
        this.f47094e.setOnClickListener(this);
        this.f47095f.setOnClickListener(this);
        this.f47100k.setOnClickListener(this);
        this.f47101l.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.delete) {
            boolean z3 = this.f47102m;
            if (z3 || this.f47103n) {
                a aVar = this.f47104o;
                if (aVar != null) {
                    aVar.a(z3, this.f47097h, this.f47103n, this.f47096g);
                }
                dismiss();
            }
        } else if (id == R.id.cancel) {
            dismiss();
        } else if (id == R.id.rl_mod) {
            boolean z4 = !this.f47102m;
            this.f47102m = z4;
            d(z4, this.f47098i);
        } else if (id == R.id.rl_stand) {
            boolean z5 = !this.f47103n;
            this.f47103n = z5;
            d(z5, this.f47099j);
        }
    }
}
