package org.jsoup.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.alipay.sdk.authjs.a;
import com.alipay.sdk.cons.c;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.umeng.analytics.pro.ai;
import io.netty.handler.ssl.ApplicationProtocolNames;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.jsoup.helper.DescendableLinkedList;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.Token;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class HtmlTreeBuilder extends TreeBuilder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Element contextElement;
    private Element formElement;
    private Element headElement;
    private HtmlTreeBuilderState originalState;
    private HtmlTreeBuilderState state;
    private boolean baseUriSetFromDoc = false;
    private DescendableLinkedList<Element> formattingElements = new DescendableLinkedList<>();
    private List<Token.Character> pendingTableCharacters = new ArrayList();
    private boolean framesetOk = true;
    private boolean fosterInserts = false;
    private boolean fragmentParsing = false;

    private void clearStackToContext(String... strArr) {
        Iterator<Element> descendingIterator = this.stack.descendingIterator();
        while (descendingIterator.hasNext()) {
            Element next = descendingIterator.next();
            if (StringUtil.in(next.nodeName(), strArr) || next.nodeName().equals("html")) {
                return;
            }
            descendingIterator.remove();
        }
    }

    private boolean inSpecificScope(String str, String[] strArr, String[] strArr2) {
        return inSpecificScope(new String[]{str}, strArr, strArr2);
    }

    private void insertNode(Node node) {
        if (this.stack.size() == 0) {
            this.doc.appendChild(node);
        } else if (isFosterInserts()) {
            insertInFosterParent(node);
        } else {
            currentElement().appendChild(node);
        }
    }

    private boolean isElementInQueue(DescendableLinkedList<Element> descendableLinkedList, Element element) {
        Iterator<Element> descendingIterator = descendableLinkedList.descendingIterator();
        while (descendingIterator.hasNext()) {
            if (descendingIterator.next() == element) {
                return true;
            }
        }
        return false;
    }

    private boolean isSameFormattingElement(Element element, Element element2) {
        return element.nodeName().equals(element2.nodeName()) && element.attributes().equals(element2.attributes());
    }

    private void replaceInQueue(LinkedList<Element> linkedList, Element element, Element element2) {
        int lastIndexOf = linkedList.lastIndexOf(element);
        Validate.isTrue(lastIndexOf != -1);
        linkedList.remove(lastIndexOf);
        linkedList.add(lastIndexOf, element2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Element aboveOnStack(Element element) {
        Iterator<Element> descendingIterator = this.stack.descendingIterator();
        while (descendingIterator.hasNext()) {
            if (descendingIterator.next() == element) {
                return descendingIterator.next();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearFormattingElementsToLastMarker() {
        while (!this.formattingElements.isEmpty()) {
            Element peekLast = this.formattingElements.peekLast();
            this.formattingElements.removeLast();
            if (peekLast == null) {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearStackToTableBodyContext() {
        clearStackToContext("tbody", "tfoot", "thead");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearStackToTableContext() {
        clearStackToContext("table");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearStackToTableRowContext() {
        clearStackToContext("tr");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void error(HtmlTreeBuilderState htmlTreeBuilderState) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), "Unexpected token [%s] when in state [%s]", this.currentToken.tokenType(), htmlTreeBuilderState));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void framesetOk(boolean z3) {
        this.framesetOk = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void generateImpliedEndTags(String str) {
        while (str != null && !currentElement().nodeName().equals(str) && StringUtil.in(currentElement().nodeName(), "dd", "dt", "li", "option", "optgroup", ai.av, "rp", "rt")) {
            pop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Element getActiveFormattingElement(String str) {
        Element next;
        Iterator<Element> descendingIterator = this.formattingElements.descendingIterator();
        while (descendingIterator.hasNext() && (next = descendingIterator.next()) != null) {
            if (next.nodeName().equals(str)) {
                return next;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getBaseUri() {
        return this.baseUri;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Document getDocument() {
        return this.doc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Element getFormElement() {
        return this.formElement;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Element getFromStack(String str) {
        Iterator<Element> descendingIterator = this.stack.descendingIterator();
        while (descendingIterator.hasNext()) {
            Element next = descendingIterator.next();
            if (next.nodeName().equals(str)) {
                return next;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Element getHeadElement() {
        return this.headElement;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Token.Character> getPendingTableCharacters() {
        return this.pendingTableCharacters;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DescendableLinkedList<Element> getStack() {
        return this.stack;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean inButtonScope(String str) {
        return inScope(str, new String[]{"button"});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean inListItemScope(String str) {
        return inScope(str, new String[]{"ol", "ul"});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean inScope(String[] strArr) {
        return inSpecificScope(strArr, new String[]{"applet", "caption", "html", "table", "td", "th", "marquee", "object"}, (String[]) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean inSelectScope(String str) {
        Iterator<Element> descendingIterator = this.stack.descendingIterator();
        while (descendingIterator.hasNext()) {
            String nodeName = descendingIterator.next().nodeName();
            if (nodeName.equals(str)) {
                return true;
            }
            if (!StringUtil.in(nodeName, "optgroup", "option")) {
                return false;
            }
        }
        Validate.fail("Should not be reachable");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean inTableScope(String str) {
        return inSpecificScope(str, new String[]{"html", "table"}, (String[]) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Element insert(Token.StartTag startTag) {
        if (startTag.isSelfClosing()) {
            Element insertEmpty = insertEmpty(startTag);
            this.stack.add(insertEmpty);
            this.tokeniser.emit(new Token.EndTag(insertEmpty.tagName()));
            return insertEmpty;
        }
        Element element = new Element(Tag.valueOf(startTag.name()), this.baseUri, startTag.attributes);
        insert(element);
        return element;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Element insertEmpty(Token.StartTag startTag) {
        Tag valueOf = Tag.valueOf(startTag.name());
        Element element = new Element(valueOf, this.baseUri, startTag.attributes);
        insertNode(element);
        if (startTag.isSelfClosing()) {
            if (valueOf.isKnownTag()) {
                if (valueOf.isSelfClosing()) {
                    this.tokeniser.acknowledgeSelfClosingFlag();
                }
            } else {
                valueOf.setSelfClosing();
                this.tokeniser.acknowledgeSelfClosingFlag();
            }
        }
        return element;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void insertInFosterParent(Node node) {
        Element element;
        Element fromStack = getFromStack("table");
        boolean z3 = false;
        if (fromStack != null) {
            if (fromStack.parent() != null) {
                element = fromStack.parent();
                z3 = true;
            } else {
                element = aboveOnStack(fromStack);
            }
        } else {
            element = this.stack.get(0);
        }
        if (z3) {
            Validate.notNull(fromStack);
            fromStack.before(node);
            return;
        }
        element.appendChild(node);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void insertMarkerToFormattingElements() {
        this.formattingElements.add(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void insertOnStackAfter(Element element, Element element2) {
        int lastIndexOf = this.stack.lastIndexOf(element);
        Validate.isTrue(lastIndexOf != -1);
        this.stack.add(lastIndexOf + 1, element2);
    }

    boolean isFosterInserts() {
        return this.fosterInserts;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFragmentParsing() {
        return this.fragmentParsing;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isInActiveFormattingElements(Element element) {
        return isElementInQueue(this.formattingElements, element);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isSpecial(Element element) {
        return StringUtil.in(element.nodeName(), "address", "applet", "area", "article", "aside", "base", "basefont", "bgsound", "blockquote", "body", "br", "button", "caption", "center", "col", "colgroup", "command", "dd", "details", "dir", "div", "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", c.f9728c, TypedValues.AttributesType.S_FRAME, "frameset", "h1", ApplicationProtocolNames.HTTP_2, "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", "html", "iframe", "img", "input", "isindex", "li", "link", "listing", "marquee", "menu", TTDownloadField.TT_META, "nav", "noembed", "noframes", "noscript", "object", "ol", ai.av, a.f9678l, "plaintext", "pre", "script", "section", "select", "style", "summary", "table", "tbody", "td", "textarea", "tfoot", "th", "thead", "title", "tr", "ul", "wbr", "xmp");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void markInsertionMode() {
        this.originalState = this.state;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void maybeSetBaseUri(Element element) {
        if (this.baseUriSetFromDoc) {
            return;
        }
        String absUrl = element.absUrl("href");
        if (absUrl.length() != 0) {
            this.baseUri = absUrl;
            this.baseUriSetFromDoc = true;
            this.doc.setBaseUri(absUrl);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void newPendingTableCharacters() {
        this.pendingTableCharacters = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean onStack(Element element) {
        return isElementInQueue(this.stack, element);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HtmlTreeBuilderState originalState() {
        return this.originalState;
    }

    @Override // org.jsoup.parser.TreeBuilder
    Document parse(String str, String str2, ParseErrorList parseErrorList) {
        this.state = HtmlTreeBuilderState.Initial;
        return super.parse(str, str2, parseErrorList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Node> parseFragment(String str, Element element, String str2, ParseErrorList parseErrorList) {
        Element element2;
        this.state = HtmlTreeBuilderState.Initial;
        initialiseParse(str, str2, parseErrorList);
        this.contextElement = element;
        this.fragmentParsing = true;
        if (element != null) {
            if (element.ownerDocument() != null) {
                this.doc.quirksMode(element.ownerDocument().quirksMode());
            }
            String tagName = element.tagName();
            if (StringUtil.in(tagName, "title", "textarea")) {
                this.tokeniser.transition(TokeniserState.Rcdata);
            } else if (StringUtil.in(tagName, "iframe", "noembed", "noframes", "style", "xmp")) {
                this.tokeniser.transition(TokeniserState.Rawtext);
            } else if (tagName.equals("script")) {
                this.tokeniser.transition(TokeniserState.ScriptData);
            } else if (tagName.equals("noscript")) {
                this.tokeniser.transition(TokeniserState.Data);
            } else if (tagName.equals("plaintext")) {
                this.tokeniser.transition(TokeniserState.Data);
            } else {
                this.tokeniser.transition(TokeniserState.Data);
            }
            element2 = new Element(Tag.valueOf("html"), str2);
            this.doc.appendChild(element2);
            this.stack.push(element2);
            resetInsertionMode();
        } else {
            element2 = null;
        }
        runParser();
        if (element != null) {
            return element2.childNodes();
        }
        return this.doc.childNodes();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Element pop() {
        if (this.stack.peekLast().nodeName().equals("td") && !this.state.name().equals("InCell")) {
            Validate.isFalse(true, "pop td not in cell");
        }
        if (this.stack.peekLast().nodeName().equals("html")) {
            Validate.isFalse(true, "popping html!");
        }
        return this.stack.pollLast();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void popStackToBefore(String str) {
        Iterator<Element> descendingIterator = this.stack.descendingIterator();
        while (descendingIterator.hasNext() && !descendingIterator.next().nodeName().equals(str)) {
            descendingIterator.remove();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void popStackToClose(String str) {
        Iterator<Element> descendingIterator = this.stack.descendingIterator();
        while (descendingIterator.hasNext()) {
            if (descendingIterator.next().nodeName().equals(str)) {
                descendingIterator.remove();
                return;
            }
            descendingIterator.remove();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.parser.TreeBuilder
    public boolean process(Token token) {
        this.currentToken = token;
        return this.state.process(token, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void push(Element element) {
        this.stack.add(element);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void pushActiveFormattingElements(Element element) {
        Element next;
        Iterator<Element> descendingIterator = this.formattingElements.descendingIterator();
        int i2 = 0;
        while (true) {
            if (!descendingIterator.hasNext() || (next = descendingIterator.next()) == null) {
                break;
            }
            if (isSameFormattingElement(element, next)) {
                i2++;
            }
            if (i2 == 3) {
                descendingIterator.remove();
                break;
            }
        }
        this.formattingElements.add(element);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void reconstructFormattingElements() {
        /*
            r7 = this;
            org.jsoup.helper.DescendableLinkedList<org.jsoup.nodes.Element> r0 = r7.formattingElements
            int r0 = r0.size()
            if (r0 == 0) goto L71
            org.jsoup.helper.DescendableLinkedList<org.jsoup.nodes.Element> r1 = r7.formattingElements
            java.lang.Object r1 = r1.getLast()
            if (r1 == 0) goto L71
            org.jsoup.helper.DescendableLinkedList<org.jsoup.nodes.Element> r1 = r7.formattingElements
            java.lang.Object r1 = r1.getLast()
            org.jsoup.nodes.Element r1 = (org.jsoup.nodes.Element) r1
            boolean r1 = r7.onStack(r1)
            if (r1 == 0) goto L1f
            goto L71
        L1f:
            org.jsoup.helper.DescendableLinkedList<org.jsoup.nodes.Element> r1 = r7.formattingElements
            java.lang.Object r1 = r1.getLast()
            org.jsoup.nodes.Element r1 = (org.jsoup.nodes.Element) r1
            r2 = 1
            int r0 = r0 - r2
            r3 = r0
        L2a:
            r4 = 0
            if (r3 != 0) goto L2e
            goto L41
        L2e:
            org.jsoup.helper.DescendableLinkedList<org.jsoup.nodes.Element> r1 = r7.formattingElements
            int r3 = r3 + (-1)
            java.lang.Object r1 = r1.get(r3)
            org.jsoup.nodes.Element r1 = (org.jsoup.nodes.Element) r1
            if (r1 == 0) goto L40
            boolean r5 = r7.onStack(r1)
            if (r5 == 0) goto L2a
        L40:
            r2 = 0
        L41:
            if (r2 != 0) goto L4d
            org.jsoup.helper.DescendableLinkedList<org.jsoup.nodes.Element> r1 = r7.formattingElements
            int r3 = r3 + 1
            java.lang.Object r1 = r1.get(r3)
            org.jsoup.nodes.Element r1 = (org.jsoup.nodes.Element) r1
        L4d:
            org.jsoup.helper.Validate.notNull(r1)
            java.lang.String r2 = r1.nodeName()
            org.jsoup.nodes.Element r2 = r7.insert(r2)
            org.jsoup.nodes.Attributes r5 = r2.attributes()
            org.jsoup.nodes.Attributes r6 = r1.attributes()
            r5.addAll(r6)
            org.jsoup.helper.DescendableLinkedList<org.jsoup.nodes.Element> r5 = r7.formattingElements
            r5.add(r3, r2)
            org.jsoup.helper.DescendableLinkedList<org.jsoup.nodes.Element> r2 = r7.formattingElements
            int r5 = r3 + 1
            r2.remove(r5)
            if (r3 != r0) goto L40
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilder.reconstructFormattingElements():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeFromActiveFormattingElements(Element element) {
        Iterator<Element> descendingIterator = this.formattingElements.descendingIterator();
        while (descendingIterator.hasNext()) {
            if (descendingIterator.next() == element) {
                descendingIterator.remove();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean removeFromStack(Element element) {
        Iterator<Element> descendingIterator = this.stack.descendingIterator();
        while (descendingIterator.hasNext()) {
            if (descendingIterator.next() == element) {
                descendingIterator.remove();
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void replaceActiveFormattingElement(Element element, Element element2) {
        replaceInQueue(this.formattingElements, element, element2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void replaceOnStack(Element element, Element element2) {
        replaceInQueue(this.stack, element, element2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resetInsertionMode() {
        Iterator<Element> descendingIterator = this.stack.descendingIterator();
        boolean z3 = false;
        while (descendingIterator.hasNext()) {
            Element next = descendingIterator.next();
            if (!descendingIterator.hasNext()) {
                z3 = true;
                next = this.contextElement;
            }
            String nodeName = next.nodeName();
            if ("select".equals(nodeName)) {
                transition(HtmlTreeBuilderState.InSelect);
                return;
            } else if (!"td".equals(nodeName) && (!"td".equals(nodeName) || z3)) {
                if ("tr".equals(nodeName)) {
                    transition(HtmlTreeBuilderState.InRow);
                    return;
                } else if (!"tbody".equals(nodeName) && !"thead".equals(nodeName) && !"tfoot".equals(nodeName)) {
                    if ("caption".equals(nodeName)) {
                        transition(HtmlTreeBuilderState.InCaption);
                        return;
                    } else if ("colgroup".equals(nodeName)) {
                        transition(HtmlTreeBuilderState.InColumnGroup);
                        return;
                    } else if ("table".equals(nodeName)) {
                        transition(HtmlTreeBuilderState.InTable);
                        return;
                    } else if ("head".equals(nodeName)) {
                        transition(HtmlTreeBuilderState.InBody);
                        return;
                    } else if ("body".equals(nodeName)) {
                        transition(HtmlTreeBuilderState.InBody);
                        return;
                    } else if ("frameset".equals(nodeName)) {
                        transition(HtmlTreeBuilderState.InFrameset);
                        return;
                    } else if ("html".equals(nodeName)) {
                        transition(HtmlTreeBuilderState.BeforeHead);
                        return;
                    } else if (z3) {
                        transition(HtmlTreeBuilderState.InBody);
                        return;
                    }
                } else {
                    transition(HtmlTreeBuilderState.InTableBody);
                    return;
                }
            } else {
                transition(HtmlTreeBuilderState.InCell);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFormElement(Element element) {
        this.formElement = element;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFosterInserts(boolean z3) {
        this.fosterInserts = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHeadElement(Element element) {
        this.headElement = element;
    }

    void setPendingTableCharacters(List<Token.Character> list) {
        this.pendingTableCharacters = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HtmlTreeBuilderState state() {
        return this.state;
    }

    public String toString() {
        return "TreeBuilder{currentToken=" + this.currentToken + ", state=" + this.state + ", currentElement=" + currentElement() + '}';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void transition(HtmlTreeBuilderState htmlTreeBuilderState) {
        this.state = htmlTreeBuilderState;
    }

    private boolean inSpecificScope(String[] strArr, String[] strArr2, String[] strArr3) {
        Iterator<Element> descendingIterator = this.stack.descendingIterator();
        while (descendingIterator.hasNext()) {
            String nodeName = descendingIterator.next().nodeName();
            if (StringUtil.in(nodeName, strArr)) {
                return true;
            }
            if (StringUtil.in(nodeName, strArr2)) {
                return false;
            }
            if (strArr3 != null && StringUtil.in(nodeName, strArr3)) {
                return false;
            }
        }
        Validate.fail("Should not be reachable");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean framesetOk() {
        return this.framesetOk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean inScope(String str) {
        return inScope(str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void generateImpliedEndTags() {
        generateImpliedEndTags(null);
    }

    boolean inScope(String str, String[] strArr) {
        return inSpecificScope(str, new String[]{"applet", "caption", "html", "table", "td", "th", "marquee", "object"}, strArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean process(Token token, HtmlTreeBuilderState htmlTreeBuilderState) {
        this.currentToken = token;
        return htmlTreeBuilderState.process(token, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Element insert(String str) {
        Element element = new Element(Tag.valueOf(str), this.baseUri);
        insert(element);
        return element;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void popStackToClose(String... strArr) {
        Iterator<Element> descendingIterator = this.stack.descendingIterator();
        while (descendingIterator.hasNext()) {
            if (StringUtil.in(descendingIterator.next().nodeName(), strArr)) {
                descendingIterator.remove();
                return;
            }
            descendingIterator.remove();
        }
    }

    void insert(Element element) {
        insertNode(element);
        this.stack.add(element);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void insert(Token.Comment comment) {
        insertNode(new Comment(comment.getData(), this.baseUri));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void insert(Token.Character character) {
        Node textNode;
        if (StringUtil.in(currentElement().tagName(), "script", "style")) {
            textNode = new DataNode(character.getData(), this.baseUri);
        } else {
            textNode = new TextNode(character.getData(), this.baseUri);
        }
        currentElement().appendChild(textNode);
    }
}
