package com.switfpass.pay.utils;

import android.util.Xml;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes4.dex */
public class s0 {

    /* renamed from: a  reason: collision with root package name */
    private static String f59060a = "Problem parsing API response";

    public static HashMap a(String str) {
        HashMap hashMap = new HashMap();
        XmlPullParser newPullParser = Xml.newPullParser();
        try {
            newPullParser.setInput(new StringReader(str));
            while (true) {
                String str2 = null;
                while (true) {
                    int next = newPullParser.next();
                    if (next == 1) {
                        return hashMap;
                    }
                    if (next != 2) {
                        if (next != 3) {
                            if (next == 4 && str2 != null) {
                                hashMap.put(str2, newPullParser.getText().trim());
                            }
                        }
                    } else if (!newPullParser.getName().equals("root")) {
                        str2 = newPullParser.getName().trim();
                    }
                }
            }
        } catch (Exception e4) {
            final String str3 = f59060a;
            throw new Exception(str3, e4) { // from class: com.switfpass.pay.utils.XmlUtils$ParseException
            };
        }
    }

    public static String b(Map map) {
        StringBuilder sb = new StringBuilder();
        ArrayList<String> arrayList = new ArrayList(map.keySet());
        Collections.sort(arrayList);
        sb.append("<xml>");
        for (String str : arrayList) {
            sb.append(SimpleComparison.LESS_THAN_OPERATION);
            sb.append(str);
            sb.append(SimpleComparison.GREATER_THAN_OPERATION);
            sb.append("<![CDATA[");
            sb.append((String) map.get(str));
            sb.append("]]>");
            sb.append("</");
            sb.append(str);
            sb.append(">\n");
        }
        sb.append("</xml>");
        return sb.toString();
    }
}
