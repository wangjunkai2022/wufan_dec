package com.alipay.sdk.widget;

import com.alipay.sdk.widget.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f9865a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f9865a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.AlertDialogC0026a alertDialogC0026a;
        a.AlertDialogC0026a alertDialogC0026a2;
        a.AlertDialogC0026a alertDialogC0026a3;
        alertDialogC0026a = this.f9865a.f9861a;
        if (alertDialogC0026a == null) {
            a aVar = this.f9865a;
            a aVar2 = this.f9865a;
            aVar.f9861a = new a.AlertDialogC0026a(aVar2.f9862b);
        }
        try {
            alertDialogC0026a2 = this.f9865a.f9861a;
            if (alertDialogC0026a2.isShowing()) {
                return;
            }
            alertDialogC0026a3 = this.f9865a.f9861a;
            alertDialogC0026a3.show();
        } catch (Exception unused) {
        }
    }
}
