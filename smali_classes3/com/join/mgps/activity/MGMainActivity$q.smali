.class Lcom/join/mgps/activity/MGMainActivity$q;
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$q;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$q;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$2100(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/mgps/dialog/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$q;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$2100(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/mgps/dialog/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dialog/c;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.tools.AdBroadcast"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    const-string v1, "action"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$q;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$2100(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/mgps/dialog/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dialog/c;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$q;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
