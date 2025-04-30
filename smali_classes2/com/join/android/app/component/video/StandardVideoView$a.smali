.class Lcom/join/android/app/component/video/StandardVideoView$a;
.super Ljava/lang/Object;
.source "StandardVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/StandardVideoView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/video/StandardVideoView;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView$a;->a:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView$a;->a:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/StandardVideoView;->a(Lcom/join/android/app/component/video/StandardVideoView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView$a;->a:Lcom/join/android/app/component/video/StandardVideoView;

    iget-object p1, p1, Lcom/join/android/app/component/video/StandardVideoView;->e:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
