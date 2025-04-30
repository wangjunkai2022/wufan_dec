.class public Lcom/join/mgps/customview/MyUserIconTitleLayout;
.super Landroid/widget/RelativeLayout;
.source "MyUserIconTitleLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/MyUserIconTitleLayout$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private d:Landroid/content/Context;

.field private e:Lcom/join/mgps/customview/VipView;

.field f:Lcom/join/mgps/customview/MyUserIconTitleLayout$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/MyUserIconTitleLayout;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/MyUserIconTitleLayout;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/MyUserIconTitleLayout;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/MyUserIconTitleLayout;)Lcom/join/mgps/customview/VipView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->e:Lcom/join/mgps/customview/VipView;

    return-object p0
.end method


# virtual methods
.method public e()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/pref/b;->z(Z)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f11010d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->f:Lcom/join/mgps/customview/MyUserIconTitleLayout$b;

    invoke-interface {p1}, Lcom/join/mgps/customview/MyUserIconTitleLayout$b;->a()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090bd2

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a:Landroid/widget/TextView;

    const v0, 0x7f090bd1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->b:Landroid/widget/TextView;

    const v0, 0x7f090bd0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090bd3

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/VipView;

    iput-object v0, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->e:Lcom/join/mgps/customview/VipView;

    .line 6
    invoke-virtual {p0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMsgNumber(I)V
    .locals 7

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v1, 0x64

    const v2, 0x7f070ddc

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ge p1, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 5
    iget-object v2, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a:Landroid/widget/TextView;

    const v2, 0x7f080888

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070991

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v2, 0x40e00000    # 7.0f

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v0, v2, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    const/4 v5, 0x4

    .line 13
    invoke-virtual {v1, v3, v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 14
    iget-object v2, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 15
    iget-object v2, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a:Landroid/widget/TextView;

    const v2, 0x7f0807cd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v3, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setUserIcon()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/join/mgps/customview/MyUserIconTitleLayout$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/MyUserIconTitleLayout$a;-><init>(Lcom/join/mgps/customview/MyUserIconTitleLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setUserIconClickListener(Lcom/join/mgps/customview/MyUserIconTitleLayout$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout;->f:Lcom/join/mgps/customview/MyUserIconTitleLayout$b;

    return-void
.end method
