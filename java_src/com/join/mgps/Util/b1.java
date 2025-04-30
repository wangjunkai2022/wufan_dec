package com.join.mgps.Util;

import android.content.Context;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.dto.FirstIntentData;
/* compiled from: MetaUtils.java */
/* loaded from: classes.dex */
public class b1 {
    public static FirstIntentData a(Context context) {
        try {
            String string = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("CUSTOM_MADE_DATA");
            if (d2.h(string)) {
                return null;
            }
            return (FirstIntentData) JsonMapper.getInstance().fromJson(new String(k.a(string)), FirstIntentData.class);
        } catch (Exception unused) {
            return null;
        }
    }

    public static int b(Context context) {
        return com.join.android.app.mgsim.wufun.b.f17920n.intValue();
    }
}
