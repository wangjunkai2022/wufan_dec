.class public Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
.super Ljava/lang/Object;
.source "ImageRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;
    }
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field private c:Lcom/facebook/imagepipeline/common/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/facebook/imagepipeline/common/RotationOptions;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/facebook/imagepipeline/common/b;

.field private f:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

.field private g:Z

.field private h:Z

.field private i:Lcom/facebook/imagepipeline/common/Priority;

.field private j:Lcom/facebook/imagepipeline/request/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private n:Lr0/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private o:Lcom/facebook/imagepipeline/common/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private p:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    .line 3
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    iput-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 4
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->c:Lcom/facebook/imagepipeline/common/d;

    .line 5
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/common/b;->a()Lcom/facebook/imagepipeline/common/b;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e:Lcom/facebook/imagepipeline/common/b;

    .line 7
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DEFAULT:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    iput-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->f:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getDefaultImageRequestConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;->isProgressiveRenderingEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->g:Z

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->h:Z

    .line 10
    sget-object v1, Lcom/facebook/imagepipeline/common/Priority;->HIGH:Lcom/facebook/imagepipeline/common/Priority;

    iput-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->i:Lcom/facebook/imagepipeline/common/Priority;

    .line 11
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->j:Lcom/facebook/imagepipeline/request/d;

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->k:Z

    .line 13
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->l:Z

    .line 14
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->m:Ljava/lang/Boolean;

    .line 15
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o:Lcom/facebook/imagepipeline/common/a;

    .line 16
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->p:Ljava/lang/Boolean;

    return-void
.end method

.method public static d(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->t()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->g()Lcom/facebook/imagepipeline/common/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->y(Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->e()Lcom/facebook/imagepipeline/common/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->w(Lcom/facebook/imagepipeline/common/a;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->x(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->z(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->i()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->A(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->j()Lcom/facebook/imagepipeline/request/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->B(Lcom/facebook/imagepipeline/request/d;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->C(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->E(Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lcom/facebook/imagepipeline/common/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->F(Lcom/facebook/imagepipeline/common/d;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->o()Lr0/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->D(Lr0/c;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->H(Lcom/facebook/imagepipeline/common/RotationOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->y()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->I(Ljava/lang/Boolean;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static t(I)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/common/util/f;->e(I)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static u(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->J(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object p0
.end method

.method public B(Lcom/facebook/imagepipeline/request/d;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->j:Lcom/facebook/imagepipeline/request/d;

    return-object p0
.end method

.method public C(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->g:Z

    return-object p0
.end method

.method public D(Lr0/c;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->n:Lr0/c;

    return-object p0
.end method

.method public E(Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->i:Lcom/facebook/imagepipeline/common/Priority;

    return-object p0
.end method

.method public F(Lcom/facebook/imagepipeline/common/d;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/common/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->c:Lcom/facebook/imagepipeline/common/d;

    return-object p0
.end method

.method public G(Ljava/lang/Boolean;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->p:Ljava/lang/Boolean;

    return-object p0
.end method

.method public H(Lcom/facebook/imagepipeline/common/RotationOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/common/RotationOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d:Lcom/facebook/imagepipeline/common/RotationOptions;

    return-object p0
.end method

.method public I(Ljava/lang/Boolean;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->m:Ljava/lang/Boolean;

    return-object p0
.end method

.method public J(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public K()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->m:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected L()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 2
    invoke-static {v0}, Lcom/facebook/common/util/f;->l(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    const-string v1, "Resource URI path must be a resource id."

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    const-string v1, "Resource URI must not be empty"

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    const-string v1, "Resource URI path must be absolute."

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/common/util/f;->g(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    const-string v1, "Asset URI path must be absolute."

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-void

    .line 11
    :cond_5
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    const-string v1, "Source must be set!"

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->L()V

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/request/ImageRequest;-><init>(Lcom/facebook/imagepipeline/request/ImageRequestBuilder;)V

    return-object v0
.end method

.method public b()Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->k:Z

    return-object p0
.end method

.method public c()Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->l:Z

    return-object p0
.end method

.method public e()Lcom/facebook/imagepipeline/common/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o:Lcom/facebook/imagepipeline/common/a;

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->f:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/common/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e:Lcom/facebook/imagepipeline/common/b;

    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object v0
.end method

.method public i()Lcom/facebook/imagepipeline/request/d;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->j:Lcom/facebook/imagepipeline/request/d;

    return-object v0
.end method

.method public j()Lr0/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->n:Lr0/c;

    return-object v0
.end method

.method public k()Lcom/facebook/imagepipeline/common/Priority;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->i:Lcom/facebook/imagepipeline/common/Priority;

    return-object v0
.end method

.method public l()Lcom/facebook/imagepipeline/common/d;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->c:Lcom/facebook/imagepipeline/common/d;

    return-object v0
.end method

.method public m()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->p:Ljava/lang/Boolean;

    return-object v0
.end method

.method public n()Lcom/facebook/imagepipeline/common/RotationOptions;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d:Lcom/facebook/imagepipeline/common/RotationOptions;

    return-object v0
.end method

.method public o()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/common/util/f;->m(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->h:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->l:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->g:Z

    return v0
.end method

.method public v(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/common/RotationOptions;->a()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->H(Lcom/facebook/imagepipeline/common/RotationOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/facebook/imagepipeline/common/RotationOptions;->d()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->H(Lcom/facebook/imagepipeline/common/RotationOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public w(Lcom/facebook/imagepipeline/common/a;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/common/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o:Lcom/facebook/imagepipeline/common/a;

    return-object p0
.end method

.method public x(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->f:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-object p0
.end method

.method public y(Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e:Lcom/facebook/imagepipeline/common/b;

    return-object p0
.end method

.method public z(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->h:Z

    return-object p0
.end method
