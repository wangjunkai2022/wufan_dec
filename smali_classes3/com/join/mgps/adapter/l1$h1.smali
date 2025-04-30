.class Lcom/join/mgps/adapter/l1$h1;
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
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$h1;->a:Lcom/join/mgps/adapter/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$h1;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/CommentAllListActivity_;->f1(Landroid/content/Context;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$h1;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$h1;->a:Lcom/join/mgps/adapter/l1;

    .line 2
    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->i(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$h1;->a:Lcom/join/mgps/adapter/l1;

    .line 3
    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$h1;->a:Lcom/join/mgps/adapter/l1;

    .line 4
    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_switch()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->a(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$h1;->a:Lcom/join/mgps/adapter/l1;

    .line 5
    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIs_started()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->g(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$h1;->a:Lcom/join/mgps/adapter/l1;

    .line 6
    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getSgc_switch()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->j(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$h1;->a:Lcom/join/mgps/adapter/l1;

    .line 7
    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
