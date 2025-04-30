.class Lcom/join/mgps/activity/MYAccountReginFinishActivity$a$a;
.super Ljava/lang/Object;
.source "MYAccountReginFinishActivity.java"

# interfaces
.implements Lw2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/g<",
        "Lcom/tbruyelle/rxpermissions2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a$a;->a:Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a$a;->a:Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;

    iget-object v0, v0, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;->a:Lcom/join/mgps/activity/MYAccountReginFinishActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->E0(Lcom/join/mgps/activity/MYAccountReginFinishActivity;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/join/android/app/component/album/MyIconActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a$a;->a:Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;

    iget-object v0, v0, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;->a:Lcom/join/mgps/activity/MYAccountReginFinishActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->E0(Lcom/join/mgps/activity/MYAccountReginFinishActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean p1, p1, Lcom/tbruyelle/rxpermissions2/b;->c:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a$a;->a:Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;

    iget-object p1, p1, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;->a:Lcom/join/mgps/activity/MYAccountReginFinishActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->E0(Lcom/join/mgps/activity/MYAccountReginFinishActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u9700\u8981\u6388\u6743\u5b58\u50a8\u6743\u9650"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/tbruyelle/rxpermissions2/b;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a$a;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    return-void
.end method
