.class public final Lcom/squareup/wire/l$p;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ProtoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/l;->C()Lcom/squareup/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "*>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonStructMap$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1101:1\n415#2,5:1102\n415#2,7:1107\n421#2:1114\n436#3:1115\n386#3:1116\n1186#4,4:1117\n*E\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonStructMap$1\n*L\n897#1,5:1102\n902#1,7:1107\n897#1:1114\n914#1:1115\n914#1:1116\n914#1,4:1117\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u00020\u0001J\u001c\u0010\u0006\u001a\u00020\u00052\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u0002H\u0016J$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00072\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u0002H\u0016J\u001c\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J,\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\u00022\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u0002H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/squareup/wire/l$p",
        "Lcom/squareup/wire/ProtoAdapter;",
        "",
        "",
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
        "",
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
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/l$p;->K(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public H(Lcom/squareup/wire/m;)Ljava/util/Map;
    .locals 11
    .param p1    # Lcom/squareup/wire/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/m;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/squareup/wire/m;->e()J

    move-result-wide v1

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/m;->i()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/m;->g(J)Lokio/ByteString;

    return-object v0

    :cond_1
    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/squareup/wire/m;->r()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/squareup/wire/m;->e()J

    move-result-wide v6

    const/4 v3, 0x0

    move-object v8, v3

    .line 7
    :goto_1
    invoke-virtual {p1}, Lcom/squareup/wire/m;->i()I

    move-result v9

    if-ne v9, v4, :cond_3

    .line 8
    invoke-virtual {p1, v6, v7}, Lcom/squareup/wire/m;->g(J)Lokio/ByteString;

    if-eqz v3, :cond_0

    .line 9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eq v9, v5, :cond_5

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    .line 10
    invoke-virtual {p1, v9}, Lcom/squareup/wire/m;->o(I)V

    goto :goto_1

    .line 11
    :cond_4
    sget-object v8, Lcom/squareup/wire/ProtoAdapter;->A:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .line 12
    :cond_5
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->v:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1
.end method

.method public I(Lcom/squareup/wire/n;Ljava/util/Map;)V
    .locals 8
    .param p1    # Lcom/squareup/wire/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/n;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->v:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result v4

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->A:Lcom/squareup/wire/ProtoAdapter;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v0}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result v7

    add-int/2addr v4, v7

    .line 3
    sget-object v7, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    invoke-virtual {p1, v3, v7}, Lcom/squareup/wire/n;->f(ILcom/squareup/wire/FieldEncoding;)V

    .line 4
    invoke-virtual {p1, v4}, Lcom/squareup/wire/n;->g(I)V

    .line 5
    invoke-virtual {v2, p1, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    .line 6
    invoke-virtual {v5, p1, v6, v0}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public J(Ljava/util/Map;)I
    .locals 6
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 2
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->v:Lcom/squareup/wire/ProtoAdapter;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result v2

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->A:Lcom/squareup/wire/ProtoAdapter;

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v1}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    .line 3
    sget-object v1, Lcom/squareup/wire/n;->b:Lcom/squareup/wire/n$a;

    invoke-virtual {v1, v4}, Lcom/squareup/wire/n$a;->h(I)I

    move-result v3

    invoke-virtual {v1, v2}, Lcom/squareup/wire/n$a;->i(I)I

    move-result v1

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    return v0
.end method

.method public K(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 6
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->A:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v1}, Lcom/squareup/wire/ProtoAdapter;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic c(Lcom/squareup/wire/m;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/wire/l$p;->H(Lcom/squareup/wire/m;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Lcom/squareup/wire/n;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/l$p;->I(Lcom/squareup/wire/n;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic n(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/l$p;->J(Ljava/util/Map;)I

    move-result p1

    return p1
.end method
