.class Lcom/join/mgps/activity/MGChooseIconActivity$a$a;
.super Ljava/lang/Object;
.source "MGChooseIconActivity.java"

# interfaces
.implements Lw2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGChooseIconActivity$a;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
.field final synthetic a:Lcom/join/mgps/activity/MGChooseIconActivity$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGChooseIconActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;->a:Lcom/join/mgps/activity/MGChooseIconActivity$a;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;->a:Lcom/join/mgps/activity/MGChooseIconActivity$a;

    iget-object v0, v0, Lcom/join/mgps/activity/MGChooseIconActivity$a;->a:Lcom/join/mgps/activity/MGChooseIconActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGChooseIconActivity;->C0(Lcom/join/mgps/activity/MGChooseIconActivity;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/join/android/app/component/album/MyIconActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;->a:Lcom/join/mgps/activity/MGChooseIconActivity$a;

    iget-object v0, v0, Lcom/join/mgps/activity/MGChooseIconActivity$a;->a:Lcom/join/mgps/activity/MGChooseIconActivity;

    iget v0, v0, Lcom/join/mgps/activity/MGChooseIconActivity;->n:I

    const-string v1, "from"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;->a:Lcom/join/mgps/activity/MGChooseIconActivity$a;

    iget-object v0, v0, Lcom/join/mgps/activity/MGChooseIconActivity$a;->a:Lcom/join/mgps/activity/MGChooseIconActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGChooseIconActivity;->C0(Lcom/join/mgps/activity/MGChooseIconActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;->a:Lcom/join/mgps/activity/MGChooseIconActivity$a;

    iget-object v0, v0, Lcom/join/mgps/activity/MGChooseIconActivity$a;->a:Lcom/join/mgps/activity/MGChooseIconActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGChooseIconActivity;->C0(Lcom/join/mgps/activity/MGChooseIconActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;->a:Lcom/join/mgps/activity/MGChooseIconActivity$a;

    iget-object v1, v1, Lcom/join/mgps/activity/MGChooseIconActivity$a;->a:Lcom/join/mgps/activity/MGChooseIconActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/MGChooseIconActivity;->C0(Lcom/join/mgps/activity/MGChooseIconActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/z;->W(Landroid/content/Context;Lcom/tbruyelle/rxpermissions2/b;)V

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

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    return-void
.end method
