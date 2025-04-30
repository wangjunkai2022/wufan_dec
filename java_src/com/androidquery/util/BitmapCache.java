package com.androidquery.util;

import android.graphics.Bitmap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class BitmapCache extends LinkedHashMap<String, Bitmap> {
    private static final long serialVersionUID = 1;
    private int maxCount;
    private int maxPixels;
    private int maxTotalPixels;
    private int pixels;

    public BitmapCache(int i2, int i4, int i5) {
        super(8, 0.75f, true);
        this.maxCount = i2;
        this.maxPixels = i4;
        this.maxTotalPixels = i5;
    }

    private int pixels(Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getWidth() * bitmap.getHeight();
    }

    private void shrink() {
        if (this.pixels > this.maxTotalPixels) {
            Iterator<String> it2 = keySet().iterator();
            while (it2.hasNext()) {
                it2.next();
                it2.remove();
                if (this.pixels <= this.maxTotalPixels) {
                    return;
                }
            }
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        super.clear();
        this.pixels = 0;
    }

    @Override // java.util.LinkedHashMap
    public boolean removeEldestEntry(Map.Entry<String, Bitmap> entry) {
        if (this.pixels > this.maxTotalPixels || size() > this.maxCount) {
            remove((Object) entry.getKey());
        }
        shrink();
        return false;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Bitmap put(String str, Bitmap bitmap) {
        int pixels = pixels(bitmap);
        if (pixels <= this.maxPixels) {
            this.pixels += pixels;
            Bitmap bitmap2 = (Bitmap) super.put((BitmapCache) str, (String) bitmap);
            if (bitmap2 != null) {
                this.pixels -= pixels(bitmap2);
                return bitmap2;
            }
            return bitmap2;
        }
        return null;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Bitmap remove(Object obj) {
        Bitmap bitmap = (Bitmap) super.remove(obj);
        if (bitmap != null) {
            this.pixels -= pixels(bitmap);
        }
        return bitmap;
    }
}
