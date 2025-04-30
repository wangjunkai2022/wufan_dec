.class Lcom/join/mgps/activity/z$n;
.super Ljava/lang/Object;
.source "GameDetialModleFourActivity.java"

# interfaces
.implements Lcom/join/mgps/adapter/l1$p1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/z;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/z;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-static {v1}, Lcom/join/mgps/activity/z;->S(Lcom/join/mgps/activity/z;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/z;->z0(Lcom/join/mgps/dto/InformationCommentBean;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dto/InformationCommentBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/InformationCommentBean;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/InformationCommentBean;->setUser_name(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/InformationCommentBean;->setComment_id(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/InformationCommentBean;->setUser_id(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-static {p1}, Lcom/join/mgps/activity/z;->R(Lcom/join/mgps/activity/z;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-static {p1}, Lcom/join/mgps/activity/z;->S(Lcom/join/mgps/activity/z;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/GameCommentActivity_;->s1(Landroid/content/Context;)Lcom/join/mgps/activity/GameCommentActivity_$u;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-static {v1}, Lcom/join/mgps/activity/z;->R(Lcom/join/mgps/activity/z;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/GameCommentActivity_$u;->a(Ljava/lang/String;)Lcom/join/mgps/activity/GameCommentActivity_$u;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/GameCommentActivity_$u;->d(Z)Lcom/join/mgps/activity/GameCommentActivity_$u;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameCommentActivity_$u;->b(Lcom/join/mgps/dto/InformationCommentBean;)Lcom/join/mgps/activity/GameCommentActivity_$u;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method

.method public c(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-static {v0}, Lcom/join/mgps/activity/z;->R(Lcom/join/mgps/activity/z;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-static {v0}, Lcom/join/mgps/activity/z;->S(Lcom/join/mgps/activity/z;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/activity/GameCommentActivity_;->s1(Landroid/content/Context;)Lcom/join/mgps/activity/GameCommentActivity_$u;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-static {v1}, Lcom/join/mgps/activity/z;->R(Lcom/join/mgps/activity/z;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameCommentActivity_$u;->a(Ljava/lang/String;)Lcom/join/mgps/activity/GameCommentActivity_$u;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameCommentActivity_$u;->d(Z)Lcom/join/mgps/activity/GameCommentActivity_$u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GameCommentActivity_$u;->b(Lcom/join/mgps/dto/InformationCommentBean;)Lcom/join/mgps/activity/GameCommentActivity_$u;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method

.method public d(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/activity/z;->v0(Lcom/join/mgps/dto/CommentBaseBean;II)V

    return-void
.end method

.method public e(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/activity/z;->x0(Lcom/join/mgps/dto/CommentBaseBean;II)V

    return-void
.end method

.method public f(Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/z;->w0(Lcom/join/mgps/dto/CommentBaseBean;)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-virtual {v0}, Lcom/join/mgps/activity/z;->h0()V

    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-static {v1}, Lcom/join/mgps/activity/z;->R(Lcom/join/mgps/activity/z;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getForum_id()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-static {v1}, Lcom/join/mgps/activity/z;->S(Lcom/join/mgps/activity/z;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/join/mgps/Util/i0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-static {v0}, Lcom/join/mgps/activity/z;->R(Lcom/join/mgps/activity/z;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-static {v1}, Lcom/join/mgps/activity/z;->S(Lcom/join/mgps/activity/z;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/z;->changeGameFollow(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public l(ZLcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-static {v1}, Lcom/join/mgps/activity/z;->S(Lcom/join/mgps/activity/z;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-virtual {p2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/activity/z;->T(Lcom/join/mgps/activity/z;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/z;->m0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/z$n;->a:Lcom/join/mgps/activity/z;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/z;->O0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    :cond_1
    :goto_0
    return-void
.end method
