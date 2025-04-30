package com.switfpass.pay.utils;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.dto.Constant;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class k0 {
    public static void a(StringBuilder sb, Map map, boolean z3) {
        ArrayList<String> arrayList = new ArrayList(map.keySet());
        Collections.sort(arrayList);
        for (String str : arrayList) {
            sb.append(str);
            sb.append(SimpleComparison.EQUAL_TO_OPERATION);
            String str2 = (String) map.get(str);
            if (z3) {
                str2 = f(str2);
            }
            sb.append(str2);
            sb.append(m.a.f72566d);
        }
        sb.setLength(sb.length() - 1);
    }

    public static Map b(Map map) {
        HashMap hashMap = new HashMap(map.size());
        if (map.size() <= 0) {
            return hashMap;
        }
        for (String str : map.keySet()) {
            String str2 = (String) map.get(str);
            if (str2 != null && !str2.equals("") && !str.equalsIgnoreCase(Constant.MD5)) {
                hashMap.put(str, str2);
            }
        }
        return hashMap;
    }

    public static String c(StringBuilder sb, Map map, boolean z3) {
        a(sb, map, z3);
        return sb.toString();
    }

    public static String d(Map map) {
        return e(map, false);
    }

    public static String e(Map map, boolean z3) {
        return c(new StringBuilder(), map, z3);
    }

    public static String f(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (Throwable unused) {
            return str;
        }
    }
}
