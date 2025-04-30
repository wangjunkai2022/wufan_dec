.class Lcom/facebook/cache/disk/i$a;
.super Ljava/lang/Object;
.source "ScoreBasedEvictionComparatorSupplier.java"

# interfaces
.implements Lcom/facebook/cache/disk/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cache/disk/i;->get()Lcom/facebook/cache/disk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcom/facebook/cache/disk/i;


# direct methods
.method constructor <init>(Lcom/facebook/cache/disk/i;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/i$a;->b:Lcom/facebook/cache/disk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/cache/disk/i$a;->a:J

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/cache/disk/c$c;Lcom/facebook/cache/disk/c$c;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/i$a;->b:Lcom/facebook/cache/disk/i;

    iget-wide v1, p0, Lcom/facebook/cache/disk/i$a;->a:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/cache/disk/i;->a(Lcom/facebook/cache/disk/c$c;J)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/facebook/cache/disk/i$a;->b:Lcom/facebook/cache/disk/i;

    iget-wide v1, p0, Lcom/facebook/cache/disk/i$a;->a:J

    invoke-virtual {v0, p2, v1, v2}, Lcom/facebook/cache/disk/i;->a(Lcom/facebook/cache/disk/c$c;J)F

    move-result p2

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    cmpl-float p1, p2, p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/cache/disk/c$c;

    check-cast p2, Lcom/facebook/cache/disk/c$c;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/cache/disk/i$a;->a(Lcom/facebook/cache/disk/c$c;Lcom/facebook/cache/disk/c$c;)I

    move-result p1

    return p1
.end method
