.class public Lcom/join/android/app/component/video/e;
.super Ljava/lang/Object;
.source "VideoSwitchBackListUtil.java"


# static fields
.field private static a:Lcom/join/android/app/component/video/StandardVideoView;

.field private static b:Lc2/a;

.field private static c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/e;->a:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoView;->f(Lcom/join/android/app/component/video/StandardVideoView;)V

    return-void
.end method

.method public static b()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/e;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static c(Lcom/join/android/app/component/video/StandardVideoView;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoView;->setSwitchUrl(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/join/android/app/component/video/StandardVideoView;->setSwitchCache(Z)V

    .line 3
    invoke-virtual {p0, p3}, Lcom/join/android/app/component/video/StandardVideoView;->setSwitchTitle(Ljava/lang/String;)V

    return-void
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/join/android/app/component/video/e;->a:Lcom/join/android/app/component/video/StandardVideoView;

    .line 2
    sput-object v0, Lcom/join/android/app/component/video/e;->b:Lc2/a;

    return-void
.end method

.method public static e(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/join/android/app/component/video/e;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static f(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoView;->h()Lcom/join/android/app/component/video/StandardVideoView;

    move-result-object v0

    sput-object v0, Lcom/join/android/app/component/video/e;->a:Lcom/join/android/app/component/video/StandardVideoView;

    .line 2
    sput-object p0, Lcom/join/android/app/component/video/e;->b:Lc2/a;

    return-void
.end method
