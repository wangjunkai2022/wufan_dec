package com.join.mgps.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ModDownloadSupportDialog.java */
/* loaded from: classes3.dex */
public class a1 extends q implements View.OnClickListener, DialogInterface.OnShowListener {

    /* renamed from: j  reason: collision with root package name */
    private TextView f47522j;

    /* renamed from: k  reason: collision with root package name */
    a f47523k;

    /* compiled from: ModDownloadSupportDialog.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a(a1 a1Var);
    }

    public a1(@NonNull Context context) {
        super(context, R.style.Dialog);
    }

    public void m(String str) {
        this.f47522j.setText(str);
    }

    public void n(a aVar) {
        this.f47523k = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a aVar;
        if (view.getId() != R.id.tv_download || (aVar = this.f47523k) == null) {
            return;
        }
        aVar.a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.dialog.q, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_mod_download_support);
        this.f47522j = (TextView) findViewById(R.id.tv_download);
        setOnShowListener(this);
        this.f47522j.setOnClickListener(this);
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
    }
}
