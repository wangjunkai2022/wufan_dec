.class public Lcom/facebook/imagepipeline/postprocessors/c;
.super Lcom/facebook/imagepipeline/request/a;
.source "RoundAsCirclePostprocessor.java"


# static fields
.field private static final d:Z = true


# instance fields
.field private b:Lcom/facebook/cache/common/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/postprocessors/c;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/request/a;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/postprocessors/c;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/cache/common/c;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/postprocessors/c;->b:Lcom/facebook/cache/common/c;

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/postprocessors/c;->c:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/facebook/cache/common/i;

    const-string v1, "RoundAsCirclePostprocessor#AntiAliased"

    invoke-direct {v0, v1}, Lcom/facebook/cache/common/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/postprocessors/c;->b:Lcom/facebook/cache/common/c;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/facebook/cache/common/i;

    const-string v1, "RoundAsCirclePostprocessor"

    invoke-direct {v0, v1}, Lcom/facebook/cache/common/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/postprocessors/c;->b:Lcom/facebook/cache/common/c;

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/postprocessors/c;->b:Lcom/facebook/cache/common/c;

    return-object v0
.end method

.method public e(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/postprocessors/c;->c:Z

    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/nativecode/NativeRoundingFilter;->b(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
