.class Lcom/join/mgps/activity/message/MessageMainActivity$c;
.super Ljava/lang/Object;
.source "MessageMainActivity.java"

# interfaces
.implements Lcom/join/mgps/dialog/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/MessageMainActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/b;

.field final synthetic b:Lcom/join/mgps/activity/message/MessageMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/MessageMainActivity;Lcom/join/mgps/dialog/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$c;->b:Lcom/join/mgps/activity/message/MessageMainActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/message/MessageMainActivity$c;->a:Lcom/join/mgps/dialog/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ClickCancleButn(Lcom/join/mgps/dialog/b;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$c;->a:Lcom/join/mgps/dialog/b;

    invoke-virtual {p1}, Lcom/join/mgps/dialog/b;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$c;->b:Lcom/join/mgps/activity/message/MessageMainActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/message/MessageMainActivity;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/pref/h;->h0(Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$c;->a:Lcom/join/mgps/dialog/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public ClickOKButn(Lcom/join/mgps/dialog/b;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$c;->a:Lcom/join/mgps/dialog/b;

    invoke-virtual {p1}, Lcom/join/mgps/dialog/b;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$c;->b:Lcom/join/mgps/activity/message/MessageMainActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/message/MessageMainActivity;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/pref/h;->h0(Z)V

    .line 3
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x10000000

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    const-string v2, "com.join.android.app.mgsim.wufun"

    if-lt v0, v1, :cond_1

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "package"

    .line 7
    invoke-static {v1, v2, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    const-string v0, "android.intent.action.VIEW"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.InstalledAppDetails"

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.settings.ApplicationPkgName"

    .line 10
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity$c;->b:Lcom/join/mgps/activity/message/MessageMainActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$c;->a:Lcom/join/mgps/dialog/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
