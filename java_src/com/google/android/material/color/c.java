package com.google.android.material.color;

import android.content.Context;
import android.content.res.loader.ResourcesLoader;
import android.content.res.loader.ResourcesProvider;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.util.Map;
/* compiled from: ColorResourcesLoaderCreator.java */
@RequiresApi(30)
/* loaded from: classes2.dex */
final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f14503a = "c";

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static ResourcesLoader a(@NonNull Context context, @NonNull Map<Integer, Integer> map) {
        FileDescriptor fileDescriptor;
        try {
            byte[] i2 = d.i(context, map);
            StringBuilder sb = new StringBuilder();
            sb.append("Table created, length: ");
            sb.append(i2.length);
            if (i2.length == 0) {
                return null;
            }
            try {
                fileDescriptor = Os.memfd_create("temp.arsc", 0);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(fileDescriptor);
                    fileOutputStream.write(i2);
                    ParcelFileDescriptor dup = ParcelFileDescriptor.dup(fileDescriptor);
                    ResourcesLoader resourcesLoader = new ResourcesLoader();
                    resourcesLoader.addProvider(ResourcesProvider.loadFromTable(dup, null));
                    if (dup != null) {
                        dup.close();
                    }
                    fileOutputStream.close();
                    if (fileDescriptor != null) {
                        Os.close(fileDescriptor);
                    }
                    return resourcesLoader;
                } catch (Throwable th) {
                    th = th;
                    if (fileDescriptor != null) {
                        Os.close(fileDescriptor);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileDescriptor = null;
            }
        } catch (Exception unused) {
            return null;
        }
    }
}
