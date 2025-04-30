.class public Lcom/facebook/drawee/backends/pipeline/info/d;
.super Ljava/lang/Object;
.source "ImagePerfState.java"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/facebook/imagepipeline/image/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:I

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:J

.field private t:J

.field private u:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->f:J

    .line 3
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->g:J

    .line 4
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->h:J

    .line 5
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->i:J

    .line 6
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->j:J

    .line 7
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->k:J

    .line 8
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->l:J

    const/4 v2, -0x1

    .line 9
    iput v2, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->m:I

    .line 10
    iput v2, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->o:I

    .line 11
    iput v2, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->p:I

    .line 12
    iput v2, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->q:I

    .line 13
    iput v2, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->r:I

    .line 14
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->s:J

    .line 15
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->t:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->q:I

    return v0
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->b:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 3
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->d:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->e:Lcom/facebook/imagepipeline/image/f;

    const-wide/16 v1, -0x1

    .line 5
    iput-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->f:J

    .line 6
    iput-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->h:J

    .line 7
    iput-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->i:J

    .line 8
    iput-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->j:J

    .line 9
    iput-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->k:J

    .line 10
    iput-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->l:J

    const/4 v3, 0x1

    .line 11
    iput v3, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->m:I

    const/4 v3, 0x0

    .line 12
    iput-boolean v3, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->n:Z

    const/4 v3, -0x1

    .line 13
    iput v3, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->o:I

    .line 14
    iput v3, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->p:I

    .line 15
    iput v3, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->q:I

    .line 16
    iput v3, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->r:I

    .line 17
    iput-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->s:J

    .line 18
    iput-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->t:J

    .line 19
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->u:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->u:Ljava/lang/String;

    return-void
.end method

.method public e(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->j:J

    return-void
.end method

.method public f(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->i:J

    return-void
.end method

.method public g(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->h:J

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->a:Ljava/lang/String;

    return-void
.end method

.method public i(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->g:J

    return-void
.end method

.method public j(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->f:J

    return-void
.end method

.method public k(Lcom/facebook/imagepipeline/image/f;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/image/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->e:Lcom/facebook/imagepipeline/image/f;

    return-void
.end method

.method public l(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->q:I

    return-void
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->m:I

    return-void
.end method

.method public n(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-void
.end method

.method public o(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->l:J

    return-void
.end method

.method public p(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->k:J

    return-void
.end method

.method public q(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->t:J

    return-void
.end method

.method public r(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->p:I

    return-void
.end method

.method public s(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->o:I

    return-void
.end method

.method public t(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->n:Z

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->b:Ljava/lang/String;

    return-void
.end method

.method public v(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->s:J

    return-void
.end method

.method public w(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1
    :goto_0
    iput p1, p0, Lcom/facebook/drawee/backends/pipeline/info/d;->r:I

    return-void
.end method

.method public x()Lcom/facebook/drawee/backends/pipeline/info/b;
    .locals 34

    move-object/from16 v0, p0

    .line 1
    new-instance v31, Lcom/facebook/drawee/backends/pipeline/info/b;

    move-object/from16 v1, v31

    iget-object v2, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v5, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->d:Ljava/lang/Object;

    iget-object v6, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->e:Lcom/facebook/imagepipeline/image/f;

    iget-wide v7, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->f:J

    iget-wide v9, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->g:J

    iget-wide v11, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->h:J

    iget-wide v13, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->i:J

    move-object/from16 v32, v1

    move-object/from16 v33, v2

    iget-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->j:J

    move-wide v15, v1

    iget-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->k:J

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->l:J

    move-wide/from16 v19, v1

    iget v1, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->m:I

    move/from16 v21, v1

    iget-boolean v1, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->n:Z

    move/from16 v22, v1

    iget v1, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->o:I

    move/from16 v23, v1

    iget v1, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->p:I

    move/from16 v24, v1

    iget v1, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->r:I

    move/from16 v25, v1

    iget-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->s:J

    move-wide/from16 v26, v1

    iget-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->t:J

    move-wide/from16 v28, v1

    iget-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/d;->u:Ljava/lang/String;

    move-object/from16 v30, v1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct/range {v1 .. v30}, Lcom/facebook/drawee/backends/pipeline/info/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/image/f;JJJJJJJIZIIIJJLjava/lang/String;)V

    return-object v31
.end method
