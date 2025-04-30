package com.papa91.arc.widget.htmltext;

import android.text.Editable;
import android.text.Html;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
/* loaded from: classes4.dex */
public class WrapperContentHandler implements ContentHandler, Html.TagHandler {
    private ContentHandler mContentHandler;
    private Editable mSpannableStringBuilder;
    private WrapperTagHandler mTagHandler;

    public WrapperContentHandler(WrapperTagHandler wrapperTagHandler) {
        this.mTagHandler = wrapperTagHandler;
    }

    @Override // org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i2, int i4) throws SAXException {
        this.mContentHandler.characters(cArr, i2, i4);
    }

    @Override // org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        this.mContentHandler.endDocument();
    }

    @Override // org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        if (this.mTagHandler.handleTag(false, str2, this.mSpannableStringBuilder, null)) {
            return;
        }
        this.mContentHandler.endElement(str, str2, str3);
    }

    @Override // org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) throws SAXException {
        this.mContentHandler.endPrefixMapping(str);
    }

    @Override // android.text.Html.TagHandler
    public void handleTag(boolean z3, String str, Editable editable, XMLReader xMLReader) {
        if (this.mContentHandler == null) {
            this.mSpannableStringBuilder = editable;
            this.mContentHandler = xMLReader.getContentHandler();
            xMLReader.setContentHandler(this);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i2, int i4) throws SAXException {
        this.mContentHandler.ignorableWhitespace(cArr, i2, i4);
    }

    @Override // org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        this.mContentHandler.processingInstruction(str, str2);
    }

    @Override // org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        this.mContentHandler.setDocumentLocator(locator);
    }

    @Override // org.xml.sax.ContentHandler
    public void skippedEntity(String str) throws SAXException {
        this.mContentHandler.skippedEntity(str);
    }

    @Override // org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        this.mContentHandler.startDocument();
    }

    @Override // org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (this.mTagHandler.handleTag(true, str2, this.mSpannableStringBuilder, attributes)) {
            return;
        }
        this.mContentHandler.startElement(str, str2, str3, attributes);
    }

    @Override // org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) throws SAXException {
        this.mContentHandler.startPrefixMapping(str, str2);
    }
}
