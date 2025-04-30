package org.jsoup.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.alipay.sdk.authjs.a;
import com.alipay.sdk.cons.c;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.umeng.analytics.pro.ai;
import io.netty.handler.ssl.ApplicationProtocolNames;
import java.util.Iterator;
import org.jsoup.helper.DescendableLinkedList;
import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.parser.Token;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public enum HtmlTreeBuilderState {
    Initial { // from class: org.jsoup.parser.HtmlTreeBuilderState.1
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (token.isDoctype()) {
                Token.Doctype asDoctype = token.asDoctype();
                htmlTreeBuilder.getDocument().appendChild(new DocumentType(asDoctype.getName(), asDoctype.getPublicIdentifier(), asDoctype.getSystemIdentifier(), htmlTreeBuilder.getBaseUri()));
                if (asDoctype.isForceQuirks()) {
                    htmlTreeBuilder.getDocument().quirksMode(Document.QuirksMode.quirks);
                }
                htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHtml);
            } else {
                htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHtml);
                return htmlTreeBuilder.process(token);
            }
            return true;
        }
    },
    BeforeHtml { // from class: org.jsoup.parser.HtmlTreeBuilderState.2
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.insert("html");
            htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHead);
            return htmlTreeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (!token.isComment()) {
                if (HtmlTreeBuilderState.isWhitespace(token)) {
                    return true;
                }
                if (token.isStartTag() && token.asStartTag().name().equals("html")) {
                    htmlTreeBuilder.insert(token.asStartTag());
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHead);
                } else if (token.isEndTag() && StringUtil.in(token.asEndTag().name(), "head", "body", "html", "br")) {
                    return anythingElse(token, htmlTreeBuilder);
                } else {
                    if (token.isEndTag()) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    return anythingElse(token, htmlTreeBuilder);
                }
            } else {
                htmlTreeBuilder.insert(token.asComment());
            }
            return true;
        }
    },
    BeforeHead { // from class: org.jsoup.parser.HtmlTreeBuilderState.3
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            } else if (token.isStartTag() && token.asStartTag().name().equals("html")) {
                return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
            } else {
                if (token.isStartTag() && token.asStartTag().name().equals("head")) {
                    htmlTreeBuilder.setHeadElement(htmlTreeBuilder.insert(token.asStartTag()));
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InHead);
                } else if (token.isEndTag() && StringUtil.in(token.asEndTag().name(), "head", "body", "html", "br")) {
                    htmlTreeBuilder.process(new Token.StartTag("head"));
                    return htmlTreeBuilder.process(token);
                } else if (token.isEndTag()) {
                    htmlTreeBuilder.error(this);
                    return false;
                } else {
                    htmlTreeBuilder.process(new Token.StartTag("head"));
                    return htmlTreeBuilder.process(token);
                }
            }
            return true;
        }
    },
    InHead { // from class: org.jsoup.parser.HtmlTreeBuilderState.4
        private boolean anythingElse(Token token, TreeBuilder treeBuilder) {
            treeBuilder.process(new Token.EndTag("head"));
            return treeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            int i2 = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            if (i2 == 1) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (i2 == 2) {
                htmlTreeBuilder.error(this);
                return false;
            } else if (i2 == 3) {
                Token.StartTag asStartTag = token.asStartTag();
                String name = asStartTag.name();
                if (name.equals("html")) {
                    return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
                }
                if (StringUtil.in(name, "base", "basefont", "bgsound", "command", "link")) {
                    Element insertEmpty = htmlTreeBuilder.insertEmpty(asStartTag);
                    if (name.equals("base") && insertEmpty.hasAttr("href")) {
                        htmlTreeBuilder.maybeSetBaseUri(insertEmpty);
                    }
                } else if (name.equals(TTDownloadField.TT_META)) {
                    htmlTreeBuilder.insertEmpty(asStartTag);
                } else if (name.equals("title")) {
                    HtmlTreeBuilderState.handleRcData(asStartTag, htmlTreeBuilder);
                } else if (StringUtil.in(name, "noframes", "style")) {
                    HtmlTreeBuilderState.handleRawtext(asStartTag, htmlTreeBuilder);
                } else if (name.equals("noscript")) {
                    htmlTreeBuilder.insert(asStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InHeadNoscript);
                } else if (name.equals("script")) {
                    htmlTreeBuilder.insert(asStartTag);
                    htmlTreeBuilder.tokeniser.transition(TokeniserState.ScriptData);
                    htmlTreeBuilder.markInsertionMode();
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.Text);
                } else if (name.equals("head")) {
                    htmlTreeBuilder.error(this);
                    return false;
                } else {
                    return anythingElse(token, htmlTreeBuilder);
                }
            } else if (i2 != 4) {
                return anythingElse(token, htmlTreeBuilder);
            } else {
                String name2 = token.asEndTag().name();
                if (name2.equals("head")) {
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterHead);
                } else if (StringUtil.in(name2, "body", "html", "br")) {
                    return anythingElse(token, htmlTreeBuilder);
                } else {
                    htmlTreeBuilder.error(this);
                    return false;
                }
            }
            return true;
        }
    },
    InHeadNoscript { // from class: org.jsoup.parser.HtmlTreeBuilderState.5
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.process(new Token.EndTag("noscript"));
            return htmlTreeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return true;
            } else if (token.isStartTag() && token.asStartTag().name().equals("html")) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            } else {
                if (!token.isEndTag() || !token.asEndTag().name().equals("noscript")) {
                    if (!HtmlTreeBuilderState.isWhitespace(token) && !token.isComment() && (!token.isStartTag() || !StringUtil.in(token.asStartTag().name(), "basefont", "bgsound", "link", TTDownloadField.TT_META, "noframes", "style"))) {
                        if (token.isEndTag() && token.asEndTag().name().equals("br")) {
                            return anythingElse(token, htmlTreeBuilder);
                        }
                        if ((token.isStartTag() && StringUtil.in(token.asStartTag().name(), "head", "noscript")) || token.isEndTag()) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                }
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InHead);
                return true;
            }
        }
    },
    AfterHead { // from class: org.jsoup.parser.HtmlTreeBuilderState.6
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.process(new Token.StartTag("body"));
            htmlTreeBuilder.framesetOk(true);
            return htmlTreeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            } else if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            } else if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return true;
            } else if (token.isStartTag()) {
                Token.StartTag asStartTag = token.asStartTag();
                String name = asStartTag.name();
                if (name.equals("html")) {
                    return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
                }
                if (name.equals("body")) {
                    htmlTreeBuilder.insert(asStartTag);
                    htmlTreeBuilder.framesetOk(false);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InBody);
                    return true;
                } else if (name.equals("frameset")) {
                    htmlTreeBuilder.insert(asStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InFrameset);
                    return true;
                } else if (StringUtil.in(name, "base", "basefont", "bgsound", "link", TTDownloadField.TT_META, "noframes", "script", "style", "title")) {
                    htmlTreeBuilder.error(this);
                    Element headElement = htmlTreeBuilder.getHeadElement();
                    htmlTreeBuilder.push(headElement);
                    htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                    htmlTreeBuilder.removeFromStack(headElement);
                    return true;
                } else if (name.equals("head")) {
                    htmlTreeBuilder.error(this);
                    return false;
                } else {
                    anythingElse(token, htmlTreeBuilder);
                    return true;
                }
            } else if (token.isEndTag()) {
                if (StringUtil.in(token.asEndTag().name(), "body", "html")) {
                    anythingElse(token, htmlTreeBuilder);
                    return true;
                }
                htmlTreeBuilder.error(this);
                return false;
            } else {
                anythingElse(token, htmlTreeBuilder);
                return true;
            }
        }
    },
    InBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.7
        boolean anyOtherEndTag(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            String name = token.asEndTag().name();
            Iterator<Element> descendingIterator = htmlTreeBuilder.getStack().descendingIterator();
            while (descendingIterator.hasNext()) {
                Element next = descendingIterator.next();
                if (next.nodeName().equals(name)) {
                    htmlTreeBuilder.generateImpliedEndTags(name);
                    if (!name.equals(htmlTreeBuilder.currentElement().nodeName())) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(name);
                    return true;
                } else if (htmlTreeBuilder.isSpecial(next)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
            }
            return true;
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            Element element;
            int i2 = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            boolean z3 = true;
            if (i2 == 1) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            } else if (i2 == 2) {
                htmlTreeBuilder.error(this);
                return false;
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return true;
                    }
                    Token.Character asCharacter = token.asCharacter();
                    if (!asCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                        if (HtmlTreeBuilderState.isWhitespace(asCharacter)) {
                            htmlTreeBuilder.reconstructFormattingElements();
                            htmlTreeBuilder.insert(asCharacter);
                            return true;
                        }
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insert(asCharacter);
                        htmlTreeBuilder.framesetOk(false);
                        return true;
                    }
                    htmlTreeBuilder.error(this);
                    return false;
                }
                Token.EndTag asEndTag = token.asEndTag();
                String name = asEndTag.name();
                if (name.equals("body")) {
                    if (!htmlTreeBuilder.inScope("body")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterBody);
                    return true;
                } else if (name.equals("html")) {
                    if (htmlTreeBuilder.process(new Token.EndTag("body"))) {
                        return htmlTreeBuilder.process(asEndTag);
                    }
                    return true;
                } else if (StringUtil.in(name, "address", "article", "aside", "blockquote", "button", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "menu", "nav", "ol", "pre", "section", "summary", "ul")) {
                    if (!htmlTreeBuilder.inScope(name)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags();
                    if (!htmlTreeBuilder.currentElement().nodeName().equals(name)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(name);
                    return true;
                } else {
                    Element element2 = null;
                    if (name.equals(c.f9728c)) {
                        Element formElement = htmlTreeBuilder.getFormElement();
                        htmlTreeBuilder.setFormElement(null);
                        if (formElement != null && htmlTreeBuilder.inScope(name)) {
                            htmlTreeBuilder.generateImpliedEndTags();
                            if (!htmlTreeBuilder.currentElement().nodeName().equals(name)) {
                                htmlTreeBuilder.error(this);
                            }
                            htmlTreeBuilder.removeFromStack(formElement);
                            return true;
                        }
                        htmlTreeBuilder.error(this);
                        return false;
                    } else if (name.equals(ai.av)) {
                        if (!htmlTreeBuilder.inButtonScope(name)) {
                            htmlTreeBuilder.error(this);
                            htmlTreeBuilder.process(new Token.StartTag(name));
                            return htmlTreeBuilder.process(asEndTag);
                        }
                        htmlTreeBuilder.generateImpliedEndTags(name);
                        if (!htmlTreeBuilder.currentElement().nodeName().equals(name)) {
                            htmlTreeBuilder.error(this);
                        }
                        htmlTreeBuilder.popStackToClose(name);
                        return true;
                    } else if (name.equals("li")) {
                        if (!htmlTreeBuilder.inListItemScope(name)) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.generateImpliedEndTags(name);
                        if (!htmlTreeBuilder.currentElement().nodeName().equals(name)) {
                            htmlTreeBuilder.error(this);
                        }
                        htmlTreeBuilder.popStackToClose(name);
                        return true;
                    } else if (StringUtil.in(name, "dd", "dt")) {
                        if (!htmlTreeBuilder.inScope(name)) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.generateImpliedEndTags(name);
                        if (!htmlTreeBuilder.currentElement().nodeName().equals(name)) {
                            htmlTreeBuilder.error(this);
                        }
                        htmlTreeBuilder.popStackToClose(name);
                        return true;
                    } else if (StringUtil.in(name, "h1", ApplicationProtocolNames.HTTP_2, "h3", "h4", "h5", "h6")) {
                        if (!htmlTreeBuilder.inScope(new String[]{"h1", ApplicationProtocolNames.HTTP_2, "h3", "h4", "h5", "h6"})) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.generateImpliedEndTags(name);
                        if (!htmlTreeBuilder.currentElement().nodeName().equals(name)) {
                            htmlTreeBuilder.error(this);
                        }
                        htmlTreeBuilder.popStackToClose("h1", ApplicationProtocolNames.HTTP_2, "h3", "h4", "h5", "h6");
                        return true;
                    } else if (name.equals("sarcasm")) {
                        return anyOtherEndTag(token, htmlTreeBuilder);
                    } else {
                        if (!StringUtil.in(name, "a", "b", "big", "code", "em", "font", ai.aA, "nobr", ai.az, "small", "strike", "strong", "tt", ai.aE)) {
                            if (StringUtil.in(name, "applet", "marquee", "object")) {
                                if (htmlTreeBuilder.inScope("name")) {
                                    return true;
                                }
                                if (!htmlTreeBuilder.inScope(name)) {
                                    htmlTreeBuilder.error(this);
                                    return false;
                                }
                                htmlTreeBuilder.generateImpliedEndTags();
                                if (!htmlTreeBuilder.currentElement().nodeName().equals(name)) {
                                    htmlTreeBuilder.error(this);
                                }
                                htmlTreeBuilder.popStackToClose(name);
                                htmlTreeBuilder.clearFormattingElementsToLastMarker();
                                return true;
                            } else if (name.equals("br")) {
                                htmlTreeBuilder.error(this);
                                htmlTreeBuilder.process(new Token.StartTag("br"));
                                return false;
                            } else {
                                return anyOtherEndTag(token, htmlTreeBuilder);
                            }
                        }
                        int i4 = 0;
                        while (i4 < 8) {
                            Element activeFormattingElement = htmlTreeBuilder.getActiveFormattingElement(name);
                            if (activeFormattingElement == null) {
                                return anyOtherEndTag(token, htmlTreeBuilder);
                            }
                            if (!htmlTreeBuilder.onStack(activeFormattingElement)) {
                                htmlTreeBuilder.error(this);
                                htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                                return z3;
                            } else if (!htmlTreeBuilder.inScope(activeFormattingElement.nodeName())) {
                                htmlTreeBuilder.error(this);
                                return false;
                            } else {
                                if (htmlTreeBuilder.currentElement() != activeFormattingElement) {
                                    htmlTreeBuilder.error(this);
                                }
                                DescendableLinkedList<Element> stack = htmlTreeBuilder.getStack();
                                Element element3 = element2;
                                boolean z4 = false;
                                for (int i5 = 0; i5 < stack.size() && i5 < 64; i5++) {
                                    element = stack.get(i5);
                                    if (element == activeFormattingElement) {
                                        element3 = stack.get(i5 - 1);
                                        z4 = true;
                                    } else if (z4 && htmlTreeBuilder.isSpecial(element)) {
                                        break;
                                    }
                                }
                                element = element2;
                                if (element == null) {
                                    htmlTreeBuilder.popStackToClose(activeFormattingElement.nodeName());
                                    htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                                    return z3;
                                }
                                Element element4 = element;
                                Node node = element4;
                                int i6 = 0;
                                for (int i7 = 3; i6 < i7; i7 = 3) {
                                    if (htmlTreeBuilder.onStack(element4)) {
                                        element4 = htmlTreeBuilder.aboveOnStack(element4);
                                    }
                                    if (!htmlTreeBuilder.isInActiveFormattingElements(element4)) {
                                        htmlTreeBuilder.removeFromStack(element4);
                                    } else if (element4 == activeFormattingElement) {
                                        break;
                                    } else {
                                        Element element5 = new Element(Tag.valueOf(element4.nodeName()), htmlTreeBuilder.getBaseUri());
                                        htmlTreeBuilder.replaceActiveFormattingElement(element4, element5);
                                        htmlTreeBuilder.replaceOnStack(element4, element5);
                                        if (node.parent() != null) {
                                            node.remove();
                                        }
                                        element5.appendChild(node);
                                        element4 = element5;
                                        node = element4;
                                    }
                                    i6++;
                                }
                                if (StringUtil.in(element3.nodeName(), "table", "tbody", "tfoot", "thead", "tr")) {
                                    if (node.parent() != null) {
                                        node.remove();
                                    }
                                    htmlTreeBuilder.insertInFosterParent(node);
                                } else {
                                    if (node.parent() != null) {
                                        node.remove();
                                    }
                                    element3.appendChild(node);
                                }
                                Element element6 = new Element(Tag.valueOf(name), htmlTreeBuilder.getBaseUri());
                                for (Node node2 : (Node[]) element.childNodes().toArray(new Node[element.childNodeSize()])) {
                                    element6.appendChild(node2);
                                }
                                element.appendChild(element6);
                                htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                                htmlTreeBuilder.removeFromStack(activeFormattingElement);
                                htmlTreeBuilder.insertOnStackAfter(element, element6);
                                i4++;
                                z3 = true;
                                element2 = null;
                            }
                        }
                        return true;
                    }
                }
            } else {
                Token.StartTag asStartTag = token.asStartTag();
                String name2 = asStartTag.name();
                if (name2.equals("html")) {
                    htmlTreeBuilder.error(this);
                    Element first = htmlTreeBuilder.getStack().getFirst();
                    Iterator<Attribute> it2 = asStartTag.getAttributes().iterator();
                    while (it2.hasNext()) {
                        Attribute next = it2.next();
                        if (!first.hasAttr(next.getKey())) {
                            first.attributes().put(next);
                        }
                    }
                    return true;
                } else if (StringUtil.in(name2, "base", "basefont", "bgsound", "command", "link", TTDownloadField.TT_META, "noframes", "script", "style", "title")) {
                    return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                } else {
                    if (name2.equals("body")) {
                        htmlTreeBuilder.error(this);
                        DescendableLinkedList<Element> stack2 = htmlTreeBuilder.getStack();
                        if (stack2.size() == 1 || (stack2.size() > 2 && !stack2.get(1).nodeName().equals("body"))) {
                            return false;
                        }
                        htmlTreeBuilder.framesetOk(false);
                        Element element7 = stack2.get(1);
                        Iterator<Attribute> it3 = asStartTag.getAttributes().iterator();
                        while (it3.hasNext()) {
                            Attribute next2 = it3.next();
                            if (!element7.hasAttr(next2.getKey())) {
                                element7.attributes().put(next2);
                            }
                        }
                        return true;
                    } else if (name2.equals("frameset")) {
                        htmlTreeBuilder.error(this);
                        DescendableLinkedList<Element> stack3 = htmlTreeBuilder.getStack();
                        if (stack3.size() == 1 || ((stack3.size() > 2 && !stack3.get(1).nodeName().equals("body")) || !htmlTreeBuilder.framesetOk())) {
                            return false;
                        }
                        Element element8 = stack3.get(1);
                        if (element8.parent() != null) {
                            element8.remove();
                        }
                        for (int i8 = 1; stack3.size() > i8; i8 = 1) {
                            stack3.removeLast();
                        }
                        htmlTreeBuilder.insert(asStartTag);
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.InFrameset);
                        return true;
                    } else if (StringUtil.in(name2, "address", "article", "aside", "blockquote", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "menu", "nav", "ol", ai.av, "section", "summary", "ul")) {
                        if (htmlTreeBuilder.inButtonScope(ai.av)) {
                            htmlTreeBuilder.process(new Token.EndTag(ai.av));
                        }
                        htmlTreeBuilder.insert(asStartTag);
                        return true;
                    } else if (StringUtil.in(name2, "h1", ApplicationProtocolNames.HTTP_2, "h3", "h4", "h5", "h6")) {
                        if (htmlTreeBuilder.inButtonScope(ai.av)) {
                            htmlTreeBuilder.process(new Token.EndTag(ai.av));
                        }
                        if (StringUtil.in(htmlTreeBuilder.currentElement().nodeName(), "h1", ApplicationProtocolNames.HTTP_2, "h3", "h4", "h5", "h6")) {
                            htmlTreeBuilder.error(this);
                            htmlTreeBuilder.pop();
                        }
                        htmlTreeBuilder.insert(asStartTag);
                        return true;
                    } else if (StringUtil.in(name2, "pre", "listing")) {
                        if (htmlTreeBuilder.inButtonScope(ai.av)) {
                            htmlTreeBuilder.process(new Token.EndTag(ai.av));
                        }
                        htmlTreeBuilder.insert(asStartTag);
                        htmlTreeBuilder.framesetOk(false);
                        return true;
                    } else if (name2.equals(c.f9728c)) {
                        if (htmlTreeBuilder.getFormElement() != null) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        if (htmlTreeBuilder.inButtonScope(ai.av)) {
                            htmlTreeBuilder.process(new Token.EndTag(ai.av));
                        }
                        htmlTreeBuilder.setFormElement(htmlTreeBuilder.insert(asStartTag));
                        return true;
                    } else if (name2.equals("li")) {
                        htmlTreeBuilder.framesetOk(false);
                        DescendableLinkedList<Element> stack4 = htmlTreeBuilder.getStack();
                        int size = stack4.size() - 1;
                        while (true) {
                            if (size <= 0) {
                                break;
                            }
                            Element element9 = stack4.get(size);
                            if (element9.nodeName().equals("li")) {
                                htmlTreeBuilder.process(new Token.EndTag("li"));
                                break;
                            } else if (htmlTreeBuilder.isSpecial(element9) && !StringUtil.in(element9.nodeName(), "address", "div", ai.av)) {
                                break;
                            } else {
                                size--;
                            }
                        }
                        if (htmlTreeBuilder.inButtonScope(ai.av)) {
                            htmlTreeBuilder.process(new Token.EndTag(ai.av));
                        }
                        htmlTreeBuilder.insert(asStartTag);
                        return true;
                    } else if (StringUtil.in(name2, "dd", "dt")) {
                        htmlTreeBuilder.framesetOk(false);
                        DescendableLinkedList<Element> stack5 = htmlTreeBuilder.getStack();
                        int size2 = stack5.size() - 1;
                        while (true) {
                            if (size2 <= 0) {
                                break;
                            }
                            Element element10 = stack5.get(size2);
                            if (StringUtil.in(element10.nodeName(), "dd", "dt")) {
                                htmlTreeBuilder.process(new Token.EndTag(element10.nodeName()));
                                break;
                            } else if (htmlTreeBuilder.isSpecial(element10) && !StringUtil.in(element10.nodeName(), "address", "div", ai.av)) {
                                break;
                            } else {
                                size2--;
                            }
                        }
                        if (htmlTreeBuilder.inButtonScope(ai.av)) {
                            htmlTreeBuilder.process(new Token.EndTag(ai.av));
                        }
                        htmlTreeBuilder.insert(asStartTag);
                        return true;
                    } else if (name2.equals("plaintext")) {
                        if (htmlTreeBuilder.inButtonScope(ai.av)) {
                            htmlTreeBuilder.process(new Token.EndTag(ai.av));
                        }
                        htmlTreeBuilder.insert(asStartTag);
                        htmlTreeBuilder.tokeniser.transition(TokeniserState.PLAINTEXT);
                        return true;
                    } else if (name2.equals("button")) {
                        if (htmlTreeBuilder.inButtonScope("button")) {
                            htmlTreeBuilder.error(this);
                            htmlTreeBuilder.process(new Token.EndTag("button"));
                            htmlTreeBuilder.process(asStartTag);
                            return true;
                        }
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insert(asStartTag);
                        htmlTreeBuilder.framesetOk(false);
                        return true;
                    } else if (name2.equals("a")) {
                        if (htmlTreeBuilder.getActiveFormattingElement("a") != null) {
                            htmlTreeBuilder.error(this);
                            htmlTreeBuilder.process(new Token.EndTag("a"));
                            Element fromStack = htmlTreeBuilder.getFromStack("a");
                            if (fromStack != null) {
                                htmlTreeBuilder.removeFromActiveFormattingElements(fromStack);
                                htmlTreeBuilder.removeFromStack(fromStack);
                            }
                        }
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(asStartTag));
                        return true;
                    } else if (StringUtil.in(name2, "b", "big", "code", "em", "font", ai.aA, ai.az, "small", "strike", "strong", "tt", ai.aE)) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(asStartTag));
                        return true;
                    } else if (name2.equals("nobr")) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        if (htmlTreeBuilder.inScope("nobr")) {
                            htmlTreeBuilder.error(this);
                            htmlTreeBuilder.process(new Token.EndTag("nobr"));
                            htmlTreeBuilder.reconstructFormattingElements();
                        }
                        htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(asStartTag));
                        return true;
                    } else if (StringUtil.in(name2, "applet", "marquee", "object")) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insert(asStartTag);
                        htmlTreeBuilder.insertMarkerToFormattingElements();
                        htmlTreeBuilder.framesetOk(false);
                        return true;
                    } else if (name2.equals("table")) {
                        if (htmlTreeBuilder.getDocument().quirksMode() != Document.QuirksMode.quirks && htmlTreeBuilder.inButtonScope(ai.av)) {
                            htmlTreeBuilder.process(new Token.EndTag(ai.av));
                        }
                        htmlTreeBuilder.insert(asStartTag);
                        htmlTreeBuilder.framesetOk(false);
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
                        return true;
                    } else if (StringUtil.in(name2, "area", "br", "embed", "img", "keygen", "wbr")) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insertEmpty(asStartTag);
                        htmlTreeBuilder.framesetOk(false);
                        return true;
                    } else if (name2.equals("input")) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        if (htmlTreeBuilder.insertEmpty(asStartTag).attr("type").equalsIgnoreCase("hidden")) {
                            return true;
                        }
                        htmlTreeBuilder.framesetOk(false);
                        return true;
                    } else if (StringUtil.in(name2, a.f9678l, "source", "track")) {
                        htmlTreeBuilder.insertEmpty(asStartTag);
                        return true;
                    } else if (name2.equals("hr")) {
                        if (htmlTreeBuilder.inButtonScope(ai.av)) {
                            htmlTreeBuilder.process(new Token.EndTag(ai.av));
                        }
                        htmlTreeBuilder.insertEmpty(asStartTag);
                        htmlTreeBuilder.framesetOk(false);
                        return true;
                    } else if (name2.equals("image")) {
                        asStartTag.name("img");
                        return htmlTreeBuilder.process(asStartTag);
                    } else if (name2.equals("isindex")) {
                        htmlTreeBuilder.error(this);
                        if (htmlTreeBuilder.getFormElement() != null) {
                            return false;
                        }
                        htmlTreeBuilder.tokeniser.acknowledgeSelfClosingFlag();
                        htmlTreeBuilder.process(new Token.StartTag(c.f9728c));
                        if (asStartTag.attributes.hasKey("action")) {
                            htmlTreeBuilder.getFormElement().attr("action", asStartTag.attributes.get("action"));
                        }
                        htmlTreeBuilder.process(new Token.StartTag("hr"));
                        htmlTreeBuilder.process(new Token.StartTag("label"));
                        htmlTreeBuilder.process(new Token.Character(asStartTag.attributes.hasKey("prompt") ? asStartTag.attributes.get("prompt") : "This is a searchable index. Enter search keywords: "));
                        Attributes attributes = new Attributes();
                        Iterator<Attribute> it4 = asStartTag.attributes.iterator();
                        while (it4.hasNext()) {
                            Attribute next3 = it4.next();
                            if (!StringUtil.in(next3.getKey(), "name", "action", "prompt")) {
                                attributes.put(next3);
                            }
                        }
                        attributes.put("name", "isindex");
                        htmlTreeBuilder.process(new Token.StartTag("input", attributes));
                        htmlTreeBuilder.process(new Token.EndTag("label"));
                        htmlTreeBuilder.process(new Token.StartTag("hr"));
                        htmlTreeBuilder.process(new Token.EndTag(c.f9728c));
                        return true;
                    } else if (name2.equals("textarea")) {
                        htmlTreeBuilder.insert(asStartTag);
                        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rcdata);
                        htmlTreeBuilder.markInsertionMode();
                        htmlTreeBuilder.framesetOk(false);
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.Text);
                        return true;
                    } else if (name2.equals("xmp")) {
                        if (htmlTreeBuilder.inButtonScope(ai.av)) {
                            htmlTreeBuilder.process(new Token.EndTag(ai.av));
                        }
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.framesetOk(false);
                        HtmlTreeBuilderState.handleRawtext(asStartTag, htmlTreeBuilder);
                        return true;
                    } else if (name2.equals("iframe")) {
                        htmlTreeBuilder.framesetOk(false);
                        HtmlTreeBuilderState.handleRawtext(asStartTag, htmlTreeBuilder);
                        return true;
                    } else if (name2.equals("noembed")) {
                        HtmlTreeBuilderState.handleRawtext(asStartTag, htmlTreeBuilder);
                        return true;
                    } else if (name2.equals("select")) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insert(asStartTag);
                        htmlTreeBuilder.framesetOk(false);
                        HtmlTreeBuilderState state = htmlTreeBuilder.state();
                        if (!state.equals(HtmlTreeBuilderState.InTable) && !state.equals(HtmlTreeBuilderState.InCaption) && !state.equals(HtmlTreeBuilderState.InTableBody) && !state.equals(HtmlTreeBuilderState.InRow) && !state.equals(HtmlTreeBuilderState.InCell)) {
                            htmlTreeBuilder.transition(HtmlTreeBuilderState.InSelect);
                            return true;
                        }
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.InSelectInTable);
                        return true;
                    } else if (StringUtil.in("optgroup", "option")) {
                        if (htmlTreeBuilder.currentElement().nodeName().equals("option")) {
                            htmlTreeBuilder.process(new Token.EndTag("option"));
                        }
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insert(asStartTag);
                        return true;
                    } else if (StringUtil.in("rp", "rt")) {
                        if (htmlTreeBuilder.inScope("ruby")) {
                            htmlTreeBuilder.generateImpliedEndTags();
                            if (!htmlTreeBuilder.currentElement().nodeName().equals("ruby")) {
                                htmlTreeBuilder.error(this);
                                htmlTreeBuilder.popStackToBefore("ruby");
                            }
                            htmlTreeBuilder.insert(asStartTag);
                            return true;
                        }
                        return true;
                    } else if (name2.equals("math")) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insert(asStartTag);
                        htmlTreeBuilder.tokeniser.acknowledgeSelfClosingFlag();
                        return true;
                    } else if (name2.equals("svg")) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insert(asStartTag);
                        htmlTreeBuilder.tokeniser.acknowledgeSelfClosingFlag();
                        return true;
                    } else if (StringUtil.in(name2, "caption", "col", "colgroup", TypedValues.AttributesType.S_FRAME, "head", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    } else {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insert(asStartTag);
                        return true;
                    }
                }
            }
        }
    },
    Text { // from class: org.jsoup.parser.HtmlTreeBuilderState.8
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isCharacter()) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            } else if (token.isEOF()) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
                return htmlTreeBuilder.process(token);
            } else if (token.isEndTag()) {
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
                return true;
            } else {
                return true;
            }
        }
    },
    InTable { // from class: org.jsoup.parser.HtmlTreeBuilderState.9
        boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            if (StringUtil.in(htmlTreeBuilder.currentElement().nodeName(), "table", "tbody", "tfoot", "thead", "tr")) {
                htmlTreeBuilder.setFosterInserts(true);
                boolean process = htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
                htmlTreeBuilder.setFosterInserts(false);
                return process;
            }
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isCharacter()) {
                htmlTreeBuilder.newPendingTableCharacters();
                htmlTreeBuilder.markInsertionMode();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InTableText);
                return htmlTreeBuilder.process(token);
            } else if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            } else if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            } else {
                if (token.isStartTag()) {
                    Token.StartTag asStartTag = token.asStartTag();
                    String name = asStartTag.name();
                    if (name.equals("caption")) {
                        htmlTreeBuilder.clearStackToTableContext();
                        htmlTreeBuilder.insertMarkerToFormattingElements();
                        htmlTreeBuilder.insert(asStartTag);
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.InCaption);
                    } else if (name.equals("colgroup")) {
                        htmlTreeBuilder.clearStackToTableContext();
                        htmlTreeBuilder.insert(asStartTag);
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.InColumnGroup);
                    } else if (name.equals("col")) {
                        htmlTreeBuilder.process(new Token.StartTag("colgroup"));
                        return htmlTreeBuilder.process(token);
                    } else if (StringUtil.in(name, "tbody", "tfoot", "thead")) {
                        htmlTreeBuilder.clearStackToTableContext();
                        htmlTreeBuilder.insert(asStartTag);
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.InTableBody);
                    } else if (StringUtil.in(name, "td", "th", "tr")) {
                        htmlTreeBuilder.process(new Token.StartTag("tbody"));
                        return htmlTreeBuilder.process(token);
                    } else if (name.equals("table")) {
                        htmlTreeBuilder.error(this);
                        if (htmlTreeBuilder.process(new Token.EndTag("table"))) {
                            return htmlTreeBuilder.process(token);
                        }
                    } else if (StringUtil.in(name, "style", "script")) {
                        return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                    } else {
                        if (name.equals("input")) {
                            if (!asStartTag.attributes.get("type").equalsIgnoreCase("hidden")) {
                                return anythingElse(token, htmlTreeBuilder);
                            }
                            htmlTreeBuilder.insertEmpty(asStartTag);
                        } else if (name.equals(c.f9728c)) {
                            htmlTreeBuilder.error(this);
                            if (htmlTreeBuilder.getFormElement() != null) {
                                return false;
                            }
                            htmlTreeBuilder.setFormElement(htmlTreeBuilder.insertEmpty(asStartTag));
                        } else {
                            return anythingElse(token, htmlTreeBuilder);
                        }
                    }
                } else if (token.isEndTag()) {
                    String name2 = token.asEndTag().name();
                    if (name2.equals("table")) {
                        if (!htmlTreeBuilder.inTableScope(name2)) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.popStackToClose("table");
                        htmlTreeBuilder.resetInsertionMode();
                    } else if (StringUtil.in(name2, "body", "caption", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    } else {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                } else if (token.isEOF()) {
                    if (htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                        htmlTreeBuilder.error(this);
                    }
                    return true;
                }
                return anythingElse(token, htmlTreeBuilder);
            }
        }
    },
    InTableText { // from class: org.jsoup.parser.HtmlTreeBuilderState.10
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()] != 5) {
                if (htmlTreeBuilder.getPendingTableCharacters().size() > 0) {
                    for (Token.Character character : htmlTreeBuilder.getPendingTableCharacters()) {
                        if (!HtmlTreeBuilderState.isWhitespace(character)) {
                            htmlTreeBuilder.error(this);
                            if (StringUtil.in(htmlTreeBuilder.currentElement().nodeName(), "table", "tbody", "tfoot", "thead", "tr")) {
                                htmlTreeBuilder.setFosterInserts(true);
                                htmlTreeBuilder.process(character, HtmlTreeBuilderState.InBody);
                                htmlTreeBuilder.setFosterInserts(false);
                            } else {
                                htmlTreeBuilder.process(character, HtmlTreeBuilderState.InBody);
                            }
                        } else {
                            htmlTreeBuilder.insert(character);
                        }
                    }
                    htmlTreeBuilder.newPendingTableCharacters();
                }
                htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
                return htmlTreeBuilder.process(token);
            }
            Token.Character asCharacter = token.asCharacter();
            if (asCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                htmlTreeBuilder.error(this);
                return false;
            }
            htmlTreeBuilder.getPendingTableCharacters().add(asCharacter);
            return true;
        }
    },
    InCaption { // from class: org.jsoup.parser.HtmlTreeBuilderState.11
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isEndTag() && token.asEndTag().name().equals("caption")) {
                if (!htmlTreeBuilder.inTableScope(token.asEndTag().name())) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.generateImpliedEndTags();
                if (!htmlTreeBuilder.currentElement().nodeName().equals("caption")) {
                    htmlTreeBuilder.error(this);
                }
                htmlTreeBuilder.popStackToClose("caption");
                htmlTreeBuilder.clearFormattingElementsToLastMarker();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
                return true;
            } else if ((token.isStartTag() && StringUtil.in(token.asStartTag().name(), "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr")) || (token.isEndTag() && token.asEndTag().name().equals("table"))) {
                htmlTreeBuilder.error(this);
                if (htmlTreeBuilder.process(new Token.EndTag("caption"))) {
                    return htmlTreeBuilder.process(token);
                }
                return true;
            } else if (token.isEndTag() && StringUtil.in(token.asEndTag().name(), "body", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                htmlTreeBuilder.error(this);
                return false;
            } else {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
        }
    },
    InColumnGroup { // from class: org.jsoup.parser.HtmlTreeBuilderState.12
        private boolean anythingElse(Token token, TreeBuilder treeBuilder) {
            if (treeBuilder.process(new Token.EndTag("colgroup"))) {
                return treeBuilder.process(token);
            }
            return true;
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            int i2 = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            if (i2 == 1) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (i2 == 2) {
                htmlTreeBuilder.error(this);
            } else if (i2 == 3) {
                Token.StartTag asStartTag = token.asStartTag();
                String name = asStartTag.name();
                if (name.equals("html")) {
                    return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
                }
                if (name.equals("col")) {
                    htmlTreeBuilder.insertEmpty(asStartTag);
                } else {
                    return anythingElse(token, htmlTreeBuilder);
                }
            } else if (i2 != 4) {
                if (i2 != 6) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                if (htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                    return true;
                }
                return anythingElse(token, htmlTreeBuilder);
            } else if (token.asEndTag().name().equals("colgroup")) {
                if (htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
            } else {
                return anythingElse(token, htmlTreeBuilder);
            }
            return true;
        }
    },
    InTableBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.13
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InTable);
        }

        private boolean exitTableBody(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (!htmlTreeBuilder.inTableScope("tbody") && !htmlTreeBuilder.inTableScope("thead") && !htmlTreeBuilder.inScope("tfoot")) {
                htmlTreeBuilder.error(this);
                return false;
            }
            htmlTreeBuilder.clearStackToTableBodyContext();
            htmlTreeBuilder.process(new Token.EndTag(htmlTreeBuilder.currentElement().nodeName()));
            return htmlTreeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            int i2 = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            if (i2 == 3) {
                Token.StartTag asStartTag = token.asStartTag();
                String name = asStartTag.name();
                if (name.equals("tr")) {
                    htmlTreeBuilder.clearStackToTableBodyContext();
                    htmlTreeBuilder.insert(asStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InRow);
                    return true;
                } else if (StringUtil.in(name, "th", "td")) {
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.process(new Token.StartTag("tr"));
                    return htmlTreeBuilder.process(asStartTag);
                } else if (StringUtil.in(name, "caption", "col", "colgroup", "tbody", "tfoot", "thead")) {
                    return exitTableBody(token, htmlTreeBuilder);
                } else {
                    return anythingElse(token, htmlTreeBuilder);
                }
            } else if (i2 != 4) {
                return anythingElse(token, htmlTreeBuilder);
            } else {
                String name2 = token.asEndTag().name();
                if (StringUtil.in(name2, "tbody", "tfoot", "thead")) {
                    if (!htmlTreeBuilder.inTableScope(name2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToTableBodyContext();
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
                    return true;
                } else if (name2.equals("table")) {
                    return exitTableBody(token, htmlTreeBuilder);
                } else {
                    if (StringUtil.in(name2, "body", "caption", "col", "colgroup", "html", "td", "th", "tr")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    return anythingElse(token, htmlTreeBuilder);
                }
            }
        }
    },
    InRow { // from class: org.jsoup.parser.HtmlTreeBuilderState.14
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InTable);
        }

        private boolean handleMissingTr(Token token, TreeBuilder treeBuilder) {
            if (treeBuilder.process(new Token.EndTag("tr"))) {
                return treeBuilder.process(token);
            }
            return false;
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isStartTag()) {
                Token.StartTag asStartTag = token.asStartTag();
                String name = asStartTag.name();
                if (StringUtil.in(name, "th", "td")) {
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.insert(asStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InCell);
                    htmlTreeBuilder.insertMarkerToFormattingElements();
                    return true;
                } else if (StringUtil.in(name, "caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr")) {
                    return handleMissingTr(token, htmlTreeBuilder);
                } else {
                    return anythingElse(token, htmlTreeBuilder);
                }
            } else if (token.isEndTag()) {
                String name2 = token.asEndTag().name();
                if (name2.equals("tr")) {
                    if (!htmlTreeBuilder.inTableScope(name2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InTableBody);
                    return true;
                } else if (name2.equals("table")) {
                    return handleMissingTr(token, htmlTreeBuilder);
                } else {
                    if (StringUtil.in(name2, "tbody", "tfoot", "thead")) {
                        if (!htmlTreeBuilder.inTableScope(name2)) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.process(new Token.EndTag("tr"));
                        return htmlTreeBuilder.process(token);
                    } else if (StringUtil.in(name2, "body", "caption", "col", "colgroup", "html", "td", "th")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    } else {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                }
            } else {
                return anythingElse(token, htmlTreeBuilder);
            }
        }
    },
    InCell { // from class: org.jsoup.parser.HtmlTreeBuilderState.15
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
        }

        private void closeCell(HtmlTreeBuilder htmlTreeBuilder) {
            if (htmlTreeBuilder.inTableScope("td")) {
                htmlTreeBuilder.process(new Token.EndTag("td"));
            } else {
                htmlTreeBuilder.process(new Token.EndTag("th"));
            }
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isEndTag()) {
                String name = token.asEndTag().name();
                if (StringUtil.in(name, "td", "th")) {
                    if (!htmlTreeBuilder.inTableScope(name)) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.InRow);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags();
                    if (!htmlTreeBuilder.currentElement().nodeName().equals(name)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(name);
                    htmlTreeBuilder.clearFormattingElementsToLastMarker();
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InRow);
                    return true;
                } else if (StringUtil.in(name, "body", "caption", "col", "colgroup", "html")) {
                    htmlTreeBuilder.error(this);
                    return false;
                } else if (StringUtil.in(name, "table", "tbody", "tfoot", "thead", "tr")) {
                    if (!htmlTreeBuilder.inTableScope(name)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    closeCell(htmlTreeBuilder);
                    return htmlTreeBuilder.process(token);
                } else {
                    return anythingElse(token, htmlTreeBuilder);
                }
            } else if (token.isStartTag() && StringUtil.in(token.asStartTag().name(), "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                if (!htmlTreeBuilder.inTableScope("td") && !htmlTreeBuilder.inTableScope("th")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                closeCell(htmlTreeBuilder);
                return htmlTreeBuilder.process(token);
            } else {
                return anythingElse(token, htmlTreeBuilder);
            }
        }
    },
    InSelect { // from class: org.jsoup.parser.HtmlTreeBuilderState.16
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            return false;
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            switch (AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()]) {
                case 1:
                    htmlTreeBuilder.insert(token.asComment());
                    return true;
                case 2:
                    htmlTreeBuilder.error(this);
                    return false;
                case 3:
                    Token.StartTag asStartTag = token.asStartTag();
                    String name = asStartTag.name();
                    if (name.equals("html")) {
                        return htmlTreeBuilder.process(asStartTag, HtmlTreeBuilderState.InBody);
                    }
                    if (name.equals("option")) {
                        htmlTreeBuilder.process(new Token.EndTag("option"));
                        htmlTreeBuilder.insert(asStartTag);
                        return true;
                    } else if (name.equals("optgroup")) {
                        if (htmlTreeBuilder.currentElement().nodeName().equals("option")) {
                            htmlTreeBuilder.process(new Token.EndTag("option"));
                        } else if (htmlTreeBuilder.currentElement().nodeName().equals("optgroup")) {
                            htmlTreeBuilder.process(new Token.EndTag("optgroup"));
                        }
                        htmlTreeBuilder.insert(asStartTag);
                        return true;
                    } else if (name.equals("select")) {
                        htmlTreeBuilder.error(this);
                        return htmlTreeBuilder.process(new Token.EndTag("select"));
                    } else if (StringUtil.in(name, "input", "keygen", "textarea")) {
                        htmlTreeBuilder.error(this);
                        if (htmlTreeBuilder.inSelectScope("select")) {
                            htmlTreeBuilder.process(new Token.EndTag("select"));
                            return htmlTreeBuilder.process(asStartTag);
                        }
                        return false;
                    } else if (name.equals("script")) {
                        return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                    } else {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                case 4:
                    String name2 = token.asEndTag().name();
                    if (name2.equals("optgroup")) {
                        if (htmlTreeBuilder.currentElement().nodeName().equals("option") && htmlTreeBuilder.aboveOnStack(htmlTreeBuilder.currentElement()) != null && htmlTreeBuilder.aboveOnStack(htmlTreeBuilder.currentElement()).nodeName().equals("optgroup")) {
                            htmlTreeBuilder.process(new Token.EndTag("option"));
                        }
                        if (htmlTreeBuilder.currentElement().nodeName().equals("optgroup")) {
                            htmlTreeBuilder.pop();
                            return true;
                        }
                        htmlTreeBuilder.error(this);
                        return true;
                    } else if (name2.equals("option")) {
                        if (htmlTreeBuilder.currentElement().nodeName().equals("option")) {
                            htmlTreeBuilder.pop();
                            return true;
                        }
                        htmlTreeBuilder.error(this);
                        return true;
                    } else if (name2.equals("select")) {
                        if (!htmlTreeBuilder.inSelectScope(name2)) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.popStackToClose(name2);
                        htmlTreeBuilder.resetInsertionMode();
                        return true;
                    } else {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                case 5:
                    Token.Character asCharacter = token.asCharacter();
                    if (asCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.insert(asCharacter);
                    return true;
                case 6:
                    if (htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                        return true;
                    }
                    htmlTreeBuilder.error(this);
                    return true;
                default:
                    return anythingElse(token, htmlTreeBuilder);
            }
        }
    },
    InSelectInTable { // from class: org.jsoup.parser.HtmlTreeBuilderState.17
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isStartTag() && StringUtil.in(token.asStartTag().name(), "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th")) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.process(new Token.EndTag("select"));
                return htmlTreeBuilder.process(token);
            } else if (token.isEndTag() && StringUtil.in(token.asEndTag().name(), "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th")) {
                htmlTreeBuilder.error(this);
                if (htmlTreeBuilder.inTableScope(token.asEndTag().name())) {
                    htmlTreeBuilder.process(new Token.EndTag("select"));
                    return htmlTreeBuilder.process(token);
                }
                return false;
            } else {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InSelect);
            }
        }
    },
    AfterBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.18
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            } else if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            } else if (token.isStartTag() && token.asStartTag().name().equals("html")) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            } else {
                if (token.isEndTag() && token.asEndTag().name().equals("html")) {
                    if (htmlTreeBuilder.isFragmentParsing()) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterAfterBody);
                    return true;
                } else if (token.isEOF()) {
                    return true;
                } else {
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InBody);
                    return htmlTreeBuilder.process(token);
                }
            }
        }
    },
    InFrameset { // from class: org.jsoup.parser.HtmlTreeBuilderState.19
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
            } else if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            } else if (token.isStartTag()) {
                Token.StartTag asStartTag = token.asStartTag();
                String name = asStartTag.name();
                if (name.equals("html")) {
                    return htmlTreeBuilder.process(asStartTag, HtmlTreeBuilderState.InBody);
                }
                if (name.equals("frameset")) {
                    htmlTreeBuilder.insert(asStartTag);
                } else if (name.equals(TypedValues.AttributesType.S_FRAME)) {
                    htmlTreeBuilder.insertEmpty(asStartTag);
                } else if (name.equals("noframes")) {
                    return htmlTreeBuilder.process(asStartTag, HtmlTreeBuilderState.InHead);
                } else {
                    htmlTreeBuilder.error(this);
                    return false;
                }
            } else if (token.isEndTag() && token.asEndTag().name().equals("frameset")) {
                if (htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.pop();
                if (!htmlTreeBuilder.isFragmentParsing() && !htmlTreeBuilder.currentElement().nodeName().equals("frameset")) {
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterFrameset);
                }
            } else if (token.isEOF()) {
                if (!htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                    htmlTreeBuilder.error(this);
                }
            } else {
                htmlTreeBuilder.error(this);
                return false;
            }
            return true;
        }
    },
    AfterFrameset { // from class: org.jsoup.parser.HtmlTreeBuilderState.20
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            } else if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            } else if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            } else if (token.isStartTag() && token.asStartTag().name().equals("html")) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            } else {
                if (token.isEndTag() && token.asEndTag().name().equals("html")) {
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterAfterFrameset);
                    return true;
                } else if (token.isStartTag() && token.asStartTag().name().equals("noframes")) {
                    return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                } else {
                    if (token.isEOF()) {
                        return true;
                    }
                    htmlTreeBuilder.error(this);
                    return false;
                }
            }
        }
    },
    AfterAfterBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.21
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            } else if (!token.isDoctype() && !HtmlTreeBuilderState.isWhitespace(token) && (!token.isStartTag() || !token.asStartTag().name().equals("html"))) {
                if (token.isEOF()) {
                    return true;
                }
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InBody);
                return htmlTreeBuilder.process(token);
            } else {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
        }
    },
    AfterAfterFrameset { // from class: org.jsoup.parser.HtmlTreeBuilderState.22
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            } else if (!token.isDoctype() && !HtmlTreeBuilderState.isWhitespace(token) && (!token.isStartTag() || !token.asStartTag().name().equals("html"))) {
                if (token.isEOF()) {
                    return true;
                }
                if (token.isStartTag() && token.asStartTag().name().equals("noframes")) {
                    return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                }
                htmlTreeBuilder.error(this);
                return false;
            } else {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
        }
    },
    ForeignContent { // from class: org.jsoup.parser.HtmlTreeBuilderState.23
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return true;
        }
    };
    
    private static String nullString = String.valueOf((char) 0);

    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$24  reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass24 {
        static final /* synthetic */ int[] $SwitchMap$org$jsoup$parser$Token$TokenType;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            $SwitchMap$org$jsoup$parser$Token$TokenType = iArr;
            try {
                iArr[Token.TokenType.Comment.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.Doctype.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.StartTag.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.EndTag.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.Character.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleRawtext(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.insert(startTag);
        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rawtext);
        htmlTreeBuilder.markInsertionMode();
        htmlTreeBuilder.transition(Text);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleRcData(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.insert(startTag);
        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rcdata);
        htmlTreeBuilder.markInsertionMode();
        htmlTreeBuilder.transition(Text);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isWhitespace(Token token) {
        if (token.isCharacter()) {
            String data = token.asCharacter().getData();
            for (int i2 = 0; i2 < data.length(); i2++) {
                if (!StringUtil.isWhitespace(data.charAt(i2))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder);
}
