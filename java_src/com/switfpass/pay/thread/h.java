package com.switfpass.pay.thread;
/* loaded from: classes4.dex */
public class h extends e {
    @Override // com.switfpass.pay.thread.e
    public void onError(Object obj) {
        super.onError(obj);
        if (obj == null || (obj instanceof Integer)) {
            return;
        }
        if (obj instanceof String) {
            obj.toString();
        } else if (obj instanceof Throwable) {
            ((Throwable) obj).getMessage();
        }
    }
}
