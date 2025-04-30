.class Lcom/join/mgps/activity/MGMainActivity$g;
.super Ljava/lang/Object;
.source "MGMainActivity.java"

# interfaces
.implements Lw2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->onMygameSelected()V
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
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$g;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->b:Z

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$g;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-boolean v0, p1, Lcom/join/mgps/activity/MGMainActivity;->hasPermiss:Z

    if-nez v0, :cond_8

    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lcom/join/mgps/activity/MGMainActivity;->hasPermiss:Z

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$g;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-boolean v0, p1, Lcom/join/mgps/activity/MGMainActivity;->hasPermiss:Z

    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->startBackups(Z)V

    goto/16 :goto_4

    .line 6
    :cond_1
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->c:Z

    if-eqz v0, :cond_2

    goto :goto_4

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$g;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v2, v0, Lcom/join/mgps/activity/MGMainActivity;->dialogU:Landroid/app/Dialog;

    if-nez v2, :cond_3

    .line 8
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12000c

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Lcom/join/mgps/activity/MGMainActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 10
    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$g;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 12
    iget-object v0, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$g;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGMainActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v0, "\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_3

    .line 14
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$g;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGMainActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v0, "\u9700\u8981\u6253\u5f00\u8bfb\u5199\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 15
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$g;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGMainActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$g$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity$g$a;-><init>(Lcom/join/mgps/activity/MGMainActivity$g;)V

    const-string v1, "\u53bb\u6253\u5f00"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$g;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/MGMainActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p1, Lcom/join/mgps/activity/MGMainActivity;->dialogU:Landroid/app/Dialog;

    :cond_8
    :goto_4
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

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity$g;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    return-void
.end method
