package com.android.dx.rop.annotation;

import com.android.dx.rop.cst.CstType;
import com.android.dx.util.MutabilityControl;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Objects;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public final class Annotations extends MutabilityControl implements Comparable<Annotations> {
    public static final Annotations EMPTY;
    private final TreeMap<CstType, Annotation> annotations = new TreeMap<>();

    static {
        Annotations annotations = new Annotations();
        EMPTY = annotations;
        annotations.setImmutable();
    }

    public static Annotations combine(Annotations annotations, Annotations annotations2) {
        Annotations annotations3 = new Annotations();
        annotations3.addAll(annotations);
        annotations3.addAll(annotations2);
        annotations3.setImmutable();
        return annotations3;
    }

    public void add(Annotation annotation) {
        throwIfImmutable();
        Objects.requireNonNull(annotation, "annotation == null");
        CstType type = annotation.getType();
        if (!this.annotations.containsKey(type)) {
            this.annotations.put(type, annotation);
            return;
        }
        throw new IllegalArgumentException("duplicate type: " + type.toHuman());
    }

    public void addAll(Annotations annotations) {
        throwIfImmutable();
        Objects.requireNonNull(annotations, "toAdd == null");
        for (Annotation annotation : annotations.annotations.values()) {
            add(annotation);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof Annotations) {
            return this.annotations.equals(((Annotations) obj).annotations);
        }
        return false;
    }

    public Collection<Annotation> getAnnotations() {
        return Collections.unmodifiableCollection(this.annotations.values());
    }

    public int hashCode() {
        return this.annotations.hashCode();
    }

    public int size() {
        return this.annotations.size();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("annotations{");
        boolean z3 = true;
        for (Annotation annotation : this.annotations.values()) {
            if (z3) {
                z3 = false;
            } else {
                sb.append(", ");
            }
            sb.append(annotation.toHuman());
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(Annotations annotations) {
        Iterator<Annotation> it2 = this.annotations.values().iterator();
        Iterator<Annotation> it3 = annotations.annotations.values().iterator();
        while (it2.hasNext() && it3.hasNext()) {
            int compareTo = it2.next().compareTo(it3.next());
            if (compareTo != 0) {
                return compareTo;
            }
        }
        if (it2.hasNext()) {
            return 1;
        }
        return it3.hasNext() ? -1 : 0;
    }

    public static Annotations combine(Annotations annotations, Annotation annotation) {
        Annotations annotations2 = new Annotations();
        annotations2.addAll(annotations);
        annotations2.add(annotation);
        annotations2.setImmutable();
        return annotations2;
    }
}
