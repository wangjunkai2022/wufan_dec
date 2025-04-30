.class public Lcom/join/mgps/activity/HandShankCheckKeyActivity;
.super Lcom/join/mgps/activity/HandShankBaseActivity;
.source "HandShankCheckKeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c02b9
.end annotation


# instance fields
.field private c:Z

.field private d:Landroid/media/SoundPool;

.field private e:Landroid/graphics/drawable/TransitionDrawable;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->j:Landroid/os/Handler;

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/HandShankCheckKeyActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->i1()V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/HandShankCheckKeyActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->c:Z

    return p1
.end method

.method private W0(Landroid/view/KeyEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const-string v0, "audio"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/16 v1, 0x18

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eq p1, v1, :cond_1

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 3
    invoke-virtual {v0, v3, p1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, v3, p1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :goto_0
    return-void
.end method

.method private b1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "KEY"

    .line 2
    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    const/16 v1, 0x6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_START"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_SELECT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_X"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_A"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_Y"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_B"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_L1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_L2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_R1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_R2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_DPAD_LEFT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_DPAD_UP"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_DPAD_RIGHT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_DPAD_DOWN"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_BUTTON_THUMBR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_BUTTON_THUMBL"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->c1(Ljava/util/Map;)V

    return-void
.end method

.method private c1(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    const-string v1, "KEY_Y"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    const v3, 0x7f0912fb

    const v4, 0x7f08051a

    const v5, 0x7f08051b

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    const-string v1, "KEY_A"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    const v3, 0x7f090030

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    const-string v1, "KEY_X"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    const v3, 0x7f0912e3

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    const-string v1, "KEY_B"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    const v3, 0x7f090127

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    const-string v1, "KEY_L1"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    const v3, 0x7f090639

    const v4, 0x7f080512

    const v5, 0x7f080513

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    const-string v1, "KEY_L2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    const v3, 0x7f09063a

    const v4, 0x7f080515

    const v5, 0x7f080516

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    const-string v1, "KEY_R1"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    const v3, 0x7f09063b

    const v4, 0x7f08051e

    const v5, 0x7f08051f

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    const-string v1, "KEY_R2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    const v3, 0x7f09063c

    const v4, 0x7f080521

    const v5, 0x7f080522

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    const-string v1, "KEY_BUTTON_THUMBL"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    const v3, 0x7f09063d

    const v4, 0x7f080524

    const v5, 0x7f080525

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    const-string v1, "KEY_BUTTON_THUMBR"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    const v3, 0x7f09063e

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    const-string v1, "KEY_DPAD_LEFT"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    const v3, 0x7f090637

    const v4, 0x7f080506

    const v5, 0x7f080509

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    const-string v1, "KEY_DPAD_UP"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    const v5, 0x7f08050d

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    const-string v1, "KEY_DPAD_RIGHT"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    const v5, 0x7f08050b

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    const-string v1, "KEY_DPAD_DOWN"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    new-instance v1, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    const v2, 0x7f080507

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private d1()V
    .locals 2

    const v0, 0x7f090638

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->i:Landroid/widget/TextView;

    const-string v1, "\u6821\u9a8c\u624b\u67c4\u6309\u952e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private e1()V
    .locals 4

    .line 1
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0x15

    const/4 v2, 0x3

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->d:Landroid/media/SoundPool;

    const/high16 v1, 0x7f100000

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    return-void
.end method

.method private i1()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->d:Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method


# virtual methods
.method protected L0(ILcom/papa/controller/core/PadKeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/papa/controller/core/BaseEvent;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/papa/controller/core/PadKeyEvent;->d()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/HandShankBaseActivity;->N0(Lcom/papa/controller/core/PadKeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->g1(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/HandShankBaseActivity;->N0(Lcom/papa/controller/core/PadKeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->h1(ILandroid/view/KeyEvent;)Z

    .line 6
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/HandShankBaseActivity;->L0(ILcom/papa/controller/core/PadKeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected M0(Lcom/papa/controller/core/PadMotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/HandShankBaseActivity;->M0(Lcom/papa/controller/core/PadMotionEvent;)Z

    move-result p1

    return p1
.end method

.method X0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->h:Ljava/lang/String;

    const-string v1, "first"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/HandShankYesActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method Y0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/HandShankSetKeyActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->h:Ljava/lang/String;

    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method Z0(Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->j:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a1(Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->j:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/activity/HandShankCheckKeyActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$b;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method afterView()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->e1()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->d1()V

    return-void
.end method

.method f1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/HandShankYesActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public g1(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->W0(Landroid/view/KeyEvent;)V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 5
    iput-boolean v1, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->c:Z

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->Z0(Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public h1(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->a1(Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;)V

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->b1()V

    return-void
.end method
