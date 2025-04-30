.class Lcom/join/android/app/component/video/StandardVideoView$c;
.super Ljava/lang/Object;
.source "StandardVideoView.java"

# interfaces
.implements Lc2/d;


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
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView$c;->a:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView$c;->a:Lcom/join/android/app/component/video/StandardVideoView;

    int-to-long v1, p3

    iput-wide v1, v0, Lcom/join/android/app/component/video/StandardVideoView;->c:J

    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    if-ne p3, p4, :cond_1

    :cond_0
    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, v0, Lcom/join/android/app/component/video/StandardVideoView;->c:J

    .line 3
    :cond_1
    iget-object v0, v0, Lcom/join/android/app/component/video/StandardVideoView;->h:Lcom/join/android/app/component/video/StandardVideoView$k;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/join/android/app/component/video/StandardVideoView$k;->a(IIII)V

    :cond_2
    return-void
.end method
