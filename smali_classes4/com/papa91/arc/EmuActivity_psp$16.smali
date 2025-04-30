.class Lcom/papa91/arc/EmuActivity_psp$16;
.super Ljava/lang/Object;
.source "EmuActivity_psp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->bindBridge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$16;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    sput-object p1, Lcom/papa91/arc/EmuActivity_psp;->mMessenger:Landroid/os/Messenger;

    .line 2
    iget-object p2, p0, Lcom/papa91/arc/EmuActivity_psp$16;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {p2, p1}, Lcom/papa91/arc/EmuActivity_psp;->onMessengerConnected(Landroid/os/Messenger;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
