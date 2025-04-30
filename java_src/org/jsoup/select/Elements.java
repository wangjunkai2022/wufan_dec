package org.jsoup.select;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Element;
/* loaded from: classes5.dex */
public class Elements implements List<Element>, Cloneable {
    private List<Element> contents;

    public Elements() {
        this.contents = new ArrayList();
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends Element> collection) {
        return this.contents.addAll(collection);
    }

    public Elements addClass(String str) {
        for (Element element : this.contents) {
            element.addClass(str);
        }
        return this;
    }

    public Elements after(String str) {
        for (Element element : this.contents) {
            element.after(str);
        }
        return this;
    }

    public Elements append(String str) {
        for (Element element : this.contents) {
            element.append(str);
        }
        return this;
    }

    public String attr(String str) {
        for (Element element : this.contents) {
            if (element.hasAttr(str)) {
                return element.attr(str);
            }
        }
        return "";
    }

    public Elements before(String str) {
        for (Element element : this.contents) {
            element.before(str);
        }
        return this;
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.contents.clear();
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return this.contents.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.contents.containsAll(collection);
    }

    public Elements empty() {
        for (Element element : this.contents) {
            element.empty();
        }
        return this;
    }

    public Elements eq(int i2) {
        return this.contents.size() > i2 ? new Elements(get(i2)) : new Elements();
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        return this.contents.equals(obj);
    }

    public Element first() {
        if (this.contents.isEmpty()) {
            return null;
        }
        return this.contents.get(0);
    }

    public boolean hasAttr(String str) {
        for (Element element : this.contents) {
            if (element.hasAttr(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean hasClass(String str) {
        for (Element element : this.contents) {
            if (element.hasClass(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean hasText() {
        for (Element element : this.contents) {
            if (element.hasText()) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.contents.hashCode();
    }

    public String html() {
        StringBuilder sb = new StringBuilder();
        for (Element element : this.contents) {
            if (sb.length() != 0) {
                sb.append("\n");
            }
            sb.append(element.html());
        }
        return sb.toString();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return this.contents.indexOf(obj);
    }

    public boolean is(String str) {
        return !select(str).isEmpty();
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.contents.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<Element> iterator() {
        return this.contents.iterator();
    }

    public Element last() {
        if (this.contents.isEmpty()) {
            return null;
        }
        List<Element> list = this.contents;
        return list.get(list.size() - 1);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return this.contents.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<Element> listIterator() {
        return this.contents.listIterator();
    }

    public Elements not(String str) {
        return Selector.filterOut(this, Selector.select(str, this));
    }

    public String outerHtml() {
        StringBuilder sb = new StringBuilder();
        for (Element element : this.contents) {
            if (sb.length() != 0) {
                sb.append("\n");
            }
            sb.append(element.outerHtml());
        }
        return sb.toString();
    }

    public Elements parents() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Element element : this.contents) {
            linkedHashSet.addAll(element.parents());
        }
        return new Elements(linkedHashSet);
    }

    public Elements prepend(String str) {
        for (Element element : this.contents) {
            element.prepend(str);
        }
        return this;
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return this.contents.removeAll(collection);
    }

    public Elements removeAttr(String str) {
        for (Element element : this.contents) {
            element.removeAttr(str);
        }
        return this;
    }

    public Elements removeClass(String str) {
        for (Element element : this.contents) {
            element.removeClass(str);
        }
        return this;
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return this.contents.retainAll(collection);
    }

    public Elements select(String str) {
        return Selector.select(str, this);
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return this.contents.size();
    }

    @Override // java.util.List
    public List<Element> subList(int i2, int i4) {
        return this.contents.subList(i2, i4);
    }

    public Elements tagName(String str) {
        for (Element element : this.contents) {
            element.tagName(str);
        }
        return this;
    }

    public String text() {
        StringBuilder sb = new StringBuilder();
        for (Element element : this.contents) {
            if (sb.length() != 0) {
                sb.append(" ");
            }
            sb.append(element.text());
        }
        return sb.toString();
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return this.contents.toArray();
    }

    public String toString() {
        return outerHtml();
    }

    public Elements toggleClass(String str) {
        for (Element element : this.contents) {
            element.toggleClass(str);
        }
        return this;
    }

    public Elements traverse(NodeVisitor nodeVisitor) {
        Validate.notNull(nodeVisitor);
        NodeTraversor nodeTraversor = new NodeTraversor(nodeVisitor);
        for (Element element : this.contents) {
            nodeTraversor.traverse(element);
        }
        return this;
    }

    public Elements unwrap() {
        for (Element element : this.contents) {
            element.unwrap();
        }
        return this;
    }

    public String val() {
        return size() > 0 ? first().val() : "";
    }

    public Elements wrap(String str) {
        Validate.notEmpty(str);
        for (Element element : this.contents) {
            element.wrap(str);
        }
        return this;
    }

    @Override // java.util.List
    public boolean addAll(int i2, Collection<? extends Element> collection) {
        return this.contents.addAll(i2, collection);
    }

    public Elements clone() {
        ArrayList arrayList = new ArrayList();
        for (Element element : this.contents) {
            arrayList.add(element.mo1442clone());
        }
        return new Elements((List<Element>) arrayList);
    }

    @Override // java.util.List
    public Element get(int i2) {
        return this.contents.get(i2);
    }

    @Override // java.util.List
    public ListIterator<Element> listIterator(int i2) {
        return this.contents.listIterator(i2);
    }

    public Elements remove() {
        for (Element element : this.contents) {
            element.remove();
        }
        return this;
    }

    @Override // java.util.List
    public Element set(int i2, Element element) {
        return this.contents.set(i2, element);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.contents.toArray(tArr);
    }

    public Elements(int i2) {
        this.contents = new ArrayList(i2);
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(Element element) {
        return this.contents.add(element);
    }

    public Elements val(String str) {
        for (Element element : this.contents) {
            element.val(str);
        }
        return this;
    }

    @Override // java.util.List
    public void add(int i2, Element element) {
        this.contents.add(i2, element);
    }

    public Elements attr(String str, String str2) {
        for (Element element : this.contents) {
            element.attr(str, str2);
        }
        return this;
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        return this.contents.remove(obj);
    }

    public Elements(Collection<Element> collection) {
        this.contents = new ArrayList(collection);
    }

    @Override // java.util.List
    public Element remove(int i2) {
        return this.contents.remove(i2);
    }

    public Elements(List<Element> list) {
        this.contents = list;
    }

    public Elements html(String str) {
        for (Element element : this.contents) {
            element.html(str);
        }
        return this;
    }

    public Elements(Element... elementArr) {
        this((List<Element>) Arrays.asList(elementArr));
    }
}
