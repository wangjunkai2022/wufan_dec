.class Lcom/join/mgps/activity/FaceTransferHomePageActivity$g;
.super Ljava/lang/Object;
.source "FaceTransferHomePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FaceTransferHomePageActivity;->M0()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$g;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$g;->a:Lcom/join/mgps/customview/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$g;->a:Lcom/join/mgps/customview/q;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$g;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    const/16 v1, 0x59

    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
