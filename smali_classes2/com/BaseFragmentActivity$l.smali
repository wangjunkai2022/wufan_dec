.class Lcom/BaseFragmentActivity$l;
.super Ljava/lang/Object;
.source "BaseFragmentActivity.java"

# interfaces
.implements Lw2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseFragmentActivity;->getPermison(Lcom/BaseFragmentActivity$p;)V
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
.field final synthetic a:Lcom/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/BaseFragmentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseFragmentActivity$l;->a:Lcom/BaseFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3
    sget-object p1, Lcom/MApplication;->q:Lcom/MApplication;

    .line 4
    invoke-static {p1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/android/app/common/utils/j;->i()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/MApplication;->r:Ljava/lang/String;

    :try_start_0
    const-string v0, ""

    .line 5
    invoke-static {p1, v0}, Lcom/join/mgps/Util/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/MApplication;->r:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 7
    :cond_0
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->c:Z

    if-eqz v0, :cond_1

    goto :goto_3

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/BaseFragmentActivity$l;->a:Lcom/BaseFragmentActivity;

    iget-object v1, v0, Lcom/BaseFragmentActivity;->dialogU:Landroid/app/Dialog;

    if-nez v1, :cond_2

    .line 9
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f12000c

    invoke-direct {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 11
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/BaseFragmentActivity$l;->a:Lcom/BaseFragmentActivity;

    iget-object v0, v0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 12
    iget-object v0, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/BaseFragmentActivity$l;->a:Lcom/BaseFragmentActivity;

    iget-object p1, p1, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo v0, "\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_2

    .line 14
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/BaseFragmentActivity$l;->a:Lcom/BaseFragmentActivity;

    iget-object p1, p1, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo v0, "\u9700\u8981\u6253\u5f00\u8bfb\u5199\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 15
    :goto_2
    iget-object p1, p0, Lcom/BaseFragmentActivity$l;->a:Lcom/BaseFragmentActivity;

    iget-object p1, p1, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/BaseFragmentActivity$l$a;

    invoke-direct {v0, p0}, Lcom/BaseFragmentActivity$l$a;-><init>(Lcom/BaseFragmentActivity$l;)V

    const-string/jumbo v1, "\u53bb\u6253\u5f00"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 16
    iget-object p1, p0, Lcom/BaseFragmentActivity$l;->a:Lcom/BaseFragmentActivity;

    iget-object v0, p1, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p1, Lcom/BaseFragmentActivity;->dialogU:Landroid/app/Dialog;

    :cond_6
    :goto_3
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

    invoke-virtual {p0, p1}, Lcom/BaseFragmentActivity$l;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    return-void
.end method
