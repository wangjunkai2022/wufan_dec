.class public Lcom/facebook/imagepipeline/core/h;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/h$c;,
        Lcom/facebook/imagepipeline/core/h$d;,
        Lcom/facebook/imagepipeline/core/h$b;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/facebook/common/webp/b$a;

.field private final c:Z

.field private final d:Lcom/facebook/common/webp/b;

.field private final e:Z

.field private final f:Z

.field private final g:I

.field private final h:I

.field private i:Z

.field private final j:I

.field private final k:Z

.field private final l:Z

.field private final m:Lcom/facebook/imagepipeline/core/h$d;

.field private final n:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Z


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/core/h$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/h$b;->a(Lcom/facebook/imagepipeline/core/h$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/h;->a:Z

    .line 4
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/h$b;->b(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/common/webp/b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/h;->b:Lcom/facebook/common/webp/b$a;

    .line 5
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/h$b;->e(Lcom/facebook/imagepipeline/core/h$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/h;->c:Z

    .line 6
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/h$b;->f(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/common/webp/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/h;->d:Lcom/facebook/common/webp/b;

    .line 7
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/h$b;->g(Lcom/facebook/imagepipeline/core/h$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/h;->e:Z

    .line 8
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/h$b;->h(Lcom/facebook/imagepipeline/core/h$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/h;->f:Z

    .line 9
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/h$b;->i(Lcom/facebook/imagepipeline/core/h$b;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/core/h;->g:I

    .line 10
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/h$b;->j(Lcom/facebook/imagepipeline/core/h$b;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/core/h;->h:I

    .line 11
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/h$b;->j:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/h;->i:Z

    .line 12
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/h$b;->k(Lcom/facebook/imagepipeline/core/h$b;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/core/h;->j:I

    .line 13
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/h$b;->l(Lcom/facebook/imagepipeline/core/h$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/h;->k:Z

    .line 14
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/h$b;->c(Lcom/facebook/imagepipeline/core/h$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/h;->l:Z

    .line 15
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/h$b;->d(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/imagepipeline/core/h$d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/facebook/imagepipeline/core/h$c;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/core/h$c;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/h;->m:Lcom/facebook/imagepipeline/core/h$d;

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/h$b;->d(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/imagepipeline/core/h$d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/h;->m:Lcom/facebook/imagepipeline/core/h$d;

    .line 18
    :goto_0
    iget-object v0, p1, Lcom/facebook/imagepipeline/core/h$b;->o:Lcom/facebook/common/internal/k;

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/h;->n:Lcom/facebook/common/internal/k;

    .line 19
    iget-boolean p1, p1, Lcom/facebook/imagepipeline/core/h$b;->p:Z

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/h;->o:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/core/h$b;Lcom/facebook/imagepipeline/core/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/h;-><init>(Lcom/facebook/imagepipeline/core/h$b;)V

    return-void
.end method

.method public static p(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/h$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/h$b;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/core/h$b;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/h;->i:Z

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/core/h;->h:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/core/h;->g:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/core/h;->j:I

    return v0
.end method

.method public e()Lcom/facebook/imagepipeline/core/h$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->m:Lcom/facebook/imagepipeline/core/h$d;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/h;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/h;->e:Z

    return v0
.end method

.method public h()Lcom/facebook/common/webp/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->d:Lcom/facebook/common/webp/b;

    return-object v0
.end method

.method public i()Lcom/facebook/common/webp/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->b:Lcom/facebook/common/webp/b$a;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/h;->c:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/h;->o:Z

    return v0
.end method

.method public l()Lcom/facebook/common/internal/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->n:Lcom/facebook/common/internal/k;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/h;->k:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/h;->l:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/h;->a:Z

    return v0
.end method
