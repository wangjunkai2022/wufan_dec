.class Lcom/papa/controller/component/inputmanagercompat/b$a;
.super Ljava/lang/Object;
.source "InputManagerV16.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/inputmanagercompat/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/papa/controller/component/inputmanagercompat/a$b;


# direct methods
.method public constructor <init>(Lcom/papa/controller/component/inputmanagercompat/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/papa/controller/component/inputmanagercompat/b$a;->a:Lcom/papa/controller/component/inputmanagercompat/a$b;

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/b$a;->a:Lcom/papa/controller/component/inputmanagercompat/a$b;

    invoke-interface {v0, p1}, Lcom/papa/controller/component/inputmanagercompat/a$b;->onInputDeviceAdded(I)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/b$a;->a:Lcom/papa/controller/component/inputmanagercompat/a$b;

    invoke-interface {v0, p1}, Lcom/papa/controller/component/inputmanagercompat/a$b;->onInputDeviceChanged(I)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/b$a;->a:Lcom/papa/controller/component/inputmanagercompat/a$b;

    invoke-interface {v0, p1}, Lcom/papa/controller/component/inputmanagercompat/a$b;->onInputDeviceRemoved(I)V

    return-void
.end method
