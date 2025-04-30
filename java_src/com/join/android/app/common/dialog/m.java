package com.join.android.app.common.dialog;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.t1;
import com.join.mgps.adapter.r;
import com.join.mgps.customview.t;
import com.join.mgps.enums.Dtype;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import m.framework.ui.widget.asyncview.AsyncImageView;
/* compiled from: ShowBottomDialog.java */
/* loaded from: classes.dex */
public class m extends AlertDialog implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f16970a;

    /* renamed from: b  reason: collision with root package name */
    private DownloadTask f16971b;

    /* renamed from: c  reason: collision with root package name */
    private r f16972c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f16973d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f16974e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f16975f;

    /* compiled from: ShowBottomDialog.java */
    /* loaded from: classes.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Dialog f16976a;

        a(Dialog dialog) {
            this.f16976a = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f16976a.dismiss();
        }
    }

    /* compiled from: ShowBottomDialog.java */
    /* loaded from: classes.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f16978a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Dialog f16979b;

        b(boolean z3, Dialog dialog) {
            this.f16978a = z3;
            this.f16979b = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f16978a) {
                if (com.join.android.app.common.utils.a.g0(m.this.f16970a).c(m.this.f16970a, m.this.f16971b.getPackageName())) {
                    com.join.android.app.common.utils.a.g0(m.this.f16970a).c0(m.this.f16970a, m.this.f16971b.getPackageName());
                } else {
                    m.this.f16972c.a(m.this.f16971b);
                    UtilsMy.C3(m.this.f16971b);
                    m.this.f16972c.notifyDataSetChanged();
                }
            } else {
                m.this.f16972c.a(m.this.f16971b);
                UtilsMy.C3(m.this.f16971b);
                m.this.f16972c.notifyDataSetChanged();
            }
            this.f16979b.dismiss();
        }
    }

    public m(@NonNull Context context, DownloadTask downloadTask, r rVar) {
        super(context);
        this.f16970a = context;
        this.f16971b = downloadTask;
        this.f16972c = rVar;
    }

    private Bitmap d(String str) {
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

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        dismiss();
        int id = view.getId();
        if (id == R.id.showAddShortcutTv) {
            Bitmap m4 = ImageLoader.q().m(this.f16971b.getPortraitURL());
            if (m4 == null) {
                m4 = d(this.f16971b.getPortraitURL());
            }
            t1.a(this.f16970a, this.f16971b.getShowName(), this.f16971b.getCrc_link_type_val(), m4);
        } else if (id != R.id.showDeleteGameTv) {
            if (id != R.id.showGameDetailTv) {
                return;
            }
            if (this.f16971b.getFileType() == null || !this.f16971b.getFileType().equals(Dtype.chajian.name())) {
                this.f16971b.set_from_type(127);
                IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(this.f16970a, this.f16971b);
            }
        } else {
            t tVar = new t(this.f16970a, R.style.MyDialog);
            tVar.setContentView(R.layout.delete_center_dialog);
            Button button = (Button) tVar.findViewById(R.id.dialog_button_ok);
            TextView textView = (TextView) tVar.findViewById(R.id.dialog_content);
            ((TextView) tVar.findViewById(R.id.tip_title)).setText("删除游戏");
            boolean z3 = false;
            String fileType = this.f16971b.getFileType();
            if (fileType != null && fileType.equals(Dtype.android.name())) {
                if (com.join.android.app.common.utils.a.g0(this.f16970a).c(this.f16970a, this.f16971b.getPackageName())) {
                    textView.setText("你确定要卸载该游戏？");
                    button.setText("卸载");
                } else {
                    textView.setText("你确定要删除该游戏？");
                    button.setText("删除");
                }
                z3 = true;
            } else {
                textView.setText("你确定要删除该游戏及文件？");
                button.setText("删除");
            }
            ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setOnClickListener(new a(tVar));
            button.setOnClickListener(new b(z3, tVar));
            tVar.show();
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(true);
        Window window = getWindow();
        window.setWindowAnimations(R.style.PopupAnimation_100);
        window.setBackgroundDrawableResource(AsyncImageView.DEFAULT_TRANSPARENT);
        window.setGravity(80);
        setContentView(R.layout.dialog_show_bottom_view);
        MobclickAgent.onEvent(this.f16970a, "showMenuMyGame");
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -2;
        window.setAttributes(attributes);
        this.f16973d = (TextView) findViewById(R.id.showAddShortcutTv);
        this.f16974e = (TextView) findViewById(R.id.showGameDetailTv);
        this.f16975f = (TextView) findViewById(R.id.showDeleteGameTv);
        DownloadTask B = g1.f.G().B(this.f16971b.getCrc_link_type_val());
        if ((B != null && B.getUrl().endsWith(".apk")) || "androidobb".equals(B.getRomType()) || "46".equals(B.getRomType())) {
            String url = B.getUrl();
            url.substring(url.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1).replace(".apk", "").toCharArray();
            String packageName = B.getPackageName();
            if (!d2.h(packageName) && com.join.mgps.Util.g.d(this.f16970a, packageName) && !this.f16971b.getTips().contains("网游")) {
                this.f16973d.setVisibility(0);
            } else {
                this.f16973d.setVisibility(8);
            }
        }
        this.f16973d.setOnClickListener(this);
        this.f16974e.setOnClickListener(this);
        this.f16975f.setOnClickListener(this);
    }
}
