package org.jsoup.select;

import org.jsoup.nodes.Node;
/* loaded from: classes5.dex */
public class NodeTraversor {
    private NodeVisitor visitor;

    public NodeTraversor(NodeVisitor nodeVisitor) {
        this.visitor = nodeVisitor;
    }

    public void traverse(Node node) {
        Node node2 = node;
        int i2 = 0;
        while (node2 != null) {
            this.visitor.head(node2, i2);
            if (node2.childNodeSize() > 0) {
                node2 = node2.childNode(0);
                i2++;
            } else {
                while (node2.nextSibling() == null && i2 > 0) {
                    this.visitor.tail(node2, i2);
                    node2 = node2.parent();
                    i2--;
                }
                this.visitor.tail(node2, i2);
                if (node2 == node) {
                    return;
                }
                node2 = node2.nextSibling();
            }
        }
    }
}
