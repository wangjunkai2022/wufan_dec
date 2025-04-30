.class Lcom/BaseAppCompatActivity$l;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Lw2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseAppCompatActivity;->getUNzipPermiss(Ljava/lang/String;Landroid/content/Context;)V
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/BaseAppCompatActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseAppCompatActivity$l;->c:Lcom/BaseAppCompatActivity;

    iput-object p2, p0, Lcom/BaseAppCompatActivity$l;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/BaseAppCompatActivity$l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->b:Z

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Lcom/BaseAppCompatActivity$l;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_8

    .line 3
    iget-object p1, p0, Lcom/BaseAppCompatActivity$l;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v2, Lcom/papa/sim/statistic/Event;->Unzip_permissionsuccess:Lcom/papa/sim/statistic/Event;

    new-instance v3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, v2, v3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v2, p0, Lcom/BaseAppCompatActivity$l;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->MGAME:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 6
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    iget-object v2, p0, Lcom/BaseAppCompatActivity$l;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, v1}, Lcom/join/android/app/common/servcie/a;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    goto/16 :goto_4

    .line 7
    :cond_1
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v1

    iget-object v2, p0, Lcom/BaseAppCompatActivity$l;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, v0}, Lcom/join/android/app/common/servcie/a;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    goto/16 :goto_4

    .line 8
    :cond_2
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->c:Z

    if-eqz v0, :cond_3

    .line 9
    iget-object p1, p0, Lcom/BaseAppCompatActivity$l;->c:Lcom/BaseAppCompatActivity;

    iget-object v0, p0, Lcom/BaseAppCompatActivity$l;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/BaseAppCompatActivity;->access$600(Lcom/BaseAppCompatActivity;Ljava/lang/String;)V

    goto :goto_4

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/BaseAppCompatActivity$l;->c:Lcom/BaseAppCompatActivity;

    iget-object v2, p0, Lcom/BaseAppCompatActivity$l;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/BaseAppCompatActivity;->access$600(Lcom/BaseAppCompatActivity;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/BaseAppCompatActivity$l;->c:Lcom/BaseAppCompatActivity;

    iget-object v2, v0, Lcom/BaseAppCompatActivity;->dialogU:Landroid/app/Dialog;

    if-nez v2, :cond_4

    .line 12
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    const v3, 0x7f12000c

    invoke-direct {v2, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 14
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/BaseAppCompatActivity$l;->c:Lcom/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 15
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

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/BaseAppCompatActivity$l;->c:Lcom/BaseAppCompatActivity;

    iget-object p1, p1, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo v0, "\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_3

    .line 17
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/BaseAppCompatActivity$l;->c:Lcom/BaseAppCompatActivity;

    iget-object p1, p1, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo v0, "\u9700\u8981\u6253\u5f00\u8bfb\u5199\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 18
    :goto_3
    iget-object p1, p0, Lcom/BaseAppCompatActivity$l;->c:Lcom/BaseAppCompatActivity;

    iget-object p1, p1, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/BaseAppCompatActivity$l$a;

    invoke-direct {v0, p0}, Lcom/BaseAppCompatActivity$l$a;-><init>(Lcom/BaseAppCompatActivity$l;)V

    const-string/jumbo v1, "\u53bb\u6253\u5f00"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 19
    iget-object p1, p0, Lcom/BaseAppCompatActivity$l;->c:Lcom/BaseAppCompatActivity;

    iget-object v0, p1, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p1, Lcom/BaseAppCompatActivity;->dialogU:Landroid/app/Dialog;

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

    invoke-virtual {p0, p1}, Lcom/BaseAppCompatActivity$l;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    return-void
.end method
