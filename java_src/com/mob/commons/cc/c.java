package com.mob.commons.cc;

import android.graphics.Bitmap;
import com.mob.tools.utils.BitmapHelper;
import java.io.File;
/* loaded from: classes4.dex */
public class c implements t<c> {
    static Bitmap a(String str, int i2, int i4) throws Throwable {
        return BitmapHelper.getBitmapByCompressSize(str, i2, i4);
    }

    public static Bitmap a(String str, int i2, int i4, int i5, long j4) throws Throwable {
        return BitmapHelper.getBitmapByCompressQuality(str, i2, i4, i5, j4);
    }

    public static Bitmap a(File file, int i2) throws Throwable {
        return BitmapHelper.getBitmap(file, i2);
    }

    public static int[] a(int[] iArr, int[] iArr2) {
        return BitmapHelper.fixRect(iArr, iArr2);
    }

    @Override // com.mob.commons.cc.t
    public boolean a(c cVar, Class<c> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        if ("getBitmapByCompressSize".equals(str) && objArr.length == 3) {
            try {
                objArr2[0] = a((String) objArr[0], ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            } catch (Throwable th) {
                objArr2[0] = null;
                thArr[0] = th;
            }
            return true;
        } else if ("getBitmapByCompressQuality".equals(str) && objArr.length == 5) {
            try {
                objArr2[0] = a((String) objArr[0], ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue(), ((Integer) objArr[3]).intValue(), ((Long) objArr[4]).longValue());
            } catch (Throwable th2) {
                objArr2[0] = null;
                thArr[0] = th2;
            }
            return true;
        } else if ("getBitmap".equals(str) && objArr.length == 2) {
            try {
                objArr2[0] = a((File) objArr[0], ((Integer) objArr[1]).intValue());
            } catch (Throwable th3) {
                objArr2[0] = null;
                thArr[0] = th3;
            }
            return true;
        } else if ("fixRect".equals(str) && objArr.length == 2) {
            try {
                objArr2[0] = a((int[]) objArr[0], (int[]) objArr[1]);
            } catch (Throwable th4) {
                objArr2[0] = null;
                thArr[0] = th4;
            }
            return true;
        } else {
            return false;
        }
    }
}
