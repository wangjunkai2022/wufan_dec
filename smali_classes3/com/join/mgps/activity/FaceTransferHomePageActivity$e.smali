.class Lcom/join/mgps/activity/FaceTransferHomePageActivity$e;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$e;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "clipboard"

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$e;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$e;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$e;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x2

    const-string v2, "\u590d\u5236\u6210\u529f\uff01"

    invoke-virtual {v0, p1, v2, v1}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
