.class Lcom/join/mgps/activity/ApFightActivity$e$b;
.super Ljava/lang/Object;
.source "ApFightActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ApFightActivity$e;->h(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ApFightActivity$e;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ApFightActivity$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e$b;->a:Lcom/join/mgps/activity/ApFightActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e$b;->a:Lcom/join/mgps/activity/ApFightActivity$e;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e$b;->a:Lcom/join/mgps/activity/ApFightActivity$e;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e$b;->a:Lcom/join/mgps/activity/ApFightActivity$e;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
