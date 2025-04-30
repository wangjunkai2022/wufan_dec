.class public Lcom/facebook/imagepipeline/core/h$b;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

.field private b:Z

.field private c:Lcom/facebook/common/webp/b$a;

.field private d:Z

.field private e:Lcom/facebook/common/webp/b;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field public j:Z

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Lcom/facebook/imagepipeline/core/h$d;

.field public o:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/h$b;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/h$b;->d:Z

    .line 4
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/h$b;->f:Z

    .line 5
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/h$b;->g:Z

    .line 6
    iput v0, p0, Lcom/facebook/imagepipeline/core/h$b;->h:I

    .line 7
    iput v0, p0, Lcom/facebook/imagepipeline/core/h$b;->i:I

    .line 8
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/h$b;->j:Z

    const/16 v1, 0x800

    .line 9
    iput v1, p0, Lcom/facebook/imagepipeline/core/h$b;->k:I

    .line 10
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/h$b;->l:Z

    .line 11
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/h$b;->m:Z

    .line 12
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/core/h$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/h$b;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/common/webp/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->c:Lcom/facebook/common/webp/b$a;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/core/h$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/h$b;->m:Z

    return p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/imagepipeline/core/h$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->n:Lcom/facebook/imagepipeline/core/h$d;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/core/h$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/h$b;->d:Z

    return p0
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/common/webp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->e:Lcom/facebook/common/webp/b;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/imagepipeline/core/h$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/h$b;->f:Z

    return p0
.end method

.method static synthetic h(Lcom/facebook/imagepipeline/core/h$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/h$b;->g:Z

    return p0
.end method

.method static synthetic i(Lcom/facebook/imagepipeline/core/h$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/imagepipeline/core/h$b;->h:I

    return p0
.end method

.method static synthetic j(Lcom/facebook/imagepipeline/core/h$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/imagepipeline/core/h$b;->i:I

    return p0
.end method

.method static synthetic k(Lcom/facebook/imagepipeline/core/h$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/imagepipeline/core/h$b;->k:I

    return p0
.end method

.method static synthetic l(Lcom/facebook/imagepipeline/core/h$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/h$b;->l:Z

    return p0
.end method


# virtual methods
.method public m()Lcom/facebook/imagepipeline/core/h;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/h;-><init>(Lcom/facebook/imagepipeline/core/h$b;Lcom/facebook/imagepipeline/core/h$a;)V

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/h$b;->m:Z

    return v0
.end method

.method public o(ZIIZ)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/h$b;->g:Z

    .line 2
    iput p2, p0, Lcom/facebook/imagepipeline/core/h$b;->h:I

    .line 3
    iput p3, p0, Lcom/facebook/imagepipeline/core/h$b;->i:I

    .line 4
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/core/h$b;->j:Z

    .line 5
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public p(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/h$b;->d:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public q(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/h$b;->p:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public r(Lcom/facebook/common/internal/k;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->o:Lcom/facebook/common/internal/k;

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public s(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/core/h$b;->k:I

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public t(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/h$b;->l:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public u(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/h$b;->m:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public v(Lcom/facebook/imagepipeline/core/h$d;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->n:Lcom/facebook/imagepipeline/core/h$d;

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public w(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/h$b;->f:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public x(Lcom/facebook/common/webp/b;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->e:Lcom/facebook/common/webp/b;

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public y(Lcom/facebook/common/webp/b$a;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->c:Lcom/facebook/common/webp/b$a;

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public z(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/h$b;->b:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method
