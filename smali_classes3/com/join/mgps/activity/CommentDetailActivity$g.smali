.class Lcom/join/mgps/activity/CommentDetailActivity$g;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/t;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/join/mgps/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity;Lcom/join/mgps/customview/t;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->g:Lcom/join/mgps/activity/CommentDetailActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->a:Lcom/join/mgps/customview/t;

    iput-object p3, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->c:Ljava/lang/String;

    iput p5, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->d:I

    iput-object p6, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->g:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->D0(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->a:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->a:Lcom/join/mgps/customview/t;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->a:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->g:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/CommentDetailActivity;->m:Lcom/join/android/app/common/view/ClearEditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->g:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->Y0(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->g:Lcom/join/mgps/activity/CommentDetailActivity;

    iget v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->d:I

    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->a1(Lcom/join/mgps/activity/CommentDetailActivity;I)I

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->g:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->W0(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->g:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->U0(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->g:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->N0(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$g;->g:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->R0(Lcom/join/mgps/activity/CommentDetailActivity;)V

    :cond_1
    return-void
.end method
