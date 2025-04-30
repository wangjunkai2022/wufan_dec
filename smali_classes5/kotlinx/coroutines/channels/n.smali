.class public final Lkotlinx/coroutines/channels/n;
.super Ljava/lang/Object;
.source "Channel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/n$c;,
        Lkotlinx/coroutines/channels/n$a;,
        Lkotlinx/coroutines/channels/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0087@\u0018\u0000  *\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002:\u0003\u0018 \u001fB\u0016\u0008\u0001\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010\u0004J\u000f\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0015\u001a\u00020\u00108F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0017\u001a\u00020\u00108F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0014R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0000@\u0001X\u0081\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u0012\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u001e\u001a\u00020\u00108F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0014\u00f8\u0001\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/n;",
        "T",
        "",
        "h",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "i",
        "",
        "f",
        "(Ljava/lang/Object;)Ljava/lang/Throwable;",
        "",
        "n",
        "(Ljava/lang/Object;)Ljava/lang/String;",
        "",
        "j",
        "(Ljava/lang/Object;)I",
        "other",
        "",
        "d",
        "(Ljava/lang/Object;Ljava/lang/Object;)Z",
        "k",
        "(Ljava/lang/Object;)Z",
        "isClosed",
        "l",
        "isFailure",
        "a",
        "Ljava/lang/Object;",
        "getHolder$annotations",
        "()V",
        "holder",
        "m",
        "isSuccess",
        "c",
        "b",
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


# static fields
.field public static final b:Lkotlinx/coroutines/channels/n$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lkotlinx/coroutines/channels/n$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/channels/n$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/n$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/channels/n;->b:Lkotlinx/coroutines/channels/n$b;

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/n$c;

    invoke-direct {v0}, Lkotlinx/coroutines/channels/n$c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/n$c;

    return-void
.end method

.method private synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/n;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/channels/n$c;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/n$c;

    return-object v0
.end method

.method public static final synthetic b(Ljava/lang/Object;)Lkotlinx/coroutines/channels/n;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/channels/n;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/n;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlinx/coroutines/channels/n;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lkotlinx/coroutines/channels/n;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/n;->o()Ljava/lang/Object;

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

.method public static final f(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/channels/n$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/channels/n$a;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/channels/n$a;->a:Ljava/lang/Throwable;

    :goto_1
    return-object v1
.end method

.method public static synthetic g()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/channels/n$c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/channels/n$c;

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, Lkotlinx/coroutines/channels/n$a;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/n$a;

    iget-object v0, v0, Lkotlinx/coroutines/channels/n$a;->a:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    const-string v0, "Trying to call \'getOrThrow\' on a failed channel result: "

    .line 3
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j(Ljava/lang/Object;)I
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

.method public static final k(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Lkotlinx/coroutines/channels/n$a;

    return p0
.end method

.method public static final l(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Lkotlinx/coroutines/channels/n$c;

    return p0
.end method

.method public static final m(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Lkotlinx/coroutines/channels/n$c;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static n(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/channels/n$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/n;->o()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/coroutines/channels/n;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/n;->o()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/channels/n;->j(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final synthetic o()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/n;->o()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/channels/n;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
