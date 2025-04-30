package com.xinzhu.haunted;

import com.squareup.javapoet.ClassName;
import com.squareup.javapoet.JavaFile;
import com.squareup.javapoet.MethodSpec;
import com.squareup.javapoet.ParameterizedTypeName;
import com.squareup.javapoet.TypeName;
import com.squareup.javapoet.TypeSpec;
import com.squareup.javapoet.WildcardTypeName;
import com.xinzhu.haunted.HauntedScanner;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
import javax.lang.model.element.Modifier;
/* loaded from: classes3.dex */
public class HauntedWriter {

    /* renamed from: h  reason: collision with root package name */
    private static final TypeName f62352h = ParameterizedTypeName.get(ClassName.get(AtomicReference.class), new TypeName[]{ClassName.get(Field.class)});

    /* renamed from: i  reason: collision with root package name */
    private static final TypeName f62353i = ParameterizedTypeName.get(ClassName.get(AtomicReference.class), new TypeName[]{ClassName.get(Method.class)});

    /* renamed from: j  reason: collision with root package name */
    private static final TypeName f62354j = ParameterizedTypeName.get(ClassName.get(AtomicReference.class), new TypeName[]{ClassName.get(Constructor.class)});

    /* renamed from: k  reason: collision with root package name */
    private static final TypeName f62355k = ParameterizedTypeName.get(ClassName.get(Class.class), new TypeName[]{WildcardTypeName.subtypeOf(Object.class)});

    /* renamed from: a  reason: collision with root package name */
    private HauntedScanner f62356a;

    /* renamed from: b  reason: collision with root package name */
    private HauntedWriter f62357b;

    /* renamed from: c  reason: collision with root package name */
    private TypeSpec.Builder f62358c;

    /* renamed from: d  reason: collision with root package name */
    private String f62359d;

    /* renamed from: e  reason: collision with root package name */
    private String f62360e;

    /* renamed from: f  reason: collision with root package name */
    private TypeSpec.Builder f62361f;

    /* renamed from: g  reason: collision with root package name */
    private Boolean f62362g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum REFLECT_TYPE {
        TYPE_CONSTRUCTOR,
        TYPE_METHOD,
        TYPE_FIELD_GET,
        TYPE_FIELD_SET
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62363a;

        static {
            int[] iArr = new int[HauntedScanner.ClassDecl.DeclKind.values().length];
            f62363a = iArr;
            try {
                iArr[HauntedScanner.ClassDecl.DeclKind.DIRECT_REFERENCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62363a[HauntedScanner.ClassDecl.DeclKind.STRING_REFERENCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62363a[HauntedScanner.ClassDecl.DeclKind.EGO_REFERENCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class b {
        private b() {
        }

        public static Object a(HauntedScanner.ClassDecl classDecl) {
            int i2 = a.f62363a[classDecl.f62340c.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        throw new RuntimeException("Invalid ClassDecl kind!");
                    }
                    throw new RuntimeException("TODO");
                }
                return classDecl.f62338a.replace("MetaHt", "");
            }
            return classDecl.f62339b;
        }

        public static String b(HauntedScanner.ClassDecl classDecl) {
            int i2 = a.f62363a[classDecl.f62340c.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        throw new RuntimeException("Invalid ClassDecl kind!");
                    }
                    throw new RuntimeException("TODO");
                }
                return "$S";
            }
            return "$T";
        }

        public static String[] c(String str) {
            int lastIndexOf = str.lastIndexOf(46);
            if (-1 != lastIndexOf) {
                String substring = str.substring(0, lastIndexOf);
                String[] split = str.substring(lastIndexOf + 1).split("$");
                String[] strArr = new String[split.length];
                strArr[0] = substring;
                System.arraycopy(strArr, 1, split, 0, split.length);
                return strArr;
            }
            throw new RuntimeException("Invalid full class name.");
        }
    }

    public HauntedWriter(HauntedScanner hauntedScanner) {
        this(hauntedScanner, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:90:0x070c  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0749  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0774  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.squareup.javapoet.TypeSpec a() {
        /*
            Method dump skipped, instructions count: 3877
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xinzhu.haunted.HauntedWriter.a():com.squareup.javapoet.TypeSpec");
    }

    private String b() {
        if (this.f62357b == null || this.f62356a.f62333d) {
            return "TYPE";
        }
        return d() + "_TYPE";
    }

    private String c(String str) {
        if (this.f62357b == null || this.f62356a.f62333d) {
            return str;
        }
        return d() + "_" + str;
    }

    private String d() {
        if (this.f62360e == null) {
            StringBuilder sb = new StringBuilder("");
            sb.insert(0, this.f62359d);
            for (HauntedWriter hauntedWriter = this.f62357b; hauntedWriter != null; hauntedWriter = hauntedWriter.f62357b) {
                if (hauntedWriter.f62357b != null) {
                    sb.insert(0, hauntedWriter.f62359d + "_");
                }
            }
            this.f62360e = sb.toString();
        }
        return this.f62360e;
    }

    private String f(HauntedScanner.ClassDecl classDecl) {
        return classDecl.c() ? "return" : classDecl.b() ? "return 0" : classDecl.a() ? "return false" : "return null";
    }

    private String g(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return str.substring(0, lastIndexOf + 1) + str.substring(lastIndexOf + 5);
    }

    private TypeSpec.Builder h() {
        if (this.f62361f == null) {
            HauntedWriter hauntedWriter = this;
            while (true) {
                HauntedWriter hauntedWriter2 = hauntedWriter.f62357b;
                if (hauntedWriter2 == null) {
                    break;
                }
                hauntedWriter = hauntedWriter2;
            }
            this.f62361f = hauntedWriter.f62358c;
        }
        return this.f62361f;
    }

    private boolean i() {
        if (this.f62362g == null) {
            for (HauntedScanner.a aVar : this.f62356a.f62336g) {
                if (!aVar.f62341a) {
                    this.f62362g = Boolean.TRUE;
                    return true;
                }
            }
            for (HauntedScanner.b bVar : this.f62356a.f62335f) {
                if (!bVar.f62344a) {
                    this.f62362g = Boolean.TRUE;
                    return true;
                }
            }
            for (HauntedScanner hauntedScanner : this.f62356a.f62337h) {
                if (!hauntedScanner.f62333d) {
                    this.f62362g = Boolean.TRUE;
                    return true;
                }
            }
            if (!this.f62356a.f62334e.isEmpty()) {
                this.f62362g = Boolean.TRUE;
                return true;
            }
            this.f62362g = Boolean.FALSE;
        }
        return this.f62362g.booleanValue();
    }

    private MethodSpec.Builder j(MethodSpec.Builder builder, String str, String str2, String str3, HauntedScanner.ClassDecl classDecl, REFLECT_TYPE reflect_type, String str4, HauntedScanner.ClassDecl... classDeclArr) {
        String str5;
        String str6;
        String str7 = str3 == null ? str : str3;
        String str8 = str2 == null ? str : str2;
        if (reflect_type == REFLECT_TYPE.TYPE_METHOD) {
            str5 = "method_" + c(str8);
            str6 = "HtClass.initHtMethod";
        } else if (reflect_type == REFLECT_TYPE.TYPE_FIELD_GET || reflect_type == REFLECT_TYPE.TYPE_FIELD_SET) {
            str5 = "field_" + c(str8);
            str6 = "HtClass.initHtField";
        } else if (reflect_type != REFLECT_TYPE.TYPE_CONSTRUCTOR) {
            throw new RuntimeException("TODO");
        } else {
            str5 = "constructor_" + c(str8);
            str6 = "HtClass.initHtConstructor";
        }
        for (int i2 = 0; i2 < classDeclArr.length; i2++) {
            HauntedScanner.ClassDecl classDecl2 = classDeclArr[i2];
            HauntedScanner.ClassDecl.DeclKind declKind = classDecl2.f62340c;
            if (declKind == HauntedScanner.ClassDecl.DeclKind.DIRECT_REFERENCE) {
                builder.addParameter(ClassName.get(classDecl2.f62339b), "arg" + i2, new Modifier[0]);
            } else if (declKind == HauntedScanner.ClassDecl.DeclKind.STRING_REFERENCE) {
                builder.addParameter(Object.class, "arg" + i2, new Modifier[0]);
            } else if (declKind == HauntedScanner.ClassDecl.DeclKind.EGO_REFERENCE) {
                builder.addParameter(ClassName.bestGuess(g(classDecl2.f62338a)), "arg" + i2, new Modifier[0]);
            }
        }
        builder.beginControlFlow("if(" + str5 + ".get() == null)", new Object[0]);
        builder.beginControlFlow("if(!init_" + str5 + ")", new Object[0]);
        StringBuilder sb = new StringBuilder(str5 + ".compareAndSet(null, " + str6 + "(" + str4 + ", \"" + str7 + m.a.f72569g);
        for (HauntedScanner.ClassDecl classDecl3 : classDeclArr) {
            HauntedScanner.ClassDecl.DeclKind declKind2 = classDecl3.f62340c;
            if (declKind2 == HauntedScanner.ClassDecl.DeclKind.DIRECT_REFERENCE) {
                sb.append(", " + classDecl3.f62339b.toString() + ".class");
            } else if (declKind2 == HauntedScanner.ClassDecl.DeclKind.STRING_REFERENCE) {
                sb.append(", \"" + classDecl3.f62338a.replace("$", "$$") + m.a.f72569g);
            } else if (declKind2 == HauntedScanner.ClassDecl.DeclKind.EGO_REFERENCE) {
                sb.append(", " + g(classDecl3.f62338a) + ".class");
            }
        }
        sb.append("))");
        builder.addStatement(sb.toString(), new Object[0]).addStatement("init_" + str5 + " = true", new Object[0]);
        builder.beginControlFlow("if(" + str5 + ".get() == null)", new Object[0]).addStatement("return false", new Object[0]).nextControlFlow("else", new Object[0]).addStatement("return true", new Object[0]).endControlFlow();
        builder.nextControlFlow("else", new Object[0]);
        builder.addStatement("return false", new Object[0]);
        builder.endControlFlow().endControlFlow().addStatement("return true", new Object[0]);
        return builder;
    }

    public JavaFile e() {
        return JavaFile.builder(this.f62356a.f62330a, a()).addFileComment("AUTO GENERATED FILE, DO NOT MODIFY", new Object[0]).build();
    }

    private HauntedWriter(HauntedScanner hauntedScanner, HauntedWriter hauntedWriter) {
        this.f62362g = null;
        this.f62356a = hauntedScanner;
        this.f62357b = hauntedWriter;
    }
}
