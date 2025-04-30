package com.android.dx;

import com.android.dx.dex.file.ClassDefItem;
import com.android.dx.rop.annotation.Annotation;
import com.android.dx.rop.annotation.AnnotationVisibility;
import com.android.dx.rop.annotation.Annotations;
import com.android.dx.rop.annotation.NameValuePair;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstEnumRef;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import java.lang.annotation.ElementType;
import java.util.HashMap;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class AnnotationId<D, V> {
    private final ElementType annotatedElement;
    private final TypeId<D> declaringType;
    private final HashMap<String, NameValuePair> elements = new HashMap<>();
    private final TypeId<V> type;

    /* loaded from: classes2.dex */
    public static final class Element {
        private final String name;
        private final Object value;

        public Element(String name, Object value) {
            Objects.requireNonNull(name, "name == null");
            Objects.requireNonNull(value, "value == null");
            this.name = name;
            this.value = value;
        }

        static Constant toConstant(Object value) {
            Class<?> cls = value.getClass();
            if (cls.isEnum()) {
                return new CstEnumRef(new CstNat(new CstString(((Enum) value).name()), new CstString(TypeId.get(cls).getName())));
            } else if (!cls.isArray()) {
                if (!(value instanceof TypeId)) {
                    return Constants.getConstant(value);
                }
                throw new UnsupportedOperationException("TypeId is not supported yet");
            } else {
                throw new UnsupportedOperationException("Array is not supported yet");
            }
        }

        public boolean equals(Object other) {
            if (other instanceof Element) {
                Element element = (Element) other;
                return this.name.equals(element.name) && this.value.equals(element.value);
            }
            return false;
        }

        public String getName() {
            return this.name;
        }

        public Object getValue() {
            return this.value;
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + this.value.hashCode();
        }

        public String toString() {
            return "[" + this.name + ", " + this.value + "]";
        }
    }

    private AnnotationId(TypeId<D> declaringType, TypeId<V> type, ElementType annotatedElement) {
        this.declaringType = declaringType;
        this.type = type;
        this.annotatedElement = annotatedElement;
    }

    public static <D, V> AnnotationId<D, V> get(TypeId<D> declaringType, TypeId<V> type, ElementType annotatedElement) {
        if (annotatedElement != ElementType.TYPE && annotatedElement != ElementType.METHOD && annotatedElement != ElementType.FIELD && annotatedElement != ElementType.PARAMETER) {
            throw new IllegalArgumentException("element type is not supported to annotate yet.");
        }
        return new AnnotationId<>(declaringType, type, annotatedElement);
    }

    public void addToMethod(DexMaker dexMaker, MethodId<?, ?> method) {
        if (this.annotatedElement == ElementType.METHOD) {
            if (method.declaringType.equals(this.declaringType)) {
                ClassDefItem classDefItem = dexMaker.getTypeDeclaration(this.declaringType).toClassDefItem();
                Objects.requireNonNull(classDefItem, "No class defined item is found");
                CstMethodRef cstMethodRef = method.constant;
                Objects.requireNonNull(cstMethodRef, "Method reference is NULL");
                Annotation annotation = new Annotation(CstType.intern(this.type.ropType), AnnotationVisibility.RUNTIME);
                Annotations annotations = new Annotations();
                for (NameValuePair nameValuePair : this.elements.values()) {
                    annotation.add(nameValuePair);
                }
                annotations.add(annotation);
                classDefItem.addMethodAnnotations(cstMethodRef, annotations, dexMaker.getDexFile());
                return;
            }
            throw new IllegalArgumentException("Method" + method + "'s declaring type is inconsistent with" + this);
        }
        throw new IllegalStateException("This annotation is not for method");
    }

    public void set(Element element) {
        Objects.requireNonNull(element, "element == null");
        this.elements.put(element.getName(), new NameValuePair(new CstString(element.getName()), Element.toConstant(element.getValue())));
    }
}
