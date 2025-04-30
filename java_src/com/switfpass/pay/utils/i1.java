package com.switfpass.pay.utils;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class i1 implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ l f58999a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ int f59000b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i1(l lVar, int i2) {
        this.f58999a = lVar;
        this.f59000b = i2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        i iVar;
        Context context;
        i iVar2;
        i iVar3;
        i iVar4;
        EditText editText;
        i iVar5;
        int i2 = this.f59000b;
        if (i2 != 0) {
            if (i2 == 1) {
                this.f58999a.dismiss();
                Toast.makeText(this.f58999a.getContext(), "提交成功!", 0).show();
                return;
            } else if (i2 == 3) {
                this.f58999a.dismiss();
                this.f58999a.cancel();
                iVar = this.f58999a.f59022i;
                iVar.a(null);
                return;
            } else if (i2 == 6) {
                context = this.f58999a.f59014a;
                ((Activity) context).finish();
                return;
            } else if (i2 == 12) {
                this.f58999a.dismiss();
                this.f58999a.cancel();
                iVar2 = this.f58999a.f59022i;
                iVar2.a(null);
                iVar3 = this.f58999a.f59022i;
                iVar3.cancel();
                return;
            } else if (i2 == 9) {
                this.f58999a.dismiss();
                this.f58999a.cancel();
                iVar4 = this.f58999a.f59022i;
                editText = this.f58999a.f59025l;
                iVar4.a(editText.getText().toString());
                return;
            } else if (i2 != 10) {
                return;
            } else {
                iVar5 = this.f58999a.f59022i;
                iVar5.a(null);
            }
        }
        this.f58999a.dismiss();
        this.f58999a.cancel();
    }
}
