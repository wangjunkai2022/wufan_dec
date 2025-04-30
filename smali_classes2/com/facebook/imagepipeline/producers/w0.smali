.class public Lcom/facebook/imagepipeline/producers/w0;
.super Ljava/lang/Object;
.source "ThumbnailBranchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/w0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/i0<",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[Lcom/facebook/imagepipeline/producers/x0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/facebook/imagepipeline/producers/x0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/facebook/imagepipeline/producers/x0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/imagepipeline/producers/x0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/facebook/imagepipeline/producers/x0;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/w0;->a:[Lcom/facebook/imagepipeline/producers/x0;

    .line 3
    array-length p1, p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/facebook/common/internal/h;->g(II)I

    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/w0;ILcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/w0;->e(ILcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)Z

    move-result p0

    return p0
.end method

.method private d(ILcom/facebook/imagepipeline/common/d;)I
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w0;->a:[Lcom/facebook/imagepipeline/producers/x0;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 2
    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Lcom/facebook/imagepipeline/producers/x0;->a(Lcom/facebook/imagepipeline/common/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private e(ILcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/k0;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lcom/facebook/imagepipeline/common/d;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/producers/w0;->d(ILcom/facebook/imagepipeline/common/d;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w0;->a:[Lcom/facebook/imagepipeline/producers/x0;

    aget-object v0, v0, p1

    new-instance v1, Lcom/facebook/imagepipeline/producers/w0$a;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/facebook/imagepipeline/producers/w0$a;-><init>(Lcom/facebook/imagepipeline/producers/w0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;I)V

    .line 3
    invoke-interface {v0, v1, p3}, Lcom/facebook/imagepipeline/producers/i0;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lcom/facebook/imagepipeline/common/d;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v2, v1}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/imagepipeline/producers/w0;->e(ILcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-interface {p1, v2, v1}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    :cond_1
    :goto_0
    return-void
.end method
