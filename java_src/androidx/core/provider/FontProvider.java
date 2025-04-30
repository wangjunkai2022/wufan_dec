package androidx.core.provider;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import com.facebook.common.statfs.StatFsHelper;
import com.facebook.common.util.f;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FontProvider {

    /* renamed from: a  reason: collision with root package name */
    private static final Comparator<byte[]> f4528a = new Comparator<byte[]>() { // from class: androidx.core.provider.FontProvider.1
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            int i2;
            int i4;
            if (bArr.length != bArr2.length) {
                i2 = bArr.length;
                i4 = bArr2.length;
            } else {
                for (int i5 = 0; i5 < bArr.length; i5++) {
                    if (bArr[i5] != bArr2[i5]) {
                        i2 = bArr[i5];
                        i4 = bArr2[i5];
                    }
                }
                return 0;
            }
            return i2 - i4;
        }
    };

    private FontProvider() {
    }

    private static List<byte[]> a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    private static boolean b(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (!Arrays.equals(list.get(i2), list2.get(i2))) {
                return false;
            }
        }
        return true;
    }

    private static List<List<byte[]>> c(FontRequest fontRequest, Resources resources) {
        if (fontRequest.getCertificates() != null) {
            return fontRequest.getCertificates();
        }
        return FontResourcesParserCompat.readCerts(resources, fontRequest.getCertificatesArrayResId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static FontsContractCompat.FontFamilyResult d(@NonNull Context context, @NonNull FontRequest fontRequest, @Nullable CancellationSignal cancellationSignal) throws PackageManager.NameNotFoundException {
        ProviderInfo e4 = e(context.getPackageManager(), fontRequest, context.getResources());
        if (e4 == null) {
            return FontsContractCompat.FontFamilyResult.a(1, null);
        }
        return FontsContractCompat.FontFamilyResult.a(0, query(context, fontRequest, e4.authority, cancellationSignal));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @VisibleForTesting
    public static ProviderInfo e(@NonNull PackageManager packageManager, @NonNull FontRequest fontRequest, @Nullable Resources resources) throws PackageManager.NameNotFoundException {
        String providerAuthority = fontRequest.getProviderAuthority();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(providerAuthority, 0);
        if (resolveContentProvider != null) {
            if (resolveContentProvider.packageName.equals(fontRequest.getProviderPackage())) {
                List<byte[]> a4 = a(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
                Collections.sort(a4, f4528a);
                List<List<byte[]>> c4 = c(fontRequest, resources);
                for (int i2 = 0; i2 < c4.size(); i2++) {
                    ArrayList arrayList = new ArrayList(c4.get(i2));
                    Collections.sort(arrayList, f4528a);
                    if (b(a4, arrayList)) {
                        return resolveContentProvider;
                    }
                }
                return null;
            }
            throw new PackageManager.NameNotFoundException("Found content provider " + providerAuthority + ", but package was not " + fontRequest.getProviderPackage());
        }
        throw new PackageManager.NameNotFoundException("No package found for authority: " + providerAuthority);
    }

    @NonNull
    @VisibleForTesting
    static FontsContractCompat.FontInfo[] query(Context context, FontRequest fontRequest, String str, CancellationSignal cancellationSignal) {
        int i2;
        Uri withAppendedId;
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme("content").authority(str).build();
        Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath(f.f11767c).build();
        Cursor cursor = null;
        try {
            String[] strArr = {"_id", FontsContractCompat.Columns.FILE_ID, FontsContractCompat.Columns.TTC_INDEX, FontsContractCompat.Columns.VARIATION_SETTINGS, FontsContractCompat.Columns.WEIGHT, FontsContractCompat.Columns.ITALIC, FontsContractCompat.Columns.RESULT_CODE};
            if (Build.VERSION.SDK_INT > 16) {
                cursor = context.getContentResolver().query(build, strArr, "query = ?", new String[]{fontRequest.getQuery()}, null, cancellationSignal);
            } else {
                cursor = context.getContentResolver().query(build, strArr, "query = ?", new String[]{fontRequest.getQuery()}, null);
            }
            if (cursor != null && cursor.getCount() > 0) {
                int columnIndex = cursor.getColumnIndex(FontsContractCompat.Columns.RESULT_CODE);
                ArrayList arrayList2 = new ArrayList();
                int columnIndex2 = cursor.getColumnIndex("_id");
                int columnIndex3 = cursor.getColumnIndex(FontsContractCompat.Columns.FILE_ID);
                int columnIndex4 = cursor.getColumnIndex(FontsContractCompat.Columns.TTC_INDEX);
                int columnIndex5 = cursor.getColumnIndex(FontsContractCompat.Columns.WEIGHT);
                int columnIndex6 = cursor.getColumnIndex(FontsContractCompat.Columns.ITALIC);
                while (cursor.moveToNext()) {
                    int i4 = columnIndex != -1 ? cursor.getInt(columnIndex) : 0;
                    int i5 = columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0;
                    if (columnIndex3 == -1) {
                        i2 = i4;
                        withAppendedId = ContentUris.withAppendedId(build, cursor.getLong(columnIndex2));
                    } else {
                        i2 = i4;
                        withAppendedId = ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3));
                    }
                    arrayList2.add(FontsContractCompat.FontInfo.a(withAppendedId, i5, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : StatFsHelper.f11741h, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, i2));
                }
                arrayList = arrayList2;
            }
            return (FontsContractCompat.FontInfo[]) arrayList.toArray(new FontsContractCompat.FontInfo[0]);
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }
}
