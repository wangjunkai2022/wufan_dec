package com.papa91.wrapper;

import android.annotation.TargetApi;
import android.os.Environment;
import java.io.File;
@TargetApi(8)
/* loaded from: classes4.dex */
class Wrapper8 {
    Wrapper8() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File getExternalPicturesDirectory() {
        return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
    }
}
