.class Lcom/join/mgps/activity/ClassifyGameActivity$c;
.super Ljava/lang/Object;
.source "ClassifyGameActivity.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ClassifyGameActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ClassifyGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$c;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity$c;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ClassifyGameActivity;->d:Landroidx/appcompat/widget/Toolbar;

    int-to-float v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity$c;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071371

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    if-le p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$c;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ClassifyGameActivity;->d:Landroidx/appcompat/widget/Toolbar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$c;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ClassifyGameActivity;->d:Landroidx/appcompat/widget/Toolbar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method
