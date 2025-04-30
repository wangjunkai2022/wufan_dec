.class public Lcom/xinzhu/haunted/c;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "HauntedProcessor.java"


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Ljavax/annotation/processing/Processor;
    }
.end annotation


# instance fields
.field private a:Ljavax/annotation/processing/Filer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
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
    const-class v1, Lcom/xinzhu/overmind/annotation/Haunted;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    const-class v1, Lcom/xinzhu/overmind/annotation/HauntedString;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public b()Ljavax/lang/model/SourceVersion;
    .locals 1

    .line 1
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Ljavax/annotation/processing/AbstractProcessor;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 2
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/haunted/c;->a:Ljavax/annotation/processing/Filer;

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

.method public d(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 2
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
    invoke-interface {p2}, Ljavax/annotation/processing/RoundEnvironment;->getRootElements()Ljava/util/Set;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "Empty root element."

    .line 4
    invoke-static {p1}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allElements "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/element/Element;

    .line 7
    const-class v0, Lcom/xinzhu/overmind/annotation/Haunted;

    invoke-interface {p2, v0}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/annotation/Haunted;

    .line 8
    const-class v1, Lcom/xinzhu/overmind/annotation/HauntedString;

    invoke-interface {p2, v1}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/annotation/HauntedString;

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p2}, Lcom/xinzhu/haunted/HauntedScanner;->k(Ljavax/lang/model/element/Element;)Lcom/xinzhu/haunted/HauntedScanner;

    move-result-object p2

    .line 10
    new-instance v0, Lcom/xinzhu/haunted/HauntedWriter;

    invoke-direct {v0, p2}, Lcom/xinzhu/haunted/HauntedWriter;-><init>(Lcom/xinzhu/haunted/HauntedScanner;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/HauntedWriter;->e()Lcom/squareup/javapoet/JavaFile;

    move-result-object p2

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/xinzhu/haunted/c;->a:Ljavax/annotation/processing/Filer;

    invoke-virtual {p2, v0}, Lcom/squareup/javapoet/JavaFile;->writeTo(Ljavax/annotation/processing/Filer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 12
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
