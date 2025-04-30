.class public final Lcom/squareup/wire/AnyMessage$a;
.super Lcom/squareup/wire/ProtoAdapter;
.source "AnyMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/AnyMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/squareup/wire/AnyMessage;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnyMessage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnyMessage.kt\ncom/squareup/wire/AnyMessage$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,122:1\n415#2,7:123\n*E\n*S KotlinDebug\n*F\n+ 1 AnyMessage.kt\ncom/squareup/wire/AnyMessage$Companion$ADAPTER$1\n*L\n106#1,7:123\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/squareup/wire/AnyMessage$a",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/squareup/wire/AnyMessage;",
        "value",
        "",
        "J",
        "Lcom/squareup/wire/n;",
        "writer",
        "",
        "I",
        "Lcom/squareup/wire/m;",
        "reader",
        "H",
        "K",
        "wire-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic E(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/squareup/wire/AnyMessage;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/AnyMessage$a;->K(Lcom/squareup/wire/AnyMessage;)Lcom/squareup/wire/AnyMessage;

    move-result-object p1

    return-object p1
.end method

.method public H(Lcom/squareup/wire/m;)Lcom/squareup/wire/AnyMessage;
    .locals 6
    .param p1    # Lcom/squareup/wire/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 2
    invoke-virtual {p1}, Lcom/squareup/wire/m;->e()J

    move-result-wide v1

    const-string v3, ""

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/m;->i()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/m;->g(J)Lokio/ByteString;

    .line 5
    new-instance p1, Lcom/squareup/wire/AnyMessage;

    invoke-direct {p1, v3, v0}, Lcom/squareup/wire/AnyMessage;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    return-object p1

    :cond_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 6
    invoke-virtual {p1, v4}, Lcom/squareup/wire/m;->o(I)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    goto :goto_0

    .line 8
    :cond_2
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->v:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0
.end method

.method public I(Lcom/squareup/wire/n;Lcom/squareup/wire/AnyMessage;)V
    .locals 3
    .param p1    # Lcom/squareup/wire/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/squareup/wire/AnyMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->v:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p2}, Lcom/squareup/wire/AnyMessage;->n()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p2}, Lcom/squareup/wire/AnyMessage;->o()Lokio/ByteString;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    return-void
.end method

.method public J(Lcom/squareup/wire/AnyMessage;)I
    .locals 3
    .param p1    # Lcom/squareup/wire/AnyMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->v:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p1}, Lcom/squareup/wire/AnyMessage;->n()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result v0

    .line 2
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p1}, Lcom/squareup/wire/AnyMessage;->o()Lokio/ByteString;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public K(Lcom/squareup/wire/AnyMessage;)Lcom/squareup/wire/AnyMessage;
    .locals 2
    .param p1    # Lcom/squareup/wire/AnyMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/squareup/wire/AnyMessage;

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const-string v1, "square.github.io/wire/redacted"

    invoke-direct {p1, v1, v0}, Lcom/squareup/wire/AnyMessage;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    return-object p1
.end method

.method public bridge synthetic c(Lcom/squareup/wire/m;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/wire/AnyMessage$a;->H(Lcom/squareup/wire/m;)Lcom/squareup/wire/AnyMessage;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Lcom/squareup/wire/n;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/squareup/wire/AnyMessage;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/AnyMessage$a;->I(Lcom/squareup/wire/n;Lcom/squareup/wire/AnyMessage;)V

    return-void
.end method

.method public bridge synthetic n(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/squareup/wire/AnyMessage;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/AnyMessage$a;->J(Lcom/squareup/wire/AnyMessage;)I

    move-result p1

    return p1
.end method
