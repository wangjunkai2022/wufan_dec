.class Lcom/join/android/app/component/album/MyIconActivity$d;
.super Landroid/os/Handler;
.source "MyIconActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/album/MyIconActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/MyIconActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/MyIconActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity$d;->a:Lcom/join/android/app/component/album/MyIconActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity$d;->a:Lcom/join/android/app/component/album/MyIconActivity;

    invoke-virtual {v0}, Lcom/BaseActivity;->dismissLoading()V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity$d;->a:Lcom/join/android/app/component/album/MyIconActivity;

    invoke-static {v0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->K0(Lcom/join/android/app/component/album/MyIconActivity;Ljava/util/List;)V

    return-void
.end method
