package com.tencent.cos.utils;

import kotlin.text.Typography;
import net.lingala.zip4j.util.e;
import org.apache.http.conn.ssl.TokenParser;
/* loaded from: classes4.dex */
public class FolderUtils {
    private static char[] InValidChar = {'/', '?', '*', ':', '|', TokenParser.ESCAPE, Typography.less, Typography.greater, '\"'};
    private static final String[] RESERVERED = {"con", "aux", "nul", "prn", "com0", "com1", "com2", "com3", "com4", "com5", "com6", "com7", "com8", "com9", "lpt0", "lpt1", "lpt2", "lpt3", "lpt4", "lpt5", "lpt6", "lpt7", "lpt8", "lpt9"};

    private static boolean hasInValidChar(String str) {
        int length = InValidChar.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.indexOf(InValidChar[i2]) != -1) {
                return true;
            }
        }
        return false;
    }

    private static boolean isReservedStr(String str) {
        int length = RESERVERED.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (RESERVERED[i2].contentEquals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isValidFolder(String str) {
        return (hasInValidChar(str) || isReservedStr(str)) ? false : true;
    }

    public static boolean isValidPath(String str) {
        if (str == null) {
            return false;
        }
        boolean endsWith = str.endsWith(e.F0);
        String[] split = str.split(e.F0);
        int length = split.length;
        if (length == 0 && str.equalsIgnoreCase(e.F0)) {
            return true;
        }
        if (length == 0 && endsWith) {
            return isValidFolder(str);
        }
        if (!endsWith || isValidFolder(split[length - 1])) {
            for (int i2 = 0; i2 < length - 1; i2++) {
                if (!("".equals(split[i2]) && i2 == 0) && (("".equals(split[i2]) && i2 > 0) || !isValidFolder(split[i2]))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
}
