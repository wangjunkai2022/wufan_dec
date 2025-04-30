.class public final Lcom/squareup/wire/l$r;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ProtoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/l;->E()Lcom/squareup/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonStructValue$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,1101:1\n415#2,7:1102\n*E\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonStructValue$1\n*L\n1037#1,7:1102\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\"\u0010\u000c\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/squareup/wire/l$r",
        "Lcom/squareup/wire/ProtoAdapter;",
        "",
        "value",
        "",
        "n",
        "tag",
        "o",
        "Lcom/squareup/wire/n;",
        "writer",
        "",
        "h",
        "m",
        "Lcom/squareup/wire/m;",
        "reader",
        "c",
        "E",
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
.method public E(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->z:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->x:Lcom/squareup/wire/ProtoAdapter;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_4
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->y:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 7
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected struct value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/squareup/wire/m;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lcom/squareup/wire/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/squareup/wire/m;->e()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/m;->i()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/m;->g(J)Lokio/ByteString;

    return-object v2

    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 4
    invoke-virtual {p1}, Lcom/squareup/wire/m;->r()V

    goto :goto_0

    .line 5
    :pswitch_0
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->y:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 6
    :pswitch_1
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->x:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 7
    :pswitch_2
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 8
    :pswitch_3
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->v:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 9
    :pswitch_4
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->t:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 10
    :pswitch_5
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->z:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h(Lcom/squareup/wire/n;Ljava/lang/Object;)V
    .locals 4
    .param p1    # Lcom/squareup/wire/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->z:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->t:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->v:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_3
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->x:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    check-cast p2, Ljava/util/Map;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_4
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->y:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    :goto_0
    return-void

    .line 7
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected struct value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Lcom/squareup/wire/n;ILjava/lang/Object;)V
    .locals 1
    .param p1    # Lcom/squareup/wire/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->s()Lcom/squareup/wire/FieldEncoding;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/squareup/wire/n;->f(ILcom/squareup/wire/FieldEncoding;)V

    .line 2
    invoke-virtual {p0, p3}, Lcom/squareup/wire/l$r;->n(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/n;->g(I)V

    .line 3
    invoke-virtual {p0, p1, p3}, Lcom/squareup/wire/l$r;->h(Lcom/squareup/wire/n;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public n(Ljava/lang/Object;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->z:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->t:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->v:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 4
    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 5
    :cond_3
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->x:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 6
    :cond_4
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->y:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result p1

    :goto_0
    return p1

    .line 7
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected struct value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o(ILjava/lang/Object;)I
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Lcom/squareup/wire/l$r;->n(Ljava/lang/Object;)I

    move-result p2

    .line 2
    sget-object v0, Lcom/squareup/wire/n;->b:Lcom/squareup/wire/n$a;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/n$a;->h(I)I

    move-result p1

    invoke-virtual {v0, p2}, Lcom/squareup/wire/n$a;->i(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr p1, p2

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result p1

    return p1
.end method
