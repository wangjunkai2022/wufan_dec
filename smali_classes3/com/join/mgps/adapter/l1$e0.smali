.class Lcom/join/mgps/adapter/l1$e0;
.super Ljava/lang/Object;
.source "GameDetialModleFourAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/l1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/l1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

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

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSelf_comment()Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    move-result-object p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/CommentCreatActivity_;->U0(Landroid/content/Context;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    .line 6
    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->j(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    .line 7
    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    .line 8
    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIs_started()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->g(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    .line 9
    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_switch()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->a(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    .line 10
    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSelf_comment()Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/activity/CommentCreatActivity_;->U0(Landroid/content/Context;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {v1}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {v1}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->j(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    .line 13
    invoke-static {v1}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->e(F)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    .line 15
    invoke-static {v1}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_switch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->a(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    .line 16
    invoke-static {v1}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {v1}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIs_started()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->g(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

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

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$e0;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goChangeNickname(Landroid/content/Context;)V

    return-void
.end method
