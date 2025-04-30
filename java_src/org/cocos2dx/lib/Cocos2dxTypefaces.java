package org.cocos2dx.lib;

import android.content.Context;
import android.graphics.Typeface;
import java.util.HashMap;
import net.lingala.zip4j.util.e;
/* loaded from: classes5.dex */
public class Cocos2dxTypefaces {
    private static final HashMap<String, Typeface> sTypefaceCache = new HashMap<>();

    public static synchronized Typeface get(Context context, String str) {
        Typeface typeface;
        Typeface createFromAsset;
        synchronized (Cocos2dxTypefaces.class) {
            HashMap<String, Typeface> hashMap = sTypefaceCache;
            if (!hashMap.containsKey(str)) {
                if (str.startsWith(e.F0)) {
                    createFromAsset = Typeface.createFromFile(str);
                } else {
                    createFromAsset = Typeface.createFromAsset(context.getAssets(), str);
                }
                hashMap.put(str, createFromAsset);
            }
            typeface = hashMap.get(str);
        }
        return typeface;
    }
}
