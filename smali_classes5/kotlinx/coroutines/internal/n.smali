.class public final Lkotlinx/coroutines/internal/n;
.super Ljava/lang/Object;
.source "InlineList.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInlineList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,49:1\n1#2:50\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0081@\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\'\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0003\u001a\u00028\u0000H\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J$\u0010\t\u001a\u00020\u00072\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0006H\u0086\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00f8\u0001\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/n;",
        "E",
        "",
        "element",
        "h",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "Lkotlin/Function1;",
        "",
        "action",
        "f",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "",
        "i",
        "(Ljava/lang/Object;)Ljava/lang/String;",
        "",
        "g",
        "(Ljava/lang/Object;)I",
        "other",
        "",
        "d",
        "(Ljava/lang/Object;Ljava/lang/Object;)Z",
        "a",
        "Ljava/lang/Object;",
        "holder",
        "b",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method private synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/n;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/n;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/n;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/n;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 1
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/internal/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlinx/coroutines/internal/n;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lkotlinx/coroutines/internal/n;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/n;->j()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final f(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2
    :cond_1
    check-cast p0, Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static g(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/util/List;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    .line 2
    invoke-static {p1}, Lkotlinx/coroutines/internal/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 3
    :cond_2
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 4
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {p0}, Lkotlinx/coroutines/internal/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 6
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v0}, Lkotlinx/coroutines/internal/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static i(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InlineList(holder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/n;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/n;->g(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final synthetic j()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/n;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/n;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
