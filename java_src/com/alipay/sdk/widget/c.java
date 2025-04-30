package com.alipay.sdk.widget;

import com.alipay.sdk.widget.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f9866a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar) {
        this.f9866a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.AlertDialogC0026a alertDialogC0026a;
        a.AlertDialogC0026a alertDialogC0026a2;
        alertDialogC0026a = this.f9866a.f9861a;
        if (alertDialogC0026a != null) {
            try {
                alertDialogC0026a2 = this.f9866a.f9861a;
                alertDialogC0026a2.dismiss();
            } catch (Exception unused) {
            }
        }
    }
}
