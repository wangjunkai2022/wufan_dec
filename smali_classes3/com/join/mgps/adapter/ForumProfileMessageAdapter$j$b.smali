.class public Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;
.super Ljava/lang/Object;
.source "ForumProfileMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Z

.field public f:I

.field public g:Z

.field public h:Z

.field public i:I

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;JZIZZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 2
    iput-boolean v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->a:Z

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->b:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->c:Ljava/lang/String;

    move-wide v1, p4

    .line 5
    iput-wide v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->d:J

    move v1, p6

    .line 6
    iput-boolean v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->e:Z

    move v1, p7

    .line 7
    iput v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->f:I

    move/from16 v1, p17

    .line 8
    iput v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->l:I

    move v1, p8

    .line 9
    iput-boolean v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->g:Z

    move v1, p9

    .line 10
    iput-boolean v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->h:Z

    move v1, p10

    .line 11
    iput v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->i:I

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->j:Ljava/lang/String;

    move v1, p12

    .line 13
    iput v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->k:I

    move/from16 v1, p13

    .line 14
    iput v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->m:I

    move/from16 v1, p14

    .line 15
    iput v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->n:I

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->o:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->p:Ljava/lang/String;

    return-void
.end method
