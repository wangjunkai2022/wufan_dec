package com.xinzhu.haunted;

import com.sun.tools.javac.code.Attribute;
import com.sun.tools.javac.code.Symbol;
import com.sun.tools.javac.code.Type;
import com.xinzhu.overmind.annotation.Haunted;
import com.xinzhu.overmind.annotation.HauntedString;
import com.xinzhu.overmind.annotation.MethodParamString;
import com.xinzhu.overmind.annotation.MethodParamTemplate;
import com.xinzhu.overmind.annotation.ReflectiveName;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.lang.model.element.AnnotationMirror;
import javax.lang.model.element.AnnotationValue;
import javax.lang.model.element.Element;
import javax.lang.model.element.ElementKind;
import javax.lang.model.element.ExecutableElement;
import javax.lang.model.element.Modifier;
import javax.lang.model.element.PackageElement;
import javax.lang.model.element.TypeElement;
import javax.lang.model.element.VariableElement;
import javax.lang.model.type.TypeMirror;
/* loaded from: classes3.dex */
public class HauntedScanner {

    /* renamed from: i  reason: collision with root package name */
    private static final String f62326i = "initMetaClass";

    /* renamed from: j  reason: collision with root package name */
    private static final String f62327j = "getEgo";

    /* renamed from: k  reason: collision with root package name */
    private static final String f62328k = "initMetaMethod";

    /* renamed from: l  reason: collision with root package name */
    private static final String f62329l = "initMetaField";

    /* renamed from: a  reason: collision with root package name */
    public String f62330a;

    /* renamed from: b  reason: collision with root package name */
    public String f62331b;

    /* renamed from: c  reason: collision with root package name */
    public ClassDecl f62332c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f62333d;

    /* renamed from: e  reason: collision with root package name */
    public List<b> f62334e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    public List<b> f62335f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    public List<a> f62336g = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    public List<HauntedScanner> f62337h = new ArrayList();

    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f62341a;

        /* renamed from: b  reason: collision with root package name */
        ClassDecl f62342b;

        /* renamed from: c  reason: collision with root package name */
        String f62343c;
    }

    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        boolean f62344a;

        /* renamed from: b  reason: collision with root package name */
        boolean f62345b;

        /* renamed from: c  reason: collision with root package name */
        ClassDecl f62346c;

        /* renamed from: d  reason: collision with root package name */
        String f62347d;

        /* renamed from: e  reason: collision with root package name */
        String f62348e;

        /* renamed from: f  reason: collision with root package name */
        String f62349f;

        /* renamed from: g  reason: collision with root package name */
        List<ClassDecl> f62350g = new ArrayList();

        /* renamed from: h  reason: collision with root package name */
        List<ClassDecl> f62351h = new ArrayList();
    }

    private HauntedScanner(Element element, String str, HauntedScanner hauntedScanner) {
        this.f62330a = str;
        this.f62331b = element.getSimpleName().toString();
        this.f62333d = element.getModifiers().contains(Modifier.STATIC);
        Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) element;
        if (hauntedScanner == null) {
            com.xinzhu.haunted.a.c("class name " + this.f62331b + " " + element + " " + classSymbol.outermostClass());
            AnnotationMirror a4 = a(element, Haunted.class);
            if (a4 != null) {
                this.f62332c = c((TypeMirror) b(a4, "value").getValue());
            } else {
                AnnotationMirror a5 = a(element, HauntedString.class);
                if (a5 != null) {
                    this.f62332c = new ClassDecl((String) b(a5, "value").getValue(), ClassDecl.DeclKind.STRING_REFERENCE);
                } else {
                    throw new RuntimeException("Could not determine the ego of the class " + element.getSimpleName());
                }
            }
        } else {
            com.xinzhu.haunted.a.c("subclass name " + this.f62331b + " " + element + " " + classSymbol.outermostClass());
            StringBuilder sb = new StringBuilder();
            ClassDecl classDecl = hauntedScanner.f62332c;
            ClassDecl.DeclKind declKind = classDecl.f62340c;
            ClassDecl.DeclKind declKind2 = ClassDecl.DeclKind.STRING_REFERENCE;
            sb.append((Object) (declKind == declKind2 ? classDecl.f62338a : classDecl.f62339b));
            sb.append("$");
            sb.append(this.f62331b);
            this.f62332c = new ClassDecl(sb.toString(), declKind2);
        }
        g(element.getEnclosedElements());
    }

    private static AnnotationMirror a(Element element, Class<?> cls) {
        String name = cls.getName();
        for (AnnotationMirror annotationMirror : element.getAnnotationMirrors()) {
            if (annotationMirror.getAnnotationType().toString().equals(name)) {
                return annotationMirror;
            }
        }
        return null;
    }

    private static AnnotationValue b(AnnotationMirror annotationMirror, String str) {
        for (Map.Entry entry : annotationMirror.getElementValues().entrySet()) {
            if (((ExecutableElement) entry.getKey()).getSimpleName().toString().equals(str)) {
                return (AnnotationValue) entry.getValue();
            }
        }
        return null;
    }

    private ClassDecl c(TypeMirror typeMirror) {
        if (typeMirror instanceof Type.ClassType) {
            Type.ClassType classType = (Type.ClassType) typeMirror;
            if (e(classType)) {
                return new ClassDecl(classType.toString(), ClassDecl.DeclKind.EGO_REFERENCE);
            }
            return new ClassDecl(classType);
        } else if (typeMirror instanceof Type.JCPrimitiveType) {
            return new ClassDecl((Type.JCPrimitiveType) typeMirror);
        } else {
            if (typeMirror instanceof Type.JCVoidType) {
                return new ClassDecl((Type.JCVoidType) typeMirror);
            }
            if (typeMirror instanceof Type.ArrayType) {
                return new ClassDecl((Type.ArrayType) typeMirror);
            }
            com.xinzhu.haunted.a.b("getClassDeclFromTypeMirror: " + typeMirror.getClass().getCanonicalName());
            return null;
        }
    }

    private String d(String str) {
        return str.startsWith("Meta") ? str.substring(4) : str;
    }

    private static boolean e(Type.ClassType classType) {
        return classType.tsym.name.toString().startsWith("MetaHt");
    }

    private void f(Element element) {
        AnnotationMirror a4 = a(element, MethodParamTemplate.class);
        AnnotationMirror a5 = a(element, MethodParamString.class);
        if (a4 == null && a5 == null) {
            i(element);
        } else {
            j(element, a4, a5);
        }
    }

    private void g(List<? extends Element> list) {
        for (Element element : list) {
            com.xinzhu.haunted.a.c("element " + element + " type " + element.getKind());
            StringBuilder sb = new StringBuilder();
            sb.append("element class ");
            sb.append(element.getClass());
            com.xinzhu.haunted.a.c(sb.toString());
            if (!(element instanceof VariableElement) && !(element instanceof ExecutableElement)) {
                if (element instanceof TypeElement) {
                    this.f62337h.add(l(element, this.f62330a, this));
                }
            } else {
                f(element);
            }
        }
    }

    private static String h(Element element) {
        while (element.getKind() != ElementKind.PACKAGE) {
            element = element.getEnclosingElement();
        }
        return ((PackageElement) element).getQualifiedName().toString();
    }

    private void i(Element element) {
        if (element.getSimpleName().toString().equals("<init>")) {
            return;
        }
        a aVar = new a();
        aVar.f62341a = element.getModifiers().contains(Modifier.STATIC);
        aVar.f62343c = element.getSimpleName().toString();
        ClassDecl c4 = c(element.asType());
        aVar.f62342b = c4;
        if (c4 != null) {
            this.f62336g.add(aVar);
            return;
        }
        throw new RuntimeException("Cannot get type of " + element.getSimpleName());
    }

    private void j(Element element, AnnotationMirror annotationMirror, AnnotationMirror annotationMirror2) {
        b bVar = new b();
        int i2 = 0;
        bVar.f62345b = false;
        bVar.f62344a = element.getModifiers().contains(Modifier.STATIC);
        bVar.f62347d = element.getSimpleName().toString();
        if (element.getKind() == ElementKind.CONSTRUCTOR) {
            bVar.f62345b = true;
            String str = this.f62331b;
            bVar.f62347d = str;
            bVar.f62347d = d(str);
        }
        int i4 = -1;
        for (b bVar2 : bVar.f62345b ? this.f62334e : this.f62335f) {
            if (bVar2.f62347d.equals(bVar.f62347d)) {
                i4++;
            }
        }
        String str2 = bVar.f62347d;
        bVar.f62348e = str2;
        bVar.f62349f = str2;
        if (i4 != -1) {
            bVar.f62348e += i4;
        }
        AnnotationMirror a4 = a(element, ReflectiveName.class);
        if (a4 != null) {
            bVar.f62349f = (String) b(a4, "value").getValue();
        }
        if (element instanceof VariableElement) {
            bVar.f62346c = c(element.asType());
        } else if (element instanceof ExecutableElement) {
            bVar.f62346c = c(((ExecutableElement) element).getReturnType());
        }
        if (bVar.f62346c == null && !bVar.f62345b) {
            throw new RuntimeException("Cannot get type of " + element.getSimpleName());
        }
        if (annotationMirror == null) {
            for (AnnotationValue annotationValue : (List) b(annotationMirror2, "value").getValue()) {
                bVar.f62350g.add(new ClassDecl((String) annotationValue.getValue(), ClassDecl.DeclKind.STRING_REFERENCE));
            }
        } else {
            AnnotationValue b4 = b(annotationMirror, "value");
            List list = annotationMirror2 != null ? (List) b(annotationMirror2, "value").getValue() : null;
            if (b4 != null) {
                com.xinzhu.haunted.a.c("av class type: " + b4.getValue().getClass().getCanonicalName());
                for (AnnotationValue annotationValue2 : (List) b4.getValue()) {
                    TypeMirror typeMirror = (TypeMirror) annotationValue2.getValue();
                    if (typeMirror.toString().equals(o2.a.class.getCanonicalName())) {
                        if (list != null && i2 < list.size()) {
                            bVar.f62350g.add(new ClassDecl((String) ((Attribute.Constant) list.get(i2)).value, ClassDecl.DeclKind.STRING_REFERENCE));
                            i2++;
                        } else {
                            throw new RuntimeException("Strings and string stubs mismatch on " + element.getSimpleName());
                        }
                    } else {
                        bVar.f62350g.add(c(typeMirror));
                    }
                }
            }
            AnnotationValue b5 = b(annotationMirror, "throwz");
            if (b5 != null) {
                for (AnnotationValue annotationValue3 : (List) b5.getValue()) {
                    bVar.f62351h.add(c((TypeMirror) annotationValue3.getValue()));
                }
            }
        }
        if (bVar.f62345b) {
            this.f62334e.add(bVar);
        } else {
            this.f62335f.add(bVar);
        }
    }

    public static HauntedScanner k(Element element) {
        return l(element, h(element), null);
    }

    private static HauntedScanner l(Element element, String str, HauntedScanner hauntedScanner) {
        if (element.getKind() == ElementKind.CLASS) {
            com.xinzhu.haunted.a.c("root element " + element + " type " + element.getKind());
            HauntedScanner hauntedScanner2 = new HauntedScanner(element, str, hauntedScanner);
            com.xinzhu.haunted.a.c("root over");
            return hauntedScanner2;
        }
        throw new RuntimeException("root must be a class!");
    }

    /* loaded from: classes3.dex */
    public static class ClassDecl {

        /* renamed from: a  reason: collision with root package name */
        String f62338a;

        /* renamed from: b  reason: collision with root package name */
        TypeMirror f62339b;

        /* renamed from: c  reason: collision with root package name */
        DeclKind f62340c;

        /* loaded from: classes3.dex */
        public enum DeclKind {
            DIRECT_REFERENCE,
            STRING_REFERENCE,
            EGO_REFERENCE
        }

        public ClassDecl(String str, DeclKind declKind) {
            this.f62338a = str;
            this.f62340c = declKind;
        }

        public boolean a() {
            if (this.f62340c != DeclKind.DIRECT_REFERENCE) {
                return false;
            }
            return this.f62339b.toString().equals("java.lang.Boolean") || this.f62339b.toString().equals("boolean");
        }

        public boolean b() {
            if (this.f62340c != DeclKind.DIRECT_REFERENCE) {
                return false;
            }
            return this.f62339b.isNumeric();
        }

        public boolean c() {
            if (this.f62340c != DeclKind.DIRECT_REFERENCE) {
                return false;
            }
            return this.f62339b.toString().equals("java.lang.Void") || this.f62339b.toString().equals("void");
        }

        public ClassDecl(TypeMirror typeMirror) {
            this.f62339b = typeMirror;
            this.f62340c = DeclKind.DIRECT_REFERENCE;
        }
    }
}
