.class Lcom/papa91/arc/dialog/SettingGateDialog$1;
.super Ljava/lang/Object;
.source "SettingGateDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingGateDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingGateDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingGateDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingGateDialog;->access$000(Lcom/papa91/arc/dialog/SettingGateDialog;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
