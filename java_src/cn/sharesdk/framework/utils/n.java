package cn.sharesdk.framework.utils;

import android.text.TextUtils;
import android.util.Xml;
import java.util.HashMap;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
/* compiled from: XmlParser.java */
/* loaded from: classes2.dex */
public class n {

    /* compiled from: XmlParser.java */
    /* loaded from: classes2.dex */
    private static class a extends DefaultHandler {

        /* renamed from: a  reason: collision with root package name */
        private HashMap<String, Object> f8939a = new HashMap<>();

        /* renamed from: b  reason: collision with root package name */
        private HashMap<String, Object> f8940b;

        public HashMap<String, Object> a() {
            return this.f8939a;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i2, int i4) {
            HashMap<String, Object> hashMap;
            String trim = String.valueOf(cArr, i2, i4).trim();
            if (TextUtils.isEmpty(trim) || (hashMap = this.f8940b) == null) {
                return;
            }
            hashMap.put("value", trim);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            this.f8940b = null;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            if (this.f8940b != null) {
                HashMap<String, Object> hashMap = new HashMap<>();
                this.f8940b.put(str2, hashMap);
                this.f8940b = hashMap;
            } else {
                HashMap<String, Object> hashMap2 = new HashMap<>();
                this.f8940b = hashMap2;
                this.f8939a.put(str2, hashMap2);
            }
            int length = attributes.getLength();
            for (int i2 = 0; i2 < length; i2++) {
                this.f8940b.put(attributes.getLocalName(i2), attributes.getValue(i2));
            }
        }
    }

    public HashMap<String, Object> a(String str) throws Throwable {
        a aVar = new a();
        Xml.parse(str, aVar);
        return aVar.a();
    }
}
