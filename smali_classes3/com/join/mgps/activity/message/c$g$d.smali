.class Lcom/join/mgps/activity/message/c$g$d;
.super Ljava/lang/Object;
.source "MessagePriaceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/c$g;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

.field final synthetic b:Lcom/join/mgps/activity/message/c$g;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/c$g;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/c$g$d;->b:Lcom/join/mgps/activity/message/c$g;

    iput-object p2, p0, Lcom/join/mgps/activity/message/c$g$d;->a:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/message/c$g$d;->b:Lcom/join/mgps/activity/message/c$g;

    iget-object p1, p1, Lcom/join/mgps/activity/message/c$g;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity_;->k2(Landroid/content/Context;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/message/c$g$d;->a:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/message/c$g$d;->a:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getOriginal_text_id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->a(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->e(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->h(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->g(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/message/c$g$d;->a:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getComment_score_switch()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
