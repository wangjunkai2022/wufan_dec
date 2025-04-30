.class Lcom/join/mgps/activity/ForumMyActivity$l;
.super Ljava/lang/Object;
.source "ForumMyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumMyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field private a:I

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroup;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/join/mgps/activity/ForumMyActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumMyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$l;->d:Lcom/join/mgps/activity/ForumMyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroup;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$l;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$l;->c:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$l;->b:Ljava/util/List;

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$l;->c:Ljava/util/List;

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumMyActivity$l;->a:I

    return-void
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumMyActivity$l;->a:I

    return v0
.end method
