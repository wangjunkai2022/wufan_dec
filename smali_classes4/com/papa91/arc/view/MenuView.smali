.class public Lcom/papa91/arc/view/MenuView;
.super Landroid/widget/RelativeLayout;
.source "MenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field alert:Landroid/widget/ImageView;

.field changeDisk:Landroid/view/View;

.field cheating:Landroid/view/View;

.field countDownTimer:Landroid/os/CountDownTimer;

.field dialog:Landroid/app/Dialog;

.field exit:Landroid/view/View;

.field fCheating:Lcom/papa91/arc/widget/view/MImageView;

.field fGate:Lcom/papa91/arc/widget/view/MImageView;

.field fHide:Lcom/papa91/arc/widget/view/MImageView;

.field fOneKey:Lcom/papa91/arc/widget/view/MImageView;

.field fQuickSlot:Lcom/papa91/arc/widget/view/MImageView;

.field fScreenShot:Lcom/papa91/arc/widget/view/MImageView;

.field fShow:Lcom/papa91/arc/widget/view/MImageView;

.field forum:Landroid/view/View;

.field private hiding:Z

.field isRankTimeStop:Z

.field isSound:Z

.field isVibrate:Z

.field iv_timer:Landroid/widget/ImageView;

.field ll_play_time:Landroid/widget/LinearLayout;

.field menuBar:Landroid/view/View;

.field menuBarOutSide:Landroid/view/View;

.field menuBarStatue:I

.field menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

.field millisUntilFinish:J

.field pause:Landroid/view/View;

.field pauseBar:Landroid/view/View;

.field performance:Landroid/view/View;

.field quickSlot:Landroid/view/View;

.field rankTime:I

.field reload:Landroid/view/View;

.field resume:Landroid/view/View;

.field scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private showAdImage:Z

.field private showChangeDisk:Z

.field slot:Landroid/view/View;

.field stickKeys:Landroid/view/View;

.field timer:Landroid/widget/TextView;

.field timerBg:Landroid/view/View;

.field timerContainer:Landroid/view/View;

.field tip:Landroid/widget/TextView;

.field tv_game_pass:Landroid/widget/TextView;

.field tv_time:Landroid/widget/TextView;

.field v_line:Landroid/view/View;

.field vibrate:Landroid/view/View;

.field voice:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/MenuView;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isSound:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isVibrate:Z

    .line 5
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->hiding:Z

    .line 6
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->showAdImage:Z

    .line 7
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->showChangeDisk:Z

    .line 8
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isRankTimeStop:Z

    .line 9
    iput p1, p0, Lcom/papa91/arc/view/MenuView;->rankTime:I

    .line 10
    iput p1, p0, Lcom/papa91/arc/view/MenuView;->menuBarStatue:I

    .line 11
    invoke-direct {p0}, Lcom/papa91/arc/view/MenuView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/MenuView;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isSound:Z

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isVibrate:Z

    .line 16
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->hiding:Z

    .line 17
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->showAdImage:Z

    .line 18
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->showChangeDisk:Z

    .line 19
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isRankTimeStop:Z

    .line 20
    iput p1, p0, Lcom/papa91/arc/view/MenuView;->rankTime:I

    .line 21
    iput p1, p0, Lcom/papa91/arc/view/MenuView;->menuBarStatue:I

    .line 22
    invoke-direct {p0}, Lcom/papa91/arc/view/MenuView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/MenuView;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isSound:Z

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isVibrate:Z

    .line 27
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->hiding:Z

    .line 28
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->showAdImage:Z

    .line 29
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->showChangeDisk:Z

    .line 30
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isRankTimeStop:Z

    .line 31
    iput p1, p0, Lcom/papa91/arc/view/MenuView;->rankTime:I

    .line 32
    iput p1, p0, Lcom/papa91/arc/view/MenuView;->menuBarStatue:I

    .line 33
    invoke-direct {p0}, Lcom/papa91/arc/view/MenuView;->initView()V

    return-void
.end method

.method public static synthetic a(Lcom/papa91/arc/view/MenuView;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/papa91/arc/view/MenuView;->lambda$updateTime$0(IIII)V

    return-void
.end method

.method static synthetic access$002(Lcom/papa91/arc/view/MenuView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->hiding:Z

    return p1
.end method

.method private initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/ppsspp/ppsspp/R$layout;->menu_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lorg/ppsspp/ppsspp/R$id;->fCheating:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/widget/view/MImageView;

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->fCheating:Lcom/papa91/arc/widget/view/MImageView;

    .line 3
    sget v1, Lorg/ppsspp/ppsspp/R$id;->fQuickSlot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/widget/view/MImageView;

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->fQuickSlot:Lcom/papa91/arc/widget/view/MImageView;

    .line 4
    sget v1, Lorg/ppsspp/ppsspp/R$id;->fHide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/widget/view/MImageView;

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->fHide:Lcom/papa91/arc/widget/view/MImageView;

    .line 5
    sget v1, Lorg/ppsspp/ppsspp/R$id;->fShow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/widget/view/MImageView;

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->fShow:Lcom/papa91/arc/widget/view/MImageView;

    .line 6
    sget v1, Lorg/ppsspp/ppsspp/R$id;->fScreenShot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/widget/view/MImageView;

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->fScreenShot:Lcom/papa91/arc/widget/view/MImageView;

    .line 7
    sget v1, Lorg/ppsspp/ppsspp/R$id;->fGate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/widget/view/MImageView;

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->fGate:Lcom/papa91/arc/widget/view/MImageView;

    .line 8
    sget v1, Lorg/ppsspp/ppsspp/R$id;->fOneKey:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/widget/view/MImageView;

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->fOneKey:Lcom/papa91/arc/widget/view/MImageView;

    .line 9
    sget v1, Lorg/ppsspp/ppsspp/R$id;->pause:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->pause:Landroid/view/View;

    .line 10
    sget v1, Lorg/ppsspp/ppsspp/R$id;->pauseBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 11
    sget v1, Lorg/ppsspp/ppsspp/R$id;->resume:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->resume:Landroid/view/View;

    .line 12
    sget v1, Lorg/ppsspp/ppsspp/R$id;->menuBarOutSide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuBarOutSide:Landroid/view/View;

    .line 13
    sget v1, Lorg/ppsspp/ppsspp/R$id;->menuBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    .line 14
    sget v1, Lorg/ppsspp/ppsspp/R$id;->exit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->exit:Landroid/view/View;

    .line 15
    sget v1, Lorg/ppsspp/ppsspp/R$id;->reload:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->reload:Landroid/view/View;

    .line 16
    sget v1, Lorg/ppsspp/ppsspp/R$id;->voice:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->voice:Landroid/view/View;

    .line 17
    sget v1, Lorg/ppsspp/ppsspp/R$id;->vibrate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->vibrate:Landroid/view/View;

    .line 18
    sget v1, Lorg/ppsspp/ppsspp/R$id;->quickSlot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->quickSlot:Landroid/view/View;

    .line 19
    sget v1, Lorg/ppsspp/ppsspp/R$id;->forum:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->forum:Landroid/view/View;

    .line 20
    sget v1, Lorg/ppsspp/ppsspp/R$id;->changeDisk:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->changeDisk:Landroid/view/View;

    .line 21
    sget v1, Lorg/ppsspp/ppsspp/R$id;->slot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->slot:Landroid/view/View;

    .line 22
    sget v1, Lorg/ppsspp/ppsspp/R$id;->cheating:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->cheating:Landroid/view/View;

    .line 23
    sget v1, Lorg/ppsspp/ppsspp/R$id;->performance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->performance:Landroid/view/View;

    .line 24
    sget v1, Lorg/ppsspp/ppsspp/R$id;->stickKeys:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->stickKeys:Landroid/view/View;

    .line 25
    sget v1, Lorg/ppsspp/ppsspp/R$id;->timerContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->timerContainer:Landroid/view/View;

    .line 26
    sget v1, Lorg/ppsspp/ppsspp/R$id;->timerBg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->timerBg:Landroid/view/View;

    .line 27
    sget v1, Lorg/ppsspp/ppsspp/R$id;->timer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->timer:Landroid/widget/TextView;

    .line 28
    sget v1, Lorg/ppsspp/ppsspp/R$id;->alert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->alert:Landroid/widget/ImageView;

    .line 29
    sget v1, Lorg/ppsspp/ppsspp/R$id;->ll_play_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->ll_play_time:Landroid/widget/LinearLayout;

    .line 30
    sget v1, Lorg/ppsspp/ppsspp/R$id;->iv_timer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->iv_timer:Landroid/widget/ImageView;

    .line 31
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->tv_time:Landroid/widget/TextView;

    .line 32
    sget v1, Lorg/ppsspp/ppsspp/R$id;->v_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->v_line:Landroid/view/View;

    .line 33
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_game_pass:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/view/MenuView;->tv_game_pass:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fCheating:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fQuickSlot:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fHide:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fShow:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fScreenShot:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fGate:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fOneKey:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pause:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->resume:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->exit:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->reload:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->voice:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->vibrate:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->quickSlot:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->forum:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->slot:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->cheating:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->performance:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->stickKeys:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->timerBg:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->timer:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->changeDisk:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->tv_game_pass:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    new-instance v1, Lcom/papa91/arc/view/MenuView$1;

    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$1;-><init>(Lcom/papa91/arc/view/MenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBarOutSide:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->changeDisk:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$updateTime$0(IIII)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->getMiniRankTime()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->tv_game_pass:Landroid/widget/TextView;

    const-string v0, "#A7E0FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->tv_game_pass:Landroid/widget/TextView;

    const-string v0, "#6F7989"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->tv_time:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    const/16 v2, 0x9

    if-le p2, v2, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le p3, v2, :cond_3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le p4, v2, :cond_4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_3

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method alertRing()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/papa91/arc/view/MenuView;->millisUntilFinish:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->alert:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->alert:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method alertStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->alert:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->alert:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public amplification()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->menuShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    int-to-float v0, v0

    aput v0, v2, v3

    const-string v0, "translationY"

    invoke-static {v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/papa91/arc/view/MenuView$8;

    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$8;-><init>(Lcom/papa91/arc/view/MenuView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dismissMenu()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/papa91/arc/view/MenuView;->hiding:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/papa91/arc/view/MenuView;->hiding:Z

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 4
    iget-object v2, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    int-to-float v6, v5

    aput v6, v4, v5

    int-to-float v0, v0

    aput v0, v4, v1

    const-string v0, "translationY"

    invoke-static {v2, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/papa91/arc/view/MenuView$4;

    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$4;-><init>(Lcom/papa91/arc/view/MenuView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->needShowBottomBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/papa91/arc/view/MenuView$5;

    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$5;-><init>(Lcom/papa91/arc/view/MenuView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xb4

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 12
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 13
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->changeDisk:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getRankTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/MenuView;->rankTime:I

    return v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/papa91/arc/view/MenuView;->hide(I)V

    return-void
.end method

.method public hide(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/papa91/arc/view/MenuView;->menuBarStatue:I

    :cond_1
    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hide2Float()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/papa91/arc/view/MenuView;->menuBarStatue:I

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fShow:Lcom/papa91/arc/widget/view/MImageView;

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v1

    const/4 v1, 0x0

    aput v1, v3, v2

    const-string v1, "translationX"

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0xb4

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/papa91/arc/view/MenuView$3;

    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$3;-><init>(Lcom/papa91/arc/view/MenuView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fHide:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v0, v2}, Lcom/papa91/arc/widget/view/MImageView;->hide(Z)V

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fScreenShot:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v0, v2}, Lcom/papa91/arc/widget/view/MImageView;->hide(Z)V

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isShowGate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fGate:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v0, v2}, Lcom/papa91/arc/widget/view/MImageView;->hide(Z)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isShowOnekey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fOneKey:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v0, v2}, Lcom/papa91/arc/widget/view/MImageView;->hide(Z)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isShowCheating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fCheating:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v0, v2}, Lcom/papa91/arc/widget/view/MImageView;->hide(Z)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isShowQuickSlot()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fQuickSlot:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v0, v2}, Lcom/papa91/arc/widget/view/MImageView;->hide(Z)V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    const/16 v1, 0x8

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isRankGame()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->ll_play_time:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pause:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isRankGame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->ll_play_time:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->timerContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isTimerShowing()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->timerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/papa91/arc/view/MenuView;->millisUntilFinish:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public menuShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public narrow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v0, v0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    const-string v0, "translationY"

    invoke-static {v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/papa91/arc/view/MenuView$9;

    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$9;-><init>(Lcom/papa91/arc/view/MenuView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->pause:I

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->popupMenu()V

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_22

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->gameOnPause()V

    goto/16 :goto_3

    .line 5
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->resume:I

    if-ne p1, v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 7
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_22

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->gameOnResume()V

    goto/16 :goto_3

    .line 8
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->menuBarOutSide:I

    if-ne p1, v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->menuShowing()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->hiding:Z

    if-nez p1, :cond_22

    .line 10
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 11
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_22

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->gameOnResume()V

    goto/16 :goto_3

    .line 12
    :cond_2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->menuBar:I

    if-ne p1, v0, :cond_3

    goto/16 :goto_3

    .line 13
    :cond_3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->fHide:I

    if-ne p1, v0, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->hide2Float()V

    .line 15
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_22

    .line 16
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->onHideMenu()V

    goto/16 :goto_3

    .line 17
    :cond_4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->fShow:I

    if-ne p1, v0, :cond_5

    .line 18
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->show()V

    goto/16 :goto_3

    .line 19
    :cond_5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->slot:I

    if-eq p1, v0, :cond_20

    sget v0, Lorg/ppsspp/ppsspp/R$id;->fQuickSlot:I

    if-ne p1, v0, :cond_6

    goto/16 :goto_2

    .line 20
    :cond_6
    sget v0, Lorg/ppsspp/ppsspp/R$id;->cheating:I

    if-eq p1, v0, :cond_1e

    sget v0, Lorg/ppsspp/ppsspp/R$id;->fCheating:I

    if-ne p1, v0, :cond_7

    goto/16 :goto_1

    .line 21
    :cond_7
    sget v0, Lorg/ppsspp/ppsspp/R$id;->performance:I

    if-ne p1, v0, :cond_9

    .line 22
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->showMenuPerformance()V

    .line 23
    :cond_8
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    goto/16 :goto_3

    .line 24
    :cond_9
    sget v0, Lorg/ppsspp/ppsspp/R$id;->exit:I

    if-ne p1, v0, :cond_a

    .line 25
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_22

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->exit()V

    goto/16 :goto_3

    .line 26
    :cond_a
    sget v0, Lorg/ppsspp/ppsspp/R$id;->reload:I

    if-ne p1, v0, :cond_b

    .line 27
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->showReloadPrompt()V

    goto/16 :goto_3

    .line 28
    :cond_b
    sget v0, Lorg/ppsspp/ppsspp/R$id;->voice:I

    if-ne p1, v0, :cond_e

    .line 29
    iget-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isSound:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isSound:Z

    .line 30
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/papa91/arc/view/MenuViewListener;->voice(Z)V

    .line 31
    :cond_c
    iget-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isSound:Z

    if-eqz p1, :cond_d

    .line 32
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->voice:Landroid/view/View;

    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->voice:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 33
    :cond_d
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->voice:Landroid/view/View;

    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->voice_mute:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 34
    :cond_e
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vibrate:I

    if-ne p1, v0, :cond_11

    .line 35
    iget-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isVibrate:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isVibrate:Z

    .line 36
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Lcom/papa91/arc/view/MenuViewListener;->vibrate(Z)V

    .line 37
    :cond_f
    iget-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isVibrate:Z

    if-eqz p1, :cond_10

    .line 38
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->vibrate:Landroid/view/View;

    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->vibrate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 39
    :cond_10
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->vibrate:Landroid/view/View;

    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->vibrate_off:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 40
    :cond_11
    sget v0, Lorg/ppsspp/ppsspp/R$id;->quickSlot:I

    if-ne p1, v0, :cond_12

    .line 41
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_22

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->quickSlot()V

    goto/16 :goto_3

    .line 42
    :cond_12
    sget v0, Lorg/ppsspp/ppsspp/R$id;->forum:I

    if-ne p1, v0, :cond_13

    .line 43
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_22

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->forum()V

    goto/16 :goto_3

    .line 44
    :cond_13
    sget v0, Lorg/ppsspp/ppsspp/R$id;->stickKeys:I

    if-ne p1, v0, :cond_14

    .line 45
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_22

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->keysSetting()V

    goto/16 :goto_3

    .line 46
    :cond_14
    sget v0, Lorg/ppsspp/ppsspp/R$id;->timerBg:I

    if-eq p1, v0, :cond_1c

    sget v0, Lorg/ppsspp/ppsspp/R$id;->timer:I

    if-ne p1, v0, :cond_15

    goto :goto_0

    .line 47
    :cond_15
    sget v0, Lorg/ppsspp/ppsspp/R$id;->fGate:I

    if-ne p1, v0, :cond_16

    .line 48
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_22

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->showMenuGate()V

    goto/16 :goto_3

    .line 49
    :cond_16
    sget v0, Lorg/ppsspp/ppsspp/R$id;->fOneKey:I

    if-ne p1, v0, :cond_17

    .line 50
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_22

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->showMenuOnekey()V

    goto :goto_3

    .line 51
    :cond_17
    sget v0, Lorg/ppsspp/ppsspp/R$id;->fScreenShot:I

    if-ne p1, v0, :cond_19

    .line 52
    iget-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->showAdImage:Z

    if-eqz p1, :cond_18

    .line 53
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_22

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->onAdImageClick()V

    goto :goto_3

    .line 54
    :cond_18
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_22

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->onScreenShot()V

    goto :goto_3

    .line 55
    :cond_19
    sget v0, Lorg/ppsspp/ppsspp/R$id;->changeDisk:I

    if-ne p1, v0, :cond_1b

    .line 56
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 57
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_1a

    .line 58
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->onChangeDisk()V

    .line 59
    :cond_1a
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_22

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->gameOnResume()V

    goto :goto_3

    .line 60
    :cond_1b
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_game_pass:I

    if-ne p1, v0, :cond_22

    .line 61
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_22

    iget v0, p0, Lcom/papa91/arc/view/MenuView;->rankTime:I

    invoke-interface {p1, v0}, Lcom/papa91/arc/view/MenuViewListener;->onRankFinish(I)V

    goto :goto_3

    .line 62
    :cond_1c
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->showTimeLimitedDialog1()V

    :cond_1d
    const-string p1, "OnClickPSPCutDown"

    .line 63
    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->sendLimitStat(Ljava/lang/String;)V

    goto :goto_3

    .line 64
    :cond_1e
    :goto_1
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_1f

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->showMenuCheating()V

    .line 65
    :cond_1f
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    goto :goto_3

    .line 66
    :cond_20
    :goto_2
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_21

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->showMenuSlot()V

    .line 67
    :cond_21
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    :cond_22
    :goto_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->releaseTimer()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->menuShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->gameOnResume()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public pauseTimer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isRankGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/view/MenuView;->isRankTimeStop:Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->releaseTimer()V

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->alertStop()V

    :goto_0
    return-void
.end method

.method public popupMenu()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v3, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const/high16 v0, 0x42d40000    # 106.0f

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 6
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pop start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", end="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    iget-object v4, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    const/4 v5, 0x2

    new-array v5, v5, [F

    int-to-float v0, v0

    aput v0, v5, v2

    int-to-float v0, v2

    aput v0, v5, v3

    const-string v0, "translationY"

    invoke-static {v4, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0xb4

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->IsSoundEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/papa91/arc/view/MenuView;->isSound:Z

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->IsHapticFeedbackEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/papa91/arc/view/MenuView;->isVibrate:Z

    .line 12
    :cond_3
    iget-boolean v0, p0, Lcom/papa91/arc/view/MenuView;->isSound:Z

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->voice:Landroid/view/View;

    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->voice:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->voice:Landroid/view/View;

    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->voice_mute:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 15
    :goto_0
    iget-boolean v0, p0, Lcom/papa91/arc/view/MenuView;->isVibrate:Z

    if-eqz v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->vibrate:Landroid/view/View;

    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->vibrate:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->vibrate:Landroid/view/View;

    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->vibrate_off:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 18
    :goto_1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v0, :cond_7

    .line 19
    iget-object v3, p0, Lcom/papa91/arc/view/MenuView;->changeDisk:Landroid/view/View;

    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->getChangeDiskState()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    :cond_6
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public releaseTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isRankGame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/papa91/arc/view/MenuView;->isRankTimeStop:Z

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->alertStop()V

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/papa91/arc/view/MenuView;->countDownTimer:Landroid/os/CountDownTimer;

    :cond_1
    :goto_0
    return-void
.end method

.method public resumeTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isRankGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/view/MenuView;->isRankTimeStop:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/papa91/arc/view/MenuView;->millisUntilFinish:J

    invoke-virtual {p0, v0, v1}, Lcom/papa91/arc/view/MenuView;->startTimer(J)V

    :goto_0
    return-void
.end method

.method public setMenuViewListener(Lcom/papa91/arc/view/MenuViewListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 2
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->isShowGate()Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fGate:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fGate:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->isShowOnekey()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fOneKey:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fOneKey:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :goto_1
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->isShowCheating()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fCheating:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fCheating:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    :goto_2
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->isShowQuickSlot()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fQuickSlot:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fQuickSlot:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    :goto_3
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->needShowTimer()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->showTimer()V

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->hideTimer()V

    .line 17
    :goto_4
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->needShowBottomBar()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :goto_5
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->isRankAutoUpload()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->tv_game_pass:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->v_line:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 23
    :cond_6
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->tv_game_pass:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->v_line:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method public setRankTimeStop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isRankTimeStop:Z

    return-void
.end method

.method public setTime(J)V
    .locals 4

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3
    new-instance p1, Landroid/text/SpannableString;

    const-string p2, "\u8fdb\u5165\u5e7f\u544a"

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#9C7140"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {p1, p2, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->timer:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->fShow:Lcom/papa91/arc/widget/view/MImageView;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const-string v3, "translationX"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/papa91/arc/view/MenuView$2;

    invoke-direct {v2, p0}, Lcom/papa91/arc/view/MenuView$2;-><init>(Lcom/papa91/arc/view/MenuView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 5
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->fHide:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v1, v4}, Lcom/papa91/arc/widget/view/MImageView;->show(Z)V

    .line 6
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->fScreenShot:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v1, v4}, Lcom/papa91/arc/widget/view/MImageView;->show(Z)V

    .line 7
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/papa91/arc/view/MenuViewListener;->isShowOnekey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->fOneKey:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v1, v4}, Lcom/papa91/arc/widget/view/MImageView;->show(Z)V

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/papa91/arc/view/MenuViewListener;->isShowGate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->fGate:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v1, v4}, Lcom/papa91/arc/widget/view/MImageView;->show(Z)V

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/papa91/arc/view/MenuViewListener;->isShowCheating()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->fCheating:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v1, v4}, Lcom/papa91/arc/widget/view/MImageView;->show(Z)V

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/papa91/arc/view/MenuViewListener;->isShowQuickSlot()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->fQuickSlot:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {v1, v4}, Lcom/papa91/arc/widget/view/MImageView;->show(Z)V

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    const/16 v2, 0x8

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/papa91/arc/view/MenuViewListener;->needShowBottomBar()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->pause:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->pause:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :goto_0
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/papa91/arc/view/MenuViewListener;->isRankGame()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->ll_play_time:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 22
    :cond_5
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->ll_play_time:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 23
    :goto_1
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget v1, p0, Lcom/papa91/arc/view/MenuView;->menuBarStatue:I

    if-ne v1, v4, :cond_6

    .line 25
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->popupMenu()V

    .line 26
    iput v0, p0, Lcom/papa91/arc/view/MenuView;->menuBarStatue:I

    :cond_6
    return-void
.end method

.method public showAdImage(ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->showAdImage:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p1}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p1

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->E(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 6
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/papa91/arc/view/MenuView;->fScreenShot:Lcom/papa91/arc/widget/view/MImageView;

    invoke-virtual {p2, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fScreenShot:Lcom/papa91/arc/widget/view/MImageView;

    sget p2, Lorg/ppsspp/ppsspp/R$drawable;->f_screen_shot:I

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public showReloadPrompt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/ppsspp/ppsspp/R$style;->PspDialog:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/papa91/arc/view/MenuView;->dialog:Landroid/app/Dialog;

    .line 3
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->dialog_exit:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->dialog:Landroid/app/Dialog;

    sget v1, Lorg/ppsspp/ppsspp/R$id;->textView2:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/view/MenuView;->tip:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->dialog:Landroid/app/Dialog;

    sget v1, Lorg/ppsspp/ppsspp/R$id;->cancel:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/papa91/arc/view/MenuView$6;

    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$6;-><init>(Lcom/papa91/arc/view/MenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->dialog:Landroid/app/Dialog;

    sget v1, Lorg/ppsspp/ppsspp/R$id;->ok:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/papa91/arc/view/MenuView$7;

    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$7;-><init>(Lcom/papa91/arc/view/MenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->tip:Landroid/widget/TextView;

    const-string v1, "\u662f\u5426\u8981\u91cd\u65b0\u542f\u52a8\u6e38\u620f\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public showTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isRankGame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->ll_play_time:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->timerContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->timerContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startTimer(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isRankGame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/view/MenuView;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    new-instance v1, Lcom/papa91/arc/view/MenuView$10;

    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$10;-><init>(Lcom/papa91/arc/view/MenuView;)V

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->countDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_1

    .line 6
    iput-wide p1, p0, Lcom/papa91/arc/view/MenuView;->millisUntilFinish:J

    .line 7
    new-instance v0, Lcom/papa91/arc/view/MenuView$11;

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/papa91/arc/view/MenuView$11;-><init>(Lcom/papa91/arc/view/MenuView;JJ)V

    iput-object v0, p0, Lcom/papa91/arc/view/MenuView;->countDownTimer:Landroid/os/CountDownTimer;

    .line 8
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    :goto_0
    return-void
.end method

.method public updateTime(I)V
    .locals 7

    .line 1
    div-int/lit16 v3, p1, 0xe10

    mul-int/lit16 v0, v3, 0xe10

    sub-int v0, p1, v0

    .line 2
    div-int/lit8 v4, v0, 0x3c

    mul-int/lit8 v1, v4, 0x3c

    sub-int v5, v0, v1

    .line 3
    new-instance v6, Lcom/papa91/arc/view/a;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/papa91/arc/view/a;-><init>(Lcom/papa91/arc/view/MenuView;IIII)V

    invoke-virtual {p0, v6}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
