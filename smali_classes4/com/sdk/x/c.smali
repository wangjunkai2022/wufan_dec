.class public Lcom/sdk/x/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/sdk/e/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sdk/e/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/sdk/x/d;


# direct methods
.method public constructor <init>(Lcom/sdk/x/d;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/x/c;->a:Lcom/sdk/x/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sdk/x/c;->a:Lcom/sdk/x/d;

    invoke-static {v0, p1, p2, p3}, Lcom/sdk/x/d;->a(Lcom/sdk/x/d;IILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sdk/x/c;->a:Lcom/sdk/x/d;

    invoke-static {v0}, Lcom/sdk/x/d;->a(Lcom/sdk/x/d;)Landroid/content/Context;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdk/u/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v1, p0, Lcom/sdk/x/c;->a:Lcom/sdk/x/d;

    const/4 v2, 0x1

    const v4, 0x49bb1

    const-string v3, "SDK\u89e3\u5bc6\u5f02\u5e38"

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/sdk/x/d;->a(Lcom/sdk/x/d;ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v4, v5

    goto :goto_0

    :cond_1
    move-object v4, p4

    :goto_0
    iget-object v0, p0, Lcom/sdk/x/c;->a:Lcom/sdk/x/d;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/sdk/x/d;->a(Lcom/sdk/x/d;ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
