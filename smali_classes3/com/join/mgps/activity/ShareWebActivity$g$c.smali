.class Lcom/join/mgps/activity/ShareWebActivity$g$c;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$g;->a(Lcom/tbruyelle/rxpermissions2/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ShareWebActivity$g;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g$c;->a:Lcom/join/mgps/activity/ShareWebActivity$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$g$c;->a:Lcom/join/mgps/activity/ShareWebActivity$g;

    iget-object p2, p2, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$g$c;->a:Lcom/join/mgps/activity/ShareWebActivity$g;

    iget-object p2, p2, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
