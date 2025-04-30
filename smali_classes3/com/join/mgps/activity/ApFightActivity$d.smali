.class Lcom/join/mgps/activity/ApFightActivity$d;
.super Ljava/lang/Object;
.source "ApFightActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ApFightActivity;->createZxingLay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ApFightActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ApFightActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$d;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$d;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxing_lay:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$d;->a:Lcom/join/mgps/activity/ApFightActivity;

    const v1, 0x7f01004c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$d;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/ApFightActivity;->apfight_zxing_content_lay:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
