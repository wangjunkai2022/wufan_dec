.class public Lcom/xinzhu/handler/a;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "HandlerProcessor.java"


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Ljavax/annotation/processing/Processor;
    }
.end annotation


# instance fields
.field private a:Ljavax/annotation/processing/Filer;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/handler/a;->b:Ljava/util/Set;

    return-void
.end method

.method private a()Lcom/squareup/javapoet/TypeSpec;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/xinzhu/handler/a;->d:Ljava/lang/String;

    const-string v1, "Base"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/xinzhu/handler/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/TypeSpec;->classBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xinzhu/handler/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xinzhu/handler/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/squareup/javapoet/ClassName;->bestGuess(Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v3, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v3, v2

    .line 4
    invoke-virtual {v0, v3}, Lcom/squareup/javapoet/TypeSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v0

    const-string v3, "addAllHandlers"

    .line 5
    invoke-static {v3}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    new-array v4, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v5, Ljavax/lang/model/element/Modifier;->PROTECTED:Ljavax/lang/model/element/Modifier;

    aput-object v5, v4, v2

    .line 6
    invoke-virtual {v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/xinzhu/handler/a;->b:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/Element;

    new-array v6, v1, [Ljava/lang/Object;

    .line 8
    invoke-interface {v5}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    aput-object v5, v6, v2

    const-string v5, "addHandler(new $T())"

    invoke-virtual {v3, v5, v6}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 10
    invoke-virtual {v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->build()Lcom/squareup/javapoet/TypeSpec;

    move-result-object v0

    return-object v0

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler class must end with Base! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xinzhu/handler/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private e(Ljavax/lang/model/element/Element;)V
    .locals 3

    move-object v0, p1

    .line 1
    :goto_0
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_0

    .line 2
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    check-cast v0, Ljavax/lang/model/element/PackageElement;

    .line 4
    invoke-interface {v0}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/handler/a;->c:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/handler/a;->d:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 7
    instance-of v1, v0, Ljavax/lang/model/element/TypeElement;

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/xinzhu/handler/a;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    const-class v1, Lcom/xinzhu/overmind/annotation/HandlerClass;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public c()Ljavax/lang/model/SourceVersion;
    .locals 1

    .line 1
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized d(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Ljavax/annotation/processing/AbstractProcessor;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 2
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/handler/a;->a:Ljavax/annotation/processing/Filer;

    .line 3
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object p1

    invoke-static {p1}, Lcom/xinzhu/haunted/a;->d(Ljavax/annotation/processing/Messager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "annotations size--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 2
    const-class p1, Lcom/xinzhu/overmind/annotation/HandlerClass;

    invoke-interface {p2, p1}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string p1, "Empty root element."

    .line 4
    invoke-static {p1}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    return v0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/element/Element;

    .line 6
    iget-object v1, p0, Lcom/xinzhu/handler/a;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 7
    invoke-direct {p0, p2}, Lcom/xinzhu/handler/a;->e(Ljavax/lang/model/element/Element;)V

    .line 8
    iget-object p2, p0, Lcom/xinzhu/handler/a;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xinzhu/handler/a;->a()Lcom/squareup/javapoet/TypeSpec;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/squareup/javapoet/JavaFile;->builder(Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/JavaFile$Builder;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AUTO GENERATED FILE, DO NOT MODIFY"

    .line 9
    invoke-virtual {p2, v2, v1}, Lcom/squareup/javapoet/JavaFile$Builder;->addFileComment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/JavaFile$Builder;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/squareup/javapoet/JavaFile$Builder;->build()Lcom/squareup/javapoet/JavaFile;

    move-result-object p2

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/handler/a;->a:Ljavax/annotation/processing/Filer;

    invoke-virtual {p2, v1}, Lcom/squareup/javapoet/JavaFile;->writeTo(Ljavax/annotation/processing/Filer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 12
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
