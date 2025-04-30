package u1;

import android.graphics.Bitmap;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Hashtable;
/* compiled from: EncodingHandler.java */
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int f74229a = -16777216;

    public static Bitmap a(String str, int i2) throws WriterException {
        new Hashtable().put(EncodeHintType.CHARACTER_SET, "utf-8");
        BitMatrix encode = new MultiFormatWriter().encode(str, BarcodeFormat.QR_CODE, i2, i2);
        int width = encode.getWidth();
        int height = encode.getHeight();
        int[] iArr = new int[width * height];
        for (int i4 = 0; i4 < height; i4++) {
            for (int i5 = 0; i5 < width; i5++) {
                if (encode.get(i5, i4)) {
                    iArr[(i4 * width) + i5] = -16777216;
                }
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        createBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return createBitmap;
    }
}
