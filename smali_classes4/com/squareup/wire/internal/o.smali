.class public final Lcom/squareup/wire/internal/o;
.super Ljava/lang/Object;
.source "-Platform.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0010!\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001f\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0001H\u0086\u0008\u001a1\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\"\u0004\u0008\u0000\u0010\u0004\"\u0004\u0008\u0001\u0010\u0005*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006H\u0086\u0008\u001a\u0018\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b*\n\u0010\u000f\"\u00020\u000e2\u00020\u000e*\n\u0010\u0011\"\u00020\u00102\u00020\u0010*\n\u0010\u0013\"\u00020\u00122\u00020\u0012*\n\u0010\u0015\"\u00020\u00142\u00020\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "T",
        "",
        "",
        "c",
        "K",
        "V",
        "",
        "",
        "d",
        "",
        "string",
        "",
        "upperCamel",
        "a",
        "Ljava/io/ObjectStreamException;",
        "ObjectStreamException",
        "Ljava/net/ProtocolException;",
        "ProtocolException",
        "Ljava/io/Serializable;",
        "Serializable",
        "Lkotlin/jvm/Throws;",
        "Throws",
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
.method public static final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "string"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 4
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const/16 p1, 0x7a

    const/16 v4, 0x61

    if-le v4, v3, :cond_1

    goto :goto_1

    :cond_1
    if-lt p1, v3, :cond_2

    add-int/lit8 v3, v3, -0x20

    .line 5
    :cond_2
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/squareup/wire/internal/o;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$toUnmodifiableList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v0, "Collections.unmodifiableList(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final d(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$toUnmodifiableMap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "Collections.unmodifiableMap(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
