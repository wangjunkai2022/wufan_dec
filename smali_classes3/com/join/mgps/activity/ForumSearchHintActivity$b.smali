.class Lcom/join/mgps/activity/ForumSearchHintActivity$b;
.super Ljava/lang/Object;
.source "ForumSearchHintActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumSearchHintActivity;->T0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumSearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$b;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const/16 p3, 0x42

    if-ne p2, p3, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$b;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 p3, 0x2

    .line 4
    invoke-virtual {p2, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$b;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->S0()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
