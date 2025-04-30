.class public Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;
.super Ljava/lang/Object;
.source "ForumProfileFavoritesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->b:Z

    .line 15
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->c:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->d:I

    .line 17
    iput p4, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->e:I

    .line 18
    iput-boolean p5, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->f:Z

    .line 19
    iput-object p6, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->g:Ljava/lang/String;

    .line 20
    iput-object p7, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->h:Ljava/util/List;

    .line 21
    iput-object p8, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->a:Z

    .line 4
    iput-boolean p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->b:Z

    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->c:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->d:I

    .line 7
    iput p5, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->e:I

    .line 8
    iput-boolean p6, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->f:Z

    .line 9
    iput-object p7, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->g:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->h:Ljava/util/List;

    .line 11
    iput-object p9, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->i:Ljava/util/List;

    .line 12
    iput-object p10, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->j:Ljava/lang/String;

    return-void
.end method
