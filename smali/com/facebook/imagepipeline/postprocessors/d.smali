.class public Lcom/facebook/imagepipeline/postprocessors/d;
.super Lcom/facebook/imagepipeline/request/a;
.source "RoundPostprocessor.java"


# static fields
.field private static final d:Z = true

.field private static final e:Z


# instance fields
.field private b:Lcom/facebook/cache/common/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lq0/d;->a()Z

    move-result v0

    sput-boolean v0, Lcom/facebook/imagepipeline/postprocessors/d;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/postprocessors/d;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/request/a;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/postprocessors/d;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/cache/common/c;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/postprocessors/d;->b:Lcom/facebook/cache/common/c;

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/facebook/imagepipeline/postprocessors/d;->e:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/facebook/cache/common/i;

    const-string v1, "XferRoundFilter"

    invoke-direct {v0, v1}, Lcom/facebook/cache/common/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/postprocessors/d;->b:Lcom/facebook/cache/common/c;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/facebook/cache/common/i;

    const-string v1, "InPlaceRoundFilter"

    invoke-direct {v0, v1}, Lcom/facebook/cache/common/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/postprocessors/d;->b:Lcom/facebook/cache/common/c;

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/postprocessors/d;->b:Lcom/facebook/cache/common/c;

    return-object v0
.end method

.method public e(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lq0/a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public f(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-boolean v0, Lcom/facebook/imagepipeline/postprocessors/d;->e:Z

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/postprocessors/d;->c:Z

    invoke-static {p1, p2, v0}, Lq0/d;->b(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/request/a;->f(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
