package com.android.dx.rop.annotation;

import com.android.dx.util.FixedSizeList;
/* loaded from: classes2.dex */
public final class AnnotationsList extends FixedSizeList {
    public static final AnnotationsList EMPTY = new AnnotationsList(0);

    public AnnotationsList(int i2) {
        super(i2);
    }

    public static AnnotationsList combine(AnnotationsList annotationsList, AnnotationsList annotationsList2) {
        int size = annotationsList.size();
        if (size == annotationsList2.size()) {
            AnnotationsList annotationsList3 = new AnnotationsList(size);
            for (int i2 = 0; i2 < size; i2++) {
                annotationsList3.set(i2, Annotations.combine(annotationsList.get(i2), annotationsList2.get(i2)));
            }
            annotationsList3.setImmutable();
            return annotationsList3;
        }
        throw new IllegalArgumentException("list1.size() != list2.size()");
    }

    public Annotations get(int i2) {
        return (Annotations) get0(i2);
    }

    public void set(int i2, Annotations annotations) {
        annotations.throwIfMutable();
        set0(i2, annotations);
    }
}
