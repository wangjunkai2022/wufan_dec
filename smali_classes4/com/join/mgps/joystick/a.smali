.class public Lcom/join/mgps/joystick/a;
.super Ljava/lang/Object;
.source "KeyMapController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/joystick/a$d;
    }
.end annotation


# static fields
.field public static j:Lcom/join/mgps/joystick/a;


# instance fields
.field private a:Landroid/content/Context;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:[I

.field private f:Lcom/join/mgps/joystick/a$d;

.field g:Lcom/papa/controller/core/d;

.field h:F

.field i:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/join/mgps/joystick/a;->e:[I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/joystick/a;->f:Lcom/join/mgps/joystick/a$d;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->c:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/joystick/a;->n()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private A()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->c:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->WSC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private E(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string p1, "\u624b\u67c4\u5df2\u8fde\u63a5"

    .line 2
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const-string p1, "\u624b\u67c4\u5df2\u65ad\u5f00"

    .line 3
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private G(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/join/mgps/joystick/a;->k(Ljava/util/List;)I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 6
    iget-object v3, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 8
    invoke-direct {p0, v0}, Lcom/join/mgps/joystick/a;->k(Ljava/util/List;)I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 10
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/join/mgps/joystick/a;->k(Ljava/util/List;)I

    move-result p1

    if-lez p1, :cond_1

    :goto_0
    return v1
.end method

.method static synthetic a(Lcom/join/mgps/joystick/a;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/joystick/a;->l(ILjava/util/List;)V

    return-void
.end method

.method private b()Lcom/papa/controller/core/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/joystick/a$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/joystick/a$b;-><init>(Lcom/join/mgps/joystick/a;)V

    return-object v0
.end method

.method public static g()Lcom/join/mgps/joystick/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/joystick/a;->j:Lcom/join/mgps/joystick/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/joystick/a;

    invoke-direct {v0}, Lcom/join/mgps/joystick/a;-><init>()V

    sput-object v0, Lcom/join/mgps/joystick/a;->j:Lcom/join/mgps/joystick/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/join/mgps/joystick/a;->j:Lcom/join/mgps/joystick/a;

    return-object v0
.end method

.method private j(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/controller/core/ControllerManager$c;

    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->d()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v2}, Lcom/join/mgps/joystick/a;->m(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/controller/core/ControllerManager$c;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private k(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/joystick/a;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/joystick/a;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method private l(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_2

    .line 1
    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lcom/join/mgps/joystick/a;->G(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-direct {p0, p1}, Lcom/join/mgps/joystick/a;->E(Z)V

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    if-nez p1, :cond_3

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-array p1, v0, [Ljava/lang/Boolean;

    .line 7
    invoke-static {v0, p1}, Lcom/join/mgps/joystick/map/d;->l(I[Ljava/lang/Boolean;)Z

    move-result p1

    .line 8
    invoke-direct {p0, p2}, Lcom/join/mgps/joystick/a;->k(Ljava/util/List;)I

    move-result p2

    if-ge p2, v1, :cond_4

    and-int/2addr p1, v0

    goto :goto_1

    :cond_4
    and-int/2addr p1, v1

    .line 9
    :goto_1
    iget-object p2, p0, Lcom/join/mgps/joystick/a;->f:Lcom/join/mgps/joystick/a$d;

    if-eqz p2, :cond_5

    .line 10
    invoke-interface {p2, p1}, Lcom/join/mgps/joystick/a$d;->onVirtualKeyboard(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->c:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->f(Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->c:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iget-object v0, v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    array-length v1, v0

    if-nez v1, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->c:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iget-object v0, v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->keysKey:[Ljava/lang/String;

    .line 6
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/joystick/a;->d:Ljava/util/List;

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/joystick/a;->B()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->c:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->PSP:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private t(Landroid/view/KeyEvent;Lcom/join/mgps/joystick/map/c;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/joystick/a;->A()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/joystick/a;->o()Z

    move-result p2

    const/16 v0, 0x14

    const/16 v1, 0x16

    const/16 v2, 0x13

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-eqz p2, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    if-ne p2, v3, :cond_1

    .line 4
    sget-object p2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_LEFT1:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result p2

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    if-ne p2, v2, :cond_2

    .line 6
    sget-object p2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_UP1:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result p2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    if-ne p2, v1, :cond_3

    .line 8
    sget-object p2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_RIGHT1:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result p2

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    if-ne p2, v0, :cond_8

    .line 10
    sget-object p2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_DOWN1:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result p2

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    if-ne p2, v3, :cond_5

    .line 12
    sget-object p2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_LEFT:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result p2

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    if-ne p2, v2, :cond_6

    .line 14
    sget-object p2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_UP:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result p2

    goto :goto_0

    .line 15
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    if-ne p2, v1, :cond_7

    .line 16
    sget-object p2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_RIGHT:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result p2

    goto :goto_0

    .line 17
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    if-ne p2, v0, :cond_8

    .line 18
    sget-object p2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_DOWN:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result p2

    goto :goto_0

    :cond_8
    const/4 p2, 0x0

    .line 19
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_9

    .line 20
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->e:[I

    aget v0, p1, v4

    or-int/2addr p2, v0

    aput p2, p1, v4

    goto :goto_1

    .line 21
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->e:[I

    aget v0, p1, v4

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, v0

    aput p2, p1, v4

    :goto_1
    return-void
.end method

.method private u(Landroid/view/KeyEvent;Lcom/join/mgps/joystick/map/c;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/joystick/a;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/c;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->e:[I

    aget v0, p1, v1

    or-int/2addr p2, v0

    aput p2, p1, v1

    goto :goto_1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->e:[I

    aget v0, p1, v1

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, v0

    aput p2, p1, v1

    :goto_1
    return-void
.end method


# virtual methods
.method B()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa/controller/core/d;

    iget-object v1, p0, Lcom/join/mgps/joystick/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/papa/controller/core/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/joystick/a;->b()Lcom/papa/controller/core/c;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/controller/core/d;->w(Lcom/papa/controller/core/c;Landroid/os/Handler;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/joystick/a;->x()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/papa/controller/core/d;->B()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public C()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/joystick/EaseBreathInterpolator;

    invoke-direct {v0}, Lcom/join/mgps/joystick/EaseBreathInterpolator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x4b0

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance v0, Lcom/join/mgps/joystick/a$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/joystick/a$c;-><init>(Lcom/join/mgps/joystick/a;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/controller/core/d;->F()V

    :cond_0
    return-void
.end method

.method public F()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/joystick/a;->D()V

    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/papa/controller/core/d;->n(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_0
    return v1
.end method

.method public d(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/papa/controller/core/d;->o(Landroid/view/KeyEvent;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_0
    return v1
.end method

.method e(Lcom/papa/controller/core/PadMotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->e()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->f()F

    move-result p1

    .line 3
    iget v1, p0, Lcom/join/mgps/joystick/a;->h:F

    mul-float v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    .line 4
    invoke-virtual {p0, v1, v4}, Lcom/join/mgps/joystick/a;->h(FI)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    .line 5
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/joystick/a;->h(FI)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    mul-float v2, v0, v1

    cmpl-float v2, v2, v5

    if-nez v2, :cond_2

    cmpl-float v2, v0, v5

    if-eqz v2, :cond_1

    cmpl-float v2, v1, v5

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/joystick/a;->h(FI)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_1
    cmpl-float v2, v0, v5

    if-nez v2, :cond_2

    cmpl-float v2, v1, v5

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p0, v1, v4}, Lcom/join/mgps/joystick/a;->h(FI)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 8
    :goto_1
    iget v2, p0, Lcom/join/mgps/joystick/a;->i:F

    mul-float v6, p1, v2

    cmpg-float v6, v6, v5

    if-gez v6, :cond_3

    .line 9
    invoke-virtual {p0, v2, v4}, Lcom/join/mgps/joystick/a;->i(FI)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    .line 10
    invoke-virtual {p0, p1, v3}, Lcom/join/mgps/joystick/a;->i(FI)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    :goto_2
    or-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    mul-float v6, p1, v2

    cmpl-float v6, v6, v5

    if-nez v6, :cond_5

    cmpl-float v6, p1, v5

    if-eqz v6, :cond_4

    cmpl-float v6, v2, v5

    if-nez v6, :cond_4

    .line 11
    invoke-virtual {p0, p1, v3}, Lcom/join/mgps/joystick/a;->i(FI)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    goto :goto_2

    :cond_4
    cmpl-float v3, p1, v5

    if-nez v3, :cond_5

    cmpl-float v3, v2, v5

    if-eqz v3, :cond_5

    .line 12
    invoke-virtual {p0, v2, v4}, Lcom/join/mgps/joystick/a;->i(FI)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    goto :goto_2

    .line 13
    :cond_5
    :goto_3
    iput v0, p0, Lcom/join/mgps/joystick/a;->h:F

    .line 14
    iput p1, p0, Lcom/join/mgps/joystick/a;->i:F

    return v1
.end method

.method f(Lcom/papa/controller/core/PadMotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->d()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->e()F

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->f()F

    move-result p1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/joystick/a;->f:Lcom/join/mgps/joystick/a$d;

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v2, v0, v1, p1}, Lcom/join/mgps/joystick/a$d;->onGenericMotionEvent(IFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method h(FI)Landroid/view/KeyEvent;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/16 p1, 0x15

    goto :goto_0

    :cond_0
    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/16 p1, 0x16

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    return-object v0
.end method

.method i(FI)Landroid/view/KeyEvent;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/16 p1, 0x13

    goto :goto_0

    :cond_0
    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/16 p1, 0x14

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    return-object v0
.end method

.method public m(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public p(Landroid/view/KeyEvent;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/joystick/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {v1, p1}, Lcom/join/mgps/joystick/map/d;->b(ILandroid/view/KeyEvent;)Lcom/join/mgps/joystick/map/c;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/joystick/a;->t(Landroid/view/KeyEvent;Lcom/join/mgps/joystick/map/c;)V

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/joystick/a;->u(Landroid/view/KeyEvent;Lcom/join/mgps/joystick/map/c;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/joystick/a;->f:Lcom/join/mgps/joystick/a$d;

    if-eqz v1, :cond_1

    .line 7
    iget-object v2, p0, Lcom/join/mgps/joystick/a;->e:[I

    invoke-interface {v1, v2, v0, p1}, Lcom/join/mgps/joystick/a$d;->onKeyMap([ILcom/join/mgps/joystick/map/c;Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method q(ILcom/papa/controller/core/PadKeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/papa/controller/core/BaseEvent;->c()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/joystick/a;->m(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/joystick/a;->s(Lcom/papa/controller/core/PadKeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    return v0
.end method

.method r(Lcom/papa/controller/core/PadMotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/papa/controller/core/BaseEvent;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/joystick/a;->m(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->e()F

    .line 4
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->f()F

    .line 5
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->d()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/joystick/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/joystick/a;->f(Lcom/papa/controller/core/PadMotionEvent;)Z

    move-result p1

    return p1

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/joystick/a;->e(Lcom/papa/controller/core/PadMotionEvent;)Z

    move-result p1

    return p1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->d()I

    move-result v0

    const/16 v2, 0xc9

    if-ne v0, v2, :cond_3

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/joystick/a;->f(Lcom/papa/controller/core/PadMotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method s(Lcom/papa/controller/core/PadKeyEvent;)Landroid/view/KeyEvent;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/papa/controller/core/PadKeyEvent;->e()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/papa/controller/core/PadKeyEvent;->d()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/papa/controller/core/PadKeyEvent;->f()F

    .line 4
    invoke-virtual {p1}, Lcom/papa/controller/core/BaseEvent;->a()I

    .line 5
    invoke-virtual {p1}, Lcom/papa/controller/core/BaseEvent;->b()J

    .line 6
    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, v1, v0}, Landroid/view/KeyEvent;-><init>(II)V

    return-object p1
.end method

.method public v()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/papa/controller/core/d;->p()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    invoke-virtual {v0}, Lcom/papa/controller/core/d;->q()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/join/mgps/joystick/a;->l(ILjava/util/List;)V

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/joystick/a;->B()V

    :goto_1
    return-void
.end method

.method public w(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/joystick/a;->a:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/join/mgps/joystick/a;->c:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/joystick/a;->n()V

    return-void
.end method

.method x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/join/mgps/joystick/a$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/joystick/a$a;-><init>(Lcom/join/mgps/joystick/a;)V

    invoke-virtual {v0, v1}, Lcom/papa/controller/core/d;->v(Lcom/papa/controller/core/ControllerManager$d;)V

    :cond_0
    return-void
.end method

.method public y(Lcom/join/mgps/joystick/a$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/joystick/a;->f:Lcom/join/mgps/joystick/a$d;

    return-void
.end method

.method public z(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/papa/controller/core/d;->y(II)V

    :cond_0
    return-void
.end method
