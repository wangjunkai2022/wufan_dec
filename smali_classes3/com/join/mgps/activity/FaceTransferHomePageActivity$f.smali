.class Lcom/join/mgps/activity/FaceTransferHomePageActivity$f;
.super Ljava/lang/Object;
.source "FaceTransferHomePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FaceTransferHomePageActivity;->N0()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/q;

.field final synthetic b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity;Lcom/join/mgps/customview/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$f;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$f;->a:Lcom/join/mgps/customview/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$f;->a:Lcom/join/mgps/customview/q;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$f;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->I0(Lcom/join/mgps/activity/FaceTransferHomePageActivity;Z)Z

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "/"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TetherSettings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$f;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    const/16 v1, 0x58

    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
