package org.androidannotations.api.sharedpreferences;

import android.util.Xml;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.Collections;
import java.util.Set;
import java.util.TreeSet;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;
/* compiled from: SetXmlSerializer.java */
/* loaded from: classes5.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private static final String f73191a = "";

    /* renamed from: b  reason: collision with root package name */
    private static final String f73192b = "AA_string";

    /* renamed from: c  reason: collision with root package name */
    private static final String f73193c = "AA_set";

    private l() {
    }

    public static Set<String> a(String str) {
        TreeSet treeSet = new TreeSet();
        XmlPullParser newPullParser = Xml.newPullParser();
        try {
            newPullParser.setInput(new StringReader(str));
            newPullParser.next();
            newPullParser.require(2, "", f73193c);
            while (newPullParser.next() != 3) {
                newPullParser.require(2, "", f73192b);
                newPullParser.next();
                newPullParser.require(4, null, null);
                treeSet.add(newPullParser.getText());
                newPullParser.next();
                newPullParser.require(3, null, f73192b);
            }
            return treeSet;
        } catch (IOException | XmlPullParserException unused) {
            return null;
        }
    }

    public static String b(Set<String> set) {
        if (set == null) {
            set = Collections.emptySet();
        }
        StringWriter stringWriter = new StringWriter();
        XmlSerializer newSerializer = Xml.newSerializer();
        try {
            newSerializer.setOutput(stringWriter);
            newSerializer.startTag("", f73193c);
            for (String str : set) {
                newSerializer.startTag("", f73192b).text(str).endTag("", f73192b);
            }
            newSerializer.endTag("", f73193c).endDocument();
        } catch (IOException | IllegalArgumentException | IllegalStateException unused) {
        }
        return stringWriter.toString();
    }
}
