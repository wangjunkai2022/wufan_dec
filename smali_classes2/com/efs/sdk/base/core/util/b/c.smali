.class public final Lcom/efs/sdk/base/core/util/b/c;
.super Lcom/efs/sdk/base/core/util/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/efs/sdk/base/core/util/a/e<",
        "Lcom/efs/sdk/base/http/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/efs/sdk/base/core/util/b/b;


# direct methods
.method constructor <init>(Lcom/efs/sdk/base/core/util/b/b;)V
    .locals 0
    .param p1    # Lcom/efs/sdk/base/core/util/b/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/core/util/a/e;-><init>(Lcom/efs/sdk/base/core/util/a/c;)V

    .line 2
    iput-object p1, p0, Lcom/efs/sdk/base/core/util/b/c;->a:Lcom/efs/sdk/base/core/util/b/b;

    return-void
.end method


# virtual methods
.method public final b()Lcom/efs/sdk/base/http/HttpResponse;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/core/util/b/c;->a:Lcom/efs/sdk/base/core/util/b/b;

    const-string v1, "post"

    iput-object v1, v0, Lcom/efs/sdk/base/core/util/b/b;->e:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/efs/sdk/base/core/util/a/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/efs/sdk/base/http/HttpResponse;

    return-object v0
.end method
