.class public Lcom/facebook/rebound/o;
.super Lcom/facebook/rebound/c;
.source "SpringSystem.java"


# direct methods
.method private constructor <init>(Lcom/facebook/rebound/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/rebound/c;-><init>(Lcom/facebook/rebound/n;)V

    return-void
.end method

.method public static m()Lcom/facebook/rebound/o;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/rebound/o;

    invoke-static {}, Lcom/facebook/rebound/a;->a()Lcom/facebook/rebound/n;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/rebound/o;-><init>(Lcom/facebook/rebound/n;)V

    return-object v0
.end method
