.class Lcom/papa91/arc/dialog/SettingSlotDialog$1;
.super Ljava/lang/Object;
.source "SettingSlotDialog.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingSlotDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 p1, 0x0

    return p1
.end method
