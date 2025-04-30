.class Lcom/join/mgps/activity/MyAccountForgetPassActivity$a;
.super Ljava/lang/Object;
.source "MyAccountForgetPassActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyAccountForgetPassActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MyAccountForgetPassActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyAccountForgetPassActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity$a;->a:Lcom/join/mgps/activity/MyAccountForgetPassActivity;

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

    const/16 p2, 0xb

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity$a;->a:Lcom/join/mgps/activity/MyAccountForgetPassActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->g:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity$a;->a:Lcom/join/mgps/activity/MyAccountForgetPassActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->g:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method
