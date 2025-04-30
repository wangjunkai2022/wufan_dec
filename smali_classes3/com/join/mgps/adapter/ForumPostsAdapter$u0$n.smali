.class public Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter$u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;->a:Z

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;->b:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;->c:Z

    .line 6
    iput-object p4, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;->e:Ljava/util/List;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;->f:Ljava/util/List;

    .line 9
    iput p7, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;->g:I

    .line 10
    iput-object p8, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;->h:Ljava/lang/String;

    return-void
.end method
