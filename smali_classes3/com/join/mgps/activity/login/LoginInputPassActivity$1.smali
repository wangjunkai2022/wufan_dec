.class Lcom/join/mgps/activity/login/LoginInputPassActivity$1;
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
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$1;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

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
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$1;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p2, Lcom/join/mgps/activity/login/LoginInputPassActivity;->codeLenth:I

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$1;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->access$000(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V

    return-void
.end method
