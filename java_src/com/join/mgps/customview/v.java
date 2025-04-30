package com.join.mgps.customview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MyGameDeleteGamePopupWindow.java */
/* loaded from: classes3.dex */
public class v extends u implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    SimpleDraweeView f47251a;

    /* renamed from: b  reason: collision with root package name */
    TextView f47252b;

    /* renamed from: c  reason: collision with root package name */
    View f47253c;

    /* renamed from: d  reason: collision with root package name */
    View f47254d;

    /* renamed from: e  reason: collision with root package name */
    private String f47255e;

    /* renamed from: f  reason: collision with root package name */
    a f47256f;

    /* compiled from: MyGameDeleteGamePopupWindow.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a(String str);
    }

    public v(Context context) {
        super(context);
        init();
    }

    public a a() {
        return this.f47256f;
    }

    public void b(a aVar) {
        this.f47256f = aVar;
    }

    public void c(View view, String str) {
        showAtLocation(view, 80, 0, 0);
        this.f47255e = str;
        DownloadTask B = g1.f.G().B(str);
        if (B == null) {
            return;
        }
        MyImageLoader.h(this.f47251a, B.getPortraitURL());
        TextView textView = this.f47252b;
        textView.setText("是否删除“" + B.getShowName() + "”？");
    }

    void init() {
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_my_game_delete_game, (ViewGroup) null);
        this.parentView = inflate;
        setContentView(inflate);
        setWidth(-1);
        setHeight(-2);
        this.f47251a = (SimpleDraweeView) this.parentView.findViewById(R.id.icon);
        this.f47252b = (TextView) this.parentView.findViewById(R.id.name);
        this.f47253c = this.parentView.findViewById(R.id.delete);
        this.f47254d = this.parentView.findViewById(R.id.cancel);
        this.f47253c.setOnClickListener(this);
        this.f47254d.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.delete) {
            if (id == R.id.cancel) {
                dismiss();
                return;
            }
            return;
        }
        a aVar = this.f47256f;
        if (aVar != null) {
            aVar.a(this.f47255e);
        }
        dismiss();
    }
}
