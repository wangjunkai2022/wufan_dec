.class public Lcom/join/mgps/socket/fight/arena/a;
.super Ljava/lang/Object;
.source "ArenaDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/socket/fight/arena/a$y;,
        Lcom/join/mgps/socket/fight/arena/a$b0;,
        Lcom/join/mgps/socket/fight/arena/a$z;,
        Lcom/join/mgps/socket/fight/arena/a$a0;
    }
.end annotation


# static fields
.field public static final g:I = 0x100

.field public static final h:I = 0x101

.field public static final i:I = 0x102

.field public static final j:Ljava/lang/String; = "dialog_error_hint"

.field public static final k:Ljava/lang/String; = "leave_room"

.field public static final l:Ljava/lang/String; = "toast_move_in_spectator"

.field public static final m:Ljava/lang/String; = "toast_kic_out_room"

.field public static final n:Ljava/lang/String; = "net_archive"

.field public static final o:Ljava/lang/String; = "kick_info"

.field public static final p:Ljava/lang/String; = "kic_out_room_info"

.field public static final q:Ljava/lang/String; = "seat_set"

.field public static final r:Ljava/lang/String; = "set_challenge_gold"

.field public static final s:Ljava/lang/String; = "share_friends_1"

.field public static final t:Ljava/lang/String; = "share_friends_2"

.field public static final u:Ljava/lang/String; = "svr_play_mode"

.field private static final v:I

.field private static final w:I


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/app/Activity;

.field private c:Lcom/join/mgps/socket/fight/arena/a$y;

.field private d:I

.field private e:Lcom/join/mgps/socket/fight/arena/a$a0;

.field private final f:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#ffffff"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/join/mgps/socket/fight/arena/a;->v:I

    const-string v0, "#0989BA"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/join/mgps/socket/fight/arena/a;->w:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/a$y;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/socket/fight/arena/a;->d:I

    .line 3
    new-instance v0, Lcom/join/mgps/socket/fight/arena/a$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/socket/fight/arena/a$p;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->f:Landroid/view/View$OnClickListener;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/socket/fight/arena/a;->c:Lcom/join/mgps/socket/fight/arena/a$y;

    return-void
.end method

.method private B(Landroid/view/View;III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-nez p3, :cond_0

    const/4 p3, -0x1

    .line 4
    :cond_0
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-nez p4, :cond_1

    const/4 p4, -0x1

    .line 5
    :cond_1
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a;->c:Lcom/join/mgps/socket/fight/arena/a$y;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/socket/fight/arena/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/socket/fight/arena/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/a;->k(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lcom/join/mgps/socket/fight/arena/a;Landroid/view/View;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    return-void
.end method

.method static synthetic e()I
    .locals 1

    .line 1
    sget v0, Lcom/join/mgps/socket/fight/arena/a;->v:I

    return v0
.end method

.method static synthetic f()I
    .locals 1

    .line 1
    sget v0, Lcom/join/mgps/socket/fight/arena/a;->w:I

    return v0
.end method

.method static synthetic g(Lcom/join/mgps/socket/fight/arena/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/socket/fight/arena/a;->d:I

    return p0
.end method

.method static synthetic h(Lcom/join/mgps/socket/fight/arena/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/socket/fight/arena/a;->d:I

    return p1
.end method

.method static synthetic i(Lcom/join/mgps/socket/fight/arena/a;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic j(Lcom/join/mgps/socket/fight/arena/a;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    return-object p1
.end method

.method private k(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0907ee

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private varargs l([Ljava/lang/Object;)V
    .locals 12

    .line 1
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    const v2, 0x7f1204e2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c014d

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    aget-object v3, p1, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 8
    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v4, 0x7f09036d

    .line 9
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f090365

    .line 10
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f09036b

    .line 11
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v7, 0x7f09036e

    .line 12
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f09100a

    .line 13
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0907ee

    .line 14
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x2

    .line 15
    aget-object v10, p1, v10

    check-cast v10, Ljava/lang/String;

    .line 16
    invoke-static {v10}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 17
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 v7, 0x101

    const/4 v10, 0x3

    const/16 v11, 0x8

    if-ne v3, v7, :cond_2

    .line 18
    aget-object p1, p1, v10

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 20
    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 21
    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 22
    new-instance p1, Lcom/join/mgps/socket/fight/arena/a$r;

    invoke-direct {p1, p0}, Lcom/join/mgps/socket/fight/arena/a$r;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const/16 v7, 0x102

    if-ne v3, v7, :cond_3

    const-string v2, "\u7cfb\u7edf\u63d0\u793a"

    .line 23
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    aget-object p1, p1, v10

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 27
    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 28
    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 29
    new-instance p1, Lcom/join/mgps/socket/fight/arena/a$s;

    invoke-direct {p1, p0}, Lcom/join/mgps/socket/fight/arena/a$s;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 31
    new-instance p1, Lcom/join/mgps/socket/fight/arena/a$t;

    invoke-direct {p1, p0}, Lcom/join/mgps/socket/fight/arena/a$t;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    invoke-virtual {v9, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 32
    :cond_3
    invoke-virtual {v4, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 33
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 34
    invoke-virtual {v6, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 35
    aget-object v3, p1, v10

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 36
    new-instance v3, Lcom/join/mgps/socket/fight/arena/a$u;

    invoke-direct {v3, p0, v2}, Lcom/join/mgps/socket/fight/arena/a$u;-><init>(Lcom/join/mgps/socket/fight/arena/a;I)V

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x5

    .line 37
    aget-object v3, p1, v3

    const/4 v4, 0x4

    .line 38
    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v6, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 39
    new-instance p1, Lcom/join/mgps/socket/fight/arena/a$v;

    invoke-direct {p1, p0, v2, v3}, Lcom/join/mgps/socket/fight/arena/a$v;-><init>(Lcom/join/mgps/socket/fight/arena/a;ILjava/lang/Object;)V

    invoke-virtual {v6, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/16 p1, 0x11

    .line 40
    invoke-direct {p0, v0, p1, v1, v1}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    return-void
.end method

.method private varargs m([Ljava/lang/Object;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    const v2, 0x7f1204e2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0171

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09111f

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 8
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    new-instance v1, Lcom/join/mgps/socket/fight/arena/a$z;

    const-string v3, "kick_info"

    invoke-direct {v1, p0, v3}, Lcom/join/mgps/socket/fight/arena/a$z;-><init>(Lcom/join/mgps/socket/fight/arena/a;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 10
    invoke-direct {p0, v0}, Lcom/join/mgps/socket/fight/arena/a;->k(Landroid/view/View;)V

    const/16 p1, 0x11

    .line 11
    invoke-direct {p0, v0, p1, v2, v2}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    return-void
.end method

.method private varargs n([Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    check-cast v1, Lcom/papa91/battle/protocol/KickInfo;

    const/4 v2, 0x1

    .line 2
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    new-instance v3, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    const v5, 0x7f1204e2

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_0

    .line 5
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 6
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 7
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0177

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f091192

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 10
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/KickInfo;->getIsVIP()Z

    move-result v4

    const-string v5, "\u628a\""

    if-nez v4, :cond_1

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/KickInfo;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\"\u8e22\u51fa\u623f\u95f4\n\u9700\u8981\u6d88\u8017"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/KickInfo;->getCopper()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u94dc\u677f,\u60a8\u786e\u5b9a\u8981\u8e22\u51fa\u561b\uff1f"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/KickInfo;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\"\u8e22\u51fa\u623f\u95f4\n\u7531\u4e8e\u5bf9\u65b9\u662fVIP\u7528\u6237\n\u9700\u8981\u6d88\u8017"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/KickInfo;->getCopper()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u94dc\u677f \u60a8\u786e\u5b9a\u8981\u8e22\u51fa\u561b\uff1f"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v1, 0x7f0901bc

    .line 13
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/join/mgps/socket/fight/arena/a$w;

    invoke-direct {v3, p0}, Lcom/join/mgps/socket/fight/arena/a$w;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901e4

    .line 14
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/join/mgps/socket/fight/arena/a$x;

    invoke-direct {v3, p0, p1}, Lcom/join/mgps/socket/fight/arena/a$x;-><init>(Lcom/join/mgps/socket/fight/arena/a;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-direct {p0, v2}, Lcom/join/mgps/socket/fight/arena/a;->k(Landroid/view/View;)V

    const/16 p1, 0x11

    .line 16
    invoke-direct {p0, v2, p1, v0, v0}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    return-void
.end method

.method private o()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    const v2, 0x7f1204e2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0178

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901a1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/socket/fight/arena/a$o;

    invoke-direct {v2, p0}, Lcom/join/mgps/socket/fight/arena/a$o;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-direct {p0, v0}, Lcom/join/mgps/socket/fight/arena/a;->k(Landroid/view/View;)V

    const/16 v1, 0x11

    const/4 v2, 0x0

    .line 9
    invoke-direct {p0, v0, v1, v2, v2}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    return-void
.end method

.method private varargs p([Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/socket/fight/arena/a$a0;

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, p1}, Lcom/join/mgps/socket/fight/arena/a$a0;-><init>(Lcom/join/mgps/socket/fight/arena/a;Landroid/content/Context;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->e:Lcom/join/mgps/socket/fight/arena/a$a0;

    return-void
.end method

.method private varargs q([Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    .line 2
    aget-object v3, p1, v2

    check-cast v3, Lapp/mgsim/arena/RoomSeatState;

    const/4 v4, 0x2

    .line 3
    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4
    new-instance v5, Landroid/app/Dialog;

    iget-object v6, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    const v7, 0x7f1204e2

    invoke-direct {v5, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_0

    .line 6
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 7
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 8
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0c016f

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0901e5

    .line 10
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f09115c

    .line 11
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 12
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    sget-object v1, Lapp/mgsim/arena/RoomSeatState;->OPEN:Lapp/mgsim/arena/RoomSeatState;

    if-ne v3, v1, :cond_1

    const-string p1, "\u5f00\u542f\u4f4d\u7f6e"

    .line 14
    invoke-virtual {v5, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 15
    :cond_1
    sget-object v1, Lapp/mgsim/arena/RoomSeatState;->CLOSE:Lapp/mgsim/arena/RoomSeatState;

    if-ne v3, v1, :cond_2

    const-string p1, "\u5173\u95ed\u4f4d\u7f6e"

    .line 16
    invoke-virtual {v5, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 17
    :cond_2
    sget-object v1, Lapp/mgsim/arena/RoomSeatState;->SEAT:Lapp/mgsim/arena/RoomSeatState;

    if-ne v3, v1, :cond_3

    const-string p1, "\u5750\u4e0b"

    .line 18
    invoke-virtual {v5, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 19
    :cond_3
    sget-object v1, Lapp/mgsim/arena/RoomSeatState;->REPORT:Lapp/mgsim/arena/RoomSeatState;

    const v6, 0x7f0901e9

    const/16 v7, 0xd

    const/high16 v8, 0x438f0000    # 286.0f

    const v9, 0x7f090d67

    const/4 v10, 0x3

    if-ne v3, v1, :cond_4

    .line 20
    aget-object p1, p1, v10

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    .line 21
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 22
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v10, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    invoke-static {v10, v8}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v8

    iget-object v10, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    const/high16 v11, 0x43060000    # 134.0f

    invoke-static {v10, v11}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v9, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 23
    invoke-virtual {v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 24
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 26
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 27
    new-instance v6, Lcom/join/mgps/socket/fight/arena/a$i;

    invoke-direct {v6, p0, p1}, Lcom/join/mgps/socket/fight/arena/a$i;-><init>(Lcom/join/mgps/socket/fight/arena/a;Lcom/papa91/battle/protocol/RoomPosition;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p1, 0x8

    .line 28
    invoke-virtual {v5, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 29
    :cond_4
    sget-object v1, Lapp/mgsim/arena/RoomSeatState;->REMOVE_AND_REPORT:Lapp/mgsim/arena/RoomSeatState;

    if-ne v3, v1, :cond_5

    .line 30
    aget-object p1, p1, v10

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    .line 31
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 32
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v10, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    invoke-static {v10, v8}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v8

    iget-object v10, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-static {v10, v11}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v9, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 33
    invoke-virtual {v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 34
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 36
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 37
    new-instance v6, Lcom/join/mgps/socket/fight/arena/a$j;

    invoke-direct {v6, p0, p1}, Lcom/join/mgps/socket/fight/arena/a$j;-><init>(Lcom/join/mgps/socket/fight/arena/a;Lcom/papa91/battle/protocol/RoomPosition;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    new-instance v1, Lcom/join/mgps/socket/fight/arena/a$l;

    invoke-direct {v1, p0, p1, v4}, Lcom/join/mgps/socket/fight/arena/a$l;-><init>(Lcom/join/mgps/socket/fight/arena/a;Lcom/papa91/battle/protocol/RoomPosition;I)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "#FF4235"

    .line 39
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/Button;->setTextColor(I)V

    const-string p1, "\u8e22\u51fa\u623f\u95f4"

    .line 40
    invoke-virtual {v5, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080189

    .line 41
    invoke-virtual {v5, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 42
    :cond_5
    :goto_0
    sget-object p1, Lapp/mgsim/arena/RoomSeatState;->REMOVE_AND_REPORT:Lapp/mgsim/arena/RoomSeatState;

    if-eq v3, p1, :cond_6

    sget-object p1, Lapp/mgsim/arena/RoomSeatState;->REPORT:Lapp/mgsim/arena/RoomSeatState;

    if-eq v3, p1, :cond_6

    .line 43
    new-instance p1, Lcom/join/mgps/socket/fight/arena/a$m;

    invoke-direct {p1, p0, v3, v4}, Lcom/join/mgps/socket/fight/arena/a$m;-><init>(Lcom/join/mgps/socket/fight/arena/a;Lapp/mgsim/arena/RoomSeatState;I)V

    invoke-virtual {v5, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :cond_6
    invoke-direct {p0, v2}, Lcom/join/mgps/socket/fight/arena/a;->k(Landroid/view/View;)V

    const/16 p1, 0x11

    .line 45
    invoke-direct {p0, v2, p1, v0, v0}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    return-void
.end method

.method private varargs r([Ljava/lang/Object;)V
    .locals 13

    .line 1
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    const v2, 0x7f1204e2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0197

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09095c

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v3, 0x7f090933

    .line 8
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    .line 9
    aget-object v5, p1, v4

    check-cast v5, Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 10
    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getIsBattle()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_4

    .line 11
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v1, 0x7f0910e8

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4f60\u7684\u8d26\u53f7\u94dc\u677f\u6570:  <font color=#000000>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getUserCopper()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "</font>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0901b2

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    move-result-object v6

    aget v6, v6, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\n\u94dc\u677f"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 18
    new-instance v3, Lcom/join/mgps/socket/fight/arena/a$e;

    invoke-direct {v3, p0, v5}, Lcom/join/mgps/socket/fight/arena/a$e;-><init>(Lcom/join/mgps/socket/fight/arena/a;Lcom/join/mgps/dto/BattleChallengeConfig;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0901b3

    .line 19
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 20
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    move-result-object v8

    aget v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 21
    new-instance v7, Lcom/join/mgps/socket/fight/arena/a$f;

    invoke-direct {v7, p0, v5}, Lcom/join/mgps/socket/fight/arena/a$f;-><init>(Lcom/join/mgps/socket/fight/arena/a;Lcom/join/mgps/dto/BattleChallengeConfig;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0901b4

    .line 22
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 23
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    move-result-object v9

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 24
    new-instance v8, Lcom/join/mgps/socket/fight/arena/a$g;

    invoke-direct {v8, p0, v5}, Lcom/join/mgps/socket/fight/arena/a$g;-><init>(Lcom/join/mgps/socket/fight/arena/a;Lcom/join/mgps/dto/BattleChallengeConfig;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0901b5

    .line 25
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 26
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    move-result-object v11

    const/4 v12, 0x3

    aget v11, v11, v12

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 27
    new-instance v6, Lcom/join/mgps/socket/fight/arena/a$h;

    invoke-direct {v6, p0, v5}, Lcom/join/mgps/socket/fight/arena/a$h;-><init>(Lcom/join/mgps/socket/fight/arena/a;Lcom/join/mgps/dto/BattleChallengeConfig;)V

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    move-result-object v6

    aget v6, v6, v4

    const v9, 0x7f080180

    const/4 v11, -0x1

    if-ne p1, v6, :cond_1

    .line 29
    invoke-virtual {v1, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 30
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 31
    :cond_1
    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    move-result-object v1

    aget v1, v1, v2

    if-ne p1, v1, :cond_2

    .line 32
    invoke-virtual {v3, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 33
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 34
    :cond_2
    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    move-result-object v1

    aget v1, v1, v10

    if-ne p1, v1, :cond_3

    .line 35
    invoke-virtual {v7, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 36
    invoke-virtual {v7, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 37
    :cond_3
    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    move-result-object v1

    aget v1, v1, v12

    if-ne p1, v1, :cond_5

    .line 38
    invoke-virtual {v8, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 39
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 40
    :cond_4
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 41
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/String;

    const v1, 0x7f09111a

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u3011"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09111b

    .line 45
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6311\u6218\u91d1<font color=#3CA4FD>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getFixChallengeCopper()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u94dc\u677f</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f091119

    .line 47
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1\u3001\u8fdb\u5165\u6e38\u620f\u540e\u6263\u9664\u6311\u6218\u91d1\n2\u3001\u6bcf\u6b21\u6295\u5e01\u90fd\u6263\u9664\u6311\u6218\u91d1\n3\u3001\u8fbe\u5230"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getChallengeScore()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u5206\u8fd4\u8fd8\u6311\u6218\u91d1\n4\u3001\u5b8c\u6574\u901a\u5173\u540e\u6709\u968f\u673a\u94dc\u677f\u5956\u52b1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_5
    :goto_0
    invoke-direct {p0, v0}, Lcom/join/mgps/socket/fight/arena/a;->k(Landroid/view/View;)V

    const/16 p1, 0x11

    .line 50
    invoke-direct {p0, v0, p1, v4, v4}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    return-void
.end method

.method private varargs s([Ljava/lang/Object;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    const v2, 0x7f1204e2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0176

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f091165

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 8
    aget-object v4, p1, v3

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x7f0901c9

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/join/mgps/socket/fight/arena/a$a;

    invoke-direct {v5, p0, p1, v1, v4}, Lcom/join/mgps/socket/fight/arena/a$a;-><init>(Lcom/join/mgps/socket/fight/arena/a;[Ljava/lang/Object;ILjava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-direct {p0, v0}, Lcom/join/mgps/socket/fight/arena/a;->k(Landroid/view/View;)V

    const/16 p1, 0x11

    .line 13
    invoke-direct {p0, v0, p1, v3, v3}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    return-void
.end method

.method private t()V
    .locals 5

    .line 1
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    const v2, 0x7f1204e2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0379

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090c9d

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0912cd

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    .line 9
    iput v3, p0, Lcom/join/mgps/socket/fight/arena/a;->d:I

    .line 10
    new-instance v3, Lcom/join/mgps/socket/fight/arena/a$b;

    invoke-direct {v3, p0}, Lcom/join/mgps/socket/fight/arena/a$b;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance v1, Lcom/join/mgps/socket/fight/arena/a$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/socket/fight/arena/a$c;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    new-instance v2, Lcom/join/mgps/socket/fight/arena/a$d;

    invoke-direct {v2, p0}, Lcom/join/mgps/socket/fight/arena/a$d;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 13
    invoke-direct {p0, v0}, Lcom/join/mgps/socket/fight/arena/a;->k(Landroid/view/View;)V

    const/16 v1, 0x11

    .line 14
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 15
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071279

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 16
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0711b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 17
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    return-void
.end method

.method private varargs u([Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    const v3, 0x7f1204e2

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/16 v4, 0x1c

    if-lt v2, v4, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 6
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0196

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0907ee

    .line 8
    invoke-static {v1, v2}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 9
    new-instance v4, Lcom/join/mgps/socket/fight/arena/a$k;

    invoke-direct {v4, p0}, Lcom/join/mgps/socket/fight/arena/a$k;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f091198

    .line 10
    invoke-static {v1, v2}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0901a2

    .line 11
    invoke-static {v1, v4}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    if-ne p1, v3, :cond_1

    const-string v5, "\u5373\u5c06\u5173\u95ed\u6d41\u7545\u6a21\u5f0f"

    .line 12
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u786e\u5b9a\u5173\u95ed"

    .line 13
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v5, "\u5373\u5c06\u5f00\u542f\u6d41\u7545\u6a21\u5f0f"

    .line 14
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u786e\u5b9a\u5f00\u542f"

    .line 15
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-ne p1, v3, :cond_2

    const/4 v3, 0x0

    .line 16
    :cond_2
    new-instance p1, Lcom/join/mgps/socket/fight/arena/a$q;

    invoke-direct {p1, p0, v3}, Lcom/join/mgps/socket/fight/arena/a$q;-><init>(Lcom/join/mgps/socket/fight/arena/a;I)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p1, 0x11

    .line 17
    invoke-direct {p0, v1, p1, v0, v0}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    return-void
.end method

.method private varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    const v2, 0x7f1204e3

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0170

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f091196

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 8
    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    new-instance v1, Lcom/join/mgps/socket/fight/arena/a$n;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/socket/fight/arena/a$n;-><init>(Lcom/join/mgps/socket/fight/arena/a;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/16 p1, 0x11

    .line 10
    iget-object p2, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    const v1, 0x43888000    # 273.0f

    invoke-static {p2, v1}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result p2

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v1, v2}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->e:Lcom/join/mgps/socket/fight/arena/a$a0;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Lcom/join/mgps/socket/fight/arena/a$a0;->x:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized C()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized D(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    const-string v0, "dialog_error_hint"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a;->l([Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "kic_out_room_info"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a;->n([Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v0, "leave_room"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/a;->o()V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    const-string v0, "toast_move_in_spectator"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "toast_kic_out_room"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const-string v0, "net_archive"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a;->p([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    const-string v0, "kick_info"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a;->m([Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    const-string v0, "seat_set"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a;->q([Ljava/lang/Object;)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :cond_6
    :try_start_6
    const-string v0, "set_challenge_gold"

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a;->r([Ljava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    const-string v0, "share_friends_1"

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/a;->t()V

    .line 32
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :cond_8
    :try_start_8
    const-string v0, "share_friends_2"

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a;->s([Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    const-string v0, "svr_play_mode"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 39
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a;->u([Ljava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 42
    :cond_a
    monitor-exit p0

    return-void

    .line 43
    :cond_b
    :goto_0
    :try_start_a
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/socket/fight/arena/a;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized w()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public x()Landroid/app/Dialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    return-object v0
.end method

.method public declared-synchronized y()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->e:Lcom/join/mgps/socket/fight/arena/a$a0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a$a0;->n()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
