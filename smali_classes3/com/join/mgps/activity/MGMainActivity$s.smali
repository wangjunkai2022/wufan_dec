.class Lcom/join/mgps/activity/MGMainActivity$s;
.super Ljava/lang/Object;
.source "MGMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->showAdVipMainDialog(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$s;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$s;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$s;->a:Lcom/join/mgps/activity/MGMainActivity;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->access$2202(Lcom/join/mgps/activity/MGMainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$s;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u8bf7\u8054\u7f51\u540e\u91cd\u8bd5\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$s;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$2100(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/mgps/dialog/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$s;->a:Lcom/join/mgps/activity/MGMainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->access$2102(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/dialog/c;)Lcom/join/mgps/dialog/c;

    return-void
.end method
