.class public Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;
.super Ljava/lang/Object;
.source "ForumTopicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumTopicAdapter$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;->a:Z

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;->b:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;->c:I

    .line 6
    iput p4, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;->d:I

    .line 7
    iput-boolean p5, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;->e:Z

    .line 8
    iput-object p6, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;->f:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;->g:Ljava/util/List;

    return-void
.end method
