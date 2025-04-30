.class public Lcom/sdk/w/a;
.super Lcom/sdk/g/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sdk/g/b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sdk/e/a;Lcom/sdk/f/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sdk/e/a<",
            "TT;>;",
            "Lcom/sdk/f/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/sdk/g/b;-><init>(Landroid/content/Context;Lcom/sdk/e/a;Lcom/sdk/f/c;)V

    .line 1
    sget-boolean p1, Lcom/sdk/f/g;->d:Z

    if-eqz p1, :cond_2

    .line 2
    sget-object p1, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->testHost:Ljava/lang/String;

    .line 3
    sget-object p2, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->statisticalTestHost:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Lcom/sdk/o/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/sdk/f/g$a;->a:Lcom/sdk/f/g$a;

    invoke-virtual {p2}, Lcom/sdk/f/g$a;->a()Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Lcom/sdk/o/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/sdk/f/g$a;->b:Lcom/sdk/f/g$a;

    invoke-virtual {p1}, Lcom/sdk/f/g$a;->a()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/sdk/g/b;->i:Ljava/lang/String;

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/sdk/f/g$a;->b:Lcom/sdk/f/g$a;

    invoke-virtual {p1}, Lcom/sdk/f/g$a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sdk/g/b;->i:Ljava/lang/String;

    sget-object p1, Lcom/sdk/f/g$a;->a:Lcom/sdk/f/g$a;

    invoke-virtual {p1}, Lcom/sdk/f/g$a;->a()Ljava/lang/String;

    :goto_2
    return-void
.end method
