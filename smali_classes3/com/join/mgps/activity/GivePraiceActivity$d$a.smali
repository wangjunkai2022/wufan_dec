.class Lcom/join/mgps/activity/GivePraiceActivity$d$a;
.super Ljava/lang/Object;
.source "GivePraiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GivePraiceActivity$d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/GivePraiceActivity$d;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GivePraiceActivity$d;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->b:Lcom/join/mgps/activity/GivePraiceActivity$d;

    iput p2, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->b:Lcom/join/mgps/activity/GivePraiceActivity$d;

    iget-object p1, p1, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget v0, p1, Lcom/join/mgps/activity/GivePraiceActivity;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance p1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->b:Lcom/join/mgps/activity/GivePraiceActivity$d;

    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->o:Ljava/util/List;

    iget v1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumProfileMessageBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getPid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->b:Lcom/join/mgps/activity/GivePraiceActivity$d;

    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->g:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/join/mgps/Util/i0;->w0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Lcom/join/mgps/dto/ExtBean;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/activity/GivePraiceActivity;->p:Ljava/util/List;

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/activity/GivePraiceActivity;->P0()V

    return-void

    .line 7
    :cond_1
    iget-object p1, p1, Lcom/join/mgps/activity/GivePraiceActivity;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity_;->k2(Landroid/content/Context;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->b:Lcom/join/mgps/activity/GivePraiceActivity$d;

    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->p:Ljava/util/List;

    iget v2, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->b:Lcom/join/mgps/activity/GivePraiceActivity$d;

    iget-object v2, v2, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GivePraiceActivity;->p:Ljava/util/List;

    iget v3, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->a:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->getOriginal_text_id()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->a(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->e(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->h(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->g(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->b:Lcom/join/mgps/activity/GivePraiceActivity$d;

    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->p:Ljava/util/List;

    iget v1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_0
    return-void
.end method
