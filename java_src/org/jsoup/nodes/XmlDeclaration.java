package org.jsoup.nodes;

import com.j256.ormlite.stmt.query.SimpleComparison;
import org.jsoup.nodes.Document;
/* loaded from: classes5.dex */
public class XmlDeclaration extends Node {
    private static final String DECL_KEY = "declaration";
    private final boolean isProcessingInstruction;

    public XmlDeclaration(String str, String str2, boolean z3) {
        super(str2);
        this.attributes.put(DECL_KEY, str);
        this.isProcessingInstruction = z3;
    }

    public String getWholeDeclaration() {
        return this.attributes.get(DECL_KEY);
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#declaration";
    }

    @Override // org.jsoup.nodes.Node
    void outerHtmlHead(StringBuilder sb, int i2, Document.OutputSettings outputSettings) {
        sb.append(SimpleComparison.LESS_THAN_OPERATION);
        sb.append(this.isProcessingInstruction ? "!" : "?");
        sb.append(getWholeDeclaration());
        sb.append(SimpleComparison.GREATER_THAN_OPERATION);
    }

    @Override // org.jsoup.nodes.Node
    void outerHtmlTail(StringBuilder sb, int i2, Document.OutputSettings outputSettings) {
    }

    @Override // org.jsoup.nodes.Node
    public String toString() {
        return outerHtml();
    }
}
