.class public Lcom/xinzhu/haunted/HauntedScanner;
.super Ljava/lang/Object;
.source "HauntedScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/haunted/HauntedScanner$a;,
        Lcom/xinzhu/haunted/HauntedScanner$b;,
        Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "initMetaClass"

.field private static final j:Ljava/lang/String; = "getEgo"

.field private static final k:Ljava/lang/String; = "initMetaMethod"

.field private static final l:Ljava/lang/String; = "initMetaField"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

.field public d:Z

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xinzhu/haunted/HauntedScanner$b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xinzhu/haunted/HauntedScanner$b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xinzhu/haunted/HauntedScanner$a;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xinzhu/haunted/HauntedScanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/lang/model/element/Element;Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner;->f:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner;->g:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner;->h:Ljava/util/List;

    .line 6
    iput-object p2, p0, Lcom/xinzhu/haunted/HauntedScanner;->a:Ljava/lang/String;

    .line 7
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/xinzhu/haunted/HauntedScanner;->b:Ljava/lang/String;

    .line 8
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object p2

    sget-object v0, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/xinzhu/haunted/HauntedScanner;->d:Z

    .line 9
    move-object p2, p1

    check-cast p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    const-string v0, " "

    if-nez p3, :cond_2

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class name "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xinzhu/haunted/HauntedScanner;->b:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->outermostClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {p2}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 13
    const-class p2, Lcom/xinzhu/overmind/annotation/Haunted;

    invoke-static {p1, p2}, Lcom/xinzhu/haunted/HauntedScanner;->a(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object p2

    const-string p3, "value"

    if-eqz p2, :cond_0

    .line 14
    invoke-static {p2, p3}, Lcom/xinzhu/haunted/HauntedScanner;->b(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object p2

    invoke-interface {p2}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-direct {p0, p2}, Lcom/xinzhu/haunted/HauntedScanner;->c(Ljavax/lang/model/type/TypeMirror;)Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    move-result-object p2

    iput-object p2, p0, Lcom/xinzhu/haunted/HauntedScanner;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    goto/16 :goto_1

    .line 15
    :cond_0
    const-class p2, Lcom/xinzhu/overmind/annotation/HauntedString;

    invoke-static {p1, p2}, Lcom/xinzhu/haunted/HauntedScanner;->a(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 16
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    invoke-static {p2, p3}, Lcom/xinzhu/haunted/HauntedScanner;->b(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object p2

    invoke-interface {p2}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object p3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->STRING_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    invoke-direct {v0, p2, p3}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;)V

    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    goto :goto_1

    .line 17
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not determine the ego of the class "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 19
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subclass name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xinzhu/haunted/HauntedScanner;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->outermostClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-static {p2}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 22
    new-instance p2, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Lcom/xinzhu/haunted/HauntedScanner;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    iget-object v1, p3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v2, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->STRING_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v1, v2, :cond_3

    iget-object p3, p3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p3, p3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "$"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/xinzhu/haunted/HauntedScanner;->b:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, v2}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;)V

    iput-object p2, p0, Lcom/xinzhu/haunted/HauntedScanner;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 23
    :goto_1
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xinzhu/haunted/HauntedScanner;->g(Ljava/util/List;)V

    return-void
.end method

.method private static a(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 3
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/AnnotationValue;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private c(Ljavax/lang/model/type/TypeMirror;)Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 3
    invoke-static {p1}, Lcom/xinzhu/haunted/HauntedScanner;->e(Lcom/sun/tools/javac/code/Type$ClassType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->EGO_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    invoke-direct {v0, p1, v1}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    return-object v0

    .line 6
    :cond_1
    instance-of v0, p1, Lcom/sun/tools/javac/code/Type$JCPrimitiveType;

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Lcom/sun/tools/javac/code/Type$JCPrimitiveType;

    .line 8
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    return-object v0

    .line 9
    :cond_2
    instance-of v0, p1, Lcom/sun/tools/javac/code/Type$JCVoidType;

    if-eqz v0, :cond_3

    .line 10
    check-cast p1, Lcom/sun/tools/javac/code/Type$JCVoidType;

    .line 11
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    return-object v0

    .line 12
    :cond_3
    instance-of v0, p1, Lcom/sun/tools/javac/code/Type$ArrayType;

    if-eqz v0, :cond_4

    .line 13
    check-cast p1, Lcom/sun/tools/javac/code/Type$ArrayType;

    .line 14
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    return-object v0

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getClassDeclFromTypeMirror: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xinzhu/haunted/a;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Meta"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private static e(Lcom/sun/tools/javac/code/Type$ClassType;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object p0, p0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MetaHt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private f(Ljavax/lang/model/element/Element;)V
    .locals 2

    .line 1
    const-class v0, Lcom/xinzhu/overmind/annotation/MethodParamTemplate;

    invoke-static {p1, v0}, Lcom/xinzhu/haunted/HauntedScanner;->a(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 2
    const-class v1, Lcom/xinzhu/overmind/annotation/MethodParamString;

    invoke-static {p1, v1}, Lcom/xinzhu/haunted/HauntedScanner;->a(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/xinzhu/haunted/HauntedScanner;->i(Ljavax/lang/model/element/Element;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/xinzhu/haunted/HauntedScanner;->j(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    :goto_1
    return-void
.end method

.method private g(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "element class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 4
    instance-of v1, v0, Ljavax/lang/model/element/VariableElement;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljavax/lang/model/element/ExecutableElement;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    instance-of v1, v0, Ljavax/lang/model/element/TypeElement;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/xinzhu/haunted/HauntedScanner;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/xinzhu/haunted/HauntedScanner;->a:Ljava/lang/String;

    invoke-static {v0, v2, p0}, Lcom/xinzhu/haunted/HauntedScanner;->l(Ljavax/lang/model/element/Element;Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner;)Lcom/xinzhu/haunted/HauntedScanner;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/xinzhu/haunted/HauntedScanner;->f(Ljavax/lang/model/element/Element;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static h(Ljavax/lang/model/element/Element;)Ljava/lang/String;
    .locals 2

    .line 1
    :goto_0
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p0, Ljavax/lang/model/element/PackageElement;

    .line 4
    invoke-interface {p0}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private i(Ljavax/lang/model/element/Element;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner$a;

    invoke-direct {v0}, Lcom/xinzhu/haunted/HauntedScanner$a;-><init>()V

    .line 3
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/xinzhu/haunted/HauntedScanner$a;->a:Z

    .line 4
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xinzhu/haunted/HauntedScanner$a;->c:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xinzhu/haunted/HauntedScanner;->c(Ljavax/lang/model/type/TypeMirror;)Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    move-result-object v1

    iput-object v1, v0, Lcom/xinzhu/haunted/HauntedScanner$a;->b:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    if-eqz v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/xinzhu/haunted/HauntedScanner;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get type of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner$b;

    invoke-direct {v0}, Lcom/xinzhu/haunted/HauntedScanner$b;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->b:Z

    .line 3
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->a:Z

    .line 4
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->d:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->b:Z

    .line 7
    iget-object v2, p0, Lcom/xinzhu/haunted/HauntedScanner;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->d:Ljava/lang/String;

    .line 8
    invoke-direct {p0, v2}, Lcom/xinzhu/haunted/HauntedScanner;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->d:Ljava/lang/String;

    .line 9
    :cond_0
    iget-boolean v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xinzhu/haunted/HauntedScanner;->e:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/xinzhu/haunted/HauntedScanner;->f:Ljava/util/List;

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xinzhu/haunted/HauntedScanner$b;

    .line 10
    iget-object v5, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->d:Ljava/lang/String;

    iget-object v6, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_3
    iget-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    .line 12
    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->f:Ljava/lang/String;

    if-eq v4, v3, :cond_4

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    .line 14
    :cond_4
    const-class v2, Lcom/xinzhu/overmind/annotation/ReflectiveName;

    invoke-static {p1, v2}, Lcom/xinzhu/haunted/HauntedScanner;->a(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    const-string v3, "value"

    if-eqz v2, :cond_5

    .line 15
    invoke-static {v2, v3}, Lcom/xinzhu/haunted/HauntedScanner;->b(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->f:Ljava/lang/String;

    .line 16
    :cond_5
    instance-of v2, p1, Ljavax/lang/model/element/VariableElement;

    if-eqz v2, :cond_6

    .line 17
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xinzhu/haunted/HauntedScanner;->c(Ljavax/lang/model/type/TypeMirror;)Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    move-result-object v2

    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    goto :goto_2

    .line 18
    :cond_6
    instance-of v2, p1, Ljavax/lang/model/element/ExecutableElement;

    if-eqz v2, :cond_7

    .line 19
    move-object v2, p1

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 20
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xinzhu/haunted/HauntedScanner;->c(Ljavax/lang/model/type/TypeMirror;)Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    move-result-object v2

    iput-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 21
    :cond_7
    :goto_2
    iget-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    if-nez v2, :cond_9

    iget-boolean v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->b:Z

    if-eqz v2, :cond_8

    goto :goto_3

    .line 22
    :cond_8
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot get type of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    :goto_3
    if-nez p2, :cond_a

    .line 23
    invoke-static {p3, v3}, Lcom/xinzhu/haunted/HauntedScanner;->b(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/element/AnnotationValue;

    .line 26
    invoke-interface {p2}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 27
    iget-object p3, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    new-instance v1, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    sget-object v2, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->STRING_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    invoke-direct {v1, p2, v2}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 28
    :cond_a
    invoke-static {p2, v3}, Lcom/xinzhu/haunted/HauntedScanner;->b(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz p3, :cond_b

    .line 29
    invoke-static {p3, v3}, Lcom/xinzhu/haunted/HauntedScanner;->b(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object p3

    .line 30
    invoke-interface {p3}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Ljava/util/List;

    :cond_b
    if-eqz v2, :cond_e

    .line 31
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "av class type: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 32
    invoke-interface {v2}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 33
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationValue;

    .line 34
    invoke-interface {v2}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeMirror;

    .line 35
    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lo2/a;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v4, :cond_c

    .line 36
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 37
    iget-object v2, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    new-instance v3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 38
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Attribute$Constant;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->STRING_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    invoke-direct {v3, v5, v6}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;-><init>(Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;)V

    .line 39
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 40
    :cond_c
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Strings and string stubs mismatch on "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 41
    :cond_d
    iget-object v3, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/xinzhu/haunted/HauntedScanner;->c(Ljavax/lang/model/type/TypeMirror;)Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    const-string p1, "throwz"

    .line 42
    invoke-static {p2, p1}, Lcom/xinzhu/haunted/HauntedScanner;->b(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 43
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/element/AnnotationValue;

    .line 45
    iget-object p3, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->h:Ljava/util/List;

    invoke-interface {p2}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-direct {p0, p2}, Lcom/xinzhu/haunted/HauntedScanner;->c(Ljavax/lang/model/type/TypeMirror;)Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 46
    :cond_f
    iget-boolean p1, v0, Lcom/xinzhu/haunted/HauntedScanner$b;->b:Z

    if-eqz p1, :cond_10

    .line 47
    iget-object p1, p0, Lcom/xinzhu/haunted/HauntedScanner;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 48
    :cond_10
    iget-object p1, p0, Lcom/xinzhu/haunted/HauntedScanner;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    return-void
.end method

.method public static k(Ljavax/lang/model/element/Element;)Lcom/xinzhu/haunted/HauntedScanner;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/xinzhu/haunted/HauntedScanner;->h(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xinzhu/haunted/HauntedScanner;->l(Ljavax/lang/model/element/Element;Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner;)Lcom/xinzhu/haunted/HauntedScanner;

    move-result-object p0

    return-object p0
.end method

.method private static l(Ljavax/lang/model/element/Element;Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner;)Lcom/xinzhu/haunted/HauntedScanner;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "root element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner;

    invoke-direct {v0, p0, p1, p2}, Lcom/xinzhu/haunted/HauntedScanner;-><init>(Ljavax/lang/model/element/Element;Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner;)V

    const-string p0, "root over"

    .line 4
    invoke-static {p0}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "root must be a class!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
