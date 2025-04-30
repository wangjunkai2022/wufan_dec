.class final Lcom/facebook/imagepipeline/cache/l$a;
.super Ljava/lang/Object;
.source "EncodedCountingMemoryCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/l;->a(Lcom/facebook/common/internal/k;Lcom/facebook/common/memory/c;)Lcom/facebook/imagepipeline/cache/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/v<",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/l$a;->b(Lcom/facebook/common/memory/PooledByteBuffer;)I

    move-result p1

    return p1
.end method

.method public b(Lcom/facebook/common/memory/PooledByteBuffer;)I
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    move-result p1

    return p1
.end method
