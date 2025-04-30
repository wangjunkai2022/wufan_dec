package org.jsoup.nodes;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.CharsetEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Properties;
import java.util.regex.Pattern;
import kotlin.text.Typography;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Parser;
/* loaded from: classes5.dex */
public class Entities {
    private static final Map<String, Character> base;
    private static final Map<Character, String> baseByVal;
    private static final Map<String, Character> full;
    private static final Map<Character, String> fullByVal;
    private static final Object[][] xhtmlArray;
    private static final Pattern unescapePattern = Pattern.compile("&(#(x|X)?([0-9a-fA-F]+)|[a-zA-Z]+\\d*);?");
    private static final Pattern strictUnescapePattern = Pattern.compile("&(#(x|X)?([0-9a-fA-F]+)|[a-zA-Z]+\\d*);");
    private static final Map<Character, String> xhtmlByVal = new HashMap();

    /* loaded from: classes5.dex */
    public enum EscapeMode {
        xhtml(Entities.xhtmlByVal),
        base(Entities.baseByVal),
        extended(Entities.fullByVal);
        
        private Map<Character, String> map;

        EscapeMode(Map map) {
            this.map = map;
        }

        public Map<Character, String> getMap() {
            return this.map;
        }
    }

    static {
        Object[][] objArr = {new Object[]{"quot", 34}, new Object[]{"amp", 38}, new Object[]{"apos", 39}, new Object[]{"lt", 60}, new Object[]{"gt", 62}};
        xhtmlArray = objArr;
        Map<String, Character> loadEntities = loadEntities("entities-base.properties");
        base = loadEntities;
        baseByVal = toCharacterKey(loadEntities);
        Map<String, Character> loadEntities2 = loadEntities("entities-full.properties");
        full = loadEntities2;
        fullByVal = toCharacterKey(loadEntities2);
        for (Object[] objArr2 : objArr) {
            xhtmlByVal.put(Character.valueOf((char) ((Integer) objArr2[1]).intValue()), (String) objArr2[0]);
        }
    }

    private Entities() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String escape(String str, Document.OutputSettings outputSettings) {
        return escape(str, outputSettings.encoder(), outputSettings.escapeMode());
    }

    public static Character getCharacterByName(String str) {
        return full.get(str);
    }

    public static boolean isBaseNamedEntity(String str) {
        return base.containsKey(str);
    }

    public static boolean isNamedEntity(String str) {
        return full.containsKey(str);
    }

    private static Map<String, Character> loadEntities(String str) {
        Properties properties = new Properties();
        HashMap hashMap = new HashMap();
        try {
            InputStream resourceAsStream = Entities.class.getResourceAsStream(str);
            properties.load(resourceAsStream);
            resourceAsStream.close();
            for (Map.Entry entry : properties.entrySet()) {
                hashMap.put((String) entry.getKey(), Character.valueOf((char) Integer.parseInt((String) entry.getValue(), 16)));
            }
            return hashMap;
        } catch (IOException e4) {
            throw new MissingResourceException("Error loading entities resource: " + e4.getMessage(), "Entities", str);
        }
    }

    private static Map<Character, String> toCharacterKey(Map<String, Character> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, Character> entry : map.entrySet()) {
            Character value = entry.getValue();
            String key = entry.getKey();
            if (hashMap.containsKey(value)) {
                if (key.toLowerCase().equals(key)) {
                    hashMap.put(value, key);
                }
            } else {
                hashMap.put(value, key);
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String unescape(String str) {
        return unescape(str, false);
    }

    static String escape(String str, CharsetEncoder charsetEncoder, EscapeMode escapeMode) {
        StringBuilder sb = new StringBuilder(str.length() * 2);
        Map<Character, String> map = escapeMode.getMap();
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            int codePointAt = str.codePointAt(i2);
            if (codePointAt < 65536) {
                char c4 = (char) codePointAt;
                if (map.containsKey(Character.valueOf(c4))) {
                    sb.append(Typography.amp);
                    sb.append(map.get(Character.valueOf(c4)));
                    sb.append(';');
                } else if (charsetEncoder.canEncode(c4)) {
                    sb.append(c4);
                } else {
                    sb.append("&#x");
                    sb.append(Integer.toHexString(codePointAt));
                    sb.append(';');
                }
            } else {
                String str2 = new String(Character.toChars(codePointAt));
                if (charsetEncoder.canEncode(str2)) {
                    sb.append(str2);
                } else {
                    sb.append("&#x");
                    sb.append(Integer.toHexString(codePointAt));
                    sb.append(';');
                }
            }
            i2 += Character.charCount(codePointAt);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String unescape(String str, boolean z3) {
        return Parser.unescapeEntities(str, z3);
    }
}
