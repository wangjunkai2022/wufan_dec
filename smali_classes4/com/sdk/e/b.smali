.class public abstract Lcom/sdk/e/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sdk/e/b;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(JJZ)V
    .locals 0

    return-void
.end method

.method public abstract a(Lcom/sdk/a/i;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdk/a/i<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public b()V
    .locals 0

    return-void
.end method
