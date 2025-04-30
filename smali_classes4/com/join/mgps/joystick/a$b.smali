.class Lcom/join/mgps/joystick/a$b;
.super Ljava/lang/Object;
.source "KeyMapController.java"

# interfaces
.implements Lcom/papa/controller/core/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/joystick/a;->b()Lcom/papa/controller/core/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/joystick/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/joystick/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/joystick/a$b;->a:Lcom/join/mgps/joystick/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(FFLcom/papa/controller/core/PadMotionEvent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/joystick/a$b;->a:Lcom/join/mgps/joystick/a;

    invoke-virtual {p1, p3}, Lcom/join/mgps/joystick/a;->r(Lcom/papa/controller/core/PadMotionEvent;)Z

    return-void
.end method

.method public G(FFLcom/papa/controller/core/PadMotionEvent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/joystick/a$b;->a:Lcom/join/mgps/joystick/a;

    invoke-virtual {p1, p3}, Lcom/join/mgps/joystick/a;->r(Lcom/papa/controller/core/PadMotionEvent;)Z

    return-void
.end method

.method public R(ILcom/papa/controller/core/PadKeyEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a$b;->a:Lcom/join/mgps/joystick/a;

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/joystick/a;->q(ILcom/papa/controller/core/PadKeyEvent;)Z

    return-void
.end method

.method public c0(Lcom/papa/controller/core/PadStateEvent;)V
    .locals 0

    return-void
.end method

.method public h(ILcom/papa/controller/core/PadKeyEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a$b;->a:Lcom/join/mgps/joystick/a;

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/joystick/a;->q(ILcom/papa/controller/core/PadKeyEvent;)Z

    return-void
.end method

.method public k0(IFLcom/papa/controller/core/PadKeyEvent;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/joystick/a$b;->a:Lcom/join/mgps/joystick/a;

    invoke-virtual {p2, p1, p3}, Lcom/join/mgps/joystick/a;->q(ILcom/papa/controller/core/PadKeyEvent;)Z

    return-void
.end method
