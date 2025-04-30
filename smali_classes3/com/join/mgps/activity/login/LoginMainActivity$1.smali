.class Lcom/join/mgps/activity/login/LoginMainActivity$1;
.super Ljava/lang/Object;
.source "LoginMainActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginMainActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$1;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$1;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginMainActivity;->nextStep:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$1;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginMainActivity;->clear:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$1;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginMainActivity;->clear:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$1;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginMainActivity;->nextStep:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method
