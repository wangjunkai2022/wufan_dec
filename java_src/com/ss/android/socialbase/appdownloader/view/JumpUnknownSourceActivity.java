package com.ss.android.socialbase.appdownloader.view;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import com.ss.android.socialbase.appdownloader.b;
import com.ss.android.socialbase.appdownloader.c;
import com.ss.android.socialbase.appdownloader.c.k;
import com.ss.android.socialbase.appdownloader.c.l;
import com.ss.android.socialbase.appdownloader.d;
import com.ss.android.socialbase.appdownloader.h;
import com.ss.android.socialbase.appdownloader.i;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class JumpUnknownSourceActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private k f57757a;

    /* renamed from: b  reason: collision with root package name */
    private Intent f57758b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Intent f57759c;

    /* renamed from: d  reason: collision with root package name */
    private int f57760d;

    /* renamed from: e  reason: collision with root package name */
    private JSONObject f57761e;

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        a();
        h.a().a(this);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        h.a().a(this);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        Intent intent = getIntent();
        this.f57758b = intent;
        if (intent != null) {
            this.f57759c = (Intent) intent.getParcelableExtra("intent");
            this.f57760d = intent.getIntExtra("id", -1);
            try {
                this.f57761e = new JSONObject(intent.getStringExtra("config"));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        if (this.f57761e == null) {
            c.a((Activity) this);
            return;
        }
        b();
        k kVar = this.f57757a;
        if (kVar != null && !kVar.b()) {
            this.f57757a.a();
        } else if (this.f57757a == null) {
            finish();
        }
    }

    private void a() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = 0.0f;
        window.setAttributes(attributes);
    }

    private void b() {
        if (this.f57757a != null || this.f57758b == null) {
            return;
        }
        try {
            com.ss.android.socialbase.appdownloader.c.c a4 = d.j().a();
            l a5 = a4 != null ? a4.a(this) : null;
            if (a5 == null) {
                a5 = new com.ss.android.socialbase.appdownloader.d.a(this);
            }
            int a6 = i.a(this, "tt_appdownloader_tip");
            int a7 = i.a(this, "tt_appdownloader_label_ok");
            int a8 = i.a(this, "tt_appdownloader_label_cancel");
            String optString = this.f57761e.optString("jump_unknown_source_tips");
            if (TextUtils.isEmpty(optString)) {
                optString = getString(i.a(this, "tt_appdownloader_jump_unknown_source_tips"));
            }
            a5.a(a6).a(optString).a(a7, new DialogInterface.OnClickListener() { // from class: com.ss.android.socialbase.appdownloader.view.JumpUnknownSourceActivity.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    JumpUnknownSourceActivity jumpUnknownSourceActivity = JumpUnknownSourceActivity.this;
                    if (b.a(jumpUnknownSourceActivity, jumpUnknownSourceActivity.f57759c, JumpUnknownSourceActivity.this.f57760d, JumpUnknownSourceActivity.this.f57761e)) {
                        b.c(JumpUnknownSourceActivity.this.f57760d, JumpUnknownSourceActivity.this.f57761e);
                    } else {
                        JumpUnknownSourceActivity jumpUnknownSourceActivity2 = JumpUnknownSourceActivity.this;
                        b.a((Context) jumpUnknownSourceActivity2, jumpUnknownSourceActivity2.f57759c, true);
                    }
                    b.a(JumpUnknownSourceActivity.this.f57760d, JumpUnknownSourceActivity.this.f57761e);
                    JumpUnknownSourceActivity.this.finish();
                }
            }).b(a8, new DialogInterface.OnClickListener() { // from class: com.ss.android.socialbase.appdownloader.view.JumpUnknownSourceActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    if (JumpUnknownSourceActivity.this.f57759c != null) {
                        JumpUnknownSourceActivity jumpUnknownSourceActivity = JumpUnknownSourceActivity.this;
                        b.a((Context) jumpUnknownSourceActivity, jumpUnknownSourceActivity.f57759c, true);
                    }
                    b.b(JumpUnknownSourceActivity.this.f57760d, JumpUnknownSourceActivity.this.f57761e);
                    JumpUnknownSourceActivity.this.finish();
                }
            }).a(new DialogInterface.OnCancelListener() { // from class: com.ss.android.socialbase.appdownloader.view.JumpUnknownSourceActivity.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    if (JumpUnknownSourceActivity.this.f57759c != null) {
                        JumpUnknownSourceActivity jumpUnknownSourceActivity = JumpUnknownSourceActivity.this;
                        b.a((Context) jumpUnknownSourceActivity, jumpUnknownSourceActivity.f57759c, true);
                    }
                    b.b(JumpUnknownSourceActivity.this.f57760d, JumpUnknownSourceActivity.this.f57761e);
                    JumpUnknownSourceActivity.this.finish();
                }
            }).a(false);
            this.f57757a = a5.a();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
