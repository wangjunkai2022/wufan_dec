package m.framework.ui.widget.asyncview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import java.util.Random;
import m.framework.utils.UIHandler;
import m.framework.utils.Utils;
/* loaded from: classes5.dex */
public class AsyncImageView extends ImageView implements AsyncView, BitmapCallback, Handler.Callback {
    public static final int DEFAULT_TRANSPARENT = 17170445;
    private static Bitmap DEFAULT_TRANSPARENT_BITMAP = null;
    private static final int MSG_IMG_GOT = 1;
    private static String cacheDir;
    private static final Random rnd = new Random();
    private int defaultRes;
    private OnImageGotListener onImageGotListener;
    private String url;

    public AsyncImageView(Context context) {
        super(context);
        init(context);
    }

    private Bitmap getDefaultBitmap(int i2) {
        if (i2 != 17170445) {
            return BitmapFactory.decodeResource(getResources(), i2);
        }
        if (DEFAULT_TRANSPARENT_BITMAP == null) {
            DEFAULT_TRANSPARENT_BITMAP = BitmapFactory.decodeResource(getResources(), DEFAULT_TRANSPARENT);
        }
        return DEFAULT_TRANSPARENT_BITMAP;
    }

    private void init(Context context) {
        UIHandler.prepare();
        if (TextUtils.isEmpty(cacheDir)) {
            cacheDir = Utils.getCachePath(getContext(), "images");
        }
        BitmapProcessor.prepare(cacheDir);
        setOnImageGotListener(SimpleOnImageGotListener.INSTANCE);
    }

    public void execute(String str) {
        execute(str, 0);
    }

    @Override // m.framework.ui.widget.asyncview.AsyncView
    public String getUrl() {
        return this.url;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 1) {
            Object obj = message.obj;
            Object obj2 = ((Object[]) obj)[0];
            Object obj3 = ((Object[]) obj)[1];
            if (obj3 != null && obj2 != null && obj2.equals(this.url)) {
                setImageBitmap((Bitmap) obj3);
            } else {
                setImageResource(this.defaultRes);
            }
        }
        return false;
    }

    @Override // m.framework.ui.widget.asyncview.BitmapCallback
    public void onImageGot(String str, Bitmap bitmap) {
        OnImageGotListener onImageGotListener = this.onImageGotListener;
        if (onImageGotListener != null) {
            bitmap = onImageGotListener.onImageGot(this, bitmap, str);
        }
        Message message = new Message();
        message.what = 1;
        message.obj = new Object[]{str, bitmap};
        UIHandler.sendMessageDelayed(message, rnd.nextInt(300), this);
    }

    public void setOnImageGotListener(OnImageGotListener onImageGotListener) {
        this.onImageGotListener = onImageGotListener;
    }

    @Override // m.framework.ui.widget.asyncview.AsyncView
    public void execute(String str, int i2) {
        this.url = str;
        this.defaultRes = i2;
        if (Utils.isNullOrEmpty(str)) {
            setImageResource(i2);
            return;
        }
        Bitmap bitmapFromCache = BitmapProcessor.getBitmapFromCache(str);
        if (bitmapFromCache != null && !bitmapFromCache.isRecycled()) {
            setImageBitmap(bitmapFromCache);
            return;
        }
        if (i2 > 0) {
            setImageBitmap(getDefaultBitmap(i2));
        }
        BitmapProcessor.process(str, this);
    }

    public AsyncImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public AsyncImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        init(context);
    }
}
