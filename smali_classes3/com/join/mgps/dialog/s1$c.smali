.class Lcom/join/mgps/dialog/s1$c;
.super Ljava/lang/Object;
.source "PrePostingHintDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/s1;->d(Landroid/app/Activity;I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/s1;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/s1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/s1$c;->a:Lcom/join/mgps/dialog/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/s1$c;->a:Lcom/join/mgps/dialog/s1;

    invoke-static {p1}, Lcom/join/mgps/dialog/s1;->a(Lcom/join/mgps/dialog/s1;)Lcom/join/mgps/activity/posting/PostingActivity$m;

    move-result-object p1

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/join/mgps/activity/posting/PostingActivity$m;->e(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/s1$c;->a:Lcom/join/mgps/dialog/s1;

    invoke-static {p1}, Lcom/join/mgps/dialog/s1;->b(Lcom/join/mgps/dialog/s1;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
