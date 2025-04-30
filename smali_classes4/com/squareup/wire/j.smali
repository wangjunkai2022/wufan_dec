.class public final Lcom/squareup/wire/j;
.super Ljava/lang/Object;
.source "OneOf.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Lcom/squareup/wire/j$a<",
        "TT;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0086\u0008\u0018\u0000*\u0010\u0008\u0000\u0010\u0002 \u0001*\u0008\u0012\u0004\u0012\u00028\u00010\u0001*\u0004\u0008\u0001\u0010\u00032\u00020\u0004:\u0001\u0011B\u0017\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u0012\u0006\u0010\u0015\u001a\u00028\u0001\u00a2\u0006\u0004\u0008 \u0010!J#\u0010\u0007\u001a\u0004\u0018\u00018\u0002\"\u0004\u0008\u0002\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rJ\u0010\u0010\u0011\u001a\u00028\u0000H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00028\u0001H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J0\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00028\u00002\u0008\u0008\u0002\u0010\u0015\u001a\u00028\u0001H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\t\u0010\u0018\u001a\u00020\u000bH\u00d6\u0001J\u0013\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0004H\u00d6\u0003R\u0019\u0010\u0015\u001a\u00028\u00018\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u0014R\u0019\u0010\u0006\u001a\u00028\u00008\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u0012\u00a8\u0006\""
    }
    d2 = {
        "Lcom/squareup/wire/j;",
        "Lcom/squareup/wire/j$a;",
        "K",
        "T",
        "",
        "X",
        "key",
        "h",
        "(Lcom/squareup/wire/j$a;)Ljava/lang/Object;",
        "",
        "toString",
        "",
        "f",
        "Lcom/squareup/wire/n;",
        "writer",
        "",
        "e",
        "a",
        "()Lcom/squareup/wire/j$a;",
        "b",
        "()Ljava/lang/Object;",
        "value",
        "c",
        "(Lcom/squareup/wire/j$a;Ljava/lang/Object;)Lcom/squareup/wire/j;",
        "hashCode",
        "other",
        "",
        "equals",
        "Ljava/lang/Object;",
        "i",
        "Lcom/squareup/wire/j$a;",
        "g",
        "<init>",
        "(Lcom/squareup/wire/j$a;Ljava/lang/Object;)V",
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
.field private final a:Lcom/squareup/wire/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/wire/j$a;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lcom/squareup/wire/j$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/wire/j;->a:Lcom/squareup/wire/j$a;

    iput-object p2, p0, Lcom/squareup/wire/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic d(Lcom/squareup/wire/j;Lcom/squareup/wire/j$a;Ljava/lang/Object;ILjava/lang/Object;)Lcom/squareup/wire/j;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/squareup/wire/j;->a:Lcom/squareup/wire/j$a;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/squareup/wire/j;->b:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/j;->c(Lcom/squareup/wire/j$a;Ljava/lang/Object;)Lcom/squareup/wire/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/squareup/wire/j$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/squareup/wire/j;->a:Lcom/squareup/wire/j$a;

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/wire/j;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final c(Lcom/squareup/wire/j$a;Ljava/lang/Object;)Lcom/squareup/wire/j;
    .locals 1
    .param p1    # Lcom/squareup/wire/j$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)",
            "Lcom/squareup/wire/j<",
            "TK;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/squareup/wire/j;

    invoke-direct {v0, p1, p2}, Lcom/squareup/wire/j;-><init>(Lcom/squareup/wire/j$a;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final e(Lcom/squareup/wire/n;)V
    .locals 3
    .param p1    # Lcom/squareup/wire/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/j;->a:Lcom/squareup/wire/j$a;

    invoke-virtual {v0}, Lcom/squareup/wire/j$a;->a()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/wire/j;->a:Lcom/squareup/wire/j$a;

    invoke-virtual {v1}, Lcom/squareup/wire/j$a;->e()I

    move-result v1

    iget-object v2, p0, Lcom/squareup/wire/j;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/squareup/wire/j;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/squareup/wire/j;

    iget-object v0, p0, Lcom/squareup/wire/j;->a:Lcom/squareup/wire/j$a;

    iget-object v1, p1, Lcom/squareup/wire/j;->a:Lcom/squareup/wire/j$a;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/wire/j;->b:Ljava/lang/Object;

    iget-object p1, p1, Lcom/squareup/wire/j;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final f()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/j;->a:Lcom/squareup/wire/j$a;

    invoke-virtual {v0}, Lcom/squareup/wire/j$a;->a()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/wire/j;->a:Lcom/squareup/wire/j$a;

    invoke-virtual {v1}, Lcom/squareup/wire/j$a;->e()I

    move-result v1

    iget-object v2, p0, Lcom/squareup/wire/j;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final g()Lcom/squareup/wire/j$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/j;->a:Lcom/squareup/wire/j$a;

    return-object v0
.end method

.method public final h(Lcom/squareup/wire/j$a;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/squareup/wire/j$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/j$a<",
            "TX;>;)TX;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/j;->a:Lcom/squareup/wire/j$a;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/squareup/wire/j;->b:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/squareup/wire/j;->a:Lcom/squareup/wire/j$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/wire/j;->b:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/j;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/j;->a:Lcom/squareup/wire/j$a;

    invoke-virtual {v0}, Lcom/squareup/wire/j$a;->a()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->v:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->I:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/squareup/wire/j;->b:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/wire/internal/f;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/squareup/wire/j;->b:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/squareup/wire/j;->a:Lcom/squareup/wire/j$a;

    invoke-virtual {v2}, Lcom/squareup/wire/j$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
