.class Lcom/join/mgps/activity/ShareGameActivity$d;
.super Ljava/lang/Object;
.source "ShareGameActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/MStarBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareGameActivity;->W0(Lcom/join/mgps/dto/GameShareData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ShareGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareGameActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->q:Lcom/join/mgps/customview/MStarBar;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->s:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->r:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->o0:Landroid/content/Context;

    const-string v1, "onRemarkLabel"

    invoke-static {p1, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->I:Landroid/widget/EditText;

    invoke-static {p1}, Ly1/a;->c(Landroid/view/View;)V

    :goto_0
    return-void
.end method
