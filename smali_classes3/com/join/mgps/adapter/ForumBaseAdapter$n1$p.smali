.class public Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;
.super Ljava/lang/Object;
.source "ForumBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter$n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/String;

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
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
            "I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->a:Z

    .line 4
    iput-boolean p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->b:Z

    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->c:Z

    .line 6
    iput-object p4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->d:Ljava/lang/String;

    .line 7
    iput p5, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->e:I

    .line 8
    iput p6, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->f:I

    .line 9
    iput-boolean p7, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->g:Z

    .line 10
    iput-object p8, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->h:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->i:Ljava/util/List;

    .line 12
    iput-object p10, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->j:Ljava/util/List;

    .line 13
    iput-object p11, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->k:Ljava/lang/String;

    .line 14
    iput p12, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->l:I

    return-void
.end method
