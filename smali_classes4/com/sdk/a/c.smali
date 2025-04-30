.class public Lcom/sdk/a/c;
.super Lcom/sdk/b/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sdk/b/c<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sdk/a/d;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sdk/b/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    :goto_0
    return p1
.end method
