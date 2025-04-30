.class public Lcom/join/mgps/customview/ActivityTabView;
.super Landroid/widget/LinearLayout;
.source "ActivityTabView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ActivityTabView$d;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/join/mgps/customview/ActivityTabView$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ActivityTabView;)Lcom/join/mgps/customview/ActivityTabView$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ActivityTabView;->m:Lcom/join/mgps/customview/ActivityTabView$d;

    return-object p0
.end method

.method private b(Lcom/join/mgps/dto/BTActivityBean;)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x7f090966

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->a:Landroid/view/View;

    const v0, 0x7f090801

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->d:Landroid/widget/ImageView;

    const v0, 0x7f091193

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->g:Landroid/widget/TextView;

    const v0, 0x7f0910ee

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->j:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BTActivityBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BTActivityBean;->getSub_head()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/ActivityTabView;->a:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/customview/ActivityTabView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ActivityTabView$a;-><init>(Lcom/join/mgps/customview/ActivityTabView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/join/mgps/dto/BtGameBenefitSummary;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitSummary;->getGame_coupon_summary()Lcom/join/mgps/dto/BtGameBenefitBean;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f090967

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->b:Landroid/view/View;

    const v0, 0x7f090802

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->e:Landroid/widget/ImageView;

    const v0, 0x7f091194

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->h:Landroid/widget/TextView;

    const v0, 0x7f0910ef

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->k:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitBean;->isExist()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitBean;->getSub_title()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitBean;->getDefault_sub_title()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->b:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/customview/ActivityTabView$b;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/customview/ActivityTabView$b;-><init>(Lcom/join/mgps/customview/ActivityTabView;Lcom/join/mgps/dto/BtGameBenefitBean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private d(Lcom/join/mgps/dto/BtGameBenefitSummary;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitSummary;->getGame_gift_summary()Lcom/join/mgps/dto/BtGameBenefitBean;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f090968

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->c:Landroid/view/View;

    const v0, 0x7f090803

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->f:Landroid/widget/ImageView;

    const v0, 0x7f091195

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->i:Landroid/widget/TextView;

    const v0, 0x7f0910f0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->l:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitBean;->isExist()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitBean;->getSub_title()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitBean;->getDefault_sub_title()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->c:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/customview/ActivityTabView$c;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/customview/ActivityTabView$c;-><init>(Lcom/join/mgps/customview/ActivityTabView;Lcom/join/mgps/dto/BtGameBenefitBean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public setListener(Lcom/join/mgps/customview/ActivityTabView$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ActivityTabView;->m:Lcom/join/mgps/customview/ActivityTabView$d;

    return-void
.end method

.method public update(Lcom/join/mgps/dto/BtGameWelfare;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_activity_summary()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_activity_summary()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/BtGameBenefitSummary;->getGame_coupon_summary()Lcom/join/mgps/dto/BtGameBenefitBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/BtGameBenefitSummary;->getGame_coupon_summary()Lcom/join/mgps/dto/BtGameBenefitBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0c05e1

    invoke-static {v0, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_activity_summary()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BTActivityBean;

    invoke-direct {p0, v0}, Lcom/join/mgps/customview/ActivityTabView;->b(Lcom/join/mgps/dto/BTActivityBean;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/customview/ActivityTabView;->c(Lcom/join/mgps/dto/BtGameBenefitSummary;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/customview/ActivityTabView;->d(Lcom/join/mgps/dto/BtGameBenefitSummary;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_activity_summary()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/BtGameBenefitSummary;->getGame_coupon_summary()Lcom/join/mgps/dto/BtGameBenefitBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/BtGameBenefitSummary;->getGame_coupon_summary()Lcom/join/mgps/dto/BtGameBenefitBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c05e2

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/customview/ActivityTabView;->c(Lcom/join/mgps/dto/BtGameBenefitSummary;)V

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ActivityTabView;->d(Lcom/join/mgps/dto/BtGameBenefitSummary;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_activity_summary()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_activity_summary()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0c05e0

    invoke-static {v0, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_activity_summary()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/BTActivityBean;

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ActivityTabView;->b(Lcom/join/mgps/dto/BTActivityBean;)V

    :cond_2
    :goto_0
    return-void
.end method
