.class public Lcom/join/mgps/adapter/GameTopicAdapter$g$c;
.super Ljava/lang/Object;
.source "GameTopicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/GameTopicAdapter$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$c;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$c;->b:Ljava/util/List;

    .line 4
    iput p3, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$c;->c:I

    return-void
.end method
