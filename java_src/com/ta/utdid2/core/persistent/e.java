package com.ta.utdid2.core.persistent;

import android.util.Xml;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;
/* loaded from: classes4.dex */
class e {
    public static final HashMap a(InputStream inputStream) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, null);
        return (HashMap) f(newPullParser, new String[1]);
    }

    public static final int[] b(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        try {
            int[] iArr = new int[Integer.parseInt(xmlPullParser.getAttributeValue(null, "num"))];
            int i2 = 0;
            int eventType = xmlPullParser.getEventType();
            do {
                if (eventType == 2) {
                    if (xmlPullParser.getName().equals("item")) {
                        try {
                            iArr[i2] = Integer.parseInt(xmlPullParser.getAttributeValue(null, "value"));
                        } catch (NullPointerException unused) {
                            throw new XmlPullParserException("Need value attribute in item");
                        } catch (NumberFormatException unused2) {
                            throw new XmlPullParserException("Not a number in value attribute in item");
                        }
                    } else {
                        throw new XmlPullParserException("Expected item tag at: " + xmlPullParser.getName());
                    }
                } else if (eventType == 3) {
                    if (xmlPullParser.getName().equals(str)) {
                        return iArr;
                    }
                    if (!xmlPullParser.getName().equals("item")) {
                        throw new XmlPullParserException("Expected " + str + " end tag at: " + xmlPullParser.getName());
                    }
                    i2++;
                }
                eventType = xmlPullParser.next();
            } while (eventType != 1);
            throw new XmlPullParserException("Document ended before " + str + " end tag");
        } catch (NullPointerException unused3) {
            throw new XmlPullParserException("Need num attribute in byte-array");
        } catch (NumberFormatException unused4) {
            throw new XmlPullParserException("Not a number in num attribute in byte-array");
        }
    }

    public static final ArrayList c(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        int eventType = xmlPullParser.getEventType();
        do {
            if (eventType == 2) {
                arrayList.add(e(xmlPullParser, strArr));
            } else if (eventType == 3) {
                if (xmlPullParser.getName().equals(str)) {
                    return arrayList;
                }
                throw new XmlPullParserException("Expected " + str + " end tag at: " + xmlPullParser.getName());
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        throw new XmlPullParserException("Document ended before " + str + " end tag");
    }

    public static final HashMap d(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        HashMap hashMap = new HashMap();
        int eventType = xmlPullParser.getEventType();
        do {
            if (eventType == 2) {
                Object e4 = e(xmlPullParser, strArr);
                if (strArr[0] != null) {
                    hashMap.put(strArr[0], e4);
                } else {
                    throw new XmlPullParserException("Map value without name attribute: " + xmlPullParser.getName());
                }
            } else if (eventType == 3) {
                if (xmlPullParser.getName().equals(str)) {
                    return hashMap;
                }
                throw new XmlPullParserException("Expected " + str + " end tag at: " + xmlPullParser.getName());
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        throw new XmlPullParserException("Document ended before " + str + " end tag");
    }

    private static final Object e(XmlPullParser xmlPullParser, String[] strArr) throws XmlPullParserException, IOException {
        int next;
        Object d4;
        Object obj = null;
        String attributeValue = xmlPullParser.getAttributeValue(null, "name");
        String name = xmlPullParser.getName();
        if (!name.equals("null")) {
            if (name.equals(TypedValues.Custom.S_STRING)) {
                String str = "";
                while (true) {
                    int next2 = xmlPullParser.next();
                    if (next2 == 1) {
                        throw new XmlPullParserException("Unexpected end of document in <string>");
                    }
                    if (next2 == 3) {
                        if (xmlPullParser.getName().equals(TypedValues.Custom.S_STRING)) {
                            strArr[0] = attributeValue;
                            return str;
                        }
                        throw new XmlPullParserException("Unexpected end tag in <string>: " + xmlPullParser.getName());
                    } else if (next2 == 4) {
                        str = str + xmlPullParser.getText();
                    } else if (next2 == 2) {
                        throw new XmlPullParserException("Unexpected start tag in <string>: " + xmlPullParser.getName());
                    }
                }
            } else if (name.equals(MethodReflectParams.INT)) {
                obj = Integer.valueOf(Integer.parseInt(xmlPullParser.getAttributeValue(null, "value")));
            } else if (name.equals(MethodReflectParams.LONG)) {
                obj = Long.valueOf(xmlPullParser.getAttributeValue(null, "value"));
            } else {
                if (name.equals("float")) {
                    d4 = new Float(xmlPullParser.getAttributeValue(null, "value"));
                } else if (name.equals(MethodReflectParams.DOUBLE)) {
                    d4 = new Double(xmlPullParser.getAttributeValue(null, "value"));
                } else if (name.equals("boolean")) {
                    obj = Boolean.valueOf(xmlPullParser.getAttributeValue(null, "value"));
                } else if (name.equals("int-array")) {
                    xmlPullParser.next();
                    int[] b4 = b(xmlPullParser, "int-array", strArr);
                    strArr[0] = attributeValue;
                    return b4;
                } else if (name.equals("map")) {
                    xmlPullParser.next();
                    HashMap d5 = d(xmlPullParser, "map", strArr);
                    strArr[0] = attributeValue;
                    return d5;
                } else if (name.equals("list")) {
                    xmlPullParser.next();
                    ArrayList c4 = c(xmlPullParser, "list", strArr);
                    strArr[0] = attributeValue;
                    return c4;
                } else {
                    throw new XmlPullParserException("Unknown tag: " + name);
                }
                obj = d4;
            }
        }
        do {
            next = xmlPullParser.next();
            if (next == 1) {
                throw new XmlPullParserException("Unexpected end of document in <" + name + SimpleComparison.GREATER_THAN_OPERATION);
            } else if (next == 3) {
                if (xmlPullParser.getName().equals(name)) {
                    strArr[0] = attributeValue;
                    return obj;
                }
                throw new XmlPullParserException("Unexpected end tag in <" + name + ">: " + xmlPullParser.getName());
            } else if (next == 4) {
                throw new XmlPullParserException("Unexpected text in <" + name + ">: " + xmlPullParser.getName());
            }
        } while (next != 2);
        throw new XmlPullParserException("Unexpected start tag in <" + name + ">: " + xmlPullParser.getName());
    }

    public static final Object f(XmlPullParser xmlPullParser, String[] strArr) throws XmlPullParserException, IOException {
        int eventType = xmlPullParser.getEventType();
        while (eventType != 2) {
            if (eventType == 3) {
                throw new XmlPullParserException("Unexpected end tag at: " + xmlPullParser.getName());
            } else if (eventType != 4) {
                try {
                    eventType = xmlPullParser.next();
                    if (eventType == 1) {
                        throw new XmlPullParserException("Unexpected end of document");
                    }
                } catch (Exception unused) {
                    throw new XmlPullParserException("Unexpected call next(): " + xmlPullParser.getName());
                }
            } else {
                throw new XmlPullParserException("Unexpected text: " + xmlPullParser.getText());
            }
        }
        return e(xmlPullParser, strArr);
    }

    public static final void g(byte[] bArr, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        if (bArr == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "byte-array");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        xmlSerializer.attribute(null, "num", Integer.toString(bArr.length));
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b4 : bArr) {
            int i2 = b4 >> 4;
            sb.append(i2 >= 10 ? (i2 + 97) - 10 : i2 + 48);
            int i4 = b4 & 255;
            sb.append(i4 >= 10 ? (i4 + 97) - 10 : i4 + 48);
        }
        xmlSerializer.text(sb.toString());
        xmlSerializer.endTag(null, "byte-array");
    }

    public static final void h(int[] iArr, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        if (iArr == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "int-array");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        xmlSerializer.attribute(null, "num", Integer.toString(iArr.length));
        for (int i2 : iArr) {
            xmlSerializer.startTag(null, "item");
            xmlSerializer.attribute(null, "value", Integer.toString(i2));
            xmlSerializer.endTag(null, "item");
        }
        xmlSerializer.endTag(null, "int-array");
    }

    public static final void i(List list, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        if (list == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "list");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            l(list.get(i2), null, xmlSerializer);
        }
        xmlSerializer.endTag(null, "list");
    }

    public static final void j(Map map, OutputStream outputStream) throws XmlPullParserException, IOException {
        a aVar = new a();
        aVar.setOutput(outputStream, "utf-8");
        aVar.startDocument(null, Boolean.TRUE);
        aVar.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        k(map, null, aVar);
        aVar.endDocument();
    }

    public static final void k(Map map, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        if (map == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "map");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        for (Map.Entry entry : map.entrySet()) {
            l(entry.getValue(), (String) entry.getKey(), xmlSerializer);
        }
        xmlSerializer.endTag(null, "map");
    }

    public static final void l(Object obj, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        String str2;
        if (obj == null) {
            xmlSerializer.startTag(null, "null");
            if (str != null) {
                xmlSerializer.attribute(null, "name", str);
            }
            xmlSerializer.endTag(null, "null");
        } else if (obj instanceof String) {
            xmlSerializer.startTag(null, TypedValues.Custom.S_STRING);
            if (str != null) {
                xmlSerializer.attribute(null, "name", str);
            }
            xmlSerializer.text(obj.toString());
            xmlSerializer.endTag(null, TypedValues.Custom.S_STRING);
        } else {
            if (obj instanceof Integer) {
                str2 = MethodReflectParams.INT;
            } else if (obj instanceof Long) {
                str2 = MethodReflectParams.LONG;
            } else if (obj instanceof Float) {
                str2 = "float";
            } else if (obj instanceof Double) {
                str2 = MethodReflectParams.DOUBLE;
            } else if (!(obj instanceof Boolean)) {
                if (obj instanceof byte[]) {
                    g((byte[]) obj, str, xmlSerializer);
                    return;
                } else if (obj instanceof int[]) {
                    h((int[]) obj, str, xmlSerializer);
                    return;
                } else if (obj instanceof Map) {
                    k((Map) obj, str, xmlSerializer);
                    return;
                } else if (obj instanceof List) {
                    i((List) obj, str, xmlSerializer);
                    return;
                } else if (obj instanceof CharSequence) {
                    xmlSerializer.startTag(null, TypedValues.Custom.S_STRING);
                    if (str != null) {
                        xmlSerializer.attribute(null, "name", str);
                    }
                    xmlSerializer.text(obj.toString());
                    xmlSerializer.endTag(null, TypedValues.Custom.S_STRING);
                    return;
                } else {
                    throw new RuntimeException("writeValueXml: unable to write value " + obj);
                }
            } else {
                str2 = "boolean";
            }
            xmlSerializer.startTag(null, str2);
            if (str != null) {
                xmlSerializer.attribute(null, "name", str);
            }
            xmlSerializer.attribute(null, "value", obj.toString());
            xmlSerializer.endTag(null, str2);
        }
    }
}
