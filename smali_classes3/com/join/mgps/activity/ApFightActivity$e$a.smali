.class Lcom/join/mgps/activity/ApFightActivity$e$a;
.super Ljava/lang/Object;
.source "ApFightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ApFightActivity$e;->b()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e$a;->a:Lcom/join/mgps/activity/ApFightActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e$a;->a:Lcom/join/mgps/activity/ApFightActivity$e;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->connect()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e$a;->a:Lcom/join/mgps/activity/ApFightActivity$e;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e$a;->a:Lcom/join/mgps/activity/ApFightActivity$e;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/join/mgps/activity/ApFightActivity;->access$1300(Lcom/join/mgps/activity/ApFightActivity;ILjava/lang/String;)V

    return-void
.end method
