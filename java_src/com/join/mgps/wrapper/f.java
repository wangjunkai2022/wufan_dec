package com.join.mgps.wrapper;

import android.annotation.TargetApi;
import android.os.Environment;
import java.io.File;
/* compiled from: Wrapper8.java */
@TargetApi(8)
/* loaded from: classes4.dex */
class f {
    f() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File a() {
        return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
    }
}
