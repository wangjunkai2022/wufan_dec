.class public Lcom/facebook/drawee/backends/pipeline/info/b;
.super Ljava/lang/Object;
.source "ImagePerfData.java"


# static fields
.field public static final u:I = -0x1


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lcom/facebook/imagepipeline/image/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:J

.field private final j:J

.field private final k:J

.field private final l:J

.field private final m:I

.field private final n:Z

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:J

.field private final s:J

.field private final t:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/image/f;JJJJJJJIZIIIJJLjava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/imagepipeline/image/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p29    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->a:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->b:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->d:Lcom/facebook/imagepipeline/request/ImageRequest;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->c:Ljava/lang/Object;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->e:Lcom/facebook/imagepipeline/image/f;

    move-wide v1, p6

    .line 7
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->f:J

    move-wide v1, p8

    .line 8
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->g:J

    move-wide v1, p10

    .line 9
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->h:J

    move-wide v1, p12

    .line 10
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->i:J

    move-wide/from16 v1, p14

    .line 11
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->j:J

    move-wide/from16 v1, p16

    .line 12
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->k:J

    move-wide/from16 v1, p18

    .line 13
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->l:J

    move/from16 v1, p20

    .line 14
    iput v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->m:I

    move/from16 v1, p21

    .line 15
    iput-boolean v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->n:Z

    move/from16 v1, p22

    .line 16
    iput v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->o:I

    move/from16 v1, p23

    .line 17
    iput v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->p:I

    move/from16 v1, p24

    .line 18
    iput v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->q:I

    move-wide/from16 v1, p25

    .line 19
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->r:J

    move-wide/from16 v1, p27

    .line 20
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->s:J

    move-object/from16 v1, p29

    .line 21
    iput-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/b;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/g;->f(Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->a:Ljava/lang/String;

    const-string v2, "controller ID"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->b:Ljava/lang/String;

    const-string v2, "request ID"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->f:J

    const-string v3, "controller submit"

    .line 4
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/g$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->h:J

    const-string v3, "controller final image"

    .line 5
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/g$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->i:J

    const-string v3, "controller failure"

    .line 6
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/g$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->j:J

    const-string v3, "controller cancel"

    .line 7
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/g$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->k:J

    const-string v3, "start time"

    .line 8
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/g$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->l:J

    const-string v3, "end time"

    .line 9
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/g$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget v1, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->m:I

    .line 10
    invoke-static {v1}, Lh0/c;->b(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "origin"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->n:Z

    const-string v2, "prefetch"

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->c:Ljava/lang/Object;

    const-string v2, "caller context"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->d:Lcom/facebook/imagepipeline/request/ImageRequest;

    const-string v2, "image request"

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->e:Lcom/facebook/imagepipeline/image/f;

    const-string v2, "image info"

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget v1, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->o:I

    const-string v2, "on-screen width"

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget v1, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->p:I

    const-string v2, "on-screen height"

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget v1, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->q:I

    const-string v2, "visibility state"

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->t:Ljava/lang/String;

    const-string v2, "component tag"

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/facebook/common/internal/g$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->i:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->h:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->g:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->f:J

    return-wide v0
.end method

.method public i()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/b;->m()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/b;->n()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/b;->m()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/b;->n()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public j()Lcom/facebook/imagepipeline/image/f;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->e:Lcom/facebook/imagepipeline/image/f;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->m:I

    return v0
.end method

.method public l()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->d:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object v0
.end method

.method public m()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->l:J

    return-wide v0
.end method

.method public n()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->k:J

    return-wide v0
.end method

.method public o()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/b;->g()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/b;->h()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/b;->g()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/b;->h()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public p()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->s:J

    return-wide v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->p:I

    return v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->o:I

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public t()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->r:J

    return-wide v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->q:I

    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/backends/pipeline/info/b;->n:Z

    return v0
.end method
