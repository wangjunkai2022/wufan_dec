package org.jsoup.safety;

import java.util.Iterator;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.Tag;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;
/* loaded from: classes5.dex */
public class Cleaner {
    private Whitelist whitelist;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class CleaningVisitor implements NodeVisitor {
        private Element destination;
        private int numDiscarded;
        private final Element root;

        @Override // org.jsoup.select.NodeVisitor
        public void head(Node node, int i2) {
            if (node instanceof Element) {
                Element element = (Element) node;
                if (Cleaner.this.whitelist.isSafeTag(element.tagName())) {
                    ElementMeta createSafeElement = Cleaner.this.createSafeElement(element);
                    Element element2 = createSafeElement.el;
                    this.destination.appendChild(element2);
                    this.numDiscarded += createSafeElement.numAttribsDiscarded;
                    this.destination = element2;
                } else if (node != this.root) {
                    this.numDiscarded++;
                }
            } else if (node instanceof TextNode) {
                this.destination.appendChild(new TextNode(((TextNode) node).getWholeText(), node.baseUri()));
            } else {
                this.numDiscarded++;
            }
        }

        @Override // org.jsoup.select.NodeVisitor
        public void tail(Node node, int i2) {
            if ((node instanceof Element) && Cleaner.this.whitelist.isSafeTag(node.nodeName())) {
                this.destination = this.destination.parent();
            }
        }

        private CleaningVisitor(Element element, Element element2) {
            this.numDiscarded = 0;
            this.root = element;
            this.destination = element2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class ElementMeta {
        Element el;
        int numAttribsDiscarded;

        ElementMeta(Element element, int i2) {
            this.el = element;
            this.numAttribsDiscarded = i2;
        }
    }

    public Cleaner(Whitelist whitelist) {
        Validate.notNull(whitelist);
        this.whitelist = whitelist;
    }

    private int copySafeNodes(Element element, Element element2) {
        CleaningVisitor cleaningVisitor = new CleaningVisitor(element, element2);
        new NodeTraversor(cleaningVisitor).traverse(element);
        return cleaningVisitor.numDiscarded;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ElementMeta createSafeElement(Element element) {
        String tagName = element.tagName();
        Attributes attributes = new Attributes();
        Element element2 = new Element(Tag.valueOf(tagName), element.baseUri(), attributes);
        Iterator<Attribute> it2 = element.attributes().iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            Attribute next = it2.next();
            if (this.whitelist.isSafeAttribute(tagName, element, next)) {
                attributes.put(next);
            } else {
                i2++;
            }
        }
        attributes.addAll(this.whitelist.getEnforcedAttributes(tagName));
        return new ElementMeta(element2, i2);
    }

    public Document clean(Document document) {
        Validate.notNull(document);
        Document createShell = Document.createShell(document.baseUri());
        if (document.body() != null) {
            copySafeNodes(document.body(), createShell.body());
        }
        return createShell;
    }

    public boolean isValid(Document document) {
        Validate.notNull(document);
        return copySafeNodes(document.body(), Document.createShell(document.baseUri()).body()) == 0;
    }
}
