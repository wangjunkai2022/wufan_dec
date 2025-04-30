.class Lcom/join/mgps/activity/MGMainActivity$l0;
.super Lcom/facebook/imagepipeline/datasource/b;
.source "MGMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->saveImageFromUrl(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/b;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/facebook/datasource/c;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailureImpl():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public g(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/MApplication;->q0:Landroid/graphics/Bitmap;

    return-void
.end method
