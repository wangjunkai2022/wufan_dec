.class public Lorg/greenrobot/eventbus/util/ErrorDialogManager$a;
.super Landroidx/fragment/app/Fragment;
.source "ErrorDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/util/ErrorDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field protected b:Landroid/os/Bundle;

.field private c:Lorg/greenrobot/eventbus/c;

.field private d:Z

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static M(Landroid/app/Activity;Ljava/lang/Object;ZLandroid/os/Bundle;)V
    .locals 3

    .line 1
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "de.greenrobot.eventbus.error_dialog_manager"

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/eventbus/util/ErrorDialogManager$a;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lorg/greenrobot/eventbus/util/ErrorDialogManager$a;

    invoke-direct {v1}, Lorg/greenrobot/eventbus/util/ErrorDialogManager$a;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 6
    :cond_0
    iput-boolean p2, v1, Lorg/greenrobot/eventbus/util/ErrorDialogManager$a;->a:Z

    .line 7
    iput-object p3, v1, Lorg/greenrobot/eventbus/util/ErrorDialogManager$a;->b:Landroid/os/Bundle;

    .line 8
    iput-object p1, v1, Lorg/greenrobot/eventbus/util/ErrorDialogManager$a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public N(Lorg/greenrobot/eventbus/util/f;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$a;->e:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->a(Ljava/lang/Object;Lorg/greenrobot/eventbus/util/f;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->f(Lorg/greenrobot/eventbus/util/f;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    const-string v1, "de.greenrobot.eventbus.error_dialog"

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/DialogFragment;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 7
    :cond_1
    sget-object v2, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->a:Lorg/greenrobot/eventbus/util/c;

    iget-boolean v3, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$a;->a:Z

    iget-object v4, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$a;->b:Landroid/os/Bundle;

    .line 8
    invoke-virtual {v2, p1, v3, v4}, Lorg/greenrobot/eventbus/util/c;->d(Lorg/greenrobot/eventbus/util/f;ZLandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/DialogFragment;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->a:Lorg/greenrobot/eventbus/util/c;

    iget-object p1, p1, Lorg/greenrobot/eventbus/util/c;->a:Lorg/greenrobot/eventbus/util/b;

    invoke-virtual {p1}, Lorg/greenrobot/eventbus/util/b;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    iput-object p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$a;->c:Lorg/greenrobot/eventbus/c;

    .line 3
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$a;->d:Z

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$a;->c:Lorg/greenrobot/eventbus/c;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$a;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$a;->d:Z

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->a:Lorg/greenrobot/eventbus/util/c;

    iget-object v0, v0, Lorg/greenrobot/eventbus/util/c;->a:Lorg/greenrobot/eventbus/util/b;

    invoke-virtual {v0}, Lorg/greenrobot/eventbus/util/b;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$a;->c:Lorg/greenrobot/eventbus/c;

    .line 5
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
