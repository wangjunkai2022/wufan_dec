package com.join.android.app.common.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import m.framework.ui.widget.asyncview.AsyncImageView;
/* compiled from: AddShortcutDialog.java */
/* loaded from: classes.dex */
public class c extends AlertDialog {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f16906a;

    /* renamed from: b  reason: collision with root package name */
    private SimpleDraweeView f16907b;

    /* renamed from: c  reason: collision with root package name */
    private SimpleDraweeView f16908c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f16909d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f16910e;

    /* renamed from: f  reason: collision with root package name */
    private String f16911f;

    /* renamed from: g  reason: collision with root package name */
    private String f16912g;

    /* renamed from: h  reason: collision with root package name */
    private String f16913h;

    /* renamed from: i  reason: collision with root package name */
    private Bitmap f16914i;

    /* renamed from: j  reason: collision with root package name */
    private DownloadTask f16915j;

    /* renamed from: k  reason: collision with root package name */
    private Context f16916k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f16917l;

    public c(@NonNull Context context, String str, String str2, String str3, DownloadTask downloadTask) {
        super(context, R.style.MyDialog);
        this.f16917l = true;
        this.f16916k = context;
        this.f16911f = str;
        this.f16912g = str2;
        this.f16913h = str3;
        this.f16915j = downloadTask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.f16915j.setNotCheckAddShortcut(true);
        UtilsMy.d3(this.f16916k, this.f16915j, 0);
        this.f16915j.setNotCheckAddShortcut(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(View view) {
        dismiss();
        if (this.f16917l) {
            new Handler().postDelayed(new Runnable() { // from class: com.join.android.app.common.dialog.b
                @Override // java.lang.Runnable
                public final void run() {
                    c.this.d();
                }
            }, 200L);
        }
    }

    private Bitmap f(String str) {
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

    public Bitmap c() {
        if (this.f16914i == null) {
            this.f16914i = BitmapFactory.decodeResource(this.f16916k.getResources(), R.drawable.icon);
        }
        return this.f16914i;
    }

    public void g(View.OnClickListener onClickListener) {
        this.f16910e.setOnClickListener(onClickListener);
    }

    public void h(View.OnClickListener onClickListener) {
        this.f16909d.setOnClickListener(onClickListener);
    }

    public void i(boolean z3) {
        this.f16917l = z3;
        show();
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
        Window window = getWindow();
        window.setBackgroundDrawableResource(AsyncImageView.DEFAULT_TRANSPARENT);
        window.setGravity(17);
        setContentView(R.layout.dialog_add_shortcut_view);
        this.f16906a = (ImageView) findViewById(R.id.shortcutCloseIv);
        this.f16907b = (SimpleDraweeView) findViewById(R.id.shortcutIconOneIv);
        this.f16908c = (SimpleDraweeView) findViewById(R.id.shortcutIconTwoIv);
        this.f16909d = (TextView) findViewById(R.id.shortcutCreateTv);
        this.f16910e = (TextView) findViewById(R.id.shortcutNoMoreReminderTv);
        MobclickAgent.onEvent(this.f16916k, "showIconAddModal");
        Bitmap m4 = ImageLoader.q().m(this.f16913h);
        this.f16914i = m4;
        if (m4 == null) {
            this.f16914i = f(this.f16913h);
        }
        if (!d2.h(this.f16913h)) {
            this.f16907b.setImageURI(this.f16913h);
            this.f16908c.setImageURI(this.f16913h);
        }
        this.f16906a.setOnClickListener(new View.OnClickListener() { // from class: com.join.android.app.common.dialog.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.this.e(view);
            }
        });
    }
}
