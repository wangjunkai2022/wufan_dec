.class Lcom/join/mgps/Util/k0$a;
.super Ljava/lang/Object;
.source "FrescoUtil.java"

# interfaces
.implements Lcom/facebook/common/memory/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/k0;->m(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/facebook/common/memory/MemoryTrimType;->getSuggestedTrimRatio()D

    move-result-wide v0

    .line 2
    sget-object p1, Lcom/facebook/common/memory/MemoryTrimType;->OnCloseToDalvikHeapLimit:Lcom/facebook/common/memory/MemoryTrimType;

    invoke-virtual {p1}, Lcom/facebook/common/memory/MemoryTrimType;->getSuggestedTrimRatio()D

    move-result-wide v2

    cmpl-double p1, v2, v0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/facebook/common/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInBackground:Lcom/facebook/common/memory/MemoryTrimType;

    .line 3
    invoke-virtual {p1}, Lcom/facebook/common/memory/MemoryTrimType;->getSuggestedTrimRatio()D

    move-result-wide v2

    cmpl-double p1, v2, v0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/facebook/common/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInForeground:Lcom/facebook/common/memory/MemoryTrimType;

    .line 4
    invoke-virtual {p1}, Lcom/facebook/common/memory/MemoryTrimType;->getSuggestedTrimRatio()D

    move-result-wide v2

    cmpl-double p1, v2, v0

    if-nez p1, :cond_1

    .line 5
    :cond_0
    invoke-static {}, Lcom/facebook/imagepipeline/core/i;->j()Lcom/facebook/imagepipeline/core/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/i;->h()Lcom/facebook/imagepipeline/core/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/g;->d()V

    :cond_1
    return-void
.end method
