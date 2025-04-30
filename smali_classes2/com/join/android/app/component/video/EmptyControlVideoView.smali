.class public Lcom/join/android/app/component/video/EmptyControlVideoView;
.super Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "EmptyControlVideoView.java"


# static fields
.field public static d:Z = true


# instance fields
.field public a:Landroid/widget/ImageView;

.field private b:Z

.field c:Lcom/join/mgps/customview/t;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->b:Z

    .line 3
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 4
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullAnimEnd:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->b:Z

    .line 7
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 8
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullAnimEnd:Z

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c05d5

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->init(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/EmptyControlVideoView;->initCustomView()V

    return-void
.end method

.method initCustomView()V
    .locals 1

    const v0, 0x7f090aba

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->a:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget-boolean v0, Lcom/join/android/app/component/video/EmptyControlVideoView;->d:Z

    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/EmptyControlVideoView;->setMuteView(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onClick(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090aba

    if-ne p1, v0, :cond_0

    .line 3
    sget-boolean p1, Lcom/join/android/app/component/video/EmptyControlVideoView;->d:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/EmptyControlVideoView;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onPrepared()V

    .line 2
    iget-boolean v0, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/EmptyControlVideoView;->setMute(Z)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->b:Z

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean v0, Lcom/join/android/app/component/video/EmptyControlVideoView;->d:Z

    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/EmptyControlVideoView;->setMute(Z)V

    :goto_0
    return-void
.end method

.method public onSurfaceAvailable(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->onSurfaceAvailable(Landroid/view/Surface;)V

    .line 2
    invoke-static {}, Lcom/papa/gsyvideoplayer/utils/f;->e()I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onSurfaceUpdated(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->onSurfaceUpdated(Landroid/view/Surface;)V

    .line 2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/EmptyControlVideoView;->setMuteOnly(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/EmptyControlVideoView;->setMuteView(Z)V

    .line 3
    sput-boolean p1, Lcom/join/android/app/component/video/EmptyControlVideoView;->d:Z

    return-void
.end method

.method public setMuteOnly(Z)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->e0()Lcom/papa/gsyvideoplayer/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/c;->W(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setMuteView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->a:Landroid/widget/ImageView;

    const v0, 0x7f080882

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->a:Landroid/widget/ImageView;

    const v0, 0x7f080883

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setMuteWhenPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->b:Z

    return-void
.end method

.method protected setViewShowState(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected showWifiDialog()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/l;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->c:Lcom/join/mgps/customview/t;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/join/mgps/customview/t;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120176

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->c:Lcom/join/mgps/customview/t;

    const v1, 0x7f0c009a

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->c:Lcom/join/mgps/customview/t;

    const v1, 0x7f090364

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 7
    iget-object v1, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->c:Lcom/join/mgps/customview/t;

    const v2, 0x7f09036b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 8
    iget-object v2, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->c:Lcom/join/mgps/customview/t;

    const v3, 0x7f09100a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 9
    iget-object v3, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->c:Lcom/join/mgps/customview/t;

    const v4, 0x7f09038e

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->c:Lcom/join/mgps/customview/t;

    const v5, 0x7f09036e

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 11
    iget-object v5, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->c:Lcom/join/mgps/customview/t;

    const v6, 0x7f090370

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 13
    invoke-static {v6}, Lcom/join/mgps/Util/e1;->b(Landroid/content/Context;)I

    move-result v6

    const/16 v7, 0x8

    if-nez v6, :cond_2

    const/4 v6, 0x0

    .line 14
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    :goto_0
    const-string/jumbo v3, "\u7ee7\u7eed\u89c2\u770b"

    const-string/jumbo v6, "\u60a8\u5df2\u5207\u6362\u5230\u6570\u636e\u7f51\u7edc\uff0c\u662f\u5426\u7ee7\u7eed\u89c2\u770b\u89c6\u9891\uff1f"

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f110227

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "\u5173\u95ed"

    :goto_1
    const-string/jumbo v8, "\u7f51\u7edc\u63d0\u793a"

    .line 19
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "\u53d6\u6d88"

    .line 23
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 24
    new-instance v2, Lcom/join/android/app/component/video/EmptyControlVideoView$a;

    invoke-direct {v2, p0}, Lcom/join/android/app/component/video/EmptyControlVideoView$a;-><init>(Lcom/join/android/app/component/video/EmptyControlVideoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    new-instance v1, Lcom/join/android/app/component/video/EmptyControlVideoView$b;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/video/EmptyControlVideoView$b;-><init>(Lcom/join/android/app/component/video/EmptyControlVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->c:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 27
    iget-object v0, p0, Lcom/join/android/app/component/video/EmptyControlVideoView;->c:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_4
    :goto_2
    return-void
.end method

.method protected touchDoubleUp()V
    .locals 0

    return-void
.end method

.method protected touchSurfaceMoveFullLogic(FF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceMoveFullLogic(FF)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 3
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 4
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    return-void
.end method
