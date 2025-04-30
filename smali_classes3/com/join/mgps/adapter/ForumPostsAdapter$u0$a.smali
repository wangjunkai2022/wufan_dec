.class public Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter$u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Z

.field public h:I

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:Z

.field public r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZIILjava/lang/String;Ljava/lang/String;JZIZZIZZZIIZLjava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 3
    iput-boolean v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->a:Z

    move v1, p2

    .line 4
    iput v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->b:I

    move v1, p3

    .line 5
    iput v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->c:I

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->d:Ljava/lang/String;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->e:Ljava/lang/String;

    move-wide v1, p6

    .line 8
    iput-wide v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->f:J

    move v1, p8

    .line 9
    iput-boolean v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->g:Z

    move v1, p9

    .line 10
    iput v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->h:I

    move v1, p10

    .line 11
    iput-boolean v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->i:Z

    move v1, p11

    .line 12
    iput-boolean v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->j:Z

    move v1, p12

    .line 13
    iput v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->k:I

    move/from16 v1, p13

    .line 14
    iput-boolean v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->l:Z

    move/from16 v1, p14

    .line 15
    iput-boolean v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->m:Z

    move/from16 v1, p15

    .line 16
    iput-boolean v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->n:Z

    move/from16 v1, p16

    .line 17
    iput v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->o:I

    move/from16 v1, p17

    .line 18
    iput v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->p:I

    move/from16 v1, p18

    .line 19
    iput-boolean v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->q:Z

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->r:Ljava/lang/String;

    return-void
.end method
