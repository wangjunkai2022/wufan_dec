package com.sdk.t;

import com.facebook.common.util.f;
import com.join.mgps.dto.Constant;
import com.sdk.f.g;
import com.sdk.o.b;
import java.util.Map;
import java.util.TreeMap;
import kotlin.text.Typography;
/* loaded from: classes4.dex */
public class a extends com.sdk.i.a {
    public static final String TAG = "com.sdk.t.a";
    public static boolean isDebug = g.f56647b;

    public static String a(String str, String str2, TreeMap<String, Object> treeMap) {
        if (treeMap == null) {
            return null;
        }
        try {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str);
            stringBuffer.append(str2);
            stringBuffer.append('?');
            for (Map.Entry<String, Object> entry : treeMap.entrySet()) {
                String key = entry.getKey();
                StringBuilder sb = new StringBuilder();
                sb.append(entry.getValue());
                sb.append("");
                String sb2 = sb.toString();
                if (entry.getValue() != null && sb2.length() > 0 && !"null".equals(sb2) && !Constant.MD5.equals(key) && !key.startsWith("_") && !f.f11767c.equals(key)) {
                    stringBuffer.append(key);
                    stringBuffer.append('=');
                    stringBuffer.append(entry.getValue());
                    stringBuffer.append(Typography.amp);
                }
            }
            if (stringBuffer.charAt(stringBuffer.length() - 1) == '&') {
                stringBuffer.deleteCharAt(stringBuffer.length() - 1);
            }
            com.sdk.r.f a4 = com.sdk.r.f.a();
            return a4.f56696b.a(stringBuffer.toString());
        } catch (Exception e4) {
            b.a(TAG, e4.getMessage(), Boolean.valueOf(isDebug));
            return null;
        }
    }
}
