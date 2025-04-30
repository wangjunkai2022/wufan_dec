.class Lcom/join/mgps/activity/login/LoginInputPassActivity$2;
.super Ljava/lang/Object;
.source "LoginInputPassActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginInputPassActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, v0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passLenth:I

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->access$000(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V

    if-nez p2, :cond_0

    if-ne p3, p4, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    iget-object p2, p1, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    iget p1, p1, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passLenth:I

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method
