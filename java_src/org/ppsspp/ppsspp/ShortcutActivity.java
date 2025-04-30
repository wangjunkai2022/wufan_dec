package org.ppsspp.ppsspp;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import com.papa91.arc.util.SDCardUtil;
import java.io.File;
import org.ppsspp.ppsspp.h;
/* loaded from: classes5.dex */
public class ShortcutActivity extends Activity {

    /* renamed from: b  reason: collision with root package name */
    private static final String f73831b = "PPSSPP";

    /* renamed from: a  reason: collision with root package name */
    private h.c f73832a = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            AlertDialog.Builder builder = new AlertDialog.Builder(ShortcutActivity.this);
            builder.setMessage(ShortcutActivity.this.getResources().getString(R.string.bad_disc_message));
            builder.setTitle(ShortcutActivity.this.getResources().getString(R.string.bad_disc_title));
            builder.create().show();
            Looper.loop();
        }
    }

    /* loaded from: classes5.dex */
    class b implements h.c {
        b() {
        }

        @Override // org.ppsspp.ppsspp.h.c
        public void a(File file) {
            ShortcutActivity.this.b(file.getAbsolutePath());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        Intent intent = new Intent(this, PpssppActivity.class);
        Uri fromFile = Uri.fromFile(new File(str));
        StringBuilder sb = new StringBuilder();
        sb.append("Shortcut URI: ");
        sb.append(fromFile.toString());
        intent.setData(fromFile);
        intent.putExtra(PpssppActivity.SHORTCUT_EXTRA_KEY, str);
        PpssppActivity.CheckABIAndLoadLibrary();
        String queryGameName = queryGameName(str);
        if (queryGameName.equals("")) {
            c();
            return;
        }
        Intent intent2 = new Intent();
        intent2.putExtra("android.intent.extra.shortcut.INTENT", intent);
        intent2.putExtra("android.intent.extra.shortcut.NAME", queryGameName);
        intent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(this, R.drawable.ic_launcher));
        setResult(-1, intent2);
        finish();
    }

    private void c() {
        new a().start();
        try {
            Thread.sleep(3000L);
        } catch (InterruptedException e4) {
            e4.printStackTrace();
        }
        System.exit(-1);
    }

    public static native String queryGameName(String str);

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        new h(this, new File(SDCardUtil.getExternalStorageDirectory(this)), this.f73832a).g();
    }
}
