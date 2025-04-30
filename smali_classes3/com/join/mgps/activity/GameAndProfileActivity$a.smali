.class Lcom/join/mgps/activity/GameAndProfileActivity$a;
.super Ljava/lang/Object;
.source "GameAndProfileActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameAndProfileActivity;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameAndProfileActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameAndProfileActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameAndProfileActivity$a;->a:Lcom/join/mgps/activity/GameAndProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameAndProfileActivity$a;->a:Lcom/join/mgps/activity/GameAndProfileActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameAndProfileActivity;->e:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameAndProfileActivity$a;->a:Lcom/join/mgps/activity/GameAndProfileActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameAndProfileActivity;->e:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
