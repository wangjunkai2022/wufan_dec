.class Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuFrameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/MenuFrameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheatingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private cheatInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end field

.field private editCheatInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/EditCheatInfo;",
            ">;"
        }
    .end annotation
.end field

.field public tab:I

.field final synthetic this$0:Lcom/papa91/arc/MenuFrameActivity;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/MenuFrameActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/EditCheatInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->tab:I

    .line 3
    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->cheatInfos:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->editCheatInfos:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->editCheatInfos:Ljava/util/List;

    return-object p0
.end method

.method private initializeCustomView(ILandroid/view/View;Landroidx/constraintlayout/widget/Group;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;-><init>(Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iget-object p2, p2, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_cheat:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->del:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    .line 6
    sget v0, Lorg/ppsspp/ppsspp/R$id;->modify:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    .line 7
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 10
    iget-object v1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    iget-boolean v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 12
    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;-><init>(Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;ILorg/ppsspp/ppsspp/EditCheatInfo;)V

    .line 13
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method private initializeVipView(ILandroid/view/View;Landroidx/constraintlayout/widget/Group;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;-><init>(Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iget-object p2, p2, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_cheat:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->del:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    .line 6
    sget v0, Lorg/ppsspp/ppsspp/R$id;->modify:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    .line 7
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ppsspp/ppsspp/CheatInfo;

    .line 10
    iget-object v1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, v0, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    iget v2, v0, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 12
    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$2;-><init>(Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;Lorg/ppsspp/ppsspp/CheatInfo;I)V

    .line 13
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    return-object p2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->tab:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->cheatInfos:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->editCheatInfos:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->tab:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->cheatInfos:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->editCheatInfos:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    iget p3, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->tab:I

    if-nez p3, :cond_0

    .line 2
    iget-object p3, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iget-object p3, p3, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->initializeVipView(ILandroid/view/View;Landroidx/constraintlayout/widget/Group;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iget-object p3, p3, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->initializeCustomView(ILandroid/view/View;Landroidx/constraintlayout/widget/Group;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method
