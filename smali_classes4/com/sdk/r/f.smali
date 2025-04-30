.class public Lcom/sdk/r/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/sdk/r/f;


# instance fields
.field public b:Lcom/sdk/s/a;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget v0, Lcom/sdk/v/a;->d:I

    .line 2
    sget-object v1, Lcom/sdk/v/a;->b:Ljava/lang/String;

    .line 3
    iput-object v1, p0, Lcom/sdk/r/f;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sdk/s/b;

    invoke-direct {v0}, Lcom/sdk/s/b;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/sdk/r/f;->b:Lcom/sdk/s/a;

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/sdk/r/g;

    invoke-direct {v0}, Lcom/sdk/r/g;-><init>()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static a()Lcom/sdk/r/f;
    .locals 1

    sget-object v0, Lcom/sdk/r/f;->a:Lcom/sdk/r/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sdk/r/f;

    invoke-direct {v0}, Lcom/sdk/r/f;-><init>()V

    sput-object v0, Lcom/sdk/r/f;->a:Lcom/sdk/r/f;

    :cond_0
    sget-object v0, Lcom/sdk/r/f;->a:Lcom/sdk/r/f;

    return-object v0
.end method
