.class public Lcom/facebook/rebound/s;
.super Lcom/facebook/rebound/n;
.source "SynchronousLooper.java"


# static fields
.field public static d:D = 16.6667


# instance fields
.field private b:D

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/facebook/rebound/n;-><init>()V

    .line 2
    sget-wide v0, Lcom/facebook/rebound/s;->d:D

    iput-wide v0, p0, Lcom/facebook/rebound/s;->b:D

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/facebook/rebound/s;->c:Z

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/facebook/rebound/n;->a:Lcom/facebook/rebound/c;

    invoke-virtual {v0}, Lcom/facebook/rebound/c;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/facebook/rebound/s;->c:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/n;->a:Lcom/facebook/rebound/c;

    iget-wide v1, p0, Lcom/facebook/rebound/s;->b:D

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/c;->i(D)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/facebook/rebound/s;->c:Z

    return-void
.end method

.method public d()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/rebound/s;->b:D

    return-wide v0
.end method

.method public e(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/rebound/s;->b:D

    return-void
.end method
