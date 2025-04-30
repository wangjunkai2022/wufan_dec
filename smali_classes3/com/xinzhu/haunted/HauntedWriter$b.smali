.class Lcom/xinzhu/haunted/HauntedWriter$b;
.super Ljava/lang/Object;
.source "HauntedWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/haunted/HauntedWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/HauntedWriter$a;->a:[I

    iget-object v1, p0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid ClassDecl kind!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "TODO"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->a:Ljava/lang/String;

    const-string v0, "MetaHt"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->b:Ljavax/lang/model/type/TypeMirror;

    return-object p0
.end method

.method public static b(Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/HauntedWriter$a;->a:[I

    iget-object p0, p0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;->c:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid ClassDecl kind!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "TODO"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "$S"

    return-object p0

    :cond_2
    const-string p0, "$T"

    return-object p0
.end method

.method public static c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 5
    aput-object v2, v0, v1

    .line 6
    array-length v2, p0

    invoke-static {v0, v3, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid full class name."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
