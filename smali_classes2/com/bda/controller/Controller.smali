.class public final Lcom/bda/controller/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/Controller$a;,
        Lcom/bda/controller/Controller$b;,
        Lcom/bda/controller/Controller$c;,
        Lcom/bda/controller/Controller$d;,
        Lcom/bda/controller/Controller$e;,
        Lcom/bda/controller/Controller$f;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTED:I = 0x1

.field public static final ACTION_CONNECTING:I = 0x2

.field public static final ACTION_DISCONNECTED:I = 0x0

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_FALSE:I = 0x0

.field public static final ACTION_TRUE:I = 0x1

.field public static final ACTION_UP:I = 0x1

.field public static final ACTION_VERSION_MOGA:I = 0x0

.field public static final ACTION_VERSION_MOGAPRO:I = 0x1

.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field static final CONTROLLER_ID:I = 0x1

.field public static final INFO_ACTIVE_DEVICE_COUNT:I = 0x2

.field public static final INFO_KNOWN_DEVICE_COUNT:I = 0x1

.field public static final INFO_UNKNOWN:I = 0x0

.field public static final KEYCODE_BUTTON_A:I = 0x60

.field public static final KEYCODE_BUTTON_B:I = 0x61

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_L2:I = 0x68

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYCODE_BUTTON_R2:I = 0x69

.field public static final KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final KEYCODE_BUTTON_START:I = 0x6c

.field public static final KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final KEYCODE_BUTTON_X:I = 0x63

.field public static final KEYCODE_BUTTON_Y:I = 0x64

.field public static final KEYCODE_DPAD_DOWN:I = 0x14

.field public static final KEYCODE_DPAD_LEFT:I = 0x15

.field public static final KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final KEYCODE_DPAD_UP:I = 0x13

.field public static final KEYCODE_UNKNOWN:I = 0x0

.field static final LEGACY_KEYCODE_BUTTON_X:I = 0x62

.field static final LEGACY_KEYCODE_BUTTON_Y:I = 0x63

.field public static final STATE_CONNECTION:I = 0x1

.field public static final STATE_CURRENT_PRODUCT_VERSION:I = 0x4

.field public static final STATE_POWER_LOW:I = 0x2

.field public static final STATE_SELECTED_VERSION:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_SUPPORTED_PRODUCT_VERSION:I = 0x3

.field public static final STATE_SUPPORTED_VERSION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_UNKNOWN:I


# instance fields
.field mActivityEvent:I

.field final mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mIsBound:Z

.field mListener:Lcom/bda/controller/b;

.field final mListenerStub:Lcom/bda/controller/d$a;

.field mMonitor:Lcom/bda/controller/c;

.field final mMonitorStub:Lcom/bda/controller/e$a;

.field mService:Lcom/bda/controller/f;

.field final mServiceConnection:Lcom/bda/controller/Controller$e;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bda/controller/Controller;->mIsBound:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/f;

    .line 4
    new-instance v1, Lcom/bda/controller/Controller$a;

    invoke-direct {v1, p0}, Lcom/bda/controller/Controller$a;-><init>(Lcom/bda/controller/Controller;)V

    iput-object v1, p0, Lcom/bda/controller/Controller;->mListenerStub:Lcom/bda/controller/d$a;

    .line 5
    new-instance v1, Lcom/bda/controller/Controller$b;

    invoke-direct {v1, p0}, Lcom/bda/controller/Controller$b;-><init>(Lcom/bda/controller/Controller;)V

    iput-object v1, p0, Lcom/bda/controller/Controller;->mMonitorStub:Lcom/bda/controller/e$a;

    .line 6
    new-instance v1, Lcom/bda/controller/Controller$e;

    invoke-direct {v1, p0}, Lcom/bda/controller/Controller$e;-><init>(Lcom/bda/controller/Controller;)V

    iput-object v1, p0, Lcom/bda/controller/Controller;->mServiceConnection:Lcom/bda/controller/Controller$e;

    const/4 v1, 0x6

    .line 7
    iput v1, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    .line 8
    iput-object v0, p0, Lcom/bda/controller/Controller;->mHandler:Landroid/os/Handler;

    .line 9
    iput-object v0, p0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/b;

    .line 10
    iput-object v0, p0, Lcom/bda/controller/Controller;->mMonitor:Lcom/bda/controller/c;

    .line 11
    iput-object p1, p0, Lcom/bda/controller/Controller;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/bda/controller/Controller;
    .locals 1

    .line 1
    new-instance v0, Lcom/bda/controller/Controller;

    invoke-direct {v0, p0}, Lcom/bda/controller/Controller;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public allowNewConnections()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/f;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lcom/bda/controller/f;->F()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public disallowNewConnections()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/f;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lcom/bda/controller/f;->v()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final exit()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/bda/controller/Controller;->setListener(Lcom/bda/controller/b;Landroid/os/Handler;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/bda/controller/Controller;->setMonitor(Lcom/bda/controller/c;)V

    .line 3
    iget-boolean v0, p0, Lcom/bda/controller/Controller;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bda/controller/Controller;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/bda/controller/Controller;->mServiceConnection:Lcom/bda/controller/Controller$e;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bda/controller/Controller;->mIsBound:Z

    :cond_0
    return-void
.end method

.method public final getAxisValue(I)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-interface {v0, v1, p1}, Lcom/bda/controller/f;->y(II)F

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getInfo(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/f;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Lcom/bda/controller/f;->t(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getKeyCode(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/f;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-interface {v0, v1, p1}, Lcom/bda/controller/f;->D(II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/16 v0, 0x63

    if-eq p1, v0, :cond_1

    const/16 v2, 0x64

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x63

    goto :goto_0

    :cond_1
    const/16 p1, 0x62

    .line 3
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/f;

    invoke-interface {v0, v1, p1}, Lcom/bda/controller/f;->A(II)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    :cond_2
    return v1
.end method

.method public final getState(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-interface {v0, v1, p1}, Lcom/bda/controller/f;->u(II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final init()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/bda/controller/Controller;->mIsBound:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bda/controller/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/bda/controller/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4
    iget-object v1, p0, Lcom/bda/controller/Controller;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/bda/controller/Controller;->mServiceConnection:Lcom/bda/controller/Controller$e;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 5
    iput-boolean v3, p0, Lcom/bda/controller/Controller;->mIsBound:Z

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/bda/controller/Controller;->mIsBound:Z

    return v0
.end method

.method public isAllowingNewConnections()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/f;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lcom/bda/controller/f;->E()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    const/4 v0, 0x6

    .line 1
    iput v0, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/bda/controller/Controller;->sendMessage(II)V

    .line 3
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->registerListener()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    const/4 v0, 0x5

    .line 1
    iput v0, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/bda/controller/Controller;->sendMessage(II)V

    .line 3
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->registerListener()V

    return-void
.end method

.method registerListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/f;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/bda/controller/Controller;->mListenerStub:Lcom/bda/controller/d$a;

    iget v2, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    invoke-interface {v0, v1, v2}, Lcom/bda/controller/f;->w(Lcom/bda/controller/d;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/f;

    iget-object v1, p0, Lcom/bda/controller/Controller;->mListenerStub:Lcom/bda/controller/d$a;

    iget v2, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    invoke-interface {v0, v1, v2}, Lcom/bda/controller/f;->G(Lcom/bda/controller/d;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method registerMonitor()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bda/controller/Controller;->mMonitor:Lcom/bda/controller/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/f;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/bda/controller/Controller;->mMonitorStub:Lcom/bda/controller/e$a;

    iget v2, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    invoke-interface {v0, v1, v2}, Lcom/bda/controller/f;->C(Lcom/bda/controller/e;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method sendMessage(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/f;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/bda/controller/f;->x(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final setListener(Lcom/bda/controller/b;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->unregisterListener()V

    .line 2
    iput-object p1, p0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/b;

    .line 3
    iput-object p2, p0, Lcom/bda/controller/Controller;->mHandler:Landroid/os/Handler;

    .line 4
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->registerListener()V

    return-void
.end method

.method public final setMonitor(Lcom/bda/controller/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->unregisterMonitor()V

    .line 2
    iput-object p1, p0, Lcom/bda/controller/Controller;->mMonitor:Lcom/bda/controller/c;

    .line 3
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->registerMonitor()V

    return-void
.end method

.method unregisterListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/f;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bda/controller/Controller;->mListenerStub:Lcom/bda/controller/d$a;

    iget v2, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    invoke-interface {v0, v1, v2}, Lcom/bda/controller/f;->B(Lcom/bda/controller/d;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method unregisterMonitor()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/f;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bda/controller/Controller;->mMonitorStub:Lcom/bda/controller/e$a;

    iget v2, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    invoke-interface {v0, v1, v2}, Lcom/bda/controller/f;->z(Lcom/bda/controller/e;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
