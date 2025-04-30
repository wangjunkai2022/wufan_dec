.class public Lcom/join/mgps/dialog/o;
.super Landroid/app/Dialog;
.source "ArenaRoomTypeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/o$d;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/RadioButton;

.field private c:Landroid/widget/RadioButton;

.field private d:I

.field private e:Lcom/join/mgps/dialog/o$d;

.field private f:Landroid/view/View;

.field g:Landroid/view/View;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/RadioButton;

.field n:Landroid/widget/RadioButton;

.field o:Landroid/widget/RadioButton;

.field p:Landroid/widget/RadioButton;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field private s:Z

.field private t:Z

.field private u:Lcom/papa91/battle/protocol/GameRoom;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f1204e2

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/join/mgps/dialog/o;->d:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dialog/o;->q:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/dialog/o;->r:Ljava/lang/String;

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/o;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p2, 0x7f1204e2

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x2

    .line 7
    iput p2, p0, Lcom/join/mgps/dialog/o;->d:I

    const-string p2, ""

    .line 8
    iput-object p2, p0, Lcom/join/mgps/dialog/o;->q:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/join/mgps/dialog/o;->r:Ljava/lang/String;

    .line 10
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/o;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/o;)Lcom/join/mgps/dialog/o$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/o;->e:Lcom/join/mgps/dialog/o$d;

    return-object p0
.end method

.method private b(IZZ)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->c:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->c:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    const-string p1, ""

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/dialog/o;->m:Landroid/widget/RadioButton;

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/dialog/o;->p:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5
    iput-object p1, p0, Lcom/join/mgps/dialog/o;->q:Ljava/lang/String;

    goto :goto_2

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/dialog/o;->q:Ljava/lang/String;

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 7
    iget-object p2, p0, Lcom/join/mgps/dialog/o;->r:Ljava/lang/String;

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->r:Ljava/lang/String;

    iput-object p1, p0, Lcom/join/mgps/dialog/o;->q:Ljava/lang/String;

    goto :goto_1

    .line 9
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/dialog/o;->q:Ljava/lang/String;

    .line 10
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->m:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->p:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 12
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->q:Ljava/lang/String;

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->k:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u623f\u95f4\u6027\u8d28\uff08\u5bc6\u7801"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dialog/o;->q:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->k:Landroid/widget/TextView;

    const-string p2, "\u623f\u95f4\u6027\u8d28"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    if-eqz p3, :cond_5

    .line 15
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->n:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->o:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_4

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->o:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->n:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_4
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/o;->a:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0151

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 6
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const v1, 0x7f090d8d

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/join/mgps/dialog/o;->b:Landroid/widget/RadioButton;

    const v1, 0x7f090d8c

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/join/mgps/dialog/o;->c:Landroid/widget/RadioButton;

    const v1, 0x7f0907ee

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/dialog/o;->f:Landroid/view/View;

    const v1, 0x7f091171

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/dialog/o;->h:Landroid/widget/TextView;

    const v1, 0x7f090301

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/dialog/o;->i:Landroid/widget/TextView;

    const v1, 0x7f090d76

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/join/mgps/dialog/o;->m:Landroid/widget/RadioButton;

    const v1, 0x7f090d77

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/join/mgps/dialog/o;->p:Landroid/widget/RadioButton;

    const v1, 0x7f09082e

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/join/mgps/dialog/o;->n:Landroid/widget/RadioButton;

    const v1, 0x7f0904bc

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/dialog/o;->j:Landroid/widget/TextView;

    const v1, 0x7f09082f

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/join/mgps/dialog/o;->o:Landroid/widget/RadioButton;

    const v1, 0x7f090d6c

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/dialog/o;->g:Landroid/view/View;

    const v1, 0x7f0910cf

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/dialog/o;->l:Landroid/widget/TextView;

    const v1, 0x7f090d8f

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/o;->k:Landroid/widget/TextView;

    .line 21
    iget-object v0, p0, Lcom/join/mgps/dialog/o;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/dialog/o$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/dialog/o$a;-><init>(Lcom/join/mgps/dialog/o;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->m:Landroid/widget/RadioButton;

    new-instance v0, Lcom/join/mgps/dialog/o$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/o$b;-><init>(Lcom/join/mgps/dialog/o;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->g:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 26
    new-instance v0, Lcom/join/mgps/dialog/o$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/o$c;-><init>(Lcom/join/mgps/dialog/o;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private varargs d(Z[Landroid/view/View;)V
    .locals 3

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 2
    invoke-virtual {v2, p1}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/o;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/dialog/o$d;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPCJoin()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result v2

    xor-int/2addr v1, v2

    .line 3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowSpectatorJoin()Z

    move-result v2

    .line 4
    iput v0, p0, Lcom/join/mgps/dialog/o;->d:I

    .line 5
    iput-object p2, p0, Lcom/join/mgps/dialog/o;->e:Lcom/join/mgps/dialog/o$d;

    .line 6
    iput-boolean v2, p0, Lcom/join/mgps/dialog/o;->t:Z

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/dialog/o;->s:Z

    .line 8
    iput-object p1, p0, Lcom/join/mgps/dialog/o;->u:Lcom/papa91/battle/protocol/GameRoom;

    .line 9
    iget-object p2, p0, Lcom/join/mgps/dialog/o;->h:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    .line 11
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 12
    iget-object p2, p0, Lcom/join/mgps/dialog/o;->g:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/dialog/o;->g:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :goto_1
    iget-object p2, p0, Lcom/join/mgps/dialog/o;->b:Landroid/widget/RadioButton;

    invoke-virtual {p2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p2, p0, Lcom/join/mgps/dialog/o;->c:Landroid/widget/RadioButton;

    invoke-virtual {p2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p2, p0, Lcom/join/mgps/dialog/o;->f:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p2, p0, Lcom/join/mgps/dialog/o;->j:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/join/mgps/dialog/o;->r:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/join/mgps/dialog/o;->q:Ljava/lang/String;

    .line 21
    iget-object p2, p0, Lcom/join/mgps/dialog/o;->k:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u623f\u95f4\u6027\u8d28\uff08\u5bc6\u7801"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->k:Landroid/widget/TextView;

    const-string p2, "\u623f\u95f4\u6027\u8d28"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :goto_2
    iget p1, p0, Lcom/join/mgps/dialog/o;->d:I

    invoke-direct {p0, p1, v1, v2}, Lcom/join/mgps/dialog/o;->b(IZZ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090d8d

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f090d8c

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x7f0907ee

    if-ne p1, v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    :cond_2
    const v0, 0x7f0904bc

    if-ne p1, v0, :cond_5

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->e:Lcom/join/mgps/dialog/o$d;

    if-eqz p1, :cond_4

    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->b:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/join/mgps/dialog/o;->d:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/join/mgps/dialog/o;->d:I

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/o;->e:Lcom/join/mgps/dialog/o$d;

    iget v0, p0, Lcom/join/mgps/dialog/o;->d:I

    iget-object v1, p0, Lcom/join/mgps/dialog/o;->m:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/dialog/o;->n:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/dialog/o;->q:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/join/mgps/dialog/o$d;->a(IZZLjava/lang/String;)V

    .line 8
    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_5
    :goto_1
    return-void
.end method
