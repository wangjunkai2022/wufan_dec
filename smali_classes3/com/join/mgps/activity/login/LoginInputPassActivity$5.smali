.class Lcom/join/mgps/activity/login/LoginInputPassActivity$5;
.super Ljava/lang/Object;
.source "LoginInputPassActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    const/16 p2, 0x90

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    const/16 p2, 0x81

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    return-void
.end method
