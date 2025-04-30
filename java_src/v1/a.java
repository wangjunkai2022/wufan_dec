package v1;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.join.mgps.Util.b0;
import java.util.Hashtable;
/* compiled from: QRCodeUtil.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static int f74243a;

    /* renamed from: b  reason: collision with root package name */
    private static int f74244b;

    public static Bitmap a(String str, int i2, int i4) {
        Bitmap bitmap = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            Hashtable hashtable = new Hashtable();
            hashtable.put(EncodeHintType.CHARACTER_SET, "utf-8");
            BitMatrix encode = new QRCodeWriter().encode(str, BarcodeFormat.QR_CODE, i2, i4, hashtable);
            int[] iArr = new int[i2 * i4];
            for (int i5 = 0; i5 < i4; i5++) {
                for (int i6 = 0; i6 < i2; i6++) {
                    if (encode.get(i6, i5)) {
                        iArr[(i5 * i2) + i6] = -16777216;
                    } else {
                        iArr[(i5 * i2) + i6] = -1;
                    }
                }
            }
            bitmap = Bitmap.createBitmap(i2, i4, Bitmap.Config.ARGB_8888);
            bitmap.setPixels(iArr, 0, i2, 0, 0, i2, i4);
            return bitmap;
        } catch (WriterException e4) {
            e4.printStackTrace();
            return bitmap;
        }
    }

    public static Bitmap b(String str, Context context) {
        Bitmap bitmap = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        f74243a = b0.a(context, 200.0f);
        f74244b = b0.a(context, 200.0f);
        try {
            Hashtable hashtable = new Hashtable();
            hashtable.put(EncodeHintType.CHARACTER_SET, "utf-8");
            BitMatrix encode = new QRCodeWriter().encode(str, BarcodeFormat.QR_CODE, f74243a, f74244b, hashtable);
            int[] iArr = new int[f74243a * f74244b];
            int i2 = 0;
            while (true) {
                int i4 = f74244b;
                if (i2 < i4) {
                    for (int i5 = 0; i5 < f74243a; i5++) {
                        if (encode.get(i5, i2)) {
                            iArr[(f74243a * i2) + i5] = -16777216;
                        } else {
                            iArr[(f74243a * i2) + i5] = -1;
                        }
                    }
                    i2++;
                } else {
                    bitmap = Bitmap.createBitmap(f74243a, i4, Bitmap.Config.ARGB_8888);
                    int i6 = f74243a;
                    bitmap.setPixels(iArr, 0, i6, 0, 0, i6, f74244b);
                    return bitmap;
                }
            }
        } catch (WriterException e4) {
            e4.printStackTrace();
            return bitmap;
        }
    }
}
