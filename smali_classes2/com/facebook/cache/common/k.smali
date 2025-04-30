.class public Lcom/facebook/cache/common/k;
.super Ljava/lang/Object;
.source "WriterCallbacks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/facebook/cache/common/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/cache/common/k$a;

    invoke-direct {v0, p0}, Lcom/facebook/cache/common/k$a;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static b([B)Lcom/facebook/cache/common/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/cache/common/k$b;

    invoke-direct {v0, p0}, Lcom/facebook/cache/common/k$b;-><init>([B)V

    return-object v0
.end method
