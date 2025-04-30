.class Lcom/join/mgps/activity/CommentDetailActivity$q;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->I0(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUid()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->H0(Lcom/join/mgps/activity/CommentDetailActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->D0(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->Q0(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/CommentCreatActivity_;->U0(Landroid/content/Context;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/CommentDetailActivity;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/CommentDetailActivity;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->j(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/CommentDetailActivity;->q:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/CommentDetailActivity;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 5
    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->I0(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getStars_score()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->e(F)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/CommentDetailActivity;->u:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->g(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->i(Z)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    iget v0, v0, Lcom/join/mgps/activity/CommentDetailActivity;->s:I

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->a(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 8
    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->I0(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->k(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 9
    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->I0(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_1
    return-void
.end method
