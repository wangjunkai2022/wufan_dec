.class Lcom/join/mgps/activity/CommentDetailActivity$b;
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
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/CommentDetailActivity;->m:Lcom/join/android/app/common/view/ClearEditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/CommentDetailActivity;->I0(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUser_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/CommentDetailActivity;->m:Lcom/join/android/app/common/view/ClearEditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/CommentDetailActivity;->m:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/CommentDetailActivity;->m:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/CommentDetailActivity;->m:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/CommentDetailActivity;->m:Lcom/join/android/app/common/view/ClearEditText;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object v1, p1, Lcom/join/mgps/activity/CommentDetailActivity;->o:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->Y0(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->a1(Lcom/join/mgps/activity/CommentDetailActivity;I)I

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->I0(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUser_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->W0(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->I0(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->U0(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->N0(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
