.class public Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter$u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

.field public c:I

.field public d:Z

.field public e:Z

.field public f:I

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->a:I

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 4
    iput p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->c:I

    .line 5
    iput-boolean p4, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->d:Z

    .line 6
    iput-boolean p5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->e:Z

    return-void
.end method
