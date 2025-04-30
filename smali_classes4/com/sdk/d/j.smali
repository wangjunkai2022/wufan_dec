.class public Lcom/sdk/d/j;
.super Lcom/sdk/d/h;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sdk/d/h<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sdk/d/b;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sdk/d/h;-><init>(Lcom/sdk/d/b;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sdk/d/h;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
