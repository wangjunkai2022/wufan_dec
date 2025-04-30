.class Lcom/join/android/app/component/photoviewer/ImagePagerActivity$e;
.super Ljava/lang/Object;
.source "ImagePagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$e;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    iput-object p2, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$e;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
