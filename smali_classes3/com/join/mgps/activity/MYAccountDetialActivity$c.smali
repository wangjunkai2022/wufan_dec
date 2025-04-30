.class Lcom/join/mgps/activity/MYAccountDetialActivity$c;
.super Ljava/lang/Object;
.source "MYAccountDetialActivity.java"

# interfaces
.implements Lcom/join/mgps/dialog/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MYAccountDetialActivity;->L0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/activity/MYAccountDetialActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MYAccountDetialActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$c;->b:Lcom/join/mgps/activity/MYAccountDetialActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ClickCancleButn(Lcom/join/mgps/dialog/b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public ClickOKButn(Lcom/join/mgps/dialog/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$c;->b:Lcom/join/mgps/activity/MYAccountDetialActivity;

    iget-boolean v1, v0, Lcom/join/mgps/activity/MYAccountDetialActivity;->A:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->F0(Lcom/join/mgps/activity/MYAccountDetialActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;->V0(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$l;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$c;->b:Lcom/join/mgps/activity/MYAccountDetialActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$l;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$c;->b:Lcom/join/mgps/activity/MYAccountDetialActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->F0(Lcom/join/mgps/activity/MYAccountDetialActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$c;->a:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$c;->b:Lcom/join/mgps/activity/MYAccountDetialActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
