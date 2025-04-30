.class Lcom/join/mgps/activity/InstallAppNoticeActivity$b$a;
.super Lcom/facebook/drawee/controller/b;
.source "InstallAppNoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/InstallAppNoticeActivity$b;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/b<",
        "Lcom/facebook/imagepipeline/image/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/InstallAppNoticeActivity$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/InstallAppNoticeActivity$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity$b$a;->b:Lcom/join/mgps/activity/InstallAppNoticeActivity$b;

    invoke-direct {p0}, Lcom/facebook/drawee/controller/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/facebook/imagepipeline/image/f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/InstallAppNoticeActivity$b$a;->h(Ljava/lang/String;Lcom/facebook/imagepipeline/image/f;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public h(Ljava/lang/String;Lcom/facebook/imagepipeline/image/f;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/drawee/controller/b;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method
