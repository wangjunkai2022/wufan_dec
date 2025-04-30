.class public Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;
.super Ljava/lang/Object;
.source "ForumProfileCommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;
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

.field public g:I

.field public h:Z

.field public i:Z

.field public j:I

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;JZIIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->a:Z

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->c:Ljava/lang/String;

    .line 6
    iput-wide p4, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->d:J

    .line 7
    iput-boolean p6, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->e:Z

    .line 8
    iput p7, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->f:I

    .line 9
    iput p12, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->g:I

    .line 10
    iput p8, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->j:I

    .line 11
    iput p9, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->k:I

    .line 12
    iput-object p10, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->l:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->m:Ljava/lang/String;

    return-void
.end method
