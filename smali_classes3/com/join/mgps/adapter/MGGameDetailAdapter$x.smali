.class Lcom/join/mgps/adapter/MGGameDetailAdapter$x;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;->o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/MGGameDetailAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSelf_comment()Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "0"

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/CommentCreatActivity_;->U0(Landroid/content/Context;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 6
    invoke-static {v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->j(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 7
    invoke-static {v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->g(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 9
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_switch()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->a(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSelf_comment()Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    move-result-object p1

    .line 12
    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/activity/CommentCreatActivity_;->U0(Landroid/content/Context;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->j(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->e(F)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 15
    invoke-static {v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->a(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 16
    invoke-static {v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->g(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_0
    return-void

    .line 18
    :cond_3
    :goto_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goChangeNickname(Landroid/content/Context;)V

    return-void
.end method
