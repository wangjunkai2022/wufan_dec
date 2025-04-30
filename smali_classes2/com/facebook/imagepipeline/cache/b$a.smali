.class final Lcom/facebook/imagepipeline/cache/b$a;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/b;->a(Lcom/facebook/imagepipeline/cache/h;Lcom/facebook/imagepipeline/cache/n;)Lcom/facebook/imagepipeline/cache/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/r<",
        "Lcom/facebook/cache/common/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/cache/n;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/b$a;->a:Lcom/facebook/imagepipeline/cache/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/cache/common/c;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/b$a;->d(Lcom/facebook/cache/common/c;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/b$a;->a:Lcom/facebook/imagepipeline/cache/n;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/cache/n;->d()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/b$a;->a:Lcom/facebook/imagepipeline/cache/n;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/cache/n;->e()V

    return-void
.end method

.method public d(Lcom/facebook/cache/common/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/b$a;->a:Lcom/facebook/imagepipeline/cache/n;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/n;->g(Lcom/facebook/cache/common/c;)V

    return-void
.end method
