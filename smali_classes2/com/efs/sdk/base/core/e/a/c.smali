.class public final Lcom/efs/sdk/base/core/e/a/c;
.super Lcom/efs/sdk/base/core/e/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/core/e/a/a;-><init>()V

    return-void
.end method

.method private static c(Lcom/efs/sdk/base/core/d/b;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/efs/sdk/base/core/d/b;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/efs/sdk/base/core/d/b;->a:Lcom/efs/sdk/base/core/d/a;

    iget-byte v2, v0, Lcom/efs/sdk/base/core/d/a;->b:B

    if-ne v1, v2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/efs/sdk/base/core/d/b;->b:Lcom/efs/sdk/base/core/d/c;

    iget-boolean p0, p0, Lcom/efs/sdk/base/core/d/c;->a:Z

    if-eqz p0, :cond_2

    .line 4
    :cond_0
    iget p0, v0, Lcom/efs/sdk/base/core/d/a;->c:I

    if-ne v1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/core/d/b;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/efs/sdk/base/core/e/a/c;->c(Lcom/efs/sdk/base/core/d/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/e/a/a;->b(Lcom/efs/sdk/base/core/d/b;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/efs/sdk/base/core/d/b;->c:[B

    .line 4
    invoke-static {v0}, Lcom/efs/sdk/base/core/util/c;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "efs.base"

    const-string v2, "gzip error"

    .line 5
    invoke-static {v1, v2, v0}, Lcom/efs/sdk/base/core/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/e/a/a;->b(Lcom/efs/sdk/base/core/d/b;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/core/d/b;->a([B)V

    const-string v0, "gzip"

    .line 8
    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/core/d/b;->a(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/e/a/a;->b(Lcom/efs/sdk/base/core/d/b;)V

    return-void
.end method
