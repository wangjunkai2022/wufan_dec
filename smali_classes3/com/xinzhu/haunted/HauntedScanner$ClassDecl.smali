.class public Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;
.super Ljava/lang/Object;
.source "HauntedScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/haunted/HauntedScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassDecl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljavax/lang/model/type/TypeMirror;

.field c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    return-void
.end method

.method public constructor <init>(Ljavax/lang/model/type/TypeMirror;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    .line 6
    sget-object p1, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->DIRECT_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    iput-object p1, p0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v1, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->DIRECT_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v1, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->DIRECT_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isNumeric()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    sget-object v1, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->DIRECT_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method
