.class Lcom/join/android/app/component/video/StandardVideoView$h;
.super Ljava/lang/Object;
.source "StandardVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/video/StandardVideoView;
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
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView$h;->a:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView$h;->a:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-static {v0}, Lcom/join/android/app/component/video/StandardVideoView;->c(Lcom/join/android/app/component/video/StandardVideoView;)V

    return-void
.end method
