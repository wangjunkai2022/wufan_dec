package q0;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import androidx.annotation.RequiresApi;
import com.facebook.common.internal.h;
/* compiled from: RenderScriptBlurFilter.java */
/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    public static final int f74011a = 25;

    @RequiresApi(17)
    public static void a(Bitmap bitmap, Bitmap bitmap2, Context context, int i2) {
        h.i(bitmap);
        h.i(bitmap2);
        h.i(context);
        h.d(i2 > 0 && i2 <= 25);
        RenderScript renderScript = null;
        try {
            renderScript = RenderScript.create(context);
            ScriptIntrinsicBlur create = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript));
            Allocation createFromBitmap = Allocation.createFromBitmap(renderScript, bitmap2);
            Allocation createFromBitmap2 = Allocation.createFromBitmap(renderScript, bitmap);
            create.setRadius(i2);
            create.setInput(createFromBitmap);
            create.forEach(createFromBitmap2);
            createFromBitmap2.copyTo(bitmap);
        } finally {
            if (renderScript != null) {
                renderScript.destroy();
            }
        }
    }

    public static boolean b() {
        return Build.VERSION.SDK_INT >= 17;
    }
}
