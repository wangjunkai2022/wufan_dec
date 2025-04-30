package com.android.internal.content;

import java.io.File;
import java.io.IOException;
/* loaded from: classes2.dex */
public class NativeLibraryHelper {

    /* loaded from: classes2.dex */
    public static class Handle {
        public static Handle create(File packageFile) throws IOException {
            throw new RuntimeException("Stub!");
        }
    }

    public static int copyNativeBinaries(Handle handle, File sharedLibraryDir, String abi) {
        throw new RuntimeException("Stub!");
    }

    public static int findSupportedAbi(Handle handle, String[] supportedAbis) {
        throw new RuntimeException("Stub!");
    }
}
