.class Lcom/join/mgps/activity/GamePaiWeiActivty$e;
.super Ljava/lang/Object;
.source "GamePaiWeiActivty.java"

# interfaces
.implements Lcom/join/mgps/dialog/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GamePaiWeiActivty;->r(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GamePaiWeiActivty;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$e;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ClickCancleButn(Lcom/join/mgps/dialog/b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public ClickOKButn(Lcom/join/mgps/dialog/b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$e;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->c(Lcom/join/mgps/activity/GamePaiWeiActivty;I)I

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$e;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->e(Lcom/join/mgps/activity/GamePaiWeiActivty;I)I

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$e;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->g(Lcom/join/mgps/activity/GamePaiWeiActivty;)Lcom/join/mgps/dialog/x0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dialog/x0;->b()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$e;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-virtual {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->R()V

    return-void
.end method
