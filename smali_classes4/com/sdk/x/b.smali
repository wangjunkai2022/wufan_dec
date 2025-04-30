.class public Lcom/sdk/x/b;
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

    iput-object p1, p0, Lcom/sdk/x/b;->a:Lcom/sdk/x/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sdk/x/b;->a:Lcom/sdk/x/d;

    invoke-static {v0, p1, p2, p3}, Lcom/sdk/x/d;->a(Lcom/sdk/x/d;IILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/x/b;->a:Lcom/sdk/x/d;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/sdk/x/d;->a(Lcom/sdk/x/d;ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
