.class public final Lcom/squareup/wire/l$d;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ProtoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/l;->i()Lcom/squareup/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/time/Duration;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonDuration$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 Duration.kt\ncom/squareup/wire/DurationKt\n*L\n1#1,1101:1\n415#2,7:1102\n22#3:1109\n*E\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonDuration$1\n*L\n774#1,7:1102\n781#1:1109\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\n\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002j\u0002`\u00030\u0001J\u0014\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u001c\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u0014\u0010\r\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0018\u0010\u000e\u001a\u00060\u0002j\u0002`\u00032\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016R\u001e\u0010\u0012\u001a\u00020\u000f*\u00060\u0002j\u0002`\u00038B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0015\u001a\u00020\u0005*\u00060\u0002j\u0002`\u00038B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "com/squareup/wire/l$d",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Ljava/time/Duration;",
        "Lcom/squareup/wire/Duration;",
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
        "M",
        "",
        "L",
        "(Ljava/time/Duration;)J",
        "sameSignSeconds",
        "K",
        "(Ljava/time/Duration;)I",
        "sameSignNanos",
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

.method private final K(Ljava/time/Duration;)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result p1

    const v0, 0x3b9aca00

    sub-int/2addr p1, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result p1

    :goto_0
    return p1
.end method

.method private final L(Ljava/time/Duration;)J
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public bridge synthetic E(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/time/Duration;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/l$d;->M(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p1

    return-object p1
.end method

.method public H(Lcom/squareup/wire/m;)Ljava/time/Duration;
    .locals 7
    .param p1    # Lcom/squareup/wire/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/squareup/wire/m;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/m;->i()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/m;->g(J)Lokio/ByteString;

    int-to-long v0, v4

    .line 4
    invoke-static {v2, v3, v0, v1}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p1

    const-string v0, "Duration.ofSeconds(seconds, nano)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 5
    invoke-virtual {p1, v5}, Lcom/squareup/wire/m;->o(I)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    goto :goto_0

    .line 7
    :cond_2
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public I(Lcom/squareup/wire/n;Ljava/time/Duration;)V
    .locals 5
    .param p1    # Lcom/squareup/wire/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Lcom/squareup/wire/l$d;->L(Ljava/time/Duration;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p1, v3, v0}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lcom/squareup/wire/l$d;->K(Ljava/time/Duration;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public J(Ljava/time/Duration;)I
    .locals 6
    .param p1    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/squareup/wire/l$d;->L(Ljava/time/Duration;)J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    .line 2
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/ProtoAdapter;

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/squareup/wire/l$d;->K(Ljava/time/Duration;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    :cond_1
    return v2
.end method

.method public M(Ljava/time/Duration;)Ljava/time/Duration;
    .locals 1
    .param p1    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic c(Lcom/squareup/wire/m;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/wire/l$d;->H(Lcom/squareup/wire/m;)Ljava/time/Duration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Lcom/squareup/wire/n;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/time/Duration;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/l$d;->I(Lcom/squareup/wire/n;Ljava/time/Duration;)V

    return-void
.end method

.method public bridge synthetic n(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/time/Duration;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/l$d;->J(Ljava/time/Duration;)I

    move-result p1

    return p1
.end method
