package org.jsoup.select;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Element;
/* loaded from: classes5.dex */
public class Selector {
    private final Evaluator evaluator;
    private final Element root;

    /* loaded from: classes5.dex */
    public static class SelectorParseException extends IllegalStateException {
        public SelectorParseException(String str, Object... objArr) {
            super(String.format(str, objArr));
        }
    }

    private Selector(String str, Element element) {
        Validate.notNull(str);
        String trim = str.trim();
        Validate.notEmpty(trim);
        Validate.notNull(element);
        this.evaluator = QueryParser.parse(trim);
        this.root = element;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Elements filterOut(Collection<Element> collection, Collection<Element> collection2) {
        Elements elements = new Elements();
        for (Element element : collection) {
            boolean z3 = false;
            Iterator<Element> it2 = collection2.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (element.equals(it2.next())) {
                        z3 = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (!z3) {
                elements.add(element);
            }
        }
        return elements;
    }

    public static Elements select(String str, Element element) {
        return new Selector(str, element).select();
    }

    public static Elements select(String str, Iterable<Element> iterable) {
        Validate.notEmpty(str);
        Validate.notNull(iterable);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Element element : iterable) {
            linkedHashSet.addAll(select(str, element));
        }
        return new Elements(linkedHashSet);
    }

    private Elements select() {
        return Collector.collect(this.evaluator, this.root);
    }
}
