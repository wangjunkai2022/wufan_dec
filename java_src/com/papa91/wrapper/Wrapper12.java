package com.papa91.wrapper;

import android.annotation.TargetApi;
import android.view.KeyEvent;
@TargetApi(12)
/* loaded from: classes4.dex */
class Wrapper12 {
    Wrapper12() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String keyCodeToString(int i2) {
        return KeyEvent.keyCodeToString(i2);
    }
}
