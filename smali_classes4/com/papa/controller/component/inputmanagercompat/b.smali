.class public Lcom/papa/controller/component/inputmanagercompat/b;
.super Ljava/lang/Object;
.source "InputManagerV16.java"

# interfaces
.implements Lcom/papa/controller/component/inputmanagercompat/a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/controller/component/inputmanagercompat/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/hardware/input/InputManager;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/papa/controller/component/inputmanagercompat/a$b;",
            "Lcom/papa/controller/component/inputmanagercompat/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "input"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/papa/controller/component/inputmanagercompat/b;->a:Landroid/hardware/input/InputManager;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/papa/controller/component/inputmanagercompat/b;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/papa/controller/component/inputmanagercompat/a$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa/controller/component/inputmanagercompat/b$a;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/b;->a:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/papa/controller/component/inputmanagercompat/a$b;Landroid/os/Handler;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa/controller/component/inputmanagercompat/b$a;

    invoke-direct {v0, p1}, Lcom/papa/controller/component/inputmanagercompat/b$a;-><init>(Lcom/papa/controller/component/inputmanagercompat/a$b;)V

    .line 2
    iget-object v1, p0, Lcom/papa/controller/component/inputmanagercompat/b;->a:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v0, p2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 3
    iget-object p2, p0, Lcom/papa/controller/component/inputmanagercompat/b;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(I)Landroid/view/InputDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/b;->a:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    return-object p1
.end method

.method public e()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/b;->a:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method
