.class public Lcom/xinzhu/haunted/HauntedWriter;
.super Ljava/lang/Object;
.source "HauntedWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;,
        Lcom/xinzhu/haunted/HauntedWriter$b;
    }
.end annotation


# static fields
.field private static final h:Lcom/squareup/javapoet/TypeName;

.field private static final i:Lcom/squareup/javapoet/TypeName;

.field private static final j:Lcom/squareup/javapoet/TypeName;

.field private static final k:Lcom/squareup/javapoet/TypeName;


# instance fields
.field private a:Lcom/xinzhu/haunted/HauntedScanner;

.field private b:Lcom/xinzhu/haunted/HauntedWriter;

.field private c:Lcom/squareup/javapoet/TypeSpec$Builder;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/squareup/javapoet/TypeSpec$Builder;

.field private g:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-static {v0}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/squareup/javapoet/TypeName;

    const-class v3, Ljava/lang/reflect/Field;

    .line 3
    invoke-static {v3}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4
    invoke-static {v0, v2}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Lcom/squareup/javapoet/ClassName;[Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/haunted/HauntedWriter;->h:Lcom/squareup/javapoet/TypeName;

    .line 5
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-static {v0}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    new-array v2, v1, [Lcom/squareup/javapoet/TypeName;

    const-class v3, Ljava/lang/reflect/Method;

    .line 7
    invoke-static {v3}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v3

    aput-object v3, v2, v4

    .line 8
    invoke-static {v0, v2}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Lcom/squareup/javapoet/ClassName;[Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/haunted/HauntedWriter;->i:Lcom/squareup/javapoet/TypeName;

    .line 9
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    invoke-static {v0}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    new-array v2, v1, [Lcom/squareup/javapoet/TypeName;

    const-class v3, Ljava/lang/reflect/Constructor;

    .line 11
    invoke-static {v3}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v3

    aput-object v3, v2, v4

    .line 12
    invoke-static {v0, v2}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Lcom/squareup/javapoet/ClassName;[Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/haunted/HauntedWriter;->j:Lcom/squareup/javapoet/TypeName;

    .line 13
    const-class v0, Ljava/lang/Class;

    .line 14
    invoke-static {v0}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    new-array v1, v1, [Lcom/squareup/javapoet/TypeName;

    const-class v2, Ljava/lang/Object;

    .line 15
    invoke-static {v2}, Lcom/squareup/javapoet/WildcardTypeName;->subtypeOf(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/WildcardTypeName;

    move-result-object v2

    aput-object v2, v1, v4

    .line 16
    invoke-static {v0, v1}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Lcom/squareup/javapoet/ClassName;[Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/haunted/HauntedWriter;->k:Lcom/squareup/javapoet/TypeName;

    return-void
.end method

.method public constructor <init>(Lcom/xinzhu/haunted/HauntedScanner;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/haunted/HauntedWriter;-><init>(Lcom/xinzhu/haunted/HauntedScanner;Lcom/xinzhu/haunted/HauntedWriter;)V

    return-void
.end method

.method private constructor <init>(Lcom/xinzhu/haunted/HauntedScanner;Lcom/xinzhu/haunted/HauntedWriter;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->g:Ljava/lang/Boolean;

    .line 4
    iput-object p1, p0, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    .line 5
    iput-object p2, p0, Lcom/xinzhu/haunted/HauntedWriter;->b:Lcom/xinzhu/haunted/HauntedWriter;

    return-void
.end method

.method private a()Lcom/squareup/javapoet/TypeSpec;
    .locals 41

    move-object/from16 v9, p0

    .line 1
    const-class v10, Ljava/lang/Object;

    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedScanner;->b:Ljava/lang/String;

    iput-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->d:Ljava/lang/String;

    const-string v1, "MetaHt"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->d:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->d:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MetaClass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/xinzhu/haunted/HauntedWriter;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not start with MetaHt, using the same name."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/javapoet/TypeSpec;->classBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v0

    iput-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 6
    iget-object v1, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-boolean v1, v1, Lcom/xinzhu/haunted/HauntedScanner;->d:Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    new-array v1, v11, [Ljavax/lang/model/element/Modifier;

    .line 7
    sget-object v2, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v2, v1, v12

    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 8
    :cond_1
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->b:Lcom/xinzhu/haunted/HauntedWriter;

    const/4 v13, 0x2

    if-nez v0, :cond_2

    .line 9
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljavax/lang/model/element/Modifier;

    sget-object v3, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v3, v2, v12

    sget-object v3, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v3, v2, v11

    sget-object v3, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v3, v2, v13

    const-string v3, "TAG"

    invoke-static {v1, v3, v2}, Lcom/squareup/javapoet/FieldSpec;->builder(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Lcom/xinzhu/haunted/HauntedWriter;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".class.getSimpleName()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v1, v2, v3}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 13
    :cond_2
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->b:Lcom/xinzhu/haunted/HauntedWriter;

    const-string v1, ".class"

    const-string v2, "$T.initHtClass("

    const-string v14, ")"

    const-string v15, ""

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-boolean v0, v0, Lcom/xinzhu/haunted/HauntedScanner;->d:Z

    if-eqz v0, :cond_3

    goto/16 :goto_2

    .line 14
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->h()Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v0

    sget-object v3, Lcom/xinzhu/haunted/HauntedWriter;->k:Lcom/squareup/javapoet/TypeName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_TYPE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v13, [Ljavax/lang/model/element/Modifier;

    sget-object v6, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v6, v5, v12

    sget-object v6, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v6, v5, v11

    invoke-static {v3, v4, v5}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v2, v2, Lcom/xinzhu/haunted/HauntedScanner;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 15
    invoke-static {v2}, Lcom/xinzhu/haunted/HauntedWriter$b;->b(Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v2, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v2, v2, Lcom/xinzhu/haunted/HauntedScanner;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    iget-object v2, v2, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->DIRECT_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v2, v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v15

    .line 17
    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/Object;

    new-array v4, v12, [Ljava/lang/String;

    const-string v5, "com.xinzhu.haunted"

    const-string v6, "HtClass"

    .line 18
    invoke-static {v5, v6, v4}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v4

    aput-object v4, v2, v12

    iget-object v4, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v4, v4, Lcom/xinzhu/haunted/HauntedScanner;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 19
    invoke-static {v4}, Lcom/xinzhu/haunted/HauntedWriter$b;->a(Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v11

    .line 20
    invoke-virtual {v3, v1, v2}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto :goto_4

    .line 23
    :cond_5
    :goto_2
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    sget-object v3, Lcom/xinzhu/haunted/HauntedWriter;->k:Lcom/squareup/javapoet/TypeName;

    new-array v4, v13, [Ljavax/lang/model/element/Modifier;

    sget-object v5, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v5, v4, v12

    sget-object v5, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v5, v4, v11

    const-string v5, "TYPE"

    invoke-static {v3, v5, v4}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v2, v2, Lcom/xinzhu/haunted/HauntedScanner;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 24
    invoke-static {v2}, Lcom/xinzhu/haunted/HauntedWriter$b;->b(Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v2, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v2, v2, Lcom/xinzhu/haunted/HauntedScanner;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    iget-object v2, v2, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->DIRECT_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v2, v5, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, v15

    .line 26
    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/Object;

    new-array v4, v12, [Ljava/lang/String;

    const-string v5, "com.xinzhu.haunted"

    const-string v6, "HtClass"

    .line 27
    invoke-static {v5, v6, v4}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v4

    aput-object v4, v2, v12

    iget-object v4, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v4, v4, Lcom/xinzhu/haunted/HauntedScanner;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 28
    invoke-static {v4}, Lcom/xinzhu/haunted/HauntedWriter$b;->a(Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v11

    .line 29
    invoke-virtual {v3, v1, v2}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 32
    :goto_4
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedScanner;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v8, "field_"

    const-string v2, "_"

    const-string v3, "false"

    const-string v4, "new $T()"

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/haunted/HauntedScanner$a;

    .line 33
    iget-object v5, v9, Lcom/xinzhu/haunted/HauntedWriter;->b:Lcom/xinzhu/haunted/HauntedWriter;

    if-eqz v5, :cond_8

    iget-object v5, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-boolean v5, v5, Lcom/xinzhu/haunted/HauntedScanner;->d:Z

    if-eqz v5, :cond_7

    goto/16 :goto_6

    .line 34
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->h()Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v5

    sget-object v6, Lcom/xinzhu/haunted/HauntedWriter;->h:Lcom/squareup/javapoet/TypeName;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/xinzhu/haunted/HauntedScanner$a;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v13, [Ljavax/lang/model/element/Modifier;

    sget-object v16, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v16, v8, v12

    sget-object v16, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v16, v8, v11

    .line 36
    invoke-static {v6, v7, v8}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v12

    .line 37
    invoke-virtual {v7, v4, v8}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v4

    .line 38
    invoke-virtual {v4}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v4

    .line 39
    invoke-virtual {v5, v4}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 40
    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->h()Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init_field_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/xinzhu/haunted/HauntedScanner$a;->c:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v13, [Ljavax/lang/model/element/Modifier;

    sget-object v6, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v6, v2, v12

    sget-object v6, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v6, v2, v11

    .line 42
    invoke-static {v5, v1, v2}, Lcom/squareup/javapoet/FieldSpec;->builder(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/Object;

    .line 43
    invoke-virtual {v1, v3, v2}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v1

    .line 44
    invoke-virtual {v4, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto/16 :goto_5

    .line 45
    :cond_8
    :goto_6
    iget-object v2, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    sget-object v5, Lcom/xinzhu/haunted/HauntedWriter;->h:Lcom/squareup/javapoet/TypeName;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/xinzhu/haunted/HauntedScanner$a;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v13, [Ljavax/lang/model/element/Modifier;

    sget-object v8, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v8, v7, v12

    sget-object v8, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v8, v7, v11

    invoke-static {v5, v6, v7}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v5, v7, v12

    .line 46
    invoke-virtual {v6, v4, v7}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v4

    .line 48
    invoke-virtual {v2, v4}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 49
    iget-object v2, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init_field_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/xinzhu/haunted/HauntedScanner$a;->c:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v13, [Ljavax/lang/model/element/Modifier;

    sget-object v6, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v6, v5, v12

    sget-object v6, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v6, v5, v11

    invoke-static {v4, v1, v5}, Lcom/squareup/javapoet/FieldSpec;->builder(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    new-array v4, v12, [Ljava/lang/Object;

    .line 50
    invoke-virtual {v1, v3, v4}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v1

    .line 51
    invoke-virtual {v2, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto/16 :goto_5

    .line 52
    :cond_9
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedScanner;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v7, "method_"

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/haunted/HauntedScanner$b;

    .line 53
    iget-object v5, v9, Lcom/xinzhu/haunted/HauntedWriter;->b:Lcom/xinzhu/haunted/HauntedWriter;

    if-eqz v5, :cond_b

    iget-object v5, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-boolean v5, v5, Lcom/xinzhu/haunted/HauntedScanner;->d:Z

    if-eqz v5, :cond_a

    goto/16 :goto_8

    .line 54
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->h()Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v5

    sget-object v6, Lcom/xinzhu/haunted/HauntedWriter;->i:Lcom/squareup/javapoet/TypeName;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v11, v13, [Ljavax/lang/model/element/Modifier;

    sget-object v17, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v17, v11, v12

    sget-object v17, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    const/4 v13, 0x1

    aput-object v17, v11, v13

    .line 56
    invoke-static {v6, v7, v11}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v7

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v6, v11, v12

    .line 57
    invoke-virtual {v7, v4, v11}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v6

    .line 58
    invoke-virtual {v6}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v6

    .line 59
    invoke-virtual {v5, v6}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 60
    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->h()Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "init_method_"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x2

    new-array v11, v7, [Ljavax/lang/model/element/Modifier;

    sget-object v7, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v7, v11, v12

    sget-object v7, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    const/4 v13, 0x1

    aput-object v7, v11, v13

    .line 62
    invoke-static {v6, v1, v11}, Lcom/squareup/javapoet/FieldSpec;->builder(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    new-array v6, v12, [Ljava/lang/Object;

    .line 63
    invoke-virtual {v1, v3, v6}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v1

    .line 64
    invoke-virtual {v5, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto :goto_9

    .line 65
    :cond_b
    :goto_8
    iget-object v5, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    sget-object v6, Lcom/xinzhu/haunted/HauntedWriter;->i:Lcom/squareup/javapoet/TypeName;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x2

    new-array v13, v11, [Ljavax/lang/model/element/Modifier;

    sget-object v11, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v11, v13, v12

    sget-object v11, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    const/4 v12, 0x1

    aput-object v11, v13, v12

    invoke-static {v6, v7, v13}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v7

    new-array v11, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    .line 66
    invoke-virtual {v7, v4, v11}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v6

    .line 67
    invoke-virtual {v6}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v6

    .line 68
    invoke-virtual {v5, v6}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 69
    iget-object v5, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "init_method_"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x2

    new-array v11, v7, [Ljavax/lang/model/element/Modifier;

    sget-object v7, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    sget-object v7, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    const/4 v13, 0x1

    aput-object v7, v11, v13

    invoke-static {v6, v1, v11}, Lcom/squareup/javapoet/FieldSpec;->builder(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    new-array v6, v12, [Ljava/lang/Object;

    .line 70
    invoke-virtual {v1, v3, v6}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v1

    .line 71
    invoke-virtual {v5, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    :goto_9
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x2

    goto/16 :goto_7

    .line 72
    :cond_c
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedScanner;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v11, "constructor_"

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/haunted/HauntedScanner$b;

    .line 73
    iget-object v5, v9, Lcom/xinzhu/haunted/HauntedWriter;->b:Lcom/xinzhu/haunted/HauntedWriter;

    if-eqz v5, :cond_e

    iget-object v5, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-boolean v5, v5, Lcom/xinzhu/haunted/HauntedScanner;->d:Z

    if-eqz v5, :cond_d

    goto/16 :goto_b

    .line 74
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->h()Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v5

    sget-object v6, Lcom/xinzhu/haunted/HauntedWriter;->j:Lcom/squareup/javapoet/TypeName;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    new-array v13, v12, [Ljavax/lang/model/element/Modifier;

    sget-object v12, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    const/16 v17, 0x0

    aput-object v12, v13, v17

    sget-object v12, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    move-object/from16 v18, v0

    const/4 v0, 0x1

    aput-object v12, v13, v0

    .line 76
    invoke-static {v6, v11, v13}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v11

    new-array v12, v0, [Ljava/lang/Object;

    aput-object v6, v12, v17

    .line 77
    invoke-virtual {v11, v4, v12}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v0

    .line 79
    invoke-virtual {v5, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->h()Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "init_constructor_"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    new-array v11, v6, [Ljavax/lang/model/element/Modifier;

    sget-object v6, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    sget-object v6, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    const/4 v13, 0x1

    aput-object v6, v11, v13

    .line 82
    invoke-static {v5, v1, v11}, Lcom/squareup/javapoet/FieldSpec;->builder(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    new-array v5, v12, [Ljava/lang/Object;

    .line 83
    invoke-virtual {v1, v3, v5}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto :goto_c

    :cond_e
    :goto_b
    move-object/from16 v18, v0

    .line 85
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    sget-object v5, Lcom/xinzhu/haunted/HauntedWriter;->j:Lcom/squareup/javapoet/TypeName;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x2

    new-array v12, v11, [Ljavax/lang/model/element/Modifier;

    sget-object v11, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    sget-object v11, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    const/4 v13, 0x1

    aput-object v11, v12, v13

    invoke-static {v5, v6, v12}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v6

    new-array v11, v13, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    .line 86
    invoke-virtual {v6, v4, v11}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v5

    .line 87
    invoke-virtual {v5}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v5

    .line 88
    invoke-virtual {v0, v5}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 89
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "init_constructor_"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    new-array v11, v6, [Ljavax/lang/model/element/Modifier;

    sget-object v6, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    sget-object v6, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    const/4 v13, 0x1

    aput-object v6, v11, v13

    invoke-static {v5, v1, v11}, Lcom/squareup/javapoet/FieldSpec;->builder(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    new-array v5, v12, [Ljava/lang/Object;

    .line 90
    invoke-virtual {v1, v3, v5}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    :goto_c
    move-object/from16 v0, v18

    goto/16 :goto_a

    .line 92
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->i()Z

    move-result v0

    const-string v12, "thiz"

    if-eqz v0, :cond_10

    .line 93
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    const/4 v1, 0x1

    new-array v2, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v10, v12, v2}, Lcom/squareup/javapoet/FieldSpec;->builder(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v2}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 96
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 97
    invoke-static {}, Lcom/squareup/javapoet/MethodSpec;->constructorBuilder()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    new-array v3, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v1, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v1, v3, v4

    .line 98
    invoke-virtual {v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    new-array v2, v4, [Ljavax/lang/model/element/Modifier;

    const-string v3, "egoInstance"

    .line 99
    invoke-virtual {v1, v10, v3, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "thiz = egoInstance"

    .line 100
    invoke-virtual {v1, v3, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 103
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 104
    invoke-static {}, Lcom/squareup/javapoet/MethodSpec;->constructorBuilder()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljavax/lang/model/element/Modifier;

    sget-object v2, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v2, v3, v4

    .line 105
    invoke-virtual {v1, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 108
    :cond_10
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedScanner;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v6, "))"

    const-string v5, "try"

    const-string v4, "e.printStackTrace()"

    const-string v3, "catch ($T e)"

    if-eqz v0, :cond_1b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/xinzhu/haunted/HauntedScanner$a;

    .line 109
    iget-object v0, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->b:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    iget-object v1, v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    move-object/from16 v18, v3

    sget-object v3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->STRING_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-eq v1, v3, :cond_1a

    .line 110
    iget-boolean v3, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->a:Z

    if-eqz v3, :cond_11

    const-string v3, "null"

    move-object/from16 v19, v4

    goto :goto_e

    :cond_11
    move-object/from16 v19, v4

    move-object v3, v12

    .line 111
    :goto_e
    sget-object v4, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->EGO_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v1, v4, :cond_12

    .line 112
    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->a:Ljava/lang/String;

    invoke-direct {v9, v0}, Lcom/xinzhu/haunted/HauntedWriter;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/ClassName;->bestGuess(Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    goto :goto_f

    .line 113
    :cond_12
    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    invoke-static {v0}, Lcom/squareup/javapoet/ClassName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object v0

    :goto_f
    move-object v1, v0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v1

    const-string v1, "check_field_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 115
    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    move-object/from16 v21, v1

    move-object/from16 v22, v3

    const/4 v1, 0x1

    new-array v3, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v16, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    const/4 v1, 0x0

    aput-object v16, v3, v1

    .line 116
    invoke-virtual {v0, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    .line 117
    iget-boolean v0, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->a:Z

    move-object/from16 v23, v4

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    new-array v4, v0, [Ljavax/lang/model/element/Modifier;

    .line 118
    sget-object v0, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 119
    :cond_13
    iget-object v4, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->c:Ljava/lang/String;

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget-object v0, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->b:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    sget-object v26, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;->TYPE_FIELD_GET:Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->b()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v28, v8

    new-array v8, v1, [Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v30, v12

    move-object/from16 v12, v21

    move-object/from16 v40, v20

    move-object/from16 v20, v13

    move-object/from16 v13, v40

    move-object v1, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v3

    move-object/from16 v21, v15

    move-object/from16 v15, v18

    move-object/from16 v18, v11

    move-object/from16 v11, v22

    move-object/from16 v3, v24

    move-object/from16 v31, v4

    move-object/from16 v33, v19

    move-object/from16 v32, v23

    move-object/from16 v4, v25

    move-object/from16 v34, v5

    move-object/from16 v5, v29

    move-object/from16 v35, v6

    move-object/from16 v6, v26

    move-object/from16 v36, v7

    move-object/from16 v7, v27

    move-object/from16 v19, v10

    move-object/from16 v10, v28

    invoke-direct/range {v0 .. v8}, Lcom/xinzhu/haunted/HauntedWriter;->j(Lcom/squareup/javapoet/MethodSpec$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;Ljava/lang/String;[Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v31

    iget-object v3, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    .line 121
    invoke-virtual {v1, v13}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljavax/lang/model/element/Modifier;

    sget-object v5, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 122
    invoke-virtual {v1, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    .line 123
    iget-boolean v4, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->a:Z

    if-eqz v4, :cond_14

    new-array v4, v3, [Ljavax/lang/model/element/Modifier;

    .line 124
    sget-object v3, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v3, v4, v6

    invoke-virtual {v1, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 125
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "if(!check_field_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->c:Ljava/lang/String;

    invoke-direct {v9, v4}, Lcom/xinzhu/haunted/HauntedWriter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "())"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 126
    iget-object v3, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->b:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    invoke-direct {v9, v3}, Lcom/xinzhu/haunted/HauntedWriter;->f(Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 127
    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    new-array v3, v4, [Ljava/lang/Object;

    move-object/from16 v8, v34

    .line 128
    invoke-virtual {v1, v8, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 129
    iget-object v3, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->b:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    iget-object v3, v3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    move-object/from16 v4, v32

    if-ne v3, v4, :cond_15

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return new $T(field_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->c:Ljava/lang/String;

    invoke-direct {v9, v5}, Lcom/xinzhu/haunted/HauntedWriter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".get().get("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v35

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v13, v6, v5

    invoke-virtual {v1, v3, v6}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_10

    .line 131
    :cond_15
    sget-object v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->DIRECT_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v3, v5, :cond_16

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return ($T)field_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->c:Ljava/lang/String;

    invoke-direct {v9, v5}, Lcom/xinzhu/haunted/HauntedWriter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".get().get("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    invoke-virtual {v1, v3, v6}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_11

    :cond_16
    :goto_10
    const/4 v5, 0x1

    const/4 v7, 0x0

    :goto_11
    new-array v3, v5, [Ljava/lang/Object;

    .line 133
    const-class v5, Ljava/lang/IllegalAccessException;

    aput-object v5, v3, v7

    invoke-virtual {v1, v15, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/Object;

    move-object/from16 v6, v33

    .line 134
    invoke-virtual {v3, v6, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 135
    iget-object v3, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->b:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    invoke-direct {v9, v3}, Lcom/xinzhu/haunted/HauntedWriter;->f(Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    .line 136
    invoke-virtual {v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    .line 138
    invoke-virtual {v3, v12}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const/4 v5, 0x1

    new-array v7, v5, [Ljavax/lang/model/element/Modifier;

    sget-object v12, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    const/4 v5, 0x0

    aput-object v12, v7, v5

    .line 139
    invoke-virtual {v3, v7}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    new-array v7, v5, [Ljavax/lang/model/element/Modifier;

    const-string v12, "value"

    .line 140
    invoke-static {v13, v12, v7}, Lcom/squareup/javapoet/ParameterSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/ParameterSpec$Builder;

    move-result-object v7

    .line 141
    invoke-virtual {v7}, Lcom/squareup/javapoet/ParameterSpec$Builder;->build()Lcom/squareup/javapoet/ParameterSpec;

    move-result-object v7

    .line 142
    invoke-virtual {v3, v7}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/ParameterSpec;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    .line 143
    iget-boolean v7, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->a:Z

    if-eqz v7, :cond_17

    const/4 v7, 0x1

    new-array v12, v7, [Ljavax/lang/model/element/Modifier;

    .line 144
    sget-object v7, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v7, v12, v5

    invoke-virtual {v3, v12}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 145
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "if(!check_field_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->c:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "())"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v12, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v12}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    new-array v5, v7, [Ljava/lang/Object;

    const-string v12, "return false"

    .line 146
    invoke-virtual {v3, v12, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 147
    invoke-virtual {v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    new-array v5, v7, [Ljava/lang/Object;

    .line 148
    invoke-virtual {v3, v8, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 149
    iget-object v5, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->b:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    iget-object v5, v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v5, v4, :cond_18

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->c:Ljava/lang/String;

    invoke-direct {v9, v2}, Lcom/xinzhu/haunted/HauntedWriter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".get().set("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value.thiz)"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    const/4 v2, 0x1

    const/4 v4, 0x0

    goto :goto_13

    .line 151
    :cond_18
    sget-object v4, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->DIRECT_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v5, v4, :cond_19

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->c:Ljava/lang/String;

    invoke-direct {v9, v2}, Lcom/xinzhu/haunted/HauntedWriter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".get().set("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value)"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_12

    :cond_19
    const/4 v4, 0x0

    :goto_12
    const/4 v2, 0x1

    :goto_13
    new-array v5, v2, [Ljava/lang/Object;

    .line 153
    const-class v2, Ljava/lang/IllegalAccessException;

    aput-object v2, v5, v4

    invoke-virtual {v3, v15, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    .line 154
    invoke-virtual {v2, v6, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "return false"

    .line 155
    invoke-virtual {v2, v6, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    .line 156
    invoke-virtual {v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "return true"

    .line 157
    invoke-virtual {v2, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 158
    iget-object v2, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    invoke-virtual {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 159
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 160
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    invoke-virtual {v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-object v8, v10

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    move-object/from16 v13, v20

    move-object/from16 v15, v21

    move-object/from16 v12, v30

    move-object/from16 v7, v36

    goto/16 :goto_d

    .line 161
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String reference not allowed on field "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/xinzhu/haunted/HauntedScanner$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    move-object v8, v5

    move-object/from16 v36, v7

    move-object/from16 v19, v10

    move-object/from16 v18, v11

    move-object/from16 v30, v12

    move-object/from16 v21, v15

    move-object v15, v3

    move-object v7, v6

    move-object v6, v4

    .line 162
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedScanner;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v11, ", "

    const-string v12, ".thiz"

    const-string v13, "arg"

    if-eqz v0, :cond_31

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/xinzhu/haunted/HauntedScanner$b;

    .line 163
    iget-boolean v0, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->a:Z

    .line 164
    iget-object v0, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    invoke-virtual {v0}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c()Z

    move-result v20

    .line 165
    iget-object v0, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    iget-object v1, v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v2, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->EGO_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v1, v2, :cond_1c

    .line 166
    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->a:Ljava/lang/String;

    invoke-direct {v9, v0}, Lcom/xinzhu/haunted/HauntedWriter;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/ClassName;->bestGuess(Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    :goto_15
    move-object v4, v0

    goto :goto_16

    .line 167
    :cond_1c
    sget-object v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->DIRECT_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v1, v0, :cond_30

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "declString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    iget-object v1, v1, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 169
    iget-object v0, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    invoke-static {v0}, Lcom/squareup/javapoet/ClassName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object v0

    goto :goto_15

    .line 170
    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check_method_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 171
    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    const/4 v1, 0x0

    aput-object v3, v2, v1

    .line 172
    invoke-virtual {v0, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    .line 173
    iget-boolean v0, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->a:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    new-array v3, v0, [Ljavax/lang/model/element/Modifier;

    .line 174
    sget-object v0, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 175
    :cond_1d
    iget-object v3, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->d:Ljava/lang/String;

    iget-object v0, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    iget-object v1, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->f:Ljava/lang/String;

    move-object/from16 v33, v6

    iget-object v6, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    sget-object v22, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;->TYPE_METHOD:Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->b()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v0

    iget-object v0, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    move-object/from16 v25, v1

    move-object/from16 v26, v4

    const/4 v1, 0x0

    new-array v4, v1, [Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 176
    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, [Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    move-object/from16 v4, v24

    move-object/from16 v0, p0

    move-object/from16 v24, v25

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v25, v10

    move-object/from16 v10, v26

    move-object/from16 v4, v24

    move-object/from16 v24, v15

    move-object v15, v5

    move-object v5, v6

    move-object/from16 v37, v33

    move-object/from16 v6, v22

    move-object/from16 v22, v14

    move-object v14, v7

    move-object/from16 v7, v23

    move-object/from16 v38, v8

    move-object/from16 v8, v27

    .line 177
    invoke-direct/range {v0 .. v8}, Lcom/xinzhu/haunted/HauntedWriter;->j(Lcom/squareup/javapoet/MethodSpec$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;Ljava/lang/String;[Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    .line 178
    iget-object v1, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 179
    invoke-virtual {v1, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    if-nez v20, :cond_1e

    .line 180
    invoke-virtual {v1, v10}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 181
    :cond_1e
    iget-boolean v3, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->a:Z

    if-eqz v3, :cond_1f

    new-array v3, v2, [Ljavax/lang/model/element/Modifier;

    .line 182
    sget-object v2, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v2, v3, v5

    invoke-virtual {v1, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    :cond_1f
    const/4 v2, 0x0

    .line 183
    :goto_17
    iget-object v3, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 184
    iget-object v3, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 185
    iget-object v4, v3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->DIRECT_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v4, v5, :cond_20

    .line 186
    iget-object v3, v3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    invoke-static {v3}, Lcom/squareup/javapoet/ClassName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljavax/lang/model/element/Modifier;

    invoke-virtual {v1, v3, v4, v6}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-object/from16 v8, v19

    goto :goto_18

    :cond_20
    const/4 v5, 0x0

    .line 187
    sget-object v6, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->STRING_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v4, v6, :cond_21

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljavax/lang/model/element/Modifier;

    move-object/from16 v8, v19

    invoke-virtual {v1, v8, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_18

    :cond_21
    move-object/from16 v8, v19

    .line 189
    sget-object v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->EGO_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v4, v5, :cond_22

    .line 190
    iget-object v3, v3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->a:Ljava/lang/String;

    .line 191
    invoke-direct {v9, v3}, Lcom/xinzhu/haunted/HauntedWriter;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-static {v3}, Lcom/squareup/javapoet/ClassName;->bestGuess(Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljavax/lang/model/element/Modifier;

    invoke-virtual {v1, v3, v4, v6}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    :cond_22
    :goto_18
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v19, v8

    goto :goto_17

    :cond_23
    move-object/from16 v8, v19

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v7, v21

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 194
    :goto_19
    iget-object v4, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_26

    .line 195
    iget-object v4, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v4, v4, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->EGO_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v4, v5, :cond_24

    .line 198
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_24
    iget-object v4, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-eq v3, v4, :cond_25

    .line 200
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 201
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "if(!check_method_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 202
    iget-object v2, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    invoke-direct {v9, v2}, Lcom/xinzhu/haunted/HauntedWriter;->f(Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 203
    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 204
    iget-object v2, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 205
    iget-object v4, v3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->EGO_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v4, v5, :cond_27

    .line 206
    iget-object v3, v3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->a:Ljava/lang/String;

    invoke-direct {v9, v3}, Lcom/xinzhu/haunted/HauntedWriter;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/javapoet/ClassName;->bestGuess(Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addException(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_1b

    .line 207
    :cond_27
    sget-object v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->DIRECT_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v4, v5, :cond_28

    .line 208
    iget-object v3, v3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    invoke-static {v3}, Lcom/squareup/javapoet/ClassName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addException(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    :cond_28
    :goto_1b
    const/4 v3, 0x1

    goto :goto_1a

    :cond_29
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    move-object/from16 v6, v38

    .line 209
    invoke-virtual {v1, v6, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    iget-boolean v4, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->a:Z

    if-eqz v4, :cond_2a

    const-string v4, "null"

    goto :goto_1c

    :cond_2a
    move-object/from16 v4, v30

    :goto_1c
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 211
    :goto_1d
    iget-object v5, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2c

    .line 212
    iget-object v5, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 213
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", arg"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v5, v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v11, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->EGO_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v5, v11, :cond_2b

    .line 215
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 216
    :cond_2c
    iget-object v4, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    iget-object v4, v4, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->EGO_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v4, v5, :cond_2d

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return new $T(method_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    invoke-direct {v9, v5}, Lcom/xinzhu/haunted/HauntedWriter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".get().invoke("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v5, v4

    .line 219
    invoke-virtual {v1, v2, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-object/from16 v10, v22

    move-object/from16 v5, v36

    const/4 v2, 0x1

    const/4 v4, 0x0

    goto :goto_1f

    .line 220
    :cond_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    invoke-virtual {v5}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c()Z

    move-result v5

    if-eqz v5, :cond_2e

    move-object v5, v7

    goto :goto_1e

    .line 221
    :cond_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "return ("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    iget-object v10, v10, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v10}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v36

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    .line 222
    invoke-direct {v9, v10}, Lcom/xinzhu/haunted/HauntedWriter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".get().invoke("

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v22

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v11, v4, [Ljava/lang/Object;

    .line 224
    invoke-virtual {v1, v2, v11}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    const/4 v2, 0x1

    :goto_1f
    new-array v11, v2, [Ljava/lang/Object;

    .line 225
    const-class v12, Ljava/lang/IllegalAccessException;

    aput-object v12, v11, v4

    move-object/from16 v12, v24

    invoke-virtual {v1, v12, v11}, Lcom/squareup/javapoet/MethodSpec$Builder;->nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v11

    new-array v13, v4, [Ljava/lang/Object;

    move-object/from16 v4, v37

    .line 226
    invoke-virtual {v11, v4, v13}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v11

    new-array v13, v2, [Ljava/lang/Object;

    const-class v2, Ljava/lang/reflect/InvocationTargetException;

    move-object/from16 v36, v5

    const/4 v5, 0x0

    aput-object v2, v13, v5

    .line 227
    invoke-virtual {v11, v12, v13}, Lcom/squareup/javapoet/MethodSpec$Builder;->nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    if-eqz v3, :cond_2f

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "if (e.getCause() != null)"

    .line 228
    invoke-virtual {v1, v3, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string v11, "throw e.getCause()"

    .line 229
    invoke-virtual {v2, v11, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    .line 230
    invoke-virtual {v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string v11, "throw e"

    .line 231
    invoke-virtual {v2, v11, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_20

    :cond_2f
    new-array v2, v5, [Ljava/lang/Object;

    .line 232
    invoke-virtual {v1, v4, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 233
    :goto_20
    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 234
    iget-object v2, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    invoke-direct {v9, v2}, Lcom/xinzhu/haunted/HauntedWriter;->f(Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 235
    iget-object v2, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    invoke-virtual {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 236
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-object/from16 v21, v7

    move-object/from16 v19, v8

    move-object v15, v12

    move-object v7, v14

    move-object v8, v6

    move-object v14, v10

    move-object/from16 v10, v25

    move-object v6, v4

    goto/16 :goto_14

    .line 237
    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Function return class does not allow to be string reflect."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    move-object v4, v6

    move-object v6, v8

    move-object v10, v14

    move-object/from16 v8, v19

    move-object v14, v7

    move-object/from16 v7, v21

    .line 238
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedScanner;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_21
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/xinzhu/haunted/HauntedScanner$b;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check_constructor_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    invoke-direct {v9, v1}, Lcom/xinzhu/haunted/HauntedWriter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 240
    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    const/4 v1, 0x0

    aput-object v3, v2, v1

    .line 241
    invoke-virtual {v0, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljavax/lang/model/element/Modifier;

    .line 242
    sget-object v0, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 243
    iget-object v3, v9, Lcom/xinzhu/haunted/HauntedWriter;->d:Ljava/lang/String;

    iget-object v0, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    iget-object v1, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->f:Ljava/lang/String;

    move-object/from16 v34, v6

    iget-object v6, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    sget-object v20, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;->TYPE_CONSTRUCTOR:Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/haunted/HauntedWriter;->b()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v0

    iget-object v0, v5, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    move-object/from16 v23, v1

    move-object/from16 v33, v4

    const/4 v1, 0x0

    new-array v4, v1, [Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 244
    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, [Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    move-object/from16 v4, v22

    move-object/from16 v0, p0

    move-object/from16 v22, v23

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v39, v33

    move-object/from16 v4, v22

    move-object/from16 v22, v15

    move-object v15, v5

    move-object v5, v6

    move-object/from16 v23, v10

    move-object/from16 v10, v34

    move-object/from16 v6, v20

    move-object v10, v7

    move-object/from16 v7, v21

    move-object/from16 v35, v14

    move-object v14, v8

    move-object/from16 v8, v24

    .line 245
    invoke-direct/range {v0 .. v8}, Lcom/xinzhu/haunted/HauntedWriter;->j(Lcom/squareup/javapoet/MethodSpec$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;Ljava/lang/String;[Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljavax/lang/model/element/Modifier;

    sget-object v5, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    new-array v4, v3, [Ljavax/lang/model/element/Modifier;

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v3, v4, v6

    .line 247
    invoke-virtual {v1, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retType name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v4, v4, Lcom/xinzhu/haunted/HauntedScanner;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v4, v4, Lcom/xinzhu/haunted/HauntedScanner;->b:Ljava/lang/String;

    invoke-direct {v9, v4}, Lcom/xinzhu/haunted/HauntedWriter;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xinzhu/haunted/a;->c(Ljava/lang/String;)V

    .line 249
    iget-object v3, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v3, v3, Lcom/xinzhu/haunted/HauntedScanner;->b:Ljava/lang/String;

    invoke-direct {v9, v3}, Lcom/xinzhu/haunted/HauntedWriter;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {v10, v3, v5}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v3

    .line 250
    invoke-virtual {v1, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    const/4 v3, 0x0

    .line 251
    :goto_22
    iget-object v4, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_35

    .line 252
    iget-object v4, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 253
    iget-object v5, v4, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v6, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->DIRECT_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v5, v6, :cond_32

    .line 254
    iget-object v4, v4, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    invoke-static {v4}, Lcom/squareup/javapoet/ClassName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljavax/lang/model/element/Modifier;

    invoke-virtual {v1, v4, v5, v7}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_23

    :cond_32
    const/4 v6, 0x0

    .line 255
    sget-object v7, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->STRING_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v5, v7, :cond_33

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljavax/lang/model/element/Modifier;

    invoke-virtual {v1, v14, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_23

    .line 257
    :cond_33
    sget-object v6, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->EGO_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v5, v6, :cond_34

    .line 258
    iget-object v4, v4, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->a:Ljava/lang/String;

    .line 259
    invoke-direct {v9, v4}, Lcom/xinzhu/haunted/HauntedWriter;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 260
    invoke-static {v4}, Lcom/squareup/javapoet/ClassName;->bestGuess(Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljavax/lang/model/element/Modifier;

    invoke-virtual {v1, v4, v5, v7}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    :cond_34
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 261
    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 262
    :goto_24
    iget-object v5, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_38

    .line 263
    iget-object v5, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 264
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v5, v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v6, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->EGO_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v5, v6, :cond_36

    .line 266
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_36
    iget-object v5, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-eq v4, v5, :cond_37

    .line 268
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 269
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "if(!check_constructor_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    invoke-direct {v9, v5}, Lcom/xinzhu/haunted/HauntedWriter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v35

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v6}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "return null"

    .line 270
    invoke-virtual {v1, v5, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 271
    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 272
    iget-object v4, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    .line 273
    iget-object v6, v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v7, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->EGO_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v6, v7, :cond_39

    .line 274
    iget-object v5, v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->a:Ljava/lang/String;

    invoke-direct {v9, v5}, Lcom/xinzhu/haunted/HauntedWriter;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/javapoet/ClassName;->bestGuess(Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addException(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_26

    .line 275
    :cond_39
    sget-object v7, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->DIRECT_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v6, v7, :cond_3a

    .line 276
    iget-object v5, v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    invoke-static {v5}, Lcom/squareup/javapoet/ClassName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addException(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    :cond_3a
    :goto_26
    const/4 v5, 0x1

    goto :goto_25

    :cond_3b
    const/4 v6, 0x0

    new-array v4, v6, [Ljava/lang/Object;

    move-object/from16 v6, v34

    .line 277
    invoke-virtual {v1, v6, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 279
    :goto_27
    iget-object v8, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3e

    .line 280
    iget-object v8, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;

    move-object/from16 v18, v2

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v2, v8, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v8, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->EGO_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v2, v8, :cond_3c

    .line 283
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_3c
    iget-object v2, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    if-eq v7, v2, :cond_3d

    .line 285
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v18

    goto :goto_27

    :cond_3e
    move-object/from16 v18, v2

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v7, v7, Lcom/xinzhu/haunted/HauntedScanner;->b:Ljava/lang/String;

    invoke-direct {v9, v7}, Lcom/xinzhu/haunted/HauntedWriter;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " result = new "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v7, v7, Lcom/xinzhu/haunted/HauntedScanner;->b:Ljava/lang/String;

    invoke-direct {v9, v7}, Lcom/xinzhu/haunted/HauntedWriter;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "()"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v8}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result.thiz = constructor_"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v15, Lcom/xinzhu/haunted/HauntedScanner$b;->e:Ljava/lang/String;

    invoke-direct {v9, v7}, Lcom/xinzhu/haunted/HauntedWriter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".get().newInstance("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v23

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    .line 289
    invoke-virtual {v1, v2, v8}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v8, "return result"

    .line 290
    invoke-virtual {v1, v8, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/Object;

    .line 291
    const-class v15, Ljava/lang/IllegalAccessException;

    aput-object v15, v8, v7

    move-object/from16 v15, v22

    invoke-virtual {v1, v15, v8}, Lcom/squareup/javapoet/MethodSpec$Builder;->nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v8

    move-object/from16 v35, v3

    new-array v3, v7, [Ljava/lang/Object;

    move-object/from16 v7, v39

    .line 292
    invoke-virtual {v8, v7, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    new-array v8, v2, [Ljava/lang/Object;

    const-class v16, Ljava/lang/InstantiationException;

    const/4 v2, 0x0

    aput-object v16, v8, v2

    .line 293
    invoke-virtual {v3, v15, v8}, Lcom/squareup/javapoet/MethodSpec$Builder;->nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    new-array v8, v2, [Ljava/lang/Object;

    .line 294
    invoke-virtual {v3, v7, v8}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    move-object/from16 v22, v4

    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/Object;

    const-class v8, Ljava/lang/reflect/InvocationTargetException;

    aput-object v8, v4, v2

    .line 295
    invoke-virtual {v3, v15, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    if-eqz v5, :cond_3f

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "if (e.getCause() != null)"

    .line 296
    invoke-virtual {v1, v4, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "throw e.getCause()"

    .line 297
    invoke-virtual {v3, v5, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    .line 298
    invoke-virtual {v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "throw e"

    .line 299
    invoke-virtual {v3, v5, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_28

    :cond_3f
    new-array v3, v2, [Ljava/lang/Object;

    .line 300
    invoke-virtual {v1, v7, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 301
    :goto_28
    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "return null"

    .line 302
    invoke-virtual {v1, v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 303
    iget-object v2, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    invoke-virtual {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 304
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-object v4, v7

    move-object v7, v10

    move-object v8, v14

    move-object/from16 v10, v22

    move-object/from16 v14, v35

    goto/16 :goto_21

    .line 305
    :cond_40
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedScanner;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/haunted/HauntedScanner;

    .line 306
    iget-object v2, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    new-instance v3, Lcom/xinzhu/haunted/HauntedWriter;

    invoke-direct {v3, v1, v9}, Lcom/xinzhu/haunted/HauntedWriter;-><init>(Lcom/xinzhu/haunted/HauntedScanner;Lcom/xinzhu/haunted/HauntedWriter;)V

    invoke-direct {v3}, Lcom/xinzhu/haunted/HauntedWriter;->a()Lcom/squareup/javapoet/TypeSpec;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addType(Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto :goto_29

    .line 307
    :cond_41
    iget-object v0, v9, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v2, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 308
    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->build()Lcom/squareup/javapoet/TypeSpec;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->b:Lcom/xinzhu/haunted/HauntedWriter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-boolean v0, v0, Lcom/xinzhu/haunted/HauntedScanner;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xinzhu/haunted/HauntedWriter;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "TYPE"

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->b:Lcom/xinzhu/haunted/HauntedWriter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-boolean v0, v0, Lcom/xinzhu/haunted/HauntedScanner;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xinzhu/haunted/HauntedWriter;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private d()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/xinzhu/haunted/HauntedWriter;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/xinzhu/haunted/HauntedWriter;->b:Lcom/xinzhu/haunted/HauntedWriter;

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    iget-object v3, v1, Lcom/xinzhu/haunted/HauntedWriter;->b:Lcom/xinzhu/haunted/HauntedWriter;

    if-eqz v3, :cond_0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/xinzhu/haunted/HauntedWriter;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    iget-object v1, v1, Lcom/xinzhu/haunted/HauntedWriter;->b:Lcom/xinzhu/haunted/HauntedWriter;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->e:Ljava/lang/String;

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->e:Ljava/lang/String;

    return-object v0
.end method

.method private f(Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "return"

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "return 0"

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "return false"

    return-object p1

    :cond_2
    const-string p1, "return null"

    return-object p1
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private h()Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->f:Lcom/squareup/javapoet/TypeSpec$Builder;

    if-nez v0, :cond_1

    move-object v0, p0

    .line 2
    :goto_0
    iget-object v1, v0, Lcom/xinzhu/haunted/HauntedWriter;->b:Lcom/xinzhu/haunted/HauntedWriter;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedWriter;->c:Lcom/squareup/javapoet/TypeSpec$Builder;

    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->f:Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->f:Lcom/squareup/javapoet/TypeSpec$Builder;

    return-object v0
.end method

.method private i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedScanner;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/haunted/HauntedScanner$a;

    .line 3
    iget-boolean v1, v1, Lcom/xinzhu/haunted/HauntedScanner$a;->a:Z

    if-nez v1, :cond_0

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->g:Ljava/lang/Boolean;

    return v2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedScanner;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/haunted/HauntedScanner$b;

    .line 6
    iget-boolean v1, v1, Lcom/xinzhu/haunted/HauntedScanner$b;->a:Z

    if-nez v1, :cond_2

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->g:Ljava/lang/Boolean;

    return v2

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedScanner;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/haunted/HauntedScanner;

    .line 9
    iget-boolean v1, v1, Lcom/xinzhu/haunted/HauntedScanner;->d:Z

    if-nez v1, :cond_4

    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->g:Ljava/lang/Boolean;

    return v2

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedScanner;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->g:Ljava/lang/Boolean;

    return v2

    .line 13
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->g:Ljava/lang/Boolean;

    .line 14
    :cond_7
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private varargs j(Lcom/squareup/javapoet/MethodSpec$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;Ljava/lang/String;[Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    if-nez p4, :cond_0

    move-object/from16 v4, p2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p4

    :goto_0
    if-nez p3, :cond_1

    move-object/from16 v5, p2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p3

    .line 1
    :goto_1
    sget-object v6, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;->TYPE_METHOD:Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    if-ne v2, v6, :cond_2

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "method_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Lcom/xinzhu/haunted/HauntedWriter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "HtClass.initHtMethod"

    goto :goto_3

    .line 3
    :cond_2
    sget-object v6, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;->TYPE_FIELD_GET:Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    if-eq v2, v6, :cond_5

    sget-object v6, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;->TYPE_FIELD_SET:Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    if-ne v2, v6, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    sget-object v6, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;->TYPE_CONSTRUCTOR:Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    if-ne v2, v6, :cond_4

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "constructor_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Lcom/xinzhu/haunted/HauntedWriter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "HtClass.initHtConstructor"

    goto :goto_3

    .line 6
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "TODO"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "field_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Lcom/xinzhu/haunted/HauntedWriter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "HtClass.initHtField"

    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 8
    :goto_4
    array-length v8, v3

    if-ge v7, v8, :cond_9

    .line 9
    aget-object v8, v3, v7

    .line 10
    iget-object v9, v8, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v10, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->DIRECT_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    const-string v11, "arg"

    if-ne v9, v10, :cond_6

    .line 11
    iget-object v8, v8, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    invoke-static {v8}, Lcom/squareup/javapoet/ClassName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljavax/lang/model/element/Modifier;

    invoke-virtual {v1, v8, v9, v10}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_5

    .line 12
    :cond_6
    sget-object v10, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->STRING_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v9, v10, :cond_7

    .line 13
    const-class v8, Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljavax/lang/model/element/Modifier;

    invoke-virtual {v1, v8, v9, v10}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_5

    .line 14
    :cond_7
    sget-object v10, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->EGO_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v9, v10, :cond_8

    .line 15
    iget-object v8, v8, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->a:Ljava/lang/String;

    .line 16
    invoke-direct {v0, v8}, Lcom/xinzhu/haunted/HauntedWriter;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-static {v8}, Lcom/squareup/javapoet/ClassName;->bestGuess(Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljavax/lang/model/element/Modifier;

    invoke-virtual {v1, v8, v9, v10}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    :cond_8
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 18
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "if("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".get() == null)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v10, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v10}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "if(!init_"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v10, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v10}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 20
    new-instance v7, Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".compareAndSet(null, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p7

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", \""

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    array-length v10, v3

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_d

    aget-object v12, v3, v11

    .line 22
    iget-object v13, v12, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v14, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->DIRECT_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    const-string v15, ".class"

    const-string v6, ", "

    if-ne v13, v14, :cond_a

    .line 23
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v12, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v6}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 24
    :cond_a
    sget-object v14, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->STRING_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v13, v14, :cond_b

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v12, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->a:Ljava/lang/String;

    const-string v13, "$"

    const-string v14, "$$"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 26
    :cond_b
    sget-object v14, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->EGO_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-ne v13, v14, :cond_c

    .line 27
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v12, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->a:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/xinzhu/haunted/HauntedWriter;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    :goto_7
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    goto :goto_6

    :cond_d
    const-string v3, "))"

    .line 28
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    .line 30
    invoke-virtual {v3, v5, v6}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "return false"

    .line 32
    invoke-virtual {v2, v5, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v6, "else"

    .line 33
    invoke-virtual {v2, v6, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v7, "return true"

    .line 34
    invoke-virtual {v2, v7, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    new-array v2, v4, [Ljava/lang/Object;

    .line 36
    invoke-virtual {v1, v6, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    new-array v2, v4, [Ljava/lang/Object;

    .line 37
    invoke-virtual {v1, v5, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v2, v7, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    return-object v1
.end method


# virtual methods
.method public e()Lcom/squareup/javapoet/JavaFile;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedWriter;->a:Lcom/xinzhu/haunted/HauntedScanner;

    iget-object v0, v0, Lcom/xinzhu/haunted/HauntedScanner;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xinzhu/haunted/HauntedWriter;->a()Lcom/squareup/javapoet/TypeSpec;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/javapoet/JavaFile;->builder(Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/JavaFile$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AUTO GENERATED FILE, DO NOT MODIFY"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/squareup/javapoet/JavaFile$Builder;->addFileComment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/JavaFile$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/squareup/javapoet/JavaFile$Builder;->build()Lcom/squareup/javapoet/JavaFile;

    move-result-object v0

    return-object v0
.end method
