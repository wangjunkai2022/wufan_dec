.class Lcom/join/mgps/adapter/MGGameDetailAdapter$u;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;->n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$u;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$u;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/CommentAllListActivity_;->f1(Landroid/content/Context;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$u;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$u;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 2
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->i(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$u;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 3
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->g(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$u;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 5
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_score()Lcom/join/mgps/dto/GameScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getSgc_switch()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->j(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$u;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 6
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_switch()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->a(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    const-string v0, "0"

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
