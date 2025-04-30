package org.jsoup.examples;

import com.umeng.analytics.pro.ai;
import io.netty.handler.ssl.ApplicationProtocolNames;
import java.io.IOException;
import org.jsoup.Jsoup;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;
/* loaded from: classes5.dex */
public class HtmlToPlainText {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class FormattingVisitor implements NodeVisitor {
        private static final int maxWidth = 80;
        private StringBuilder accum;
        private int width;

        private FormattingVisitor() {
            this.width = 0;
            this.accum = new StringBuilder();
        }

        private void append(String str) {
            if (str.startsWith("\n")) {
                this.width = 0;
            }
            if (str.equals(" ")) {
                if (this.accum.length() == 0) {
                    return;
                }
                StringBuilder sb = this.accum;
                if (StringUtil.in(sb.substring(sb.length() - 1), " ", "\n")) {
                    return;
                }
            }
            if (str.length() + this.width > 80) {
                String[] split = str.split("\\s+");
                int i2 = 0;
                while (i2 < split.length) {
                    String str2 = split[i2];
                    if (!(i2 == split.length - 1)) {
                        str2 = str2 + " ";
                    }
                    if (str2.length() + this.width > 80) {
                        StringBuilder sb2 = this.accum;
                        sb2.append("\n");
                        sb2.append(str2);
                        this.width = str2.length();
                    } else {
                        this.accum.append(str2);
                        this.width += str2.length();
                    }
                    i2++;
                }
                return;
            }
            this.accum.append(str);
            this.width += str.length();
        }

        @Override // org.jsoup.select.NodeVisitor
        public void head(Node node, int i2) {
            String nodeName = node.nodeName();
            if (node instanceof TextNode) {
                append(((TextNode) node).text());
            } else if (nodeName.equals("li")) {
                append("\n * ");
            }
        }

        @Override // org.jsoup.select.NodeVisitor
        public void tail(Node node, int i2) {
            String nodeName = node.nodeName();
            if (nodeName.equals("br")) {
                append("\n");
            } else if (StringUtil.in(nodeName, ai.av, "h1", ApplicationProtocolNames.HTTP_2, "h3", "h4", "h5")) {
                append("\n\n");
            } else if (nodeName.equals("a")) {
                append(String.format(" <%s>", node.absUrl("href")));
            }
        }

        public String toString() {
            return this.accum.toString();
        }
    }

    public static void main(String... strArr) throws IOException {
        Validate.isTrue(strArr.length == 1, "usage: supply url to fetch");
        System.out.println(new HtmlToPlainText().getPlainText(Jsoup.connect(strArr[0]).get()));
    }

    public String getPlainText(Element element) {
        FormattingVisitor formattingVisitor = new FormattingVisitor();
        new NodeTraversor(formattingVisitor).traverse(element);
        return formattingVisitor.toString();
    }
}
