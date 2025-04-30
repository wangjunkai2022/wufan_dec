.class Lcom/join/mgps/joystick/a$a;
.super Ljava/lang/Object;
.source "KeyMapController.java"

# interfaces
.implements Lcom/papa/controller/core/ControllerManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/joystick/a;->x()V
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
    iput-object p1, p0, Lcom/join/mgps/joystick/a$a;->a:Lcom/join/mgps/joystick/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/joystick/a$a;->a:Lcom/join/mgps/joystick/a;

    iget-object p1, p1, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    invoke-virtual {p1}, Lcom/papa/controller/core/d;->p()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/joystick/a$a;->a:Lcom/join/mgps/joystick/a;

    iget-object v1, p1, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    invoke-virtual {v1}, Lcom/papa/controller/core/d;->q()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/join/mgps/joystick/a;->a(Lcom/join/mgps/joystick/a;ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/joystick/a$a;->a:Lcom/join/mgps/joystick/a;

    iget-object p1, p1, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    invoke-virtual {p1}, Lcom/papa/controller/core/d;->p()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/joystick/a$a;->a:Lcom/join/mgps/joystick/a;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    invoke-virtual {v1}, Lcom/papa/controller/core/d;->q()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/join/mgps/joystick/a;->a(Lcom/join/mgps/joystick/a;ILjava/util/List;)V

    :cond_0
    return-void
.end method
