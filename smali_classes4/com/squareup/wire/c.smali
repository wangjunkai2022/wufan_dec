.class public final Lcom/squareup/wire/c;
.super Ljava/lang/Object;
.source "EnumAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\"\u0010\u0004\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0080\u0008\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a*\u0010\t\u001a\u00020\u0008\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00028\u0000H\u0080\u0008\u00a2\u0006\u0004\u0008\t\u0010\n\u001aE\u0010\u0010\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u000b2\u0006\u0010\r\u001a\u00020\u000c2\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000eH\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u001a\"\u0010\u0012\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0080\u0008\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/squareup/wire/s;",
        "E",
        "value",
        "",
        "c",
        "(Lcom/squareup/wire/s;)I",
        "Lcom/squareup/wire/n;",
        "writer",
        "",
        "b",
        "(Lcom/squareup/wire/n;Lcom/squareup/wire/s;)V",
        "Lcom/squareup/wire/b;",
        "Lcom/squareup/wire/m;",
        "reader",
        "Lkotlin/Function1;",
        "fromValue",
        "a",
        "(Lcom/squareup/wire/b;Lcom/squareup/wire/m;Lkotlin/jvm/functions/Function1;)Lcom/squareup/wire/s;",
        "d",
        "(Lcom/squareup/wire/s;)Lcom/squareup/wire/s;",
        "wire-runtime"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Lcom/squareup/wire/b;Lcom/squareup/wire/m;Lkotlin/jvm/functions/Function1;)Lcom/squareup/wire/s;
    .locals 1
    .param p0    # Lcom/squareup/wire/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/squareup/wire/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/s;",
            ">(",
            "Lcom/squareup/wire/b<",
            "TE;>;",
            "Lcom/squareup/wire/m;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$commonDecode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/squareup/wire/m;->p()I

    move-result p1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/squareup/wire/s;

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    new-instance p2, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->getType()Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;-><init>(ILkotlin/reflect/KClass;)V

    throw p2
.end method

.method public static final b(Lcom/squareup/wire/n;Lcom/squareup/wire/s;)V
    .locals 1
    .param p0    # Lcom/squareup/wire/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/squareup/wire/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/s;",
            ">(",
            "Lcom/squareup/wire/n;",
            "TE;)V"
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/squareup/wire/s;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/squareup/wire/n;->g(I)V

    return-void
.end method

.method public static final c(Lcom/squareup/wire/s;)I
    .locals 1
    .param p0    # Lcom/squareup/wire/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/s;",
            ">(TE;)I"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/squareup/wire/n;->b:Lcom/squareup/wire/n$a;

    invoke-interface {p0}, Lcom/squareup/wire/s;->getValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/squareup/wire/n$a;->i(I)I

    move-result p0

    return p0
.end method

.method public static final d(Lcom/squareup/wire/s;)Lcom/squareup/wire/s;
    .locals 1
    .param p0    # Lcom/squareup/wire/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/s;",
            ">(TE;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
