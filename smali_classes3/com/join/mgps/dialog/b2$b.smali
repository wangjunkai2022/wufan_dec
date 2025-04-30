.class Lcom/join/mgps/dialog/b2$b;
.super Ljava/lang/Object;
.source "WifiFightEnteringRoomFailedDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/b2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/b2;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/b2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/b2$b;->a:Lcom/join/mgps/dialog/b2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/b2$b;->a:Lcom/join/mgps/dialog/b2;

    iget-object p1, p1, Lcom/join/mgps/dialog/b2;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/FightWifiInputDialogActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/FightWifiInputDialogActivity_$c;

    move-result-object p1

    const/16 v0, 0x2329

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/FightWifiInputDialogActivity_$c;->startForResult(I)Lorg/androidannotations/api/builder/f;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/b2$b;->a:Lcom/join/mgps/dialog/b2;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
