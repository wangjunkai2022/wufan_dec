.class Lcom/papa/controller/core/ControllerManager$b;
.super Ljava/lang/Object;
.source "ControllerManager.java"

# interfaces
.implements Lcom/papa/controller/component/inputmanagercompat/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/core/ControllerManager;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/controller/core/ControllerManager;


# direct methods
.method constructor <init>(Lcom/papa/controller/core/ControllerManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/ControllerManager$b;->a:Lcom/papa/controller/core/ControllerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa/controller/core/ControllerManager$b;->a:Lcom/papa/controller/core/ControllerManager;

    invoke-static {p1}, Lcom/papa/controller/core/ControllerManager;->a(Lcom/papa/controller/core/ControllerManager;)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa/controller/core/ControllerManager$b;->a:Lcom/papa/controller/core/ControllerManager;

    invoke-static {p1}, Lcom/papa/controller/core/ControllerManager;->b(Lcom/papa/controller/core/ControllerManager;)V

    return-void
.end method
