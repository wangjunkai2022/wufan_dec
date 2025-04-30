.class public Lcom/join/mgps/va/activity/PermissionRequestActivity;
.super Landroid/app/Activity;
.source "PermissionRequestActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field public static final f:I = 0x3e3

.field public static final g:Ljava/lang/String; = "extra.permission"

.field public static final h:Ljava/lang/String; = "extra.app_name"

.field public static final i:Ljava/lang/String; = "extra.user_id"

.field public static final j:Ljava/lang/String; = "extra.package_name"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field d:Landroid/app/Dialog;

.field e:Landroidx/appcompat/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/va/activity/PermissionRequestActivity;->e:Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public static a([I)Z
    .locals 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static b(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/va/activity/PermissionRequestActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra.permission"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra.app_name"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra.package_name"

    .line 4
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra.user_id"

    .line 5
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra.permission"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra.app_name"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/va/activity/PermissionRequestActivity;->b:Ljava/lang/String;

    const-string v1, "extra.package_name"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/va/activity/PermissionRequestActivity;->c:Ljava/lang/String;

    const-string v1, "extra.user_id"

    const/4 v2, -0x1

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/va/activity/PermissionRequestActivity;->a:I

    const/16 p1, 0x3e3

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-static {p3}, Lcom/join/mgps/va/activity/PermissionRequestActivity;->a([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/va/activity/PermissionRequestActivity;->c:Ljava/lang/String;

    const-string p3, "pkg"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget p2, p0, Lcom/join/mgps/va/activity/PermissionRequestActivity;->a:I

    const-string p3, "user_id"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 6
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_5

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/va/activity/PermissionRequestActivity;->d:Landroid/app/Dialog;

    if-nez p1, :cond_1

    .line 9
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    const p3, 0x7f12000c

    invoke-direct {p1, p0, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/join/mgps/va/activity/PermissionRequestActivity;->e:Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/va/activity/PermissionRequestActivity;->e:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string p3, "\u63d0\u793a"

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 12
    array-length p1, p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge p3, p1, :cond_5

    aget-object v1, p2, p3

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 15
    iget-object p1, p0, Lcom/join/mgps/va/activity/PermissionRequestActivity;->e:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string p2, "\u9700\u8981\u6253\u5f00\u8bfb\u5199\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_4

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/va/activity/PermissionRequestActivity;->e:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string p2, "\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 17
    :goto_4
    iget-object p1, p0, Lcom/join/mgps/va/activity/PermissionRequestActivity;->e:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p2, Lcom/join/mgps/va/activity/PermissionRequestActivity$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/va/activity/PermissionRequestActivity$a;-><init>(Lcom/join/mgps/va/activity/PermissionRequestActivity;)V

    const-string p3, "\u53bb\u6253\u5f00"

    invoke-virtual {p1, p3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 18
    iget-object p1, p0, Lcom/join/mgps/va/activity/PermissionRequestActivity;->e:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/va/activity/PermissionRequestActivity;->d:Landroid/app/Dialog;

    :goto_5
    return-void
.end method
