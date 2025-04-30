.class public Lcom/facebook/cache/disk/i;
.super Ljava/lang/Object;
.source "ScoreBasedEvictionComparatorSupplier.java"

# interfaces
.implements Lcom/facebook/cache/disk/g;


# instance fields
.field private final a:F

.field private final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/facebook/cache/disk/i;->a:F

    .line 3
    iput p2, p0, Lcom/facebook/cache/disk/i;->b:F

    return-void
.end method


# virtual methods
.method a(Lcom/facebook/cache/disk/c$c;J)F
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/cache/disk/c$c;->getTimestamp()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 2
    invoke-interface {p1}, Lcom/facebook/cache/disk/c$c;->getSize()J

    move-result-wide v0

    .line 3
    iget p1, p0, Lcom/facebook/cache/disk/i;->a:F

    long-to-float p2, p2

    mul-float p1, p1, p2

    iget p2, p0, Lcom/facebook/cache/disk/i;->b:F

    long-to-float p3, v0

    mul-float p2, p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method public get()Lcom/facebook/cache/disk/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/cache/disk/i$a;

    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/i$a;-><init>(Lcom/facebook/cache/disk/i;)V

    return-object v0
.end method
