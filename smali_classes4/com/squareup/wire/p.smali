.class public final Lcom/squareup/wire/p;
.super Lcom/squareup/wire/b;
.source "RuntimeEnumAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/squareup/wire/s;",
        ">",
        "Lcom/squareup/wire/b<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001a*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\u001bB\u001f\u0008\u0000\u0012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018B\u0017\u0008\u0016\u0012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011\u00a2\u0006\u0004\u0008\u0017\u0010\u0019J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0019\u0010\u0008\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0007\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0013\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002J\u0008\u0010\u000e\u001a\u00020\u0006H\u0016R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u000fR\u001c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/squareup/wire/p;",
        "Lcom/squareup/wire/s;",
        "E",
        "Lcom/squareup/wire/b;",
        "Ljava/lang/reflect/Method;",
        "N",
        "",
        "value",
        "K",
        "(I)Lcom/squareup/wire/s;",
        "",
        "other",
        "",
        "equals",
        "hashCode",
        "Ljava/lang/reflect/Method;",
        "fromValueMethod",
        "Ljava/lang/Class;",
        "O",
        "Ljava/lang/Class;",
        "javaType",
        "Lcom/squareup/wire/Syntax;",
        "syntax",
        "<init>",
        "(Ljava/lang/Class;Lcom/squareup/wire/Syntax;)V",
        "(Ljava/lang/Class;)V",
        "P",
        "a",
        "wire-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final P:Lcom/squareup/wire/p$a;


# instance fields
.field private N:Ljava/lang/reflect/Method;

.field private final O:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/wire/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/p$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/p;->P:Lcom/squareup/wire/p$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "javaType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/squareup/wire/Syntax;->PROTO_2:Lcom/squareup/wire/Syntax;

    invoke-direct {p0, p1, v0}, Lcom/squareup/wire/p;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Syntax;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/squareup/wire/Syntax;)V
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/squareup/wire/Syntax;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const-string v0, "javaType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syntax"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1}, Lcom/squareup/wire/internal/f;->n(Ljava/lang/Class;)Lcom/squareup/wire/s;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/squareup/wire/b;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/squareup/wire/s;)V

    iput-object p1, p0, Lcom/squareup/wire/p;->O:Ljava/lang/Class;

    return-void
.end method

.method public static final M(Ljava/lang/Class;)Lcom/squareup/wire/p;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/s;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcom/squareup/wire/p<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/squareup/wire/p;->P:Lcom/squareup/wire/p$a;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/p$a;->a(Ljava/lang/Class;)Lcom/squareup/wire/p;

    move-result-object p0

    return-object p0
.end method

.method private final N()Ljava/lang/reflect/Method;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/p;->N:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/p;->O:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const-string v2, "fromValue"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/squareup/wire/p;->N:Ljava/lang/reflect/Method;

    const-string v1, "javaType.getMethod(\"from\u2026romValueMethod = it\n    }"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected K(I)Lcom/squareup/wire/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/squareup/wire/p;->N()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type E"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/squareup/wire/s;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/squareup/wire/p;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/squareup/wire/p;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoAdapter;->getType()Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->getType()Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->getType()Lkotlin/reflect/KClass;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
