package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.pref.PrefDef_;
import java.io.File;
import java.io.IOException;
/* loaded from: classes3.dex */
public class CopyDialogActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    String f29422a;

    /* renamed from: b  reason: collision with root package name */
    DownloadTask f29423b;

    /* renamed from: c  reason: collision with root package name */
    Context f29424c;

    /* renamed from: d  reason: collision with root package name */
    Handler f29425d = new Handler(new a());

    /* loaded from: classes3.dex */
    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            CopyDialogActivity copyDialogActivity = CopyDialogActivity.this;
            UtilsMy.c3(copyDialogActivity, copyDialogActivity.f29423b);
            CopyDialogActivity.this.finish();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends Thread {
        b() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            File file = new File(CopyDialogActivity.this.f29423b.getGameZipPath());
            String h4 = com.join.mgps.pref.h.n(CopyDialogActivity.this.f29424c).h();
            if (com.join.mgps.Util.d2.h(h4)) {
                UtilsMy.i2(new PrefDef_(CopyDialogActivity.this.f29424c), CopyDialogActivity.this.f29424c);
                h4 = com.join.mgps.pref.h.n(CopyDialogActivity.this.f29424c).h();
            }
            String str = h4 + CopyDialogActivity.this.f29423b.getPlugin_num() + File.separator + file.getParentFile().getName();
            if (str.contains(file.getAbsolutePath())) {
                CopyDialogActivity.this.f29425d.sendEmptyMessage(1);
                return;
            }
            try {
                File file2 = new File(str);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            try {
                com.join.mgps.Util.f0.a(file.getParent(), str);
            } catch (IOException e5) {
                e5.printStackTrace();
            }
            CopyDialogActivity.this.f29423b.setGameZipPath(str + File.separator + file.getName());
            g1.f.G().update(CopyDialogActivity.this.f29423b);
            try {
                com.join.mgps.Util.f0.A(".downloadTask", str, JsonMapper.getInstance().toJson(CopyDialogActivity.this.f29423b));
            } catch (IOException e6) {
                e6.printStackTrace();
            }
            CopyDialogActivity.this.f29425d.sendEmptyMessage(1);
        }
    }

    private void a() {
        new b().start();
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.loding_layout);
        this.f29422a = getIntent().getStringExtra("gameid");
        this.f29424c = this;
        ((TextView) findViewById(R.id.textView)).setText("正在拷贝中请稍后");
        DownloadTask B = g1.f.G().B(this.f29422a);
        this.f29423b = B;
        if (B == null) {
            finish();
        } else {
            a();
        }
    }
}
