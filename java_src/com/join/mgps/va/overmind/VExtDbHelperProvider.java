package com.join.mgps.va.overmind;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public class VExtDbHelperProvider extends ContentProvider {
    public boolean a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageArchiveInfo(str, 128).applicationInfo.metaData.getBoolean(com.join.mgps.mod.utils.d.f51081k);
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00a1  */
    @Override // android.content.ContentProvider
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Bundle call(@androidx.annotation.NonNull java.lang.String r6, @androidx.annotation.Nullable java.lang.String r7, @androidx.annotation.Nullable android.os.Bundle r8) {
        /*
            r5 = this;
            java.lang.String r0 = "miniGameInfo"
            boolean r0 = r0.equals(r6)
            r1 = 0
            java.lang.String r2 = "packageName"
            r3 = 0
            if (r0 == 0) goto L76
            android.os.Bundle r6 = new android.os.Bundle
            r6.<init>()
            java.lang.String r7 = "isMiniGame"
            if (r8 != 0) goto L19
            r6.putBoolean(r7, r3)
            return r6
        L19:
            java.lang.String r0 = r8.getString(r2)
            java.lang.String r4 = "userId"
            r8.getInt(r4)
            boolean r8 = com.join.mgps.Util.d2.h(r0)
            if (r8 == 0) goto L2c
            r6.putBoolean(r7, r3)
            return r6
        L2c:
            g1.f r8 = g1.f.G()
            java.util.List r8 = r8.D(r0)
            if (r8 == 0) goto L57
            java.util.Iterator r8 = r8.iterator()
        L3a:
            boolean r0 = r8.hasNext()
            if (r0 == 0) goto L57
            java.lang.Object r0 = r8.next()
            r1 = r0
            com.github.snowdream.android.app.downloader.DownloadTask r1 = (com.github.snowdream.android.app.downloader.DownloadTask) r1
            boolean r3 = r1.isMiniGame()
            boolean r0 = com.join.android.app.common.utils.APKUtils.I(r1)
            if (r0 != 0) goto L57
            boolean r0 = com.join.android.app.common.utils.APKUtils.E(r1)
            if (r0 == 0) goto L3a
        L57:
            if (r1 == 0) goto L72
            int r8 = r1.getVm_device_switch()
            java.lang.String r0 = "vm_device_switch"
            r6.putInt(r0, r8)
            java.lang.String r8 = r1.getPackageName()
            r6.putString(r2, r8)
            java.lang.String r8 = r1.getShowName()
            java.lang.String r0 = "showName"
            r6.putString(r0, r8)
        L72:
            r6.putBoolean(r7, r3)
            return r6
        L76:
            java.lang.String r0 = "isUseNativeLib"
            boolean r4 = r0.equals(r6)
            if (r4 == 0) goto Lc6
            android.os.Bundle r6 = new android.os.Bundle
            r6.<init>()
            if (r8 != 0) goto L89
            r6.putBoolean(r0, r3)
            return r6
        L89:
            java.lang.String r7 = r8.getString(r2)
            g1.f r8 = g1.f.G()
            java.util.List r7 = r8.D(r7)
            if (r7 == 0) goto Lb4
            java.util.Iterator r7 = r7.iterator()
        L9b:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto Lb4
            java.lang.Object r8 = r7.next()
            com.github.snowdream.android.app.downloader.DownloadTask r8 = (com.github.snowdream.android.app.downloader.DownloadTask) r8
            boolean r2 = com.join.android.app.common.utils.APKUtils.I(r8)
            if (r2 != 0) goto Lb3
            boolean r2 = com.join.android.app.common.utils.APKUtils.E(r8)
            if (r2 == 0) goto L9b
        Lb3:
            r1 = r8
        Lb4:
            if (r1 == 0) goto Lc5
            android.content.Context r7 = r5.getContext()
            java.lang.String r8 = r1.getResource_path()
            boolean r7 = r5.a(r7, r8)
            r6.putBoolean(r0, r7)
        Lc5:
            return r6
        Lc6:
            android.os.Bundle r6 = super.call(r6, r7, r8)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.va.overmind.VExtDbHelperProvider.call(java.lang.String, java.lang.String, android.os.Bundle):android.os.Bundle");
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }
}
