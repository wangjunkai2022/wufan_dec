.class Lcom/join/mgps/activity/GameInformationCommentActivity$b;
.super Ljava/lang/Object;
.source "GameInformationCommentActivity.java"

# interfaces
.implements Lcom/join/mgps/adapter/InformationAdapter$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationCommentActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameInformationCommentActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationCommentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->E:Landroid/os/Handler;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/GameInformationCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->x:Lcom/join/mgps/dto/InformationCommentBean;

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/join/mgps/dto/InformationCommentBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/InformationCommentBean;-><init>()V

    iput-object v1, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->x:Lcom/join/mgps/dto/InformationCommentBean;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->x:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getComment_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/InformationCommentBean;->setComment_id(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->x:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/InformationCommentBean;->setUser_id(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->x:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/InformationCommentBean;->setUser_name(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/GameInformationCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    iput-object p1, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->x:Lcom/join/mgps/dto/InformationCommentBean;

    return-void
.end method
