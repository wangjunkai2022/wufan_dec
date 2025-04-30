package org.jsoup.parser;

import java.util.Iterator;
import java.util.List;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.nodes.XmlDeclaration;
import org.jsoup.parser.Token;
/* loaded from: classes5.dex */
public class XmlTreeBuilder extends TreeBuilder {

    /* renamed from: org.jsoup.parser.XmlTreeBuilder$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$jsoup$parser$Token$TokenType;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            $SwitchMap$org$jsoup$parser$Token$TokenType = iArr;
            try {
                iArr[Token.TokenType.StartTag.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.EndTag.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.Comment.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.Character.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.Doctype.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private void insertNode(Node node) {
        currentElement().appendChild(node);
    }

    private void popStackToClose(Token.EndTag endTag) {
        Element element;
        String name = endTag.name();
        Iterator<Element> descendingIterator = this.stack.descendingIterator();
        while (true) {
            if (!descendingIterator.hasNext()) {
                element = null;
                break;
            }
            element = descendingIterator.next();
            if (element.nodeName().equals(name)) {
                break;
            }
        }
        if (element == null) {
            return;
        }
        Iterator<Element> descendingIterator2 = this.stack.descendingIterator();
        while (descendingIterator2.hasNext()) {
            if (descendingIterator2.next() == element) {
                descendingIterator2.remove();
                return;
            }
            descendingIterator2.remove();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.parser.TreeBuilder
    public void initialiseParse(String str, String str2, ParseErrorList parseErrorList) {
        super.initialiseParse(str, str2, parseErrorList);
        this.stack.add(this.doc);
    }

    Element insert(Token.StartTag startTag) {
        Tag valueOf = Tag.valueOf(startTag.name());
        Element element = new Element(valueOf, this.baseUri, startTag.attributes);
        insertNode(element);
        if (startTag.isSelfClosing()) {
            this.tokeniser.acknowledgeSelfClosingFlag();
            if (!valueOf.isKnownTag()) {
                valueOf.setSelfClosing();
            }
        } else {
            this.stack.add(element);
        }
        return element;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Node> parseFragment(String str, String str2, ParseErrorList parseErrorList) {
        initialiseParse(str, str2, parseErrorList);
        runParser();
        return this.doc.childNodes();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.parser.TreeBuilder
    public boolean process(Token token) {
        switch (AnonymousClass1.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()]) {
            case 1:
                insert(token.asStartTag());
                return true;
            case 2:
                popStackToClose(token.asEndTag());
                return true;
            case 3:
                insert(token.asComment());
                return true;
            case 4:
                insert(token.asCharacter());
                return true;
            case 5:
                insert(token.asDoctype());
                return true;
            case 6:
                return true;
            default:
                Validate.fail("Unexpected token type: " + token.type);
                return true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [org.jsoup.nodes.XmlDeclaration] */
    /* JADX WARN: Type inference failed for: r4v0, types: [org.jsoup.parser.TreeBuilder, org.jsoup.parser.XmlTreeBuilder] */
    void insert(Token.Comment comment) {
        Comment comment2 = new Comment(comment.getData(), this.baseUri);
        if (comment.bogus) {
            String data = comment2.getData();
            if (data.length() > 1 && (data.startsWith("!") || data.startsWith("?"))) {
                comment2 = new XmlDeclaration(data.substring(1), comment2.baseUri(), data.startsWith("!"));
            }
        }
        insertNode(comment2);
    }

    void insert(Token.Character character) {
        insertNode(new TextNode(character.getData(), this.baseUri));
    }

    void insert(Token.Doctype doctype) {
        insertNode(new DocumentType(doctype.getName(), doctype.getPublicIdentifier(), doctype.getSystemIdentifier(), this.baseUri));
    }
}
