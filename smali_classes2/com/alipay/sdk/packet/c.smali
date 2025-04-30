.class public final Lcom/alipay/sdk/packet/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:[B


# direct methods
.method public constructor <init>(Z[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/alipay/sdk/packet/c;->a:Z

    .line 3
    iput-object p2, p0, Lcom/alipay/sdk/packet/c;->b:[B

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/alipay/sdk/packet/c;->a:Z

    return-void
.end method

.method private b([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/packet/c;->b:[B

    return-void
.end method

.method private c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alipay/sdk/packet/c;->a:Z

    return v0
.end method

.method private d()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/packet/c;->b:[B

    return-object v0
.end method
