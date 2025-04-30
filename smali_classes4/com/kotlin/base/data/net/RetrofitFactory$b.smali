.class public final Lcom/kotlin/base/data/net/RetrofitFactory$b;
.super Ljava/lang/Object;
.source "RetrofitFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kotlin/base/data/net/RetrofitFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001d\u0010\u0007\u001a\u00020\u00028F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "com/kotlin/base/data/net/RetrofitFactory$b",
        "",
        "Lcom/kotlin/base/data/net/RetrofitFactory;",
        "instance$delegate",
        "Lkotlin/Lazy;",
        "a",
        "()Lcom/kotlin/base/data/net/RetrofitFactory;",
        "instance",
        "<init>",
        "()V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/kotlin/base/data/net/RetrofitFactory$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/kotlin/base/data/net/RetrofitFactory;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/kotlin/base/data/net/RetrofitFactory;->a()Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lcom/kotlin/base/data/net/RetrofitFactory;->d:Lcom/kotlin/base/data/net/RetrofitFactory$b;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kotlin/base/data/net/RetrofitFactory;

    return-object v0
.end method
