.class Lcom/join/mgps/activity/ApFightActivity$j;
.super Ljava/lang/Object;
.source "ApFightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ApFightActivity;->createServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ApFightActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ApFightActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$j;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "clipboard"

    const/16 v1, 0xb

    if-lt p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$j;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$j;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ApFightActivity;->access$300(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$j;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$j;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$300(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$j;->a:Lcom/join/mgps/activity/ApFightActivity;

    const/4 v1, 0x2

    const-string v2, "\u590d\u5236\u6210\u529f\uff01"

    invoke-virtual {p1, v0, v2, v1}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
