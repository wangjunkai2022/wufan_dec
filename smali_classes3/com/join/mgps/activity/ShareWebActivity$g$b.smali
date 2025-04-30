.class Lcom/join/mgps/activity/ShareWebActivity$g$b;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g$b;->a:Lcom/join/mgps/activity/ShareWebActivity$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "clipboard"

    const/16 v1, 0xb

    if-lt p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g$b;->a:Lcom/join/mgps/activity/ShareWebActivity$g;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$g$b;->a:Lcom/join/mgps/activity/ShareWebActivity$g;

    iget-object v1, v1, Lcom/join/mgps/activity/ShareWebActivity$g;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g$b;->a:Lcom/join/mgps/activity/ShareWebActivity$g;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$g$b;->a:Lcom/join/mgps/activity/ShareWebActivity$g;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g$b;->a:Lcom/join/mgps/activity/ShareWebActivity$g;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->R0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dialog/e0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g$b;->a:Lcom/join/mgps/activity/ShareWebActivity$g;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->d1(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dialog/s1;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g$b;->a:Lcom/join/mgps/activity/ShareWebActivity$g;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->d1(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dialog/s1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dialog/s1;->c()V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g$b;->a:Lcom/join/mgps/activity/ShareWebActivity$g;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    new-instance v0, Lcom/join/mgps/dialog/s1;

    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->j1(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/activity/posting/PostingActivity$m;

    move-result-object v1

    const/16 v2, 0x1103

    const-string v3, "\u63d0\u793a"

    const-string v4, "\u5df2\u590d\u5236\u5730\u5740\u81f3\u526a\u5207\u677f\uff0c\u8bf7\u81ea\u884c\u4f7f\u7528\u6d4f\u89c8\u5668\u6253\u5f00\u3002"

    const-string v5, "\u6211\u77e5\u9053\u4e86"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/join/mgps/dialog/s1;-><init>(Landroid/app/Activity;Lcom/join/mgps/activity/posting/PostingActivity$m;I[Ljava/lang/String;)V

    .line 12
    invoke-static {p1, v0}, Lcom/join/mgps/activity/ShareWebActivity;->f1(Lcom/join/mgps/activity/ShareWebActivity;Lcom/join/mgps/dialog/s1;)Lcom/join/mgps/dialog/s1;

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g$b;->a:Lcom/join/mgps/activity/ShareWebActivity$g;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->d1(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dialog/s1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dialog/s1;->e()V

    return-void
.end method
