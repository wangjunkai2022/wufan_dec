.class public final Lcom/squareup/wire/l$u;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ProtoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/l;->J(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonWrapper$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,1101:1\n415#2,7:1102\n*E\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonWrapper$1\n*L\n1086#1,7:1102\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0001J\u0019\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0002\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0002\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001b\u0010\u000f\u001a\u0004\u0018\u00018\u00002\u0008\u0010\u0002\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "com/squareup/wire/l$u",
        "Lcom/squareup/wire/ProtoAdapter;",
        "value",
        "",
        "n",
        "(Ljava/lang/Object;)I",
        "Lcom/squareup/wire/n;",
        "writer",
        "",
        "h",
        "(Lcom/squareup/wire/n;Ljava/lang/Object;)V",
        "Lcom/squareup/wire/m;",
        "reader",
        "c",
        "(Lcom/squareup/wire/m;)Ljava/lang/Object;",
        "E",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
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
.field final synthetic N:Lcom/squareup/wire/ProtoAdapter;

.field final synthetic O:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/squareup/wire/l$u;->N:Lcom/squareup/wire/ProtoAdapter;

    iput-object p2, p0, Lcom/squareup/wire/l$u;->O:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public E(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/l$u;->N:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/squareup/wire/m;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lcom/squareup/wire/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/m;",
            ")TT;"
        }
    .end annotation

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
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 4
    invoke-virtual {p1, v3}, Lcom/squareup/wire/m;->o(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/squareup/wire/l$u;->N:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public h(Lcom/squareup/wire/n;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lcom/squareup/wire/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/n;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/l$u;->N:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/l$u;->N:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result p1

    return p1
.end method
