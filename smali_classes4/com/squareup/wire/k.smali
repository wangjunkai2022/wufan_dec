.class public final Lcom/squareup/wire/k;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ProtoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/util/List<",
        "+TE;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u0002B\u0015\u0012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J(\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003H\u0016J\u0016\u0010\u000b\u001a\u00020\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0016J \u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003H\u0016J\u001e\u0010\r\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0016J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u001c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0016R\u001c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/squareup/wire/k;",
        "E",
        "Lcom/squareup/wire/ProtoAdapter;",
        "",
        "Lcom/squareup/wire/n;",
        "writer",
        "",
        "tag",
        "value",
        "",
        "J",
        "K",
        "L",
        "I",
        "Lcom/squareup/wire/m;",
        "reader",
        "H",
        "M",
        "N",
        "Lcom/squareup/wire/ProtoAdapter;",
        "originalAdapter",
        "<init>",
        "(Lcom/squareup/wire/ProtoAdapter;)V",
        "wire-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final N:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/wire/ProtoAdapter;)V
    .locals 7
    .param p1    # Lcom/squareup/wire/ProtoAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "originalAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 2
    const-class v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 3
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoAdapter;->w()Lcom/squareup/wire/Syntax;

    move-result-object v5

    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p0

    .line 5
    invoke-direct/range {v1 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/squareup/wire/k;->N:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method


# virtual methods
.method public bridge synthetic E(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/k;->M(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public H(Lcom/squareup/wire/m;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/squareup/wire/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/m;",
            ")",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/k;->N:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public I(Lcom/squareup/wire/n;Ljava/util/List;)V
    .locals 4
    .param p1    # Lcom/squareup/wire/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/n;",
            "Ljava/util/List<",
            "+TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/squareup/wire/k;->N:Lcom/squareup/wire/ProtoAdapter;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/squareup/wire/ProtoAdapter;->h(Lcom/squareup/wire/n;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public J(Lcom/squareup/wire/n;ILjava/util/List;)V
    .locals 1
    .param p1    # Lcom/squareup/wire/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/n;",
            "I",
            "Ljava/util/List<",
            "+TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public K(Ljava/util/List;)I
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TE;>;)I"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/squareup/wire/k;->N:Lcom/squareup/wire/ProtoAdapter;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/wire/ProtoAdapter;->n(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public L(ILjava/util/List;)I
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+TE;>;)I"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public M(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lcom/squareup/wire/m;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/wire/k;->H(Lcom/squareup/wire/m;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Lcom/squareup/wire/n;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/k;->I(Lcom/squareup/wire/n;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic m(Lcom/squareup/wire/n;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/squareup/wire/k;->J(Lcom/squareup/wire/n;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic n(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/k;->K(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic o(ILjava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/k;->L(ILjava/util/List;)I

    move-result p1

    return p1
.end method
