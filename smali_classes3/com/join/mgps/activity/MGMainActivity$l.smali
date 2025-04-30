.class Lcom/join/mgps/activity/MGMainActivity$l;
.super Ljava/lang/Object;
.source "MGMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->sanLocalGameIv(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1300(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/l;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1300(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->access$1302(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/android/app/common/dialog/l;)Lcom/join/android/app/common/dialog/l;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1400(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/j;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    :try_start_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1400(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/j;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    :catch_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->access$1402(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/android/app/common/dialog/j;)Lcom/join/android/app/common/dialog/j;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l;->a:Lcom/join/mgps/activity/MGMainActivity;

    new-instance v0, Lcom/join/android/app/common/dialog/l;

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$l;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/MGMainActivity;->access$1500(Lcom/join/mgps/activity/MGMainActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/android/app/common/dialog/l;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->access$1302(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/android/app/common/dialog/l;)Lcom/join/android/app/common/dialog/l;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1300(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1300(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/l;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$l$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity$l$a;-><init>(Lcom/join/mgps/activity/MGMainActivity$l;)V

    invoke-virtual {p1, v0}, Lcom/join/android/app/common/dialog/l;->e(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1700(Lcom/join/mgps/activity/MGMainActivity;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1300(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/l;

    move-result-object p1

    const-string v0, "\u8bc6\u522b\u4e2d..."

    invoke-virtual {p1, v0}, Lcom/join/android/app/common/dialog/l;->d(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1300(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/android/app/common/dialog/l;->b()V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/MGMainActivity;->checkSNKGame()V

    .line 14
    :try_start_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1600(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
