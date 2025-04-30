package com.papa91.arc.util;

import com.google.gson.JsonObject;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/* loaded from: classes4.dex */
public class SignUtils {
    private static final String SECURE_KEY = "21wq7byuGiENB4r7mOsqBYiNUyhpXAXu";

    public static String buildRequestSign(JsonObject jsonObject) {
        return buildRequestSign(SECURE_KEY, jsonObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$sortMapByKey$0(boolean z3, String str, String str2) {
        if (z3) {
            return str.compareTo(str2);
        }
        return str2.compareTo(str);
    }

    public static Map<String, String> sortMapByKey(Map<String, String> map, final boolean z3) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        TreeMap treeMap = new TreeMap(new Comparator() { // from class: com.papa91.arc.util.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$sortMapByKey$0;
                lambda$sortMapByKey$0 = SignUtils.lambda$sortMapByKey$0(z3, (String) obj, (String) obj2);
                return lambda$sortMapByKey$0;
            }
        });
        treeMap.putAll(map);
        return treeMap;
    }

    public static String buildRequestSign(Map<String, String> map) {
        return buildRequestSign(SECURE_KEY, map);
    }

    public static String buildRequestSign(String str, JsonObject jsonObject) {
        Set<String> keySet = jsonObject.keySet();
        HashMap hashMap = new HashMap();
        for (String str2 : keySet) {
            hashMap.put(str2, jsonObject.get(str2).getAsString());
        }
        return buildRequestSign(str, hashMap);
    }

    public static String buildRequestSign(String str, Map<String, String> map) {
        Map<String, String> sortMapByKey = sortMapByKey(map, true);
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : sortMapByKey.entrySet()) {
            sb.append(entry.getKey());
            sb.append(SimpleComparison.EQUAL_TO_OPERATION);
            sb.append(entry.getValue());
            sb.append(m.a.f72566d);
        }
        String substring = sb.substring(0, sb.length() - 1);
        return DigestUtils.md5DigestAsHex((str + substring).getBytes());
    }
}
