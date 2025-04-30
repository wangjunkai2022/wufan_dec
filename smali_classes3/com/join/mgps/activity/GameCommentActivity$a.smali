.class Lcom/join/mgps/activity/GameCommentActivity$a;
.super Landroid/os/Handler;
.source "GameCommentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameCommentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameCommentActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameCommentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity$a;->a:Lcom/join/mgps/activity/GameCommentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "input_method"

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity$a;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity$a;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity$a;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity$a;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    .line 6
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$a;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/dto/CommitDataBean;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommitDataBean;->isHas_praised()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$a;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$a;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$a;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$a;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    .line 14
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity$a;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$a;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommitDataBean;->getUser_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity$a;->a:Lcom/join/mgps/activity/GameCommentActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/GameCommentActivity;->E0(Lcom/join/mgps/activity/GameCommentActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/dto/InformationCommentBean;

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$a;->a:Lcom/join/mgps/activity/GameCommentActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->U0(Lcom/join/mgps/dto/InformationCommentBean;)V

    :cond_3
    :goto_0
    return-void
.end method
