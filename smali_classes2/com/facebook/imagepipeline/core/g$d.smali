.class Lcom/facebook/imagepipeline/core/g$d;
.super Ljava/lang/Object;
.source "ImagePipeline.java"

# interfaces
.implements Lcom/facebook/common/internal/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/core/g;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/i<",
        "Lcom/facebook/cache/common/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/core/g;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/core/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/g$d;->a:Lcom/facebook/imagepipeline/core/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/cache/common/c;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/cache/common/c;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/g$d;->a(Lcom/facebook/cache/common/c;)Z

    move-result p1

    return p1
.end method
