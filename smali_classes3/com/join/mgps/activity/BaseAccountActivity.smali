.class public Lcom/join/mgps/activity/BaseAccountActivity;
.super Lcom/BaseActivity;
.source "BaseAccountActivity.java"


# instance fields
.field protected a:Landroid/widget/ImageView;

.field protected b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method E0(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BaseAccountActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public F0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BaseAccountActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09025a

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 5
    invoke-super {p0, v0}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    const p1, 0x7f09012f

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/activity/BaseAccountActivity;->a:Landroid/widget/ImageView;

    const p1, 0x7f091023

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/BaseAccountActivity;->b:Landroid/widget/TextView;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/BaseAccountActivity;->a:Landroid/widget/ImageView;

    new-instance v0, Lcom/join/mgps/activity/BaseAccountActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/BaseAccountActivity$a;-><init>(Lcom/join/mgps/activity/BaseAccountActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, -0x128de0

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/z1;->o(Landroid/app/Activity;IZ)V

    return-void
.end method
