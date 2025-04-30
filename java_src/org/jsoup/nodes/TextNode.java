package org.jsoup.nodes;

import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;
/* loaded from: classes5.dex */
public class TextNode extends Node {
    private static final String TEXT_KEY = "text";
    String text;

    public TextNode(String str, String str2) {
        this.baseUri = str2;
        this.text = str;
    }

    public static TextNode createFromEncoded(String str, String str2) {
        return new TextNode(Entities.unescape(str), str2);
    }

    private void ensureAttributes() {
        if (this.attributes == null) {
            Attributes attributes = new Attributes();
            this.attributes = attributes;
            attributes.put(TEXT_KEY, this.text);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean lastCharIsWhitespace(StringBuilder sb) {
        return sb.length() != 0 && sb.charAt(sb.length() - 1) == ' ';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String normaliseWhitespace(String str) {
        return StringUtil.normaliseWhitespace(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String stripLeadingWhitespace(String str) {
        return str.replaceFirst("^\\s+", "");
    }

    @Override // org.jsoup.nodes.Node
    public String absUrl(String str) {
        ensureAttributes();
        return super.absUrl(str);
    }

    @Override // org.jsoup.nodes.Node
    public String attr(String str) {
        ensureAttributes();
        return super.attr(str);
    }

    @Override // org.jsoup.nodes.Node
    public Attributes attributes() {
        ensureAttributes();
        return super.attributes();
    }

    public String getWholeText() {
        Attributes attributes = this.attributes;
        return attributes == null ? this.text : attributes.get(TEXT_KEY);
    }

    @Override // org.jsoup.nodes.Node
    public boolean hasAttr(String str) {
        ensureAttributes();
        return super.hasAttr(str);
    }

    public boolean isBlank() {
        return StringUtil.isBlank(getWholeText());
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#text";
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0048, code lost:
        if (isBlank() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005e, code lost:
        if (isBlank() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0060, code lost:
        indent(r4, r5, r6);
     */
    @Override // org.jsoup.nodes.Node
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void outerHtmlHead(java.lang.StringBuilder r4, int r5, org.jsoup.nodes.Document.OutputSettings r6) {
        /*
            r3 = this;
            java.lang.String r0 = r3.getWholeText()
            java.lang.String r0 = org.jsoup.nodes.Entities.escape(r0, r6)
            boolean r1 = r6.prettyPrint()
            if (r1 == 0) goto L26
            org.jsoup.nodes.Node r1 = r3.parent()
            boolean r1 = r1 instanceof org.jsoup.nodes.Element
            if (r1 == 0) goto L26
            org.jsoup.nodes.Node r1 = r3.parent()
            org.jsoup.nodes.Element r1 = (org.jsoup.nodes.Element) r1
            boolean r1 = org.jsoup.nodes.Element.preserveWhitespace(r1)
            if (r1 != 0) goto L26
            java.lang.String r0 = normaliseWhitespace(r0)
        L26:
            boolean r1 = r6.prettyPrint()
            if (r1 == 0) goto L63
            int r1 = r3.siblingIndex()
            if (r1 != 0) goto L4a
            org.jsoup.nodes.Node r1 = r3.parentNode
            boolean r2 = r1 instanceof org.jsoup.nodes.Element
            if (r2 == 0) goto L4a
            org.jsoup.nodes.Element r1 = (org.jsoup.nodes.Element) r1
            org.jsoup.parser.Tag r1 = r1.tag()
            boolean r1 = r1.formatAsBlock()
            if (r1 == 0) goto L4a
            boolean r1 = r3.isBlank()
            if (r1 == 0) goto L60
        L4a:
            boolean r1 = r6.outline()
            if (r1 == 0) goto L63
            java.util.List r1 = r3.siblingNodes()
            int r1 = r1.size()
            if (r1 <= 0) goto L63
            boolean r1 = r3.isBlank()
            if (r1 != 0) goto L63
        L60:
            r3.indent(r4, r5, r6)
        L63:
            r4.append(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.TextNode.outerHtmlHead(java.lang.StringBuilder, int, org.jsoup.nodes.Document$OutputSettings):void");
    }

    @Override // org.jsoup.nodes.Node
    void outerHtmlTail(StringBuilder sb, int i2, Document.OutputSettings outputSettings) {
    }

    @Override // org.jsoup.nodes.Node
    public Node removeAttr(String str) {
        ensureAttributes();
        return super.removeAttr(str);
    }

    public TextNode splitText(int i2) {
        Validate.isTrue(i2 >= 0, "Split offset must be not be negative");
        Validate.isTrue(i2 < this.text.length(), "Split offset must not be greater than current text length");
        String substring = getWholeText().substring(0, i2);
        String substring2 = getWholeText().substring(i2);
        text(substring);
        TextNode textNode = new TextNode(substring2, baseUri());
        if (parent() != null) {
            parent().addChildren(siblingIndex() + 1, textNode);
        }
        return textNode;
    }

    public String text() {
        return normaliseWhitespace(getWholeText());
    }

    @Override // org.jsoup.nodes.Node
    public String toString() {
        return outerHtml();
    }

    public TextNode text(String str) {
        this.text = str;
        Attributes attributes = this.attributes;
        if (attributes != null) {
            attributes.put(TEXT_KEY, str);
        }
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public Node attr(String str, String str2) {
        ensureAttributes();
        return super.attr(str, str2);
    }
}
