package com.xinzhu.overmind.utils;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: XmlUtils.java */
/* loaded from: classes3.dex */
public class v {
    public static final void a(XmlPullParser parser) throws XmlPullParserException, IOException {
        int next;
        do {
            next = parser.next();
            if (next == 2) {
                return;
            }
        } while (next != 1);
    }

    public static boolean b(XmlPullParser parser, int outerDepth) throws IOException, XmlPullParserException {
        while (true) {
            int next = parser.next();
            if (next == 1) {
                return false;
            }
            if (next == 3 && parser.getDepth() == outerDepth) {
                return false;
            }
            if (next == 2 && parser.getDepth() == outerDepth + 1) {
                return true;
            }
        }
    }

    public static void c(XmlPullParser parser) throws XmlPullParserException, IOException {
        int depth = parser.getDepth();
        while (true) {
            int next = parser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && parser.getDepth() <= depth) {
                return;
            }
        }
    }
}
