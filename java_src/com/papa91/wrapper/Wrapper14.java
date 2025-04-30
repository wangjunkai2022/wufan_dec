package com.papa91.wrapper;

import android.annotation.TargetApi;
import android.app.Activity;
import android.view.ViewConfiguration;
@TargetApi(14)
/* loaded from: classes4.dex */
class Wrapper14 {
    Wrapper14() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean ViewConfiguration_hasPermanentMenuKey(ViewConfiguration viewConfiguration) {
        return viewConfiguration.hasPermanentMenuKey();
    }

    public static void disableHomeButton(Activity activity) {
    }
}
