.class public Lcom/facebook/rebound/r;
.super Lcom/facebook/rebound/n;
.source "SteppingLooper.java"


# instance fields
.field private b:Z

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/rebound/n;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/facebook/rebound/r;->b:Z

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/facebook/rebound/r;->c:J

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/facebook/rebound/r;->b:Z

    return-void
.end method

.method public d(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/n;->a:Lcom/facebook/rebound/c;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/facebook/rebound/r;->b:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v1, p0, Lcom/facebook/rebound/r;->c:J

    add-long/2addr v1, p1

    long-to-double p1, v1

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/facebook/rebound/c;->i(D)V

    .line 4
    iput-wide v1, p0, Lcom/facebook/rebound/r;->c:J

    .line 5
    iget-object p1, p0, Lcom/facebook/rebound/n;->a:Lcom/facebook/rebound/c;

    invoke-virtual {p1}, Lcom/facebook/rebound/c;->g()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
