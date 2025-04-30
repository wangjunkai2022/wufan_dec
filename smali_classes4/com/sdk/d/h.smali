.class public Lcom/sdk/d/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/sdk/d/b;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sdk/d/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdk/d/b;",
            "TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/sdk/d/b;->d:Lcom/sdk/d/b;

    :cond_0
    iput-object p1, p0, Lcom/sdk/d/h;->a:Lcom/sdk/d/b;

    iput-object p2, p0, Lcom/sdk/d/h;->b:Ljava/lang/Object;

    return-void
.end method
