.class Lcom/join/mgps/activity/GameCommentActivity$b;
.super Ljava/lang/Object;
.source "GameCommentActivity.java"

# interfaces
.implements Lcom/join/mgps/adapter/GameCommentAdapter$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameCommentActivity;->afterview()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->K:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b(Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getComment_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameCommentActivity;->F0(Lcom/join/mgps/activity/GameCommentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/join/mgps/activity/GameCommentActivity;->J:I

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->G0(Lcom/join/mgps/activity/GameCommentActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public c(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameCommentActivity;->F0(Lcom/join/mgps/activity/GameCommentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/join/mgps/activity/GameCommentActivity;->J:I

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->G0(Lcom/join/mgps/activity/GameCommentActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
