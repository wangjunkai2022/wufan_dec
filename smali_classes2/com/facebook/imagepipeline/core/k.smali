.class public Lcom/facebook/imagepipeline/core/k;
.super Ljava/lang/Object;
.source "ProducerFactory.java"


# static fields
.field private static final v:I = 0x5


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Landroid/content/res/Resources;

.field private c:Landroid/content/res/AssetManager;

.field private final d:Lcom/facebook/common/memory/a;

.field private final e:Lcom/facebook/imagepipeline/decoder/b;

.field private final f:Lcom/facebook/imagepipeline/decoder/d;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/facebook/imagepipeline/core/e;

.field private final k:Lcom/facebook/common/memory/g;

.field private final l:Lcom/facebook/imagepipeline/cache/e;

.field private final m:Lcom/facebook/imagepipeline/cache/e;

.field private final n:Lcom/facebook/imagepipeline/cache/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/facebook/imagepipeline/cache/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/facebook/imagepipeline/cache/f;

.field private final q:Lcom/facebook/imagepipeline/bitmaps/f;

.field private final r:I

.field private final s:I

.field private t:Z

.field private final u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/d;ZZZLcom/facebook/imagepipeline/core/e;Lcom/facebook/common/memory/g;Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/bitmaps/f;IIZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/common/memory/a;",
            "Lcom/facebook/imagepipeline/decoder/b;",
            "Lcom/facebook/imagepipeline/decoder/d;",
            "ZZZ",
            "Lcom/facebook/imagepipeline/core/e;",
            "Lcom/facebook/common/memory/g;",
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/e;",
            "Lcom/facebook/imagepipeline/cache/e;",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/bitmaps/f;",
            "IIZI)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/k;->a:Landroid/content/ContentResolver;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Landroid/content/res/Resources;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/k;->c:Landroid/content/res/AssetManager;

    move-object v1, p2

    .line 5
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/k;->d:Lcom/facebook/common/memory/a;

    move-object v1, p3

    .line 6
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/k;->e:Lcom/facebook/imagepipeline/decoder/b;

    move-object v1, p4

    .line 7
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/k;->f:Lcom/facebook/imagepipeline/decoder/d;

    move v1, p5

    .line 8
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/core/k;->g:Z

    move v1, p6

    .line 9
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/core/k;->h:Z

    move v1, p7

    .line 10
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/core/k;->i:Z

    move-object v1, p8

    .line 11
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/core/e;

    move-object v1, p9

    .line 12
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/k;->k:Lcom/facebook/common/memory/g;

    move-object v1, p10

    .line 13
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/k;->o:Lcom/facebook/imagepipeline/cache/p;

    move-object v1, p11

    .line 14
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/k;->n:Lcom/facebook/imagepipeline/cache/p;

    move-object v1, p12

    .line 15
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/k;->l:Lcom/facebook/imagepipeline/cache/e;

    move-object v1, p13

    .line 16
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/k;->m:Lcom/facebook/imagepipeline/cache/e;

    move-object/from16 v1, p14

    .line 17
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/k;->p:Lcom/facebook/imagepipeline/cache/f;

    move-object/from16 v1, p15

    .line 18
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/k;->q:Lcom/facebook/imagepipeline/bitmaps/f;

    move/from16 v1, p16

    .line 19
    iput v1, v0, Lcom/facebook/imagepipeline/core/k;->r:I

    move/from16 v1, p17

    .line 20
    iput v1, v0, Lcom/facebook/imagepipeline/core/k;->s:I

    move/from16 v1, p18

    .line 21
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/core/k;->t:Z

    move/from16 v1, p19

    .line 22
    iput v1, v0, Lcom/facebook/imagepipeline/core/k;->u:I

    return-void
.end method

.method public static B(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "TT;>;)",
            "Lcom/facebook/imagepipeline/producers/s0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/s0;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/producers/s0;-><init>(Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/a;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/producers/a;-><init>(Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public static g(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/j;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/j;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/j;-><init>(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public static v()Lcom/facebook/imagepipeline/producers/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/imagepipeline/producers/e0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/e0;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/producers/e0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public A(Lcom/facebook/imagepipeline/producers/i0;ZLcom/facebook/imagepipeline/transcoder/d;)Lcom/facebook/imagepipeline/producers/p0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;Z",
            "Lcom/facebook/imagepipeline/transcoder/d;",
            ")",
            "Lcom/facebook/imagepipeline/producers/p0;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/facebook/imagepipeline/producers/p0;

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/e;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->k:Lcom/facebook/common/memory/g;

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/p0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Lcom/facebook/imagepipeline/producers/i0;ZLcom/facebook/imagepipeline/transcoder/d;)V

    return-object v6
.end method

.method public C(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/v0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "TT;>;)",
            "Lcom/facebook/imagepipeline/producers/v0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/v0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, p1}, Lcom/facebook/imagepipeline/producers/v0;-><init>(ILjava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public D([Lcom/facebook/imagepipeline/producers/x0;)Lcom/facebook/imagepipeline/producers/w0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/imagepipeline/producers/x0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/w0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/w0;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/producers/w0;-><init>([Lcom/facebook/imagepipeline/producers/x0;)V

    return-object v0
.end method

.method public E(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/z0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/z0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/z0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->k:Lcom/facebook/common/memory/g;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/z0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public b(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/u0;)Lcom/facebook/imagepipeline/producers/t0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/u0;",
            ")",
            "Lcom/facebook/imagepipeline/producers/t0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/t0;

    invoke-direct {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/t0;-><init>(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/u0;)V

    return-object v0
.end method

.method public c(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/f;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/f;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->o:Lcom/facebook/imagepipeline/cache/p;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->p:Lcom/facebook/imagepipeline/cache/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/f;-><init>(Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public d(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/g;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/g;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->p:Lcom/facebook/imagepipeline/cache/f;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/g;-><init>(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public e(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/h;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->o:Lcom/facebook/imagepipeline/cache/p;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->p:Lcom/facebook/imagepipeline/cache/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/h;-><init>(Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public f(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/i;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/i;

    iget v1, p0, Lcom/facebook/imagepipeline/core/k;->r:I

    iget v2, p0, Lcom/facebook/imagepipeline/core/k;->s:I

    iget-boolean v3, p0, Lcom/facebook/imagepipeline/core/k;->t:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/i;-><init>(Lcom/facebook/imagepipeline/producers/i0;IIZ)V

    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/producers/k;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/k;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->k:Lcom/facebook/common/memory/g;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/k;-><init>(Lcom/facebook/common/memory/g;)V

    return-object v0
.end method

.method public i(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/l;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/l;"
        }
    .end annotation

    .line 1
    new-instance v10, Lcom/facebook/imagepipeline/producers/l;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->d:Lcom/facebook/common/memory/a;

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/e;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/k;->e:Lcom/facebook/imagepipeline/decoder/b;

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/k;->f:Lcom/facebook/imagepipeline/decoder/d;

    iget-boolean v5, p0, Lcom/facebook/imagepipeline/core/k;->g:Z

    iget-boolean v6, p0, Lcom/facebook/imagepipeline/core/k;->h:Z

    iget-boolean v7, p0, Lcom/facebook/imagepipeline/core/k;->i:Z

    iget v9, p0, Lcom/facebook/imagepipeline/core/k;->u:I

    move-object v0, v10

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/imagepipeline/producers/l;-><init>(Lcom/facebook/common/memory/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/d;ZZZLcom/facebook/imagepipeline/producers/i0;I)V

    return-object v10
.end method

.method public j(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/n;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/n;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->l:Lcom/facebook/imagepipeline/cache/e;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->m:Lcom/facebook/imagepipeline/cache/e;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/k;->p:Lcom/facebook/imagepipeline/cache/f;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/facebook/imagepipeline/producers/n;-><init>(Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public k(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/o;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/o;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->l:Lcom/facebook/imagepipeline/cache/e;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->m:Lcom/facebook/imagepipeline/cache/e;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/k;->p:Lcom/facebook/imagepipeline/cache/f;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/facebook/imagepipeline/producers/o;-><init>(Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public l(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/p;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/p;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->p:Lcom/facebook/imagepipeline/cache/f;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/p;-><init>(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public m(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/q;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/q;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->n:Lcom/facebook/imagepipeline/cache/p;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->p:Lcom/facebook/imagepipeline/cache/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/q;-><init>(Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public n()Lcom/facebook/imagepipeline/producers/t;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/t;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/k;->c:Landroid/content/res/AssetManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/t;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/res/AssetManager;)V

    return-object v0
.end method

.method public o()Lcom/facebook/imagepipeline/producers/u;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/u;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/k;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/u;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public p()Lcom/facebook/imagepipeline/producers/v;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/v;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/k;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/v;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public q()Lcom/facebook/imagepipeline/producers/w;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/w;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/k;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/w;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public r()Lcom/facebook/imagepipeline/producers/y;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/y;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->k:Lcom/facebook/common/memory/g;

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/y;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;)V

    return-object v0
.end method

.method public s()Lcom/facebook/imagepipeline/producers/z;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/z;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/k;->b:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/z;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public t()Lcom/facebook/imagepipeline/producers/a0;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/a0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/a0;-><init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public u(Lcom/facebook/imagepipeline/producers/d0;)Lcom/facebook/imagepipeline/producers/c0;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/c0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->k:Lcom/facebook/common/memory/g;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->d:Lcom/facebook/common/memory/a;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/c0;-><init>(Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/producers/d0;)V

    return-object v0
.end method

.method public w(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/f0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/f0;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/facebook/imagepipeline/producers/f0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->l:Lcom/facebook/imagepipeline/cache/e;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->p:Lcom/facebook/imagepipeline/cache/f;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/k;->k:Lcom/facebook/common/memory/g;

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/k;->d:Lcom/facebook/common/memory/a;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/f0;-><init>(Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v6
.end method

.method public x(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/g0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/g0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/g0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->o:Lcom/facebook/imagepipeline/cache/p;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->p:Lcom/facebook/imagepipeline/cache/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/g0;-><init>(Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public y(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/h0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/h0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/h0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->q:Lcom/facebook/imagepipeline/bitmaps/f;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/e;->d()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/producers/h0;-><init>(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/bitmaps/f;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public z()Lcom/facebook/imagepipeline/producers/n0;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/n0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/k;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/n0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V

    return-object v0
.end method
